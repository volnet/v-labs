echo staring jupyter\(by docker\)...
./tf_start_jupyter.sh
echo jupyter started.
echo ''
echo my-tf-jupyter mapping folders:
echo -e "\t$(pwd)/notebooks"
echo -e "\t$(pwd)/logs"
echo open jupyter notebook in browser:
echo -e "\thttp://localhost:8888"
echo ''
echo ----------------
echo staring tensorboard\(by docker\)...
./tf_start_tensorboard.sh
echo tensorboard started.
echo ''
echo my-tf-tensorboard mapping folders:
echo -e "\t$(pwd)/logs"
echo open tensorboard in browser:
echo -e "\thttp://localhost:6006"
echo ''
