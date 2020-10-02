docker run -d -p 1935:1935 -p 80:80 -p 443:443 -v $PWD/rec:/var/rec --name nginx-rtmp volnet/nginx-rtmp
