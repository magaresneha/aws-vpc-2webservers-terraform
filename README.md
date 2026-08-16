# AWS VPC with Two Web Servers using Terraform

 Overview

This project provisions an AWS networking environment and two Apache web servers using **Terraform (Infrastructure as Code)**.

The infrastructure includes a custom VPC, public subnet, Internet Gateway, route table, security group, and two EC2 instances. Apache is automatically installed and configured on both instances using EC2 User Data.

Architecture

```text
                    AWS
                     |
                  VPC
                     |
              Public Subnet
                     |
          -----------------------
          |                     |
       EC2 Web 1            EC2 Web 2
          |                     |
       Apache                 Apache
          |                     |
   "Web Server 1"       "Web Server 2"
```

Technologies

- Terraform
- AWS VPC
- AWS EC2
- Amazon S3
- Apache HTTP Server
- Terraform S3 Remote Backend

Project Structure

```text
aws-vpc-2webservers-terraform/
├── backend.tf
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
└── README.md
```

Infrastructure

- Custom AWS VPC
- Public subnet with internet access
- Internet Gateway and route table
- Security Group for SSH (22) and HTTP (80)
- Two EC2 `t3.micro` web servers
- Automated Apache installation using User Data
- Remote Terraform state stored in Amazon S3
- S3 state locking using `use_lockfile`

Deployment

```bash
terraform init
terraform validate
terraform plan
terraform apply --auto-approve
```

Terraform outputs the public IP addresses of both web servers. The deployed websites can then be accessed using:

```text
http://<web-server-1-public-ip>
http://<web-server-2-public-ip>
```

Cleanup

```bash
terraform destroy --auto-approve
```

Author

Sneha Magare
