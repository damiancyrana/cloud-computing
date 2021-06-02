#--- Create AKS container ---#

az aks install-cli

$resourceGroup = Read-Host -Prompt 'Enter Resource Group'
$clusterName = Read-Host -Prompt 'Enter new clouster name'
$configurationFile = Read-Host -Prompt 'Enter path to YAML file'

#configure kubernetes CLI to use
az aks Get-Credentials --resource-group $resourceGroup --name $clusterName

#verfiy connection
kubectl get nodes

#deploy app using the YAML manifest
kubectl apply -f $configurationFile
