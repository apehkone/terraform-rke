# terraform-rke

Terraform docker image with installed RKE provider. This can be useful when it's not practical to install Terraform locally (e.g. ci/cd build pipelines). 


## Build image locally

```bash 
docker build -t terraform-rke . 
```

## Useful commands 

Starts the container and maps current directory as a working directory in interactive mode

```bash 
docker run -it -v `pwd`:/wrk -w /wrk --entrypoint /bin/sh terraform-rke

```







