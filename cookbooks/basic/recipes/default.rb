include_recipe "git"
include_recipe "curl"
include_recipe "basic::vagrant"

#include_recipe "runit"
#include_recipe "tmux"
# oracle java jdk
# hg
# virtualbox
# vagrant
# vagrant-aws
#

%w(dos2unix golang vim-gnome ).each do |pkg|
  package pkg
end


