FROM alpine:3.9

ENV USERNAME="name" \
    PASSWD="weak_passwd"

RUN apk update && apk --no-cache add samba

COPY ./smb.conf /etc/samba/
COPY ./start_samba_system.sh /usr/local/bin
RUN chmod 775 /usr/local/bin/start_samba_system.sh
RUN mkdir /home/public && chmod 777 /home/public

EXPOSE 139 445
ENTRYPOINT [ "/bin/ash" ]
CMD [ "/usr/local/bin/start_samba_system.sh" ]
