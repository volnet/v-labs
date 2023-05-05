# 创建一个 15x15 的空棋盘
board = [[0] * 15 for _ in range(15)]

# 定义黑子和白子的标识
BLACK = 1
WHITE = 2

# 定义游戏是否结束的标识
game_over = False

# 定义当前下棋的玩家，默认黑子先行
current_player = BLACK

# 定义检查是否有五子连珠的函数
def check_win(x, y):
    # 检查同一行是否有五子连珠
    if board[x].count(current_player) >= 5:
        return True

    # 检查同一列是否有五子连珠
    if [board[i][y] for i in range(15)].count(current_player) >= 5:
        return True

    # 检查左上到右下的对角线是否有五子连珠
    if [board[x+i][y+i] for i in range(min(15-x, 15-y))].count(current_player) >= 5:
        return True

    # 检查左下到右上的对角线是否有五子连珠
    if [board[x+i][y-i] for i in range(min(15-x, y+1))].count(current_player) >= 5:
        return True

    # 否则返回 False
    return False

# 进入游戏循环
while not game_over:
    # 输出当前棋盘状态
    print("当前棋盘状态：")
    for row in board:
        print(row)

    # 让当前玩家输入下棋的坐标
    x, y = input("请玩家 {} 输入下棋的坐标（格式为 x,y）：".format("黑子" if current_player == BLACK else "白子")).split(",")
    x, y = int(x), int(y)

    # 判断该位置是否已经有棋子
    if board[x][y] != 0:
        print("该位置已经有棋子，请重新输入！")
        continue

    # 在该位置添加当前玩家的棋子
    board[x][y] = current_player

    # 检查是否有五子连珠
    if check_win(x, y):
        print("玩家 {} 获胜！".format("黑子" if current_player == BLACK else "白子"))
        game_over = True

    # 如果棋盘已满，则游戏结束
    if all(all(row) for row in board):
        print("棋盘已满！游戏结束！")
        game_over = True

    # 切换下一位玩家
    current_player = WHITE if current_player == BLACK else BLACK
