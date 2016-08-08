# -*- mode: ruby -*-
# vi: set ft=ruby :

######################################################################################################
#                                                                                                    #
# Vagrantfile for provisioning ready-to-go VM for learning Chef 12.6                                 #
#                                                                                                    #
# Author: Gilles Tosi                                                                                #
#                                                                                                    #
# The up-to-date version and associated dependencies/project documentation is available at:          #
#                                                                                                    #
# https://github.com/gilleslabs/learn-chef/                                                          #
#                                                                                                    #
######################################################################################################




Vagrant.configure(2) do |config|

	
	
	config.vm.define "oo-1070" do |win|
        win.vm.box = "opentable/win-2012r2-standard-amd64-nocm"
			config.vm.provider "virtualbox" do |w|
				w.cpus = 2
				w.memory = 8192
				w.customize ["modifyvm", :id, "--vram", "128"]
				w.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
			end
		win.vm.communicator = "winrm"
		win.winrm.retry_limit = 30
        win.winrm.retry_delay = 10
        win.vm.network "private_network", ip: "10.154.128.20"
		win.vm.provision :shell, path: "shell/main.cmd"
		win.vm.provision :shell, path: "shell/InstallBoxStarter.bat"
		win.vm.provision :shell, path: "shell/install_tool.cmd"
		
		win.vm.provision :shell, path: "shell/configure_mgmt.cmd"
		
    end

	config.vm.define "ras-1070" do |win|
        win.vm.box = "opentable/win-2012r2-standard-amd64-nocm"
			config.vm.provider "virtualbox" do |w|
				w.cpus = 2
				w.memory = 2048
				w.customize ["modifyvm", :id, "--vram", "128"]
				w.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
			end
		win.vm.communicator = "winrm"
		win.winrm.retry_limit = 30
        win.winrm.retry_delay = 10
        win.vm.network "private_network", ip: "10.154.128.21"
		win.vm.provision :shell, path: "shell/main.cmd"
		win.vm.provision :shell, path: "shell/InstallBoxStarterRAS.bat"
		win.vm.provision :shell, path: "shell/install_toolRAS.cmd"
		
		win.vm.provision :shell, path: "shell/configure_ras.cmd"
		
    end
	
	
	
end
