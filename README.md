# EC2-ELB-with-Terraform
Creating 3 EC2 (Elastic Compute Cloud) instances and behind an ELB plus an Ansible Script
Below are the images to show output of what I created
1. First image shows the EC2 3 instances that has been spinned off
2. The second image shows the security group created for the EC2 instance that will be a pivot for the ELB
3. The third image shows the ELB (Elastic Load Balancers) being provisioned
4. The fourth image shows the target group referencing the EC2 instances (targets)
5. The last image shows the Domain hosted using Terraform

Note everything was provisioned and written using Hashicorp Terraform asides the ansible file which is a .yml file