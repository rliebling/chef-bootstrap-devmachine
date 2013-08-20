bash "configure percona repo" do
  code <<-EOC
    apt-key adv --keyserver keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A
    add-apt-repository 'deb http://repo.percona.com/apt raring main'
    add-apt-repository 'deb-src http://repo.percona.com/apt raring main'
    apt-get update
  EOC
  not_if "grep -h ^deb /etc/apt/sources.list /etc/apt/sources.list.d/* | grep percona"
end

directory "/etc/mysql/conf.d"

%w(libmysqlclient18:i386 libqt4-sql-mysql:i386 mysql-common) do |pkg_remove|
  package pkg_remove do
    action :remove
  end
end
package "libmysqlclient-dev"
package "percona-server-server-5.6"
