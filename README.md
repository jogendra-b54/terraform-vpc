# terraform-vpc

This is the root module to created VPC on AWS Cloud and this root module looks for the terraformn modules code that were made and availble on the top of the backend-module

`https://github.com/jogendra-b54/tf-module-vpc.git`


## Terrafile :

1> this is is a binary written in GO
2> All it does is, it downloads the backend module from the mentioned branch and keeps it's locally available to the root module 
3> So that your intended backend module can be cloned from the branch of your choice

## How to Install Terrafile :

```
$ sudo su -
# curl -L https://github.com/coretech/terrafile/releases/download/v0.6/terrafile_0.6_Linux_x86_64.tar.gz |tar xz -C /usr/local/bin

Ref : https://github.com/coretech/terrafile 
```


## terraform Commands with backend config in a environment specific file:

```
$ terraform init -backend-config=env-dev/dev-backend.tfvars
$ terraform plan -var-file=env-dev/dev.tfvars
$ terraform apply -auto-approve -var-file=env-dev/dev.tfvars
```