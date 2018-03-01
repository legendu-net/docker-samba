# [dclong/samba](https://hub.docker.com/r/dclong/samba/)

Samba in Ubuntu. 

## Detailed Information

OS: Ubuntu 16.04

Additional Software: samba.

## About the Author

[Personal Blog](http://www.legendu.net)   |   [GitHub](https://github.com/dclong)   |   [Bitbucket](https://bitbucket.org/dclong/)   |   [LinkedIn](http://www.linkedin.com/in/ben-chuanlong-du-1239b221/)



## How to run

### Build the Docker Image

```
./build.sh
```

### Pull the Docker Image

```
docker pull dclong/samba
```

### Start a Container

```
docker run -it \
    --log-opt max-size=50m \
    -p 137-139:137-139 \
    -p 445:445 \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_USER_ID=`id -u` \
    -e DOCKER_GROUP_ID=`getent group nogroup | cut -d: -f3` \
    -e DOCKER_PASSWORD=`id -un` \
    -v /wwwroot:/smbshare \
    dclong/samba
```

### Mount the Samba Share

You can mount the Samba share using the command below
```
sudo mount -t cifs -o user=samba_user,password=samba_password server_ip/smbshare /path_to_mount_point
```
where `samba_user` is the Samba user, i.e., `DOCKER_USER` (by default the output of `id -un` on the host)
and `samba_password` is the Samba password, i.e., `DOCKER_PASSWORD` (by default the output of `id -un` on the host).
