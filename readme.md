# [dclong/samba](https://hub.docker.com/r/dclong/samba/)

Samba in Ubuntu. 

## Detailed Information

OS: Ubuntu 16.04

Additional Software: samba.

## About the Author

[Personal Blog](http://www.legendu.net)   |   [GitHub](https://github.com/dclong)   |   [Bitbucket](https://bitbucket.org/dclong/)   |   [LinkedIn](http://www.linkedin.com/in/ben-chuanlong-du-1239b221/)



## How to run

### Build

```
./build.sh
```

### Docker pull command

```
docker pull dclong/samba
```

### Usage

```
docker run -d \
    --log-opt max-size=50m \
    -p 137-139:137-139 \
    -p 445:445 \
    -e DOCKER_USER_ID=`id -u` \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_PASSWORD=`id -un` \
    -v /wwwroot:/`id -un` \
    dclong/samba
```
