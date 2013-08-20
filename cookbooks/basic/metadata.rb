%w(java runit tmux sudo curl git).each do |recipe|
  depends recipe
end

