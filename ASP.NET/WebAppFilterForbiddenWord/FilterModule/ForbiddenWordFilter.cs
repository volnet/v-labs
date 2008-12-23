using System.Collections.Generic;
using System.Text;

namespace FilterModule {
    public class ForbiddenWordFilter : IPageProcessor {
        public ForbiddenWordFilter() { }

        public IList<ForbiddenWord> ForbiddenWords {
            get;
            set;
        }

        public void SetForbiddenWords(IList<ForbiddenWord> forbiddenWords) {
            ForbiddenWords = forbiddenWords;
        }

        public void AddForbiddenWord(ForbiddenWord forbiddenWord) {
            if (ForbiddenWords == null) {
                ForbiddenWords = new List<ForbiddenWord>();
            }
            ForbiddenWords.Add(forbiddenWord);
        }

        public string Process(string beDisposed) {
            if (ForbiddenWords != null) {
                IDictionary<string, string> forbiddenWordDic = new Dictionary<string, string>(ForbiddenWords.Count);
                foreach (ForbiddenWord word in ForbiddenWords) {
                    //beDisposed = beDisposed.Replace(word.Body, new string('*', word.Body.Length));
                    forbiddenWordDic.Add(word.Body, new string('*', word.Body.Length));
                }
                forbiddenWordDic.Add("中国", "天朝");
                forbiddenWordDic.Add("你娘", "您的母亲");

                beDisposed = GoThrough(beDisposed).Replace(forbiddenWordDic);
            }
            return beDisposed;
        }

        public FilterContext Context {
            get;
            set;
        }

        public class ForbiddenWord {
            public ForbiddenWord(string body, bool caseSensitive) {
                Body = body;
                CaseSensitive = caseSensitive;
            }
            public string Body { get; set; }
            public bool CaseSensitive { get; set; }
        }

        private class Char {
            public char Body {
                get;
                set;
            }
            public bool InTag { get; set; }
        }

        private class Sentence{
            IList<Char> instance;
            public Sentence() {
                instance = new List<Char>();
            }

            public void Add(Char c) {
                instance.Add(c);
            }

            /// <summary>
            /// 将当前Sentence用replaceSet替换字典的值进行替换，返回替换后的文本
            /// </summary>
            /// <param name="replaceSet"></param>
            /// <returns>返回替换后的文本</returns>
            public string Replace(IDictionary<string,string> replaceSet) {
                IList<string> strs = SimpleCast(replaceSet);
                StringBuilder sb = new StringBuilder();
                foreach (string s in strs) {
                    sb.Append(s);
                }
                return sb.ToString();
            }
            
            /// <summary>
            /// 将当前Sentence用replaceSet替换字典的值进行替换，返回替换后的词组集
            /// </summary>
            /// <param name="replaceSet"></param>
            /// <returns>返回有序的最终词组集</returns>
            private IList<string> SimpleCast(IDictionary<string, string> replaceSet) {

                IList<string> words = new List<string>();
                IList<IList<Char>> tempWords = new List<IList<Char>>();
                IList<Char> tempChars = new List<Char>(instance.Count);

                //将当前句子按间隔标签分开成词组
                //如<div>Good</div>
                //将整合成三个词组<div>、Good、</div>
                if (instance.Count > 0) {
                    bool lastInTag = instance[0].InTag;
                    Char firstChar = instance[0];
                    tempChars.Add(firstChar);

                    if (instance.Count > 1) {
                        for (int i = 1, length = instance.Count; i < length; i++) {
                            if (lastInTag != instance[i].InTag) {
                                tempWords.Add(tempChars);
                                tempChars = new List<Char>();
                            }
                            tempChars.Add(instance[i]);
                            lastInTag = instance[i].InTag;
                        }
                        if (tempChars.Count > 0) {
                            tempWords.Add(tempChars);
                            tempChars = null;
                        }
                    }
                }

                //根据整合出的词组集，对未包含在标签内的部分进行替换
                //本算法假定<...>（两个尖括号）之间的数据均为标签内，相反则为标签外
                foreach (IList<Char> tempWord in tempWords) {
                    string word = CharsToString(tempWord);
                    if (!tempWord[0].InTag) {
                        foreach (KeyValuePair<string, string> kv in replaceSet) {
                            //只对标签内的数据进行替换，大大减小了HTML页面的处理量
                            word = word.Replace(kv.Key, kv.Value);
                        }
                    }
                    words.Add(word);
                }

                return words;
            }

            /// <summary>
            /// 将Char型集合的单词转换成标准的string
            /// </summary>
            /// <param name="tempWord"></param>
            /// <returns></returns>
            private static string CharsToString(IList<Char> tempWord) {
                List<char> str = new List<char>();
                foreach (Char c in tempWord) {
                    str.Add(c.Body);
                }
                return new string(str.ToArray());
            }
        }

        private bool inTag;
        private Sentence GoThrough(string currentHtml) {
            Sentence sentence = new Sentence();

            int length = currentHtml.Length;
            int index = 0;
            while (index != length) {
                if (currentHtml[index] == '<')
                    inTag = true;
                if (currentHtml[index] == '>')
                    inTag = false;

                //InTag == true的项表示在标签内
                sentence.Add(new Char() { Body = currentHtml[index], InTag = inTag });
                index++;
            }

            return sentence;
        }
    }
}