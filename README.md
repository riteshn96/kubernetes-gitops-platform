# Automated Microservices Platform on Kubernetes with GitOps

This project demonstrates a fully automated CI/CD pipeline for deploying a multi-service application to a production-grade Kubernetes (AWS EKS) cluster. It uses GitOps principles to ensure that the state of the infrastructure and application is declaratively managed and version-controlled.

## Project Status

**Status:** Stage 3 Complete ✅
-   **Stage 1:** AWS Infrastructure (VPC & EKS) is provisioned.
-   **Stage 2:** Demo application has been forked.
-   **Stage 3:** Automated CI Pipeline (GitHub Actions & ECR) is functional.

## Core Concepts Demonstrated

-   **Infrastructure as Code (IaC):** The entire cloud environment is defined and provisioned using Terraform.
-   **CI/CD Automation:** GitHub Actions automatically builds and pushes container images.
-   **GitOps:** Argo CD synchronizes the application state from a Git repository to the Kubernetes cluster.
-   **Observability:** Prometheus and Grafana are used for real-time monitoring, metrics collection, and visualization.

## Technology Stack

| Category | Technology |
| :--- | :--- |
| **Cloud Provider** | Amazon Web Services (AWS) |
| **IaC** | Terraform |
| **Container Orchestration** | AWS EKS (Kubernetes) |
| **CI/CD** | GitHub Actions |
| **GitOps** | Argo CD |
| **Container Registry**| AWS ECR |
| **Monitoring** | Prometheus |
| **Visualization**| Grafana |
| **Package Management**| Helm |


## Architecture Diagram

*(This diagram will be added once the platform is complete)*

![Architecture Diagram Placeholder](https://via.placeholder.com/800x450.png?text=Architecture%20Diagram%20Coming%20Soon)

## Project Structure

-   **`/terraform`**: This directory contains all the Terraform code to provision the foundational AWS infrastructure.
    -   `main.tf`: Configures the AWS provider and defines local variables.
    -   `vpc.tf`: Defines the VPC, subnets, and networking using the `terraform-aws-modules/vpc/aws` module.
    -   `eks.tf`: Defines the IAM roles and provisions the EKS cluster and its node group.
    -   `outputs.tf`: Specifies the outputs to display after deployment, like the `kubeconfig` command.
-   **`/k8s-manifests`**: This directory will hold the Kubernetes YAML manifests for the application. It will act as the source-of-truth Git repository for Argo CD to monitor.

---