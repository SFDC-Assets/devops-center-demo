sfdx shane:org:create -f config/project-scratch-def.json -d 30 -s --wait 60 --userprefix devops -o center.d1
sfdx force:package:install -p 04t6g000008nzOu -w 15 -r
sfdx force:source:push
sfdx shane:user:password:set -g User -l User -p salesforce1
sfdx shane:user:permset:assign -l User -g User -n sf_devops_NamedCredentials
sfdx shane:user:permset:assign -l User -g User -n sf_devops_InitializeEnvironments
sfdx shane:user:permset:assign -l User -g User -n DevOps_Center
sfdx shane:user:permset:assign -l User -g User -n DevOps_CenterManager
sfdx shane:user:permset:assign -l User -g User -n DevOps_CenterRelease
sfdx force:org:open

# Create 2nd org

# sfdx shane:org:create -f config/project-scratch-def.json -d 30 -s --wait 60 --userprefix devops -o center.d2
# sfdx shane:user:password:set -g User -l User -p salesforce1
