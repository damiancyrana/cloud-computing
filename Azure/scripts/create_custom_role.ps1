# Create Azure Custom Role
# by Damian Cyrana


# Role description and basic parameters
$azureRole = Get-AzRoleDefinition "Write role name"
$azureRole.ID = $null
$azureRole.Name = "Role name e.g Network Admin"
$azureRole.Description = "role description "
$azureRole.Actions.Clear()

# Specify the resources you want the user to access
$azureRole.Actions.Add("Microsoft.Storage/*/read")
$azureRole.Actions.Add("Microsoft.Compute/*/write")
$azureRole.AssignableScopes.clear()

# Enter the license to which you want to assign the role
$azureRole.AssignableScopes.Add("/subscriptions/xxxxxx")

New-AzRoleDefinition -Role $azureRole