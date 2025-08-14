# Set Firefox as the default browser
$firefoxPath = "C:\Users\zsmith4\AppData\Local\Mozilla Firefox\firefox.exe"
Start-Process -FilePath $firefoxPath -ArgumentList "--setDefaultBrowser"
