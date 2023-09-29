resource "aws_eks_addon" "aws-ebs-csi-driver" {
  cluster_name                = aws_eks_cluster.eks_cluster.name
  addon_name                  = "aws-ebs-csi-driver"
  addon_version               = "v1.23.0-eksbuild.1"
  resolve_conflicts_on_update = "PRESERVE"
}

# In addition to the cutom policy allowing the iam_nodgroup role to handle EBS requests
# we also need to install the EBS CSI driver on our cluster after our nodes are created.