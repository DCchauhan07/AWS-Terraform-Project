# Production-Grade AWS Infrastructure using Terraform

## Project Overview

This project provisions a secure and scalable AWS infrastructure using Terraform following production-grade DevOps best practices.

It includes:

- Custom VPC
- Public and Private Subnets
- Internet Gateway
- NAT Gateway
- Route Tables
- Security Groups
- EC2 Bastion Host
- Private Application Server
- IAM Role and Instance Profile
- S3 Bucket with Versioning
- CloudWatch Monitoring
- SNS Email Alerts

This project demonstrates Infrastructure as Code (IaC), secure cloud networking, monitoring, and reusable Terraform module design.

---

## AWS Services Used

| Layer | Service |
|---|---|
| Networking | VPC |
| Networking | Public + Private Subnets |
| Networking | Internet Gateway |
| Networking | NAT Gateway |
| Routing | Route Tables |
| Security | Security Groups |
| Compute | EC2 Instances |
| Storage | S3 |
| Identity | IAM |
| Monitoring | CloudWatch |
| Notifications | SNS |

---

## Architecture

```text
User Laptop
   ↓
Bastion Host (Public Subnet)
   ↓
Private App Server (Private Subnet)
   ↓
S3 + Monitoring + IAM
