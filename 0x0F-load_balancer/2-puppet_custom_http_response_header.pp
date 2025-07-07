# Puppet manifest to install and configure Nginx with a custom X-Served-By header

package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
  hasstatus  => true,
  require    => Package['nginx'],
}

# Set the custom header in the default Nginx site config
exec { 'add_x_served_by_header':
  command => "/bin/sed -i '/location \\/ {/a \\\\tadd_header X-Served-By \\\"${hostname}\\\";' /etc/nginx/sites-available/default",
  unless  => "/bin/grep -q 'add_header X-Served-By' /etc/nginx/sites-available/default",
  require => Package['nginx'],
}

# Reload Nginx to apply the config change
exec { 'reload_nginx':
  command     => '/usr/sbin/nginx -t && /bin/systemctl reload nginx',
  refreshonly => true,
  subscribe   => Exec['add_x_served_by_header'],
}
