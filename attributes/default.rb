#
# Cookbook Name:: php
# Attribute:: default
#
# Copyright 2013, Issei Murasawa
#

default['php']['packages'] = ['php', 'php-mbstring', 'php-intl', 'php-pecl-zendopcache']

default['php']['config']['display_errors'] = 'Off'

default['php']['config']['date']['timezone'] = 'Asia/Tokyo'

default['php']['config']['default_charset'] = 'UTF-8'
default['php']['config']['expose_php'] = 'Off'

default['php']['config']['memory_limit'] = '128M'

default['php']['config']['realpath_cache_size'] = '4096K'
default['php']['config']['realpath_cache_ttl'] = '7200'

default['php']['config']['mbstring'] = {
  :language => 'Japanese',
  :internal_encoding => 'UTF-8'
}

default['php']['config']['opcache'] = {
  :enable_cli => 'Off',
  :memory_consumption => '128',
  :interned_strings_buffer => '8',
  :max_accelerated_files => '4000',
  :validate_timestamps => 'On',
  :revalidate_freq => '2',
  :enable_file_override => 'Off',
  :fast_shutdown => 'On'
}

default['php']['config']['xdebug'] = {
  :remote_enable => 'On',
  :remote_host => 'localhost',
  :remote_port => '9000',
  :profiler_enable => 'On',
  :profiler_output_dir => '/tmp',
  :max_nesting_level => '1000',
  :idekey => 'PHPSTORM'
}
