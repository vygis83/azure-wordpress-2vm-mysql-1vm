$resgroupname = '' # Enter the resource group name

# Run the bellow to accept EULA for Wordpress
Get-AzureRmMarketplaceTerms -Publisher "miri-infotech-pvt-ltd" -Product "wordpress" -Name "wordpress" | Set-AzureRmMarketplaceTerms -Accept
# Run the bellow to accept EULA for Mysql
Get-AzureRmMarketplaceTerms -Publisher "jetware-srl" -Product "mysql" -Name "mysql57-ubuntu-1604" | Set-AzureRmMarketplaceTerms -Accept

# Start the deployment
New-AzureRmResourceGroupDeployment -TemplateFile .\azuredeploy.json -TemplateParameterFile .\azuredeploy.parameters.json -ResourceGroupName $resgroupname



