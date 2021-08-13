#/bin/bash
echo -ne "Undeploy Template, would you like to continue? " 
read -p "Y|N: "
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo "Undeploy Template"
   /usr/bin/ansible-playbook -i hosts r1-undeploy-template.yml
   /usr/bin/ansible-playbook -i hosts r2-delete-template-from-schema.yml
   /usr/bin/ansible-playbook -i hosts r3-delete-tenant.yml
   /usr/bin/ansible-playbook -i hosts r4-delete-swagger.yml
fi
