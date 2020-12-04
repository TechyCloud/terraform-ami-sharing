#This Module Will Copy the AMIs

module "module-ami-copy" {
source = "../modules/module-ami-copy/"

ami_ids = ["ami-0a24######f0d3"]
destination_account_id = "1XXXXXXXXX36" 
}
