# Reset Password for Account in AD

function Reset_Password_Account () {
    $Username = Read-Host "Enter your username" 
    Write-Host "Changing Password for account" $Username

    $Newpassword=Read-Host "Enter Temporary Password" -AsSecureString
    Write-Host "Running Script..."

    Set-ADAccountPassword $Username -NewPassword $Newpassword
    Write-Host "Temporary password set"

    Set-ADUser $Username -ChangePasswordAtLogon $True
    Write-Host "You can now change password on login"

    # Stop powershell from exiting after script is run
    Read-Host "Press enter to exit"
    
}


$Readhost = Read-Host "To run script: Enter y 
To decline script: Enter n and exit PowerShell 
Press Enter to accept your input. ( y / n )" 
    Switch ($ReadHost) 
    { 
       Y {Reset_Password_Account} 
       N {exit}  
    }

