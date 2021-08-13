#!/bin/bash

echo -ne "Create tenant, would you like to continue? " 
read -p "Y|N: "
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo "Create Tenant"
   /usr/bin/ansible-playbook -i hosts 1-create-tenant.yml -vvv
fi
echo -ne "Create schema, would you like to continue? " 
read -p "Y|N: "
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo "Create schema"
   /usr/bin/ansible-playbook -i hosts 2-create-schema.yml -vvv
fi
echo -ne "Add sites to schema, would you like to continue? " 
read -p "Y|N: "
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo "Add sites to schema"
   /usr/bin/ansible-playbook -i hosts 3-add-sites-schema.yml -vvv
fi
echo -ne "Add anp, epg, bd, vrf to template, would you like to continue? " 
read -p "Y|N: "
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo "Add anp, epg, bd, vrf to template"
   /usr/bin/ansible-playbook -i hosts 4-add-anp-epg-bd-vrf.yml -vvv
fi
echo -ne "Deploy schema, would you like to continue? " 
read -p "Y|N: "
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo "Deploy schema"
   /usr/bin/ansible-playbook -i hosts 5-deploy-schema.yml -vvv
fi
