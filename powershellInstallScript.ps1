#$Computer = Read-Host -Prompt 'Enter the Computer Name you are accessing'

########## Install Software On PC ##########

#New-Item -ItemType directory -Path "\\$Computer\c$\temp\UpdateVisualC++"

#    Copy-Item "\\company\data\Apps\Microsoft Visual Studio C++ Redist 2008\vcredist_*.exe" "\\$Computer\c$\temp\UpdateVisualC++" -Recurse
#Import-Module InstallSoftware
#Start-Process powershell -Verb runAs

Write-Host "Installing the Software"

#Write-Host $Args[0]

#$pathvargs = {inatallationFiles\git.exe /VERYSILENT /SUPPRESSMSGBOXES /COMPONENTS="icons,ext\reg\shellhere,assoc,assoc_sh" }
#$pathvargs = {$arg1 /VERYSILENT /SUPPRESSMSGBOXES /COMPONENTS="icons,ext\reg\shellhere,assoc,assoc_sh" }
#$Job = Invoke-Command -ScriptBlock $pathvargs
    #Invoke-Command -ComputerName $Computer -ScriptBlock {Start-Process "\\installationFiles\Git*.exe" -ArgumentList "/q" -Wait}


#Write-Host $pathvargs
$HostName = hostname
#Write-Host $HostName
$session = PSSession
#Write-Host $Args[0]
#Write-Host $Args[1]
#$Job = Invoke-Command -ScriptBlock $pathvargs -Session $session -AsJob
#Wait-Job -Job $Job

#Start-Process -Wait -FilePath "inatallationFiles\git.exe" -ArgumentList '/VERYSILENT /SUPPRESSMSGBOXES /COMPONENTS="icons,ext\reg\shellhere,assoc,assoc_sh"' -PassThru
#Start-Process -Wait -FilePath $Args[0] -ArgumentList '/VERYSILENT /SUPPRESSMSGBOXES /COMPONENTS="icons,ext\reg\shellhere,assoc,assoc_sh"' -PassThru

Start-Process -Wait -FilePath $Args[0] -ArgumentList $Args[1] -Verb runas -PassThru

########### Remove temporary files and folder on each PC ##########
#
#    Write-Host "Removing Temporary files on $Computer"
#    $RemovalPath = "\\$Computer\c$\temp\UpdateVisualC++"
#    Get-ChildItem  -Path $RemovalPath -Recurse  | Remove-Item -Force -Recurse
#    Remove-Item $RemovalPath -Force -Recurse
#
#

# $pathvargs = {C:\Temp\UpgradeClientInstaller\setup.exe /S /v/qn }
#Invoke-Command -ScriptBlock $pathvargs



