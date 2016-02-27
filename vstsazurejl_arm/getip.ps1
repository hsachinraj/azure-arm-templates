#For RM based VMs
$rgName=$args[0]

$vmIpAddress = (Get-AzureRmPublicIpAddress -ResourceGroupName $rgName|Select-Object IpAddress).ipAddress
Write-Verbose -Verbose "Ip address=$vmIpAddress"
	
Write-Verbose -Verbose "##vso[task.setvariable variable=ipaddr;]$vmIpAddress" 


#This is for classic VM instances	
<#
$servicename=$args[0]
$vmname=$args[1]
Write-Verbose -Verbose "Service name = $servicename"
Write-Verbose -Verbose "VM name = $vmname"
$vmIpAddress = (Get-AzureVm -ServiceName $servicename -Name $vmname  | get-AzureEndpoint -Name HTTP | select-object vip).vip
$vmHTTPPort = (Get-AzureVm -ServiceName $servicename -Name $vmname  | get-AzureEndpoint -Name HTTP | select-object port).port
Write-Verbose -Verbose "HTTP POrt=$vmHTTPPort"
Write-Verbose -Verbose "##vso[task.setvariable variable=ipaddr;]$vmIpAddress" 
Write-Verbose -Verbose "##vso[task.setvariable variable=httpport;]$vmHTTPPort" 
#>
	
