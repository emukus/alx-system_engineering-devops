# Fixes bad `phpp` extensions to `php` in the WordPress file `wp-settings.php`

exec { 'replace-fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}
