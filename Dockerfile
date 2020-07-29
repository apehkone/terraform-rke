FROM hashicorp/terraform:light

ENV RKE_PROVIDER_VERSION=1.0.0 

RUN apk update && apk add bash tar \
    && wget https://github.com/rancher/terraform-provider-rke/releases/download/${RKE_PROVIDER_VERSION}/terraform-provider-rke-linux-amd64.tar.gz \
    && tar --wildcards --transform 's/.*\///g' -xzf terraform-provider-rke-linux-amd64.tar.gz **/terraform-provider-rke \
    && mv terraform-provider-rke /bin \
    && chmod ugo+x /bin/terraform-provider-rke \
    && rm terraform-provider-rke-linux-amd64.tar.gz \
    && rm -f /var/cache/apk/* 

