# Installs Nginx and configures Hello World homepage with a 301 redirect for /redirect_me

package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
  require    => Package['nginx'],
}

# Ensure Hello World! page exists
file { '/var/www/html/index.html':
  ensure  => file,
  content => "Hello World!\n",
  require => Package['nginx'],
}

# Replace Nginx default config with working redirect config
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => @(EOC),
  notify  => Service['nginx'],
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html;

    server_name _;

    location /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }

    location / {
        try_files \$uri \$uri/ =404;
    }
}
  | EOC
}

