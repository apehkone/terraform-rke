# terraform-rke

Terraform docker image with installed RKE (Rancher Kubernetes Engine) provider. This can be useful when it's not practical to install Terraform locally (e.g. ci/cd build pipelines). 


## Build image locally

```bash 
docker build -t terraform-rke . 
```

## Useful commands 

Starts the container and maps current directory as a working directory in interactive mode

```bash 
docker run -it -v `pwd`:/wrk -w /wrk --entrypoint /bin/sh terraform-rke

```

Starts the container, maps current directory as working directory and runs a command **-c ls -la**

```bash
docker run -v `pwd`:/wrk -w /wrk --entrypoint /bin/sh terraform-rke -c ls -la
```

Run terraform commands directly 

```bash
docker run -v `pwd`:/wrk -w /wrk terraform-rke <command> <options> [DIR]

## Example: rancher-deploy % docker run -v `pwd`:/wrk -w /wrk terraform-rke init -backend=false src/environments/dev
```



