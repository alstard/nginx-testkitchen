#!/bin/bash
#set -x
new_project=$1

if [ -z "$new_project" ]; then
    echo "ERROR: new_project variable unset. Specify a new_project name on the command line"
    echo "ERROR: Exiting... "
    exit 1
fi

if [[ "$new_project" != "." ]]; then
    mkdir -p $new_project
    cd $new_project
fi

# Inventory and master playbook
#touch production staging site.yml 
touch site.yml

# Folders
mkdir -p group_vars host_vars library filter_plugins

# To create a role with all the folders (role is named common):
mkdir -p roles/common/{tasks,handlers,templates,files,vars,defaults,meta}
touch roles/common/{tasks,handlers,templates,files,vars,defaults,meta}/main.yml

# Create a default inventory file specifying localhost
mkdir -p inventory
echo "localhost" > ./inventory/hosts