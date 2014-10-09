#Docker Presentation

###On Mac & Windows you will need VirtualBox and/or Vagrant to use Docker this on your local system (laptop/desktop)

# Get started with CoreOS
## CoreOS can be run on bare metal or in a hardware virt environment
### Bare metal server, EC2, Rackspace Cloud, etc.

### CoreOS stable via Vagrant
```
mkdir ~/temp/CoreOS
cd ~/temp/CoreOS
vagrant init yungsang/coreos
vagrant up
vagrant ssh
```


## Docker Container Examples
### (run inside of CoreOS)

### `docker run -t -i cmosetick/ubuntu-test`


### `docker pull centos`

```
core@localhost ~ $ docker images
REPOSITORY              TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
cmosetick/ubuntu-test   latest              5792f9bcd4bc        10 days ago         227.4 MB
centos                  centos6             b1bd49907d55        11 days ago         212.5 MB
centos                  centos7             b157b77b1a65        11 days ago         243.7 MB
centos                  latest              b157b77b1a65        11 days ago         243.7 MB
ubuntu                  latest              ba5877dc9bec        2 weeks ago         192.7 MB
coreos/apache           latest              87026dcb0044        5 months ago        274.1 MB
```

### You will specify a tag to use following a colon, otherwise you get the latest release

### Run `docker` containers for different releases of CentOS

### `docker run -t -i centos:centos6 /bin/bash`

### `docker run -t -i centos:centos7 /bin/bash`

### The above CentOS containers are just generic instances
We can "add" custom elements to them that will
persist indefinitely, just like a standard bare metal or
hardware virtualization system


```
core@localhost ~ $ docker ps
CONTAINER ID        IMAGE                          COMMAND                CREATED             STATUS              PORTS                NAMES
4aa3002c7bf4        centos:centos6                 /bin/bash              16 seconds ago      Up 15 seconds                            thirsty_poincare
62db88ba9c7e        cmosetick/ubuntu-test:latest   /usr/sbin/apache2ctl   10 days ago         Up 10 days          0.0.0.0:80->80/tcp   insane_pare
```
### Here we can see that the CentOS6 container is only running an interactive bash shell
### However the ubuntu-test container is running apache2 web server.
### We can run a quick test from the CoreOS host system to see that the daemon is running and serving pages.

`wget -qO- 127.0.0.1 | less`

### `docker commit -m="Adjusted index.html" -a="Chris Mosetick" \`
### `119322aa136d cmosetick/ubuntu-test:latest`








### More vagrant notes
### Ubuntu 14.04 test
```bash
mkdir ~/temp/Vagrant
cd ~/temp/Vagrant
vagrant init ubuntu/trusty64
vagrant up
vagrant ssh
```
