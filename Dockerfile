FROM alpine:3.9
EXPOSE 22
COPY rootfs /app
RUN chmod -R 777 /app
ENTRYPOINT ["/app/entrypoint.sh"]

RUN apk add --no-cache openssh \
  && sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
  && echo "root:root123" | chpasswd
