using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace TestConcurrentGenericType
{
    class Program
    {
        static void Main(string[] args)
        {
            int i = 0;
            while (i < 100)
            {
                ++i;
                TestQueueInParallel(ConsoleColor.Yellow);
                TestCurrentQueueInParallel(ConsoleColor.Green);
            }

            TestHowToAddAndTakeItems(ConsoleColor.Cyan);
            TestHowToAddAndTakeItemsWithCancellation(ConsoleColor.Magenta);
        }

        static void TestQueueInParallel(ConsoleColor foregroundColor)
        {
            Console.ForegroundColor = foregroundColor;
            try
            {
                // Construct a ConcurrentQueue.
                Queue<int> cq = new Queue<int>();

                // Populate the queue.
                for (int i = 0; i < 10000; i++) cq.Enqueue(1);

                int outerSum = 0;
                // An action to consume the ConcurrentQueue.
                Action action = () =>
                {
                    int localSum = 0;
                    int localValue;
                    while (cq.Count > 0)
                    {
                        localValue = cq.Dequeue();
                        localSum += localValue;
                    }
                    Interlocked.Add(ref outerSum, localSum);
                };

                // Start 4 concurrent consuming actions.
                Parallel.Invoke(action, action, action, action);

                if (outerSum == 10000)
                {
                    Console.WriteLine("outerSum = {0}, may be 10000 or not!", outerSum);
                }
                else
                {
                    Console.BackgroundColor = ConsoleColor.Red;
                    Console.WriteLine("outerSum = {0}, may be 10000 or not!", outerSum);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            Console.ResetColor();
        }

        static void TestCurrentQueueInParallel(ConsoleColor foregroundColor)
        {
            Console.ForegroundColor = foregroundColor;
            try
            {
                // Construct a ConcurrentQueue.
                ConcurrentQueue<int> cq = new ConcurrentQueue<int>();

                // Populate the queue.
                for (int i = 0; i < 10000; i++) cq.Enqueue(1);

                int outerSum = 0;
                // An action to consume the ConcurrentQueue.
                Action action = () =>
                {
                    int localSum = 0;
                    int localValue;
                    while (cq.TryDequeue(out localValue)) localSum += localValue;
                    Interlocked.Add(ref outerSum, localSum);
                };

                // Start 4 concurrent consuming actions.
                Parallel.Invoke(action, action, action, action);

                if (outerSum == 10000)
                {
                    Console.WriteLine("outerSum = {0}, should be 10000", outerSum);
                }
                else
                {
                    Console.BackgroundColor = ConsoleColor.Blue;
                    Console.WriteLine("outerSum = {0}, should be 10000", outerSum);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            Console.ResetColor();
        }

        static void TestHowToAddAndTakeItems(ConsoleColor foregroundColor)
        {
            // https://msdn.microsoft.com/zh-cn/library/dd997306(v=vs.110).aspx
            Console.ForegroundColor = foregroundColor;
            // Increase or decrease this value as desired.
            int itemsToAdd = 500;

            // Preserve all the display output for Adds and Takes
            // Console.SetBufferSize(80, (itemsToAdd * 2) + 3);

            // A bounded collection. Increase, decrease, or remove the
            // maximum capacity argument to see how it impacts behavior.
            BlockingCollection<int> numbers = new BlockingCollection<int>(50);


            // A simple blocking consumer with no cancellation.
            Task.Run(() =>
            {
                int i = -1;
                while (!numbers.IsCompleted)
                {
                    try
                    {
                        i = numbers.Take();
                    }
                    catch (InvalidOperationException)
                    {
                        Console.WriteLine("T1:Adding was completed!");
                        break;
                    }
                    Console.WriteLine("T1:Take:{0} ", i);

                    // Simulate a slow consumer. This will cause
                    // collection to fill up fast and thus Adds wil block.
                    Thread.SpinWait(100000);
                }

                Console.WriteLine("\r\nT1:No more items to take. Press the Enter key to exit.");
            });

            // A simple blocking producer with no cancellation.
            Task.Run(() =>
            {
                for (int i = 0; i < itemsToAdd; i++)
                {
                    numbers.Add(i);
                    Console.WriteLine("T2:Add:{0} Count={1}", i, numbers.Count);
                }

                // See documentation for this method.
                numbers.CompleteAdding();
            });

            // Keep the console display open in debug mode.
            Console.ReadKey();
            Console.ResetColor();
        }

        static int inputs = 2000;
        static void TestHowToAddAndTakeItemsWithCancellation(ConsoleColor foregroundColor)
        {
            // https://msdn.microsoft.com/zh-cn/library/dd997306(v=vs.110).aspx
            Console.ForegroundColor = foregroundColor;
            // The token source for issuing the cancelation request.
            CancellationTokenSource cts = new CancellationTokenSource();

            // A blocking collection that can hold no more than 100 items at a time.
            BlockingCollection<int> numberCollection = new BlockingCollection<int>(100);

            // Set console buffer to hold our prodigious output.
            // Console.SetBufferSize(80, 2000);

            // The simplest UI thread ever invented.
            Task.Run(() =>
            {
                if (Console.ReadKey(true).KeyChar == 'c')
                    cts.Cancel();
            });

            // Start one producer and one consumer.
            Task t1 = Task.Run(() => NonBlockingConsumer(numberCollection, cts.Token));
            Task t2 = Task.Run(() => NonBlockingProducer(numberCollection, cts.Token));

            // Wait for the tasks to complete execution
            Task.WaitAll(t1, t2);

            cts.Dispose();
            Console.WriteLine("Press the Enter key to exit.");
            Console.ReadLine();
            Console.ResetColor();
        }

        static void NonBlockingConsumer(BlockingCollection<int> bc, CancellationToken ct)
        {
            // IsCompleted == (IsAddingCompleted && Count == 0)
            while (!bc.IsCompleted)
            {
                int nextItem = 0;
                try
                {
                    if (!bc.TryTake(out nextItem, 0, ct))
                    {
                        Console.WriteLine(" Take Blocked");
                    }
                    else
                        Console.WriteLine(" Take:{0}", nextItem);
                }

                catch (OperationCanceledException)
                {
                    Console.WriteLine("Taking canceled.");
                    break;
                }

                // Slow down consumer just a little to cause
                // collection to fill up faster, and lead to "AddBlocked"
                Thread.SpinWait(500000);
            }

            Console.WriteLine("\r\nNo more items to take.");
        }

        static void NonBlockingProducer(BlockingCollection<int> bc, CancellationToken ct)
        {
            int itemToAdd = 0;
            bool success = false;

            do
            {
                // Cancellation causes OCE. We know how to handle it.
                try
                {
                    // A shorter timeout causes more failures.
                    success = bc.TryAdd(itemToAdd, 2, ct);
                }
                catch (OperationCanceledException)
                {
                    Console.WriteLine("Add loop canceled.");
                    // Let other threads know we're done in case
                    // they aren't monitoring the cancellation token.
                    bc.CompleteAdding();
                    break;
                }

                if (success)
                {
                    Console.WriteLine(" Add:{0}", itemToAdd);
                    itemToAdd++;
                }
                else
                {
                    Console.Write(" AddBlocked:{0} Count = {1}", itemToAdd.ToString(), bc.Count);
                    // Don't increment nextItem. Try again on next iteration.

                    //Do something else useful instead.
                    UpdateProgress(itemToAdd);
                }

            } while (itemToAdd < inputs);

            // No lock required here because only one producer.
            bc.CompleteAdding();
        }

        static void UpdateProgress(int i)
        {
            double percent = ((double)i / inputs) * 100;
            Console.WriteLine("Percent complete: {0}", percent);
        }
    }
}
