# Install nginx
package { 'nginx':
  ensure => installed,
}

# Ensure nginx service is enabled and running
service { 'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
  require    => Package['nginx'],
}

# Insert custom header using Puppet fact
exec { 'insert_x_served_by_header':
  command => "sed -i '/location \\/ {/a \\    add_header X-Served-By \"${::hostname}\";' /etc/nginx/sites-available/default",
  unless  => "grep -q 'add_header X-Served-By' /etc/nginx/sites-available/default",
  require => Package['nginx'],
}

# Reload nginx if config was modified
exec { 'reload_nginx':
  command     => '/usr/sbin/nginx -t && systemctl reload nginx',
  refreshonly => true,
  subscribe   => Exec['insert_x_served_by_header'],
}

