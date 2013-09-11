include_recipe "curl"
include_recipe "basic::vagrant"
include_recipe "basic::git"
include_recipe "basic::golang"
include_recipe "basic::ruby"
include_recipe "basic::python"
include_recipe "basic::java"
include_recipe "basic::mysql"

# oracle java jdk
# hg
# virtualbox
# vagrant
# vagrant-aws
#

%w(runit tmux dos2unix vim-gnome exuberant-ctags skype fonts-inconsolata).each do |pkg|
  package pkg
end

package 'xclip' # to support tmux clipboard integration

package 'gir1.2-gtop-2.0' # for the multi-core system monitoring applet

