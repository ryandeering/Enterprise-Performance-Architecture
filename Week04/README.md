ryandeering1@cloudshell:~$ cd lab
ryandeering1@cloudshell:~/lab$ dir
ryandeering1@cloudshell:~/lab$ cd ..
ryandeering1@cloudshell:~$ mkdir Week04
ryandeering1@cloudshell:~$ nano Dockerfile
ryandeering1@cloudshell:~$ cd Week04
ryandeering1@cloudshell:~/Week04$ nano Dockerfile
ryandeering1@cloudshell:~/Week04$ docker build .
Sending build context to Docker daemon  2.048kB
Step 1/4 : FROM ubuntu:latest
latest: Pulling from library/ubuntu
d72e567cc804: Pull complete
0f3630e5ff08: Pull complete
b6a83d81d1f4: Pull complete
Digest: sha256:2e70e9c81838224b5311970dbf7ed16802fbfe19e7a70b3cbfa3d7522aa285b4
Status: Downloaded newer image for ubuntu:latest
 ---> 9140108b62dc
Step 2/4 : COPY script.sh /
COPY failed: stat /var/lib/docker/tmp/docker-builder518152212/script.sh: no such file or directory
ryandeering1@cloudshell:~/Week04$ nano script.sh
ryandeering1@cloudshell:~/Week04$ docker build .
Sending build context to Docker daemon  3.072kB
Step 1/4 : FROM ubuntu:latest
 ---> 9140108b62dc
Step 2/4 : COPY script.sh /
 ---> a65786b16ed5
Step 3/4 : RUN chmod u+x /script.sh
 ---> Running in 61dc3a41153b
Removing intermediate container 61dc3a41153b
 ---> b5ce12c4e1ed
Step 4/4 : CMD ["/script.sh"]
 ---> Running in 8c604a260297
Removing intermediate container 8c604a260297
 ---> f48d13d180d3
Successfully built f48d13d180d3
ryandeering1@cloudshell:~/Week04$ ./script.sh >> host.txt
-bash: ./script.sh: Permission denied
ryandeering1@cloudshell:~/Week04$ chmod +x script.sh
ryandeering1@cloudshell:~/Week04$ ./script.sh >> host.txt
ryandeering1@cloudshell:~/Week04$ docker run f48d13d180d3 >> container.txt                                                                    
ryandeering1@cloudshell:~/Week04$ nano container.txt
ryandeering1@cloudshell:~/Week04$ nano host.txt

The output of both container.txt and host.txt is the same. This shows containers do not virtualize hardware. 
Sidenote: This lab took about a minute considering I used Docker in my internship!
