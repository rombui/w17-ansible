ssh -i ansible-key.pem ec2-user@ec2-54-242-119-230.compute-1.amazonaws.com
ssh -i ansible-key.pem ubuntu@ec2-52-91-219-174.compute-1.amazonaws.com
ls
ansible all-m ping
ansible all -m ping
clear
ls
cd ansible-dev/
ls
ansible all -m ping
ansible ws -m ping
ansible db -m ping
ansible all -m ping -l ws
ansible all  -a "uptime"
ansible all  -a "uname -r"
ansible all  -a "date"
ansible ws -a 'date'
ansible db -a 'date'
ansible all -m file -a 'path=/tmp/ansible.txt'
ansible all -m file -a 'path=/tmp/ansible.txt state=touch'
clear
ls
ansible all -m file -a 'path=/tmp/ansible.txt state=absent'
ansible all -m file -a 'path=/tmp/ansible.txt state=directory'
clear
ansible all -m group -a 'name=cloud state=present'
ansible all -m group -a 'name=cloud state=present' -b
clear
ls
ansible-playbook play1.yaml --syntax
ansible-playbook play1.yaml --syntax-check
ansible-playbook play1.yaml
