FROM dclong/ubuntu_b

RUN apt-get update -y \
    && apt-get install -y \
        samba \
    && apt-get autoremove \
    && apt-get autoclean 

COPY scripts /scripts/
COPY settings/smb.conf /etc/samba/smb.conf

EXPOSE 137-139 445

ENTRYPOINT ["/scripts/init.sh"]
