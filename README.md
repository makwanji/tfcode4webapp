# tfcode4webapp

This Terraform code will provision two tire web and DB environment and also install required software via Ansible.

# project folder stucure
infra - store a code to create env using terraform
sourcode - has a code of application
ansible - store a playbook

# VM Used in this project

```
docker-ce  - This VM will host all software (Jenkin)
cka-master - is a K8 master server
cka-worker - is a k8 workder node
```

# Tool used & setup in this project 
Jenkin:
 - create a code in K8 cluster
 - expose that pod

webapp:
 - create a deplyment which run code based on source/code foder 

CI/CD:
 - once code updated in sourcode folder, it do following action
   - create a new pod with new code
