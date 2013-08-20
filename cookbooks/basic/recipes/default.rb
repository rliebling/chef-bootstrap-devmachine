#include_recipe "curl"
#include_recipe "basic::vagrant"
#include_recipe "basic::git"
#include_recipe "basic::golang"
#include_recipe "basic::ruby"
#include_recipe "basic::python"
include_recipe "basic::java"
#include_recipe "basic::mysql"

# oracle java jdk
# hg
# virtualbox
# vagrant
# vagrant-aws
#

%w(runit tmux dos2unix vim-gnome skype ).each do |pkg|
#  package pkg
end


