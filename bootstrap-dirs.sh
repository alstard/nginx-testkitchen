#!/bin/bash
set -x

new_project=$1

mkdir -p $new_project
cd $new_project

# Inventory and master playbook
touch production staging site.yml 

# Folders
mkdir -p group_vars host_vars library filter_plugins

# To create a role with all the folders (role is named common):

mkdir -p roles/common/{tasks,handlers,templates,files,vars,defaults,meta}
touch roles/common/{tasks,handlers,templates,files,vars,defaults,meta}/main.yml
