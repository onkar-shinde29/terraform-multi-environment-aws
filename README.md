# 🌍 Multi-Environment Infrastructure using Terraform Workspaces

## 📌 Overview

This project demonstrates the design and implementation of a **multi-environment infrastructure (Dev, Staging, Production)** on AWS using Terraform.

The goal is to isolate environments, prevent conflicts, and manage infrastructure using a single reusable codebase.

---

## 🏗️ Infrastructure Components

Each environment includes:

* VPC (Virtual Private Cloud)
* EC2 Instance
* Security Groups
* S3 Bucket

---

## 🌐 Environments

| Environment | Instance Type | Description                           |
| ----------- | ------------- | ------------------------------------- |
| Dev         | t2.micro      | For development and testing           |
| Staging     | t2.small      | Pre-production testing                |
| Production  | t2.medium     | Live environment with strict security |

---

## ⚙️ Technologies Used

* Terraform
* Amazon Web Services (AWS)

  * EC2
  * VPC
  * S3

---

## 🧱 Project Structure

```
.
├── modules/
│   ├── vpc/
│   ├── ec2/
│   ├── s3/
│   └── security-group/
├── env/
│   ├── dev.tfvars
│   ├── staging.tfvars
│   └── prod.tfvars
├── main.tf
├── variables.tf
├── outputs.tf
├── backend.tf
└── screenshots/
```

---

## 🔄 Workspace Strategy

Terraform workspaces are used to isolate environments:

* dev
* staging
* prod

Each workspace maintains its own state, ensuring complete separation.

---

## 🗄️ Remote Backend

Terraform state is stored in an AWS S3 bucket to enable:

* Remote state management
* Team collaboration
* State locking (if configured with DynamoDB)

---

## 🔐 Security Best Practices

* `prevent_destroy` enabled for production resources
* Strict security group rules in production
* Environment-based tagging
* Separate variable files per environment

---

## 🚀 Deployment Steps

### 1. Initialize Terraform

```
terraform init
```

### 2. Create Workspaces

```
terraform workspace new dev
terraform workspace new staging
terraform workspace new prod
```

### 3. Deploy Dev Environment

```
terraform workspace select dev
terraform apply -var-file=env/dev.tfvars
```

### 4. Deploy Staging Environment

```
terraform workspace select staging
terraform apply -var-file=env/staging.tfvars
```

### 5. Deploy Production Environment

```
terraform workspace select prod
terraform apply -var-file=env/prod.tfvars
```

---

## 📸 Screenshots

### 🔹 Terraform Workspaces

![Workspace](screenshots/1.png)

---

### 🔹 Dev, Staging and Production Environment (EC2)

![Dev](screenshots/2.png)

---

### 🔹 Dev, Staging and Production Environment (VPC)

![Dev](screenshots/3.png)

---

### 🔹 S3 Backend (Terraform State)

![S3](screenshots/4.png)

---

### 🔹 Terraform Apply Output

![Apply](screenshots/5.png)

---

## ✅ Results

* Successfully created isolated Dev, Staging, and Production environments
* Used Terraform workspaces for environment separation
* Implemented reusable modular infrastructure
* Configured secure remote state management

---

## 📌 Key Learnings

* Terraform modules and workspaces
* Multi-environment infrastructure design
* AWS resource provisioning using IaC
* State management with S3 backend

---

## 👨‍💻 Author

Onkar Shinde
