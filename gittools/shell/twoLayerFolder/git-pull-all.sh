#!/bin/bash
function update_repositories {
    for subdir in "$1"/*; do
        #echo -e "\033[32mHere "$(pwd)"\033[0m"
        #echo -e "\033[32mcheck -d "$subdir"\033[0m"
        if [ -d "$subdir" ]; then
          cd "$subdir"
          echo -e "\033[32menter "$(pwd)"\033[0m"
          if([ -d ".git" ]); then
              echo "git pull"
              git pull
          fi
          cd ..
          cd ..
        else
          echo -e "\033[31mHere "$(pwd)"\033[0m"
          echo -e "\033[31m$subdir not exists or it's not folder.\033[0m"
        fi
    done
}

echo Welcome to git-pull-all.sh, please make sure your directory structure is as follows:
echo ""
echo "├── git-add-commit-push-all.sh"
echo "├── folder1/"
echo "│   ├── folder1_1/"
echo "│   │   ├── .git/"
echo "│   │   ├── folder_others/"
echo "│   │   └── hello.py"
echo "│   └── folder2/"
echo "│       └── folder2_1/"
echo "│           ├── .git/"
echo "│           └── hello.js"
echo "└── ..."
echo ""

DIR=`ls .`
for dir in ${DIR}; do
    if [ -d ${dir} ]; then
        update_repositories "$dir"
    fi
done


#在 echo 中输出带颜色的文字可以使用 ANSI 转义序列，具体方法如下：

#红色：\033[31m
#绿色：\033[32m
#黄色：\033[33m
#蓝色：\033[34m
#紫色：\033[35m
#青色：\033[36m
#白色：\033[37m
#默认色：\033[0m