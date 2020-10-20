Welcome to Cloud Shell! Type "help" to get started.
To set your Cloud Platform project in this session use “gcloud config set project [PROJECT_ID]”
ryandeering1@cloudshell:~$ dir
cordless      Dockerfile  lab            README-cloudshell.txt  README-v2.md  setup.sh  Week03
cordless-git  gopath      proc_count.sh  README.md              script.sh     tuir      Week04
ryandeering1@cloudshell:~$ mkdir Week05
ryandeering1@cloudshell:~$ dir
cordless      Dockerfile  lab            README-cloudshell.txt  README-v2.md  setup.sh  Week03  Week05
cordless-git  gopath      proc_count.sh  README.md              script.sh     tuir      Week04
ryandeering1@cloudshell:~$ cd Week05
ryandeering1@cloudshell:~/Week05$ docker pull tudjburns/careless-banking:latest
latest: Pulling from tudjburns/careless-banking
e4c3d3e4f7b0: Pull complete
101c41d0463b: Pull complete
8275efcd805f: Pull complete
751620502a7a: Pull complete
aaabf962c4fc: Pull complete
7883babec904: Pull complete
1791d366c848: Pull complete
d2069e365ac7: Pull complete
c9d5dfdc53da: Pull complete
e05a7a3641c2: Pull complete
9d666ed75818: Pull complete
ee8e2e075011: Pull complete
Digest: sha256:b5e509af751e0d1b6b056fe52816047316242ed48e1831c2611215856daa825d
Status: Downloaded newer image for tudjburns/careless-banking:latest
docker.io/tudjburns/careless-banking:latest
# Successfully pulled from Docker.io, from the tudjburns account, and the latest version of the careless-banking.

ryandeering1@cloudshell:~/Week05$ docker images
REPOSITORY                   TAG                 IMAGE ID            CREATED             SIZE
tudjburns/careless-banking   latest              fb794bc844ed        2 days ago          845MB
#Shares same image id. 845MB.
ryandeering1@cloudshell:~/Week05$ docker run fb794bc844ed
Listening on port :8080
#Mistakenly ran on wrong port
^Cryandeering1@cloudshell:~/Week05$ docker run -p 8090:8080 tudjburns/careless-banking:latest
Listening on port :8080
#Binding 8090 to 8080 so that Google Cloud can show the container through web preview. This is a lot easier than messing with Google Cloud's
^Cryandeering1@cloudshell:~/Week05$ docker tag fb794bc844ed eu.gcr.io/EPA2020/careless-banking:latest
Error parsing reference: "eu.gcr.io/EPA2020/careless-banking:latest" is not a valid repository/tag: invalid reference format: repository name 
must be lowercase
ryandeering1@cloudshell:~/Week05$ docker tag fb794bc844ed eu.gcr.io/epa2020-290310/careless-banking:latest
#Tagging the image with my own private repo
ryandeering1@cloudshell:~/Week05$ docker push  eu.gcr.io/epa2020-290310/careless-banking:latest
The push refers to repository [eu.gcr.io/epa2020-290310/careless-banking]
1e864c538aab: Preparing
129a3d1a6973: Preparing
a70baddbc0cd: Preparing
c6c8d4023a9a: Preparing

# I suffered a crash while pasting from Nano here, for some reason it didn't capture all of my clipboard so I don't have the rest of the output of the push command.

ryandeering1@cloudshell:~/Week05 (epa2020-290310)$ gcloud container images list --repository eu.gcr.io/epa2020-290310
NAME
eu.gcr.io/epa2020-290310/careless-banking

# Image exists within our private repo. I had to enable some GCR API thingy in order to copy the Docker container.
