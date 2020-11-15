# K8sDDS-Ansible
Deploy a Kuberneters cluster using kubeadm on Raspberry Pi.
```sh

# Step1: install ansible on all RPs
sudo apt-get update && sudo apt-get install ansible

# Step1: edit ansible inventory file and replace master and worker nodes IP addresses to yours

# Step3: install depedencies
ansible-playbook -i k8sdds_inv install_dependencies/main.yml

# Step4: set up kubernetes cluster
# replace CNI url in create_k8s_cluster/master.yml to apply different k8s network CNI
ansible-playbook -i k8sdds_inv create_k8s_cluster/master.yml

ansible-playbook -i k8sdds_inv create_k8s_cluster/worker.yml

# reset the kubernetes cluster
ansible-playbook -i k8sdds_inv clean_k8s_cluster/reset.yml
```