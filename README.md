# Vagrant learn-oo-studio

Vagrant learn-oo-studio creates ready-to-go VM for [HP-OO EPR] (http://www8.hp.com/fr/fr/software-solutions/operations-orchestration-it-process-automation/) evaluation/testing

The following is an overview of the ready-to-go VMs:

+ **oo-studio:** Windows 2012R2 Standard VM with below component installed 
 + **Chocolatey:** A Machine Package Manager, like apt-get for Windows.
 + **Git**
 + **WinRar** 
 + **Notepad++** 
 + **Google Chrome**
 + **HP-OO Studio**
 + **HP-OO Central**

## Requirements

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads). Tested on 5.0.20, but should also work on 5.0.20+ release.
- [Vagrant](http://www.vagrantup.com/downloads.html). Tested on 1.7.4
- Your workstation must have a direct internet connection (not via proxy - if your internet connection is behind a proxy, please check Virtualbox and Vagrant documentation to update Vagrantfile)

**oo-studio** VM provisioned using [opentable/win-2012r2-standard-amd64-nocm] (https://atlas.hashicorp.com/opentable/boxes/win-2012r2-standard-amd64-nocm/) box from Atlas Hashicorp

## VMs details

VM | vCPU/vRAM | IP Address| user/password |  Administrator password |
---|---|---|---|---|
**oo-1070** | 2vCPU/4096 MB | 10.154.128.20 | vagrant | vagrant |

+ **Recommended hardware :** Computer with Multi-core CPU and 8GB+ memory
+ **Note :** If your computer hardware is less than 8GB memory you should decrease vRAM in Vagrantfile, Windows2012R2 standard should work fine with 2048MB but with less performances

## Installation

#### Getting started:

Run the commands below:

	git clone https://github.com/gilleslabs/learn-oo-1070
	cd learn-oo-1070


#### Prepare the installation:

In order to install bits you must first download them

###### Steps for preparing installation:

1. Copy the **EPR** Folder you get from the download to **learn-oo-1070/src** folder and rename EPR/**EPR 1070** folder EPR/EPR**1070** (**this has to be done only once**)

#### Launching the whole environment:

1. Run the commands below:

	```
	cd learn-oo-1070
	vagrant up
	```

2. The setup will take some time to finish (approximatively 45 minutes depending on your hardware). Sit back and enjoy!

3. When the setup is done you will be able to connect to any of the VM using your favorite RDP client and credentials provided in [VMs details] (https://github.com/gilleslabs/learn-oo-studio#vms-details) 
4. You will be able to connect to OO Central using Google Chrome and typing http://oo-designer.example.com:8080 from within the VM or from your host if you configure the host file accordingly

## Know issue ##
On some laptop running Windows 10, copy/paste (both on the host and the VM) doesn't work anymore after the VM has been provisioned
The workaround to fix it is to End Task **rdpclip.exe** on the VM 

## MIT

Copyright (c) 2016 Gilles Tosi

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE