# aws-vpc-2webservers-terraform
Terraform project to provision an AWS VPC with two web servers using EC2 and user data.
This project demonstrates Infrastructure as Code (IaC) using Terraform to provision a complete AWS networking environment with two EC2 web servers.

The infrastructure is deployed inside a custom VPC and includes a public subnet, Internet Gateway, route table, security group, and two Apache web servers configured automatically using EC2 User Data.

🏗️ Architecture
                         AWS
                          |
                    Custom VPC
                 192.168.1.0/24
                          |
                   Public Subnet
                 192.168.1.0/25
                          |
             -------------------------
             |                       |
        EC2 Web Server 1       EC2 Web Server 2
             |                       |
          Apache                  Apache
             |                       |
       "Web Server 1"          "Web Server 2"
             \                       /
              -------- Internet -------
                       |
                 Internet Gateway
🛠️ Technologies Used
Terraform – Infrastructure as Code
AWS EC2 – Web server instances
Amazon VPC – Network isolation
Internet Gateway – Internet connectivity
Route Table – Public routing
Security Group – Network access control
Amazon S3 – Remote Terraform state
S3 State Locking – State locking using use_lockfile
Apache HTTP Server – Web server
EC2 User Data – Automatic server configuration
📂 Project Structure
aws-vpc-2webservers-terraform/
│
├── backend.tf
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
├── .gitignore
└── README.md
File Description
File	Purpose
backend.tf	Configures the S3 remote Terraform state
main.tf	Creates the AWS infrastructure
variables.tf	Defines Terraform input variables
terraform.tfvars	Provides project-specific variable values
outputs.tf	Displays resource IDs and EC2 public IPs
.gitignore	Prevents Terraform state and sensitive files from being committed
README.md	Project documentation
⚙️ Infrastructure Created

Terraform provisions:

1 Custom VPC
1 Public Subnet
1 Internet Gateway
1 Public Route Table
1 Route Table Association
1 Security Group
2 EC2 Instances
2 Apache Web Servers
🔐 Security Configuration

The Security Group allows:

Protocol	Port	Purpose
TCP	22	SSH access
TCP	80	HTTP web traffic
All	Outbound	Internet connectivity

For production environments, SSH access should preferably be restricted to trusted IP addresses rather than 0.0.0.0/0.

🚀 Deployment
1. Clone the repository
git clone <YOUR-GITHUB-REPOSITORY-URL>
cd aws-vpc-2webservers-terraform
2. Configure AWS credentials

Make sure your AWS CLI is configured:

aws configure

Verify the configuration:

aws sts get-caller-identity
3. Initialize Terraform
terraform init

Terraform connects to the configured S3 backend and downloads the required AWS provider.

4. Format the configuration
terraform fmt
5. Validate the configuration
terraform validate

Expected result:

Success! The configuration is valid.
6. Review the execution plan
terraform plan

Review the resources Terraform plans to create.

7. Deploy the infrastructure
terraform apply

Enter:

yes

Or:

terraform apply --auto-approve
🌐 Verify the Web Servers

After deployment, Terraform displays the public IP addresses of both EC2 instances.

Example:

webserver1_public_ip = "13.xx.xx.xx"
webserver2_public_ip = "3.xx.xx.xx"

Open the following in a browser:

http://<WEB_SERVER_1_PUBLIC_IP>

Expected output:

Web Server 1

And:

http://<WEB_SERVER_2_PUBLIC_IP>

Expected output:

Web Server 2

The Apache web server is installed automatically through EC2 User Data, so no manual web-server configuration is required after the instances launch.

📤 Terraform Outputs

The project provides:

VPC ID
Public Subnet ID
Web Server 1 public IP
Web Server 2 public IP
Web Server URLs

These outputs make it easy to verify the deployed infrastructure.

🗄️ Remote Terraform State

Terraform state is stored remotely in an Amazon S3 bucket instead of only on the local machine.

S3 Bucket
    |
    └── aws-vpc-2webservers/
            └── terraform.tfstate

The backend is configured with:

S3 remote state
Encryption
S3 state locking using use_lockfile

This provides a more suitable state-management approach for collaborative Terraform projects.

🧹 Destroy Infrastructure

To remove all resources created by Terraform:

terraform destroy

Or:

terraform destroy --auto-approve

Destroy the infrastructure when it is no longer required to avoid unnecessary AWS charges.

🎯 Key Learning Outcomes

Through this project, I practiced:

Infrastructure as Code using Terraform
AWS VPC networking
Public subnet configuration
Internet Gateway and routing
AWS Security Groups
EC2 provisioning
EC2 User Data automation
Terraform variables
Terraform outputs
Remote Terraform state management
S3 backend configuration
Terraform state locking
Terraform lifecycle commands
Infrastructure deployment and cleanup
📸 Project Evidence

The repository can include screenshots demonstrating:

Terraform plan output
Successful terraform apply
AWS VPC
Public subnet
Internet Gateway
Route table
Security Group
Two running EC2 instances
Web Server 1 in the browser
Web Server 2 in the browser
S3 Terraform state
Successful terraform destroy
👩‍💻 Author

Sneha Magare

Computer Science & Engineering

Project Summary

AWS infrastructure provisioned using Terraform with a custom VPC, public subnet, two EC2 Apache web servers, automated configuration using User Data, and remote Terraform state stored in Amazon S3.
