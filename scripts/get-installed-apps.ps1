#   Description:
# This script removes unwanted Apps that come with Windows. If you  do not want
# to remove certain Apps comment out the corresponding lines below.

Get-AppxPackage | select name
echo "Hide/remove above with: Get-AppxPackage -Name <name> -AllUsers | Remove-AppxPackage -AllUsers"

DISM /Online /Get-ProvisionedAppxPackages | select-string Packagename

echo "Uninstall above with DISM /Online /Remove-ProvisionedAppxPackage /PackageName:<name>"

