FROM alpine:3.9
LABEL maintainer "Alper Reha YAZGAN - https://github.com/alperrehayazgan"
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22
COPY rootfs /

RUN apk add --no-cache openssh \
  && sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
  && echo "root:root123" | chpasswd