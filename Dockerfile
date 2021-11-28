# NAME: dclong/samba
FROM dclong/base
# GIT: https://github.com/dclong/docker-base.git

RUN apt-get update \
    && apt-get install -y --no-install-recommends samba \
    && service smbd stop \
    && mkdir /smbshare

COPY settings/smb.conf /etc/samba/smb.conf
COPY scripts /scripts/

EXPOSE 137-139 445

ENTRYPOINT ["/scripts/sys/init.sh"]
