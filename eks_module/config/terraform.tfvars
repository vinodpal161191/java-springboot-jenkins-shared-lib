# terraform.tfvars

cluster_name = "demo-cluster"
region = "ap-south-1"

aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster"
        eks_subnet_ids = ["subnet-0fb716a2bf1f02e57","subnet-086185d126fb6bc08","subnet-0cfb34d15142e9c7f","subnet-04750d3a258929c66"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "mynode"
        nodes_iam_role           = "eks-node-group-general"
        node_subnet_ids          = ["subnet-0fb716a2bf1f02e57","subnet-086185d126fb6bc08","subnet-0cfb34d15142e9c7f","subnet-04750d3a258929c66"]

        tags = {
             "Name" =  "node1"
         } 
  }
}