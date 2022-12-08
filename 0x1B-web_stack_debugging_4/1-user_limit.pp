# Enable the user holberton to login and open files without any error message

# Increase the hard file limit for holberton user
exec { 'increase-hard-file-limit':
  command => 'sed -i "/holberton hard/s/5/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin'
}

# Increase the soft file limit for holberton user
exec { 'increase-soft-file-limit':
  command => 'sed -i "/holberton soft/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin'
}
