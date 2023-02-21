$Updates=Start-WuScan
if ($Updates) {install-Wuupdates -updates $Updates} else {write-Host "==> no pending updates"}