# S3 Static Website Hosting with Terraform

This Terraform configuration creates an AWS S3 bucket configured for static website hosting with security best practices.



## Social

🔗 Visit my [LinkedIn activity](https://www.linkedin.com/posts/santhosh-kumar-150822-p_aws-s3-terraform-activity-7429230601028759552-79Sz)

▶️ [Youtube channel](https://youtu.be/nnlI8F2IHkM?si=ibmy50hAh29RUb5w)




## Features

- Static website hosting on S3
- Public read access for website content
- Server-side encryption (AES256)
- Versioning enabled
- Glassmorphism styled HTML pages

## Project Structure

```
s3-static-website/
├── Terraform/
│   ├── main.tf           # Main Terraform configuration
│   ├── variables.tf      # Variable declarations
│   ├── outputs.tf        # Output definitions
│   └── terraform.tfvars  # Variable values (update before use)
├── index.html            # Homepage with glassmorphism design
├── error.html            # 404 error page
├── *.png                 # Architecture diagrams
├── *.drawio              # Draw.io architecture files (editable)
├── .gitignore            # Git ignore file
└── README.md             # You're currently reading this!
```

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS CLI configured with credentials
- AWS account with appropriate permissions

## Configuration

### Terraform Commands

- `terraform init` - Prepare working directory, download plugins, set up backend
- `terraform validate` - Check configuration for syntax errors and internal consistency
- `terraform plan` - Preview the changes that will be made to the infrastructure
- `terraform apply` - Provision or update infrastructure based on the plan
- `terraform output` - Display output variables from the state file
- `terraform destroy` - Cleanup and tear down all managed infrastructure resources

### 1. Update Variables

Edit `terraform.tfvars` with your values:

```hcl
bucket_name = "your-unique-bucket-name"
project     = "your-project-name"
created_by  = "your-name"
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Validate Configuration

```bash
terraform validate
```

### 4. Preview Changes

```bash
terraform plan
```

### 5. Create Resources

```bash
terraform apply
```

Type `yes` when prompted to confirm.

## Outputs

After successful deployment, Terraform will display:

- **bucket_name** - S3 bucket name
- **website_endpoint** - Website URL (e.g., `bucket-name.s3-website.ap-south-1.amazonaws.com`)
- **bucket_arn** - S3 bucket ARN

## Upload Website Files

Upload your website files to the bucket root:

```bash
aws s3 cp index.html s3://your-bucket-name/
aws s3 cp error.html s3://your-bucket-name/
```

Or upload entire directory:

```bash
aws s3 sync ./your-website-folder s3://your-bucket-name/
```

## Access Your Website

Visit the website endpoint URL from the Terraform outputs.

**Or via AWS Console:**

AWS Console → Amazon S3 → Your Bucket → Properties → Static website hosting → Bucket website endpoint

## Resources Created

- S3 Bucket
- Website Configuration (index.html, error.html)
- Versioning (Enabled)
- Public Access Configuration
- Bucket Policy (Public Read)
- Server-Side Encryption (AES256)

## Cleanup

To destroy all resources:

```bash
terraform destroy
```

Type `yes` when prompted.

**Note:** Empty the S3 bucket before destroying, or the destroy will fail.

```bash
aws s3 rm s3://your-bucket-name/ --recursive
```

## Push to GitHub

Before pushing to GitHub, ensure `terraform.tfvars` contains only placeholder values (no real credentials or bucket names).

### Initial Setup

**1. Verify you're in the correct folder:**

```bash
pwd  # Should show: .../s3-static-website
```

**2. Initialize Git:**

```bash
git init
```

**3. Check status:**

```bash
git status
```

**4. Configure `.gitignore`**

Exclude the following files and directories:

```
.terraform/
.terraform.lock.hcl
terraform.tfstate
terraform.tfstate.backup
```

**5. Add and commit files:**

```bash
git add .
git commit -m "Initial commit: S3 static website with Terraform"
```

**6. Add remote origin:**

```bash
git remote add origin git@github.com:your-username/your-repository.git
```

**7. Verify remote:**

```bash
git remote -v
```

**8. Push to GitHub:**

```bash
git branch -M main
git push -u origin main
```

### Future Changes (Daily Workflow)

```bash
git add .
git commit -m "Updated website content"
git push
```
