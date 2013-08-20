LOCAL_FILE="go1.1.2.linux-amd64.tar.gz" 
remote_file LOCAL_FILE do
  source "https://go.googlecode.com/files/go1.1.2.linux-amd64.tar.gz"
end

bash "install golang" do
  code <<-EOC
  tar -C /usr/local -xzf #{LOCAL_FILE}
  mkdir -p /etc/profile.d
  echo "export PATH=$PATH:/usr/local/go/bin" > /etc/profile.d/golang.sh
  EOC
  not_if "go version | grep 1.1.2"
end

