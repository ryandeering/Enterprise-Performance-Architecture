190  cd Week05
  191  docker pull tudjburns/careless-banking:latest
#Successfully pulled from Docker.io, from the tudjburns account, and the latest version of the careless-banking.
  192  docker images
#check image id and size are valid -- they are
  193  docker run fb794bc844ed
#running container to see if it works
  194  docker run -p 8090:8080 tudjburns/careless-banking:latest
#binding port 8090 to 8080 for the web preview
  196  docker tag fb794bc844ed eu.gcr.io/epa2020-290310/careless-banking:latest
#Tagging container so it can be pushed into the repo.
#Image exists within our private repo. I had to enable some GCR API thingy in order to copy/push the Docker container.
  198  docker push eu.gcr.io/epa2020-290310/careless-banking:latest
  199  gcloud container images list --repository eu.gcr.io/epa2020-290310
#Container exists within repo
