#---- the script will overwrite existing tags ---#


Get-AzTag Detailed

(Get-AzResource -TagName department).name
(Get-AzResource -TagValue ux).name

# Add an existing tag an non existing tag to a resource with a tag already
$resourceTags = @{'project' = 'ux'; 'location' = 'Warsaw'}
$resourceGroup = Get-AzResourceGroup -Name 'demo-rg'
$resourceGroup.ResourceID

New-AzTag = -ResourceID $resourceGroup.ResourceID -Tag $resourceTags