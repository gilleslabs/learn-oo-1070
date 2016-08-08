mkdir ~/oo-src

cp -R $env:SystemDrive/vagrant/src/* ~/oo-src/

cd ~/oo-src
cp $env:SystemDrive/vagrant/src/oo-silent-install-ras ~/oo-src/epr/epr1070/build/

~/oo-src/epr/epr1070/build/installer-win64.exe -gm2 -s oo-silent-install-ras | Out-Null


$1 = New-WinUserLanguageList en-US
$1.Add("fr-FR")
Set-WinUserLanguageList $1 -Force

$HomeUrl="http://10.154.128.20:8080"
set-ItemProperty -Path 'HKCU:\Software\Microsoft\Internet Explorer\main' -Name "Start Page" -Value $HomeUrl

$file = "$env:windir\System32\drivers\etc\hosts"
"10.154.128.20 oo-designer.example.com" | Add-Content -PassThru $file
choco install -y googlechrome
$env:Path = $env:Path + ";C:\Program Files\Git\usr\bin"
netsh advfirewall set allprofiles state off
Rename-Computer OORAS
Restart-Computer -Force

