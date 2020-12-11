function DeployEnv {
    param (
        # Parameter help description
        [Parameter(Mandatory=$true)]
        [string]$rgName
    )#end param
    
    $rgExists = az group exists -n $rgName
    if(!$rgExists)
    {
        Write-Output "starting deployment..."
    }
    else {
        Write-Output "Resource Group with this name already exists under this subscription"
    }
}
