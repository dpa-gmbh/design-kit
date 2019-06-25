# connect-design-kit

## Documentation

Dieses Unterverzeichnis enthält die Skripte, um die Umgebung zur Veröffenlichung des dpa-Connect Design Kit
mit [terraform](https://www.terraform.io/) auszurollen. Das Designkit muss in das Amazon Account ausgerollt werden, in der die
Repositories für das Design Kit verwaltet werden und in dem die Hosted Zone für dpa-connect.de verwaltet 
wird.
  
### Requirements

* [Terraform](https://www.terraform.io/)
* A local aws profile in $HOME/.aws/config called *notification* that grants access to the AWS Account used. 

### Rollout of the environment

* Init Terraform

``> terraform init``

* Switch to workspace prod


    > terraform workspace select prod 
    Switched to workspace "prod".

* Call apply. Make sure to pass the var-file


    terraform apply --var-file=stagevars/prod.tfvars
    ...
    ...
    Apply complete! Resources: X added, Y changed, Z destroyed.
    
Note that each deployment will install the latest build of the Design Kit    