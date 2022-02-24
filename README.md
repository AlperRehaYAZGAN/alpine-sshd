# Docker Alpine Linux SSHd Server for Testing  
This is the example Docker Container for testing SSH utilities with Alpine Linux to exec test command on isolated environment.  
(This repository inspired by https://github.com/trashpanda001/docker-alpine-sshd)  

# Usage  
Run Container:  
```bash
docker run --name alyasshserver -p 2222:22 --rm -d alperreha/alpine-sshd:1.0.0  
```

Login Container with SSH:  
```bash
ssh root@127.0.0.1 -p 2222 # Password is root123
```
