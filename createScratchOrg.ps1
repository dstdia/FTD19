

# Create scratch org
sfdx force:org:create -f config/project-scratch-def.json -a FTD_OOE -s

# Push metadata
sfdx force:source:push

# Assign Permissions
sfdx force:user:permset:assign -n FTD
