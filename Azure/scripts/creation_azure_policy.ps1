# cc

$resourceGroupName = Read-Host -Prompt 'Resource Group Name'
$NewPolicyAssignmentName = Read-Host -Prompt 'New Policy Assignment Name'
$NewPolicyAssignmentDisplayName = Read-Host -Prompt 'New Policy Assignment DisplayName'

$resourceGroup = Get-AzResourceGroup -Name '$resourceGroupName'

# get a reference to the built in policy definition to assign
$policyDefinition = Get-AzPolicyDefinition | Where-Object {$_.Properties.DisplayName -eq 'Audit VMs that do not use managed disks'}

# create the policy assignment by definitionourceID
New-AzPolicyAssignment -Name $NewPolicyAssignmentName -DisplayName '$NewPolicyAssignmentDisplayName' -Scope $resourceGroupName.ResourceID -PolicyDefinition $policyDefinition
