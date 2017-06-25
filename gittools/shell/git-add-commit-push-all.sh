#!/bin/bash
DIR=`ls .`
for dir in ${DIR};do
	if [ -d ${dir} ];then
		echo $dir
		cd ${dir}
		git add .
		git commit -m "git commit by git-add-commit-push-all.sh"
		git push -u
		cd ..
	fi
done
