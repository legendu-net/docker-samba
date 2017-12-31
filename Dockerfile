FROM dclong/ubuntu_b

RUN apt-get update \
    && apt-get install -y samba \
    && service smbd stop \
    && mkdir /smbshare

COPY settings/smb.conf /etc/samba/smb.conf

EXPOSE 137-139 445

ENTRYPOINT ["/scripts/init.sh"]
