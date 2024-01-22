# increase the amount of traffic an Nginx sever can handle.

# increase the ULIMIT of default file
exec {'fix--for--nginx':
   # Modify the ULIMIT value
    command => '/bin/sed -i "s/15/4096/" /etc/default/nginx',
   # specify the path for the sed command
    path   => '/user/local/bin/:/bin/',
}

#   Restart Nginx
exec { 'nginx restart':
   # Restart Nginx sever
   command => '/etc/init.d/nginx restart',
   # specify the path of init.d script
   path => '/etc/unit.d/',
}
