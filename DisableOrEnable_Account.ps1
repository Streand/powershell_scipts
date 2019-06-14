function DisableUser() {
    Disable-ADAccount $Username 

    # Stop powershell from exiting after script is run
    Read-Host "This account is now disabled.
    Press enter to exit..."
}
function EnableUser() {
    Enable-ADAccount $Username 
    # Stop powershell from exiting after script is run
    Read-Host "Your account is now enabled and ready to use.
    Press enter to exit..."
}
$Username = Read-Host "Enter your username" 
$Readhost = Read-Host "Disable And Enable a User Account 
To enable user account enter: e
To deactivate user account enter: d
To exit script: enter d
Press enter to accept your input. ( e / d / n )" 
    Switch ($ReadHost) 
    { 
       e {EnableUser} 
       d {DisableUser} 
       n {exit}   
    }
