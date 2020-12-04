# terraforrm-ami-sharing

# terraform-vpc

Terraform is an Infrastructure as a Code product. In this article, we are going to use Terraform to share the AMI from one account to another account.

## Prerequisites
- Terraform v0.13.5
- AWS CLI
- IAM Access Key & Secret Key

**Terraform Installation**

Please followup [here](https://github.com/TechyCloud/terraform-installation.git) for **Terraform** installation.

**AWS CLI Installation**

Please followup [here](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html) for **AWS CLI** installation.

## Usage
You can download terraform code [here](https://github.com/TechyCloud/terraform-ami-sharing/archive/main.zip) to share the AMIs as a private.

Once downloaded you can update the below vaiables on **main.tf** file in **tf_amicopy** directory. If you want to add more then two AMI IDs to share from account you can add the AMI id like below on respective variables.

###### Public Sunet CIDR
> ami_ids = ["ami-0a24######f0d3", "ami-03ae######dfc"]

```
ami_ids = ["ami-0a24######f0d3"]
destination_account_id = "1XXXXXXXXX36"
```
The code is ready to share the AMIs after updating the variabls in **main.tf** file. 

You can run the below command in **tf_amicopy** directory to initialize the configuration before going to apply the changes.

> terraform init

Once succeed the above command, You can run the below apply command to share the AMIs.    

> terraform apply -input=false -auto-approve
