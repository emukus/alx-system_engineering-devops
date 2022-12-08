# Increases the amount of traffic an Nginx server can handle
# Increases the open file limit for Nginx

exec {'Increase nginx limit':
  command => "sed -i 's/15/4096/' /etc/default/nginx",
  path    => '/usr/local/bin/:/bin/'
} ->

# Restart Nginx
exec { 'nginx-restart':
  command => 'ngix restart',
  path    => '/etc/init.d'
}
