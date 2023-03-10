# EC2-ELB-with-Terraform
Creating 3 EC2 instances and behind an ELB plus an Ansible Script
# EC2-ELB-with-Terraform
Creating 3 EC2 (Elastic Compute Cloud) instances and behind an ELB plus an Ansible Script
Below are the images to show output of what I created
I put the task description as the first image, Counting starts from 0
1. First image shows the EC2 (Elastic Cloud Computing) three (3) instances that has been spinned off
2. The second image shows the security group created for the EC2 instance that will be a pivot for the ELB
3. The third image shows the ELB (Elastic Load Balancers) being provisioned
4. The fourth image shows the target group referencing the EC2 instances (targets)
5. The last image shows the Domain hosted using Terraform

Note everything was provisioned and written using Hashicorp Terraform asides the ansible file which is a .yml file
![73073E4E-6163-4C02-9A85-38A06E3CEF1B_1_105_c](https://user-images.githubusercontent.com/43645930/222037262-ff129d3d-769b-481f-b912-129b06e50f45.jpeg)
<img width="1432" alt="Screenshot 2023-03-03 at 05 28 44" src="https://user-images.githubusercontent.com/43645930/222631642-503a6cbd-ce71-4087-b370-5c9095fe88ab.png">
<img width="1433" alt="Screenshot 2023-03-03 at 05 19 49" src="https://user-images.githubusercontent.com/43645930/222631666-e28994e6-9abe-4bc1-b6ec-6869e3b7b15c.png">
<img width="1438" alt="Screenshot 2023-03-03 at 05 20 30" src="https://user-images.githubusercontent.com/43645930/222631681-aae64ca0-2dff-40d6-ab6a-cf29e49d1bdb.png">
<img width="1437" alt="Screenshot 2023-03-03 at 05 20 52" src="https://user-images.githubusercontent.com/43645930/222631687-7e04cee0-3518-4744-84a3-338049588198.png">
<img width="1432" alt="Screenshot 2023-03-03 at 05 25 30" src="https://user-images.githubusercontent.com/43645930/222631688-25ed4cd2-1411-4096-b6f9-90043550ac99.png">
