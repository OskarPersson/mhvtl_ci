Vagrant.configure("2") do |config|
    config.vm.box_check_update = false
  
  
    config.vm.define "centos" do |instance|
      instance.vm.box = "centos7"
    end  

    config.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
    end
  
    config.vm.synced_folder ".", "/vagrant_data"
  
    config.vm.provision "shell", path: ./install.sh
  end
