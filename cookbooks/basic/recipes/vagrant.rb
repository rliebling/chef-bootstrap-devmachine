LOCAL_FILE="/tmp/vagrant_1.2.7_x86_64.deb" 
remote_file LOCAL_FILE do
  source "http://files.vagrantup.com/packages/7ec0ee1d00a916f80b109a298bab08e391945243/vagrant_1.2.7_x86_64.deb"
end

bash "install vagrant" do
  code <<-EOC
  dpkg -i #{LOCAL_FILE}
  EOC
  not_if "dpkg --get-selections | grep vagrant.*install"
end

bash "install vagrant-aws" do
  code <<-EOC
  vagrant plugin install vagrant-aws
  EOC
  not_if "vagrant plugin list | grep vagrant-aws"
end
