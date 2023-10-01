## EKS_Sandbox

#### TODO:
- Automate prometheus & grafana install
    
    - helm install prometheus prometheus-community/prometheus --namespace monitoring
    - helm install grafana grafana/grafana --namespace monitoring

- Install stress on nodes
    
    - sudo amazon-linux-extras install epel -y
    - sudo yum install stress -y

- Install and configure Prometheus Operator (Manual for now)

    - https://github.com/prometheus-operator/prometheus-operator