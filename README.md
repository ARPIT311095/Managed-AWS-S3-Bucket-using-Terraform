# Managed AWS S3 Bucket using Terraform

## 📌 Project Overview
This project demonstrates how to provision and manage an AWS S3 bucket using **Terraform** by following **Infrastructure as Code (IaC)** principles. The infrastructure is fully automated, version-controlled, and reproducible.

The project includes automated creation of an S3 bucket and uploading an object into the bucket using Terraform resources.

### Note: for code please check main.tf file
---

## 🛠️ Technologies Used
- **Terraform**
- **AWS S3**
- **AWS Provider**
- **Random Provider**
- **Infrastructure as Code (IaC)**

---

## 🏗️ Architecture
- Terraform initializes required providers
- A unique S3 bucket is created
- An object file is uploaded to the S3 bucket
- Terraform manages state and provider dependencies

---

## 📂 Project Structure

S3-Bucket/<br>
│── main.tf/<br>
│── object.txt/<br>
│── terraform.lock.hcl/<br>
│── README.md/<br>



---

## ⚙️ Terraform Resources Used
- `aws_s3_bucket` – Creates an AWS S3 bucket
- `aws_s3_object` – Uploads an object to the S3 bucket
- `random_id` – Generates a unique identifier for resource naming

---

## 🚀 How to Run the Project

### 1️⃣ Prerequisites
- AWS account
- AWS CLI configured
- Terraform installed

3️⃣ Initialize Terraform<br>
terraform init<br>
4️⃣ Validate Configuration<br>
terraform validate<br>
5️⃣ Plan Infrastructure<br>
terraform plan<br>
6️⃣ Apply Configuration<br>
terraform apply<br>
Type yes when prompted.<br>


### 🔐 Key Features

1) Infrastructure as Code using Terraform
2) Automated S3 bucket creation
3) Automated object upload
4) Unique resource naming using random provider
5) Provider dependency locking using terraform.lock.hcl
6) Fully reproducible infrastructure


### 📦 Object Upload

The file object.txt is automatically uploaded to the S3 bucket
Object is stored using Terraform-managed configuration

### 🧪 Verification

Login to AWS Console<br>
Navigate to S3<br>
Verify bucket creation<br>
Verify uploaded object inside the bucket<br>

### 🧹 Cleanup

To destroy all resources created by Terraform:terraform destroy
