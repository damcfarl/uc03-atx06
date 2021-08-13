#/bin/bash
echo -ne "Undeploy Template, schema and Tenant, would you like to continue? " 
read -p "Y|N: "
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo "okay"
   /usr/bin/ansible-playbook -i hosts r1-undeploy-template.yml
   /usr/bin/ansible-playbook -i hosts r2-delete-template-from-schema.yml
   /usr/bin/ansible-playbook -i hosts r3-delete-tenant.yml
fi
