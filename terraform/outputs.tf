# outputs.tf

output "cluster_name" {
  description = "The name of the EKS cluster."
  value = aws_eks_cluster.eks_cluster.name
}

output "kubeconfig_command" {
  description = "The command to run to configure kubectl for this cluster."
  value = "aws eks update-kubeconfig --region us-east-1 --name ${aws_eks_cluster.eks_cluster.name}"
}