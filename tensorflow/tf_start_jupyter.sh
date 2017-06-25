docker run -d -p 8888:8888 -v $(pwd)/notebooks:/notebooks -v $(pwd)/logs:/logs --name my-tf-notebook volnet/tf-notebook
