Start-Process "c:\windows\system32\sysprep\sysprep.exe" -ArgumentList "/generalize /oobe /shutdown /unattend:a:\answerfile.xml"