bash "install rbenv" do
  cwd node["user"]["home"]
  user node["user"]["name"]
  code <<-EOC
    git clone https://github.com/sstephenson/rbenv .rbenv
    cd .rbenv
    git checkout v0.4.0
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> #{node["user"]["home"]}/.profile
    echo 'eval "$(rbenv init -)"' >> #{node["user"]["home"]}/.profile
  EOC
  not_if {File.exists? "#{node['user']['home']}/.rbenv"}

end
