Terraform : This technology is used for Iac (Infrastructure as code). Using this we can create resources on any cloud-plateform on the fly only by adding few configuration and running single command.

Download the Terraform : https://www.terraform.io/downloads.html

Terraform commands

- `terraform init` : It will download the necessary plugins for providers. (AWS, Google Cloud, etc..)

- `terraform plan` : It will dry run your code and will show you what is being changed/modified/deleted/added.

- `terraform apply` : This command will apply changes / run your code and make changes on your cloud.

- `terraform destroy` : To delete all infrastructure/resources.

- `terraform apply --auto-approve` : This flag wont' prompt to ask for permission to continue.

- `terraform state list` : This command lists all resources present into infrastructure.

- `terraform state show <resource-name` : It shows a resource state. Resource name can be retrived from the config file.

To edit/modify infrastructuree: Edit the config file and rerun the ‘terraform plan’ or ‘terraform apply’ commands again.

To delete perticular resource say ec2 instance: Removed the EC2 instance code from the config file and re0run terraform apply command.

Note: Terraform does not care about in which order you define things in code. It is intelligent enough to apply changes. (In some cases only)

Pre-requisites: 
1. Create Free tier AWS instance.
2. Download and install Terraform.
3. Retrive the AWS access key and success key from console. 
   3.1 : Login into AWS Console.
   3.2 : Click on AWS username display on top left corner, besides search bar.
   3.3 : Click "My Security Credentials".
   3.4 : Click on "Access keys (access key ID and secret access key". 
   3.5 : Click "Create New Access Key"
   3.6 : Note down the newly created access key and secret key somewhere safe. It only shows one time.


How to run Project1?
1. Clone the repo and change the directory to Project1 from terminal/command promt.
2. Run `terraform --version` command to see if terraform is installed properly.
3. Open main.tf file and add your above created access and secret keys in file and save config file.
4. Run `terraform init` command which will download required libraries for AWS provider.
5. Run `terraform plan` command. It will dry run your code and show you on terminal all steps terraform is going to perform.
6. Once confirmed all is fine then run `terraform apply` to make changes in AWS instance.
7. Tada.... Next check on your AWS instance if your first instance it created or not.


How to run Project2?
1. Change the directory to Project2 from terminal/command promt.
2. Run `terraform --version` command to see if terraform is installed properly.
3. Open terraform-proj.tf file and add your above created access and secret keys in file and save config file.
4. Run `terraform init` command which will download required libraries for AWS provider.
5. Run `terraform plan` command. It will dry run your code and show you on terminal all steps terraform is going to perform.
6. Once confirmed all is fine then run `terraform apply` to make changes in AWS instance.
7. Tada.... Next check on your AWS console if all mentioned resources are created or not.
