include_recipe "git"

%w( tig gitk git-gui).each do |pkg|
  package pkg
end

bash "configure git" do
  user node["user"]["name"]
  code <<-EOC
    git config --global user.email #{node["git"]["email"]}
    git config --global user.name #{node["git"]["name"]}
    git config --global core.autocrlf false
    git config --global core.excludesfile ~/.gitignore
    git config --global push.default upstream
    git config --global branch.autosetuprebase always
    git config --global merge.summary true
    git config --global merge.conflictstyle diff3
    git config --global merge.tool gvimdiff
    git config --global mergetool.keepBackup false
    git config --global rebase.autosquash true
  EOC
end



