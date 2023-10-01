# In addition to the cutom policy allowing the iam_nodgroup role to handle EBS requests
# we also need to install the EBS CSI driver on our cluster after our nodes are created.
# Prometheus won't run without this
resource "aws_eks_addon" "aws-ebs-csi-driver" {
  cluster_name                = aws_eks_cluster.eks_cluster.name
  addon_name                  = "aws-ebs-csi-driver"
  addon_version               = "v1.23.0-eksbuild.1"
  resolve_conflicts_on_update = "PRESERVE"

  depends_on = [aws_eks_node_group.eks_ng_public]
}

# Adding CoreDNS
# This will allow us to more easily attach prometheus datasources to grafana
resource "aws_eks_addon" "aws-coredns-driver" {
  cluster_name                = aws_eks_cluster.eks_cluster.name
  addon_name                  = "coredns"
  addon_version               = "v1.10.1-eksbuild.1"
  #addon_version              = "v1.10.1-eksbuild.4"  #<--- Errors out when installing
  resolve_conflicts_on_update = "PRESERVE"

  depends_on = [aws_eks_node_group.eks_ng_public]
}