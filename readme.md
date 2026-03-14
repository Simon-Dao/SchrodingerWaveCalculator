# 1. implement services
  ### chunk_worker
    - runs fortran code 
    - exports to chunk_store
    - exports 
  ### chunk_metrics
    - runs a nginx server 
    - serves metrics to prometheus
  ### chunk_store
    - a redis server instance 
    - contains pub/sub model
  ### prometheus
    - scrapes port 9113 of chunk_exporter containers
  ### grafana
    - visualizes prometheus results
    - hosts dashboard on port 30007

# programs
  ### Wave solver
    - Runs locally
    - takes chunks and finishes calculation somehow

# 2. Build containers

# 3. Push to ECR

# 4. Deploy K8s with containers

aws eks update-kubeconfig --region us-west-2 --name capstone-cluster