$group = Read-Host "Enter name of group"
$memberlist = get-content C:\scripts\members.txt
foreach ($member in $memberlist) {
    Add-DistributionGroupMember -Identity $group -Member $member
    }

Get-DistributionGroupMember -Identity $group