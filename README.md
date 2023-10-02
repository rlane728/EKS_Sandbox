## EKS_Sandbox

#### TODO:
- Automate prometheus/grafana/operator install
    
    - helm install monitoring prometheus-community/kube-prometheus-stack --namespace monitoring
    - kubectl get secret grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
    - kubectl --namespace monitoring port-forward \<grafana pod\> 3000
    
- Install stress on nodes
    
    - sudo amazon-linux-extras install epel -y
    - sudo yum install stress -y

- Add policy creation for Prometheus/EBS (currently using a pre-created policy)
