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

default['php']['config']['realpath_cache_size'] = '4096K'
default['php']['config']['realpath_cache_ttl'] = '7200'

default['php']['config']['mbstring'] = {
  :language => 'Japanese',
  :internal_encoding => 'UTF-8'
}

default['php']['config']['opcache'] = {
  :memory_consumption => '128',
  :interned_strings_buffer => '8',
  :max_accelerated_files => '4000',
  :revalidate_freq => '2',
  :fast_shutdown => 'On'
}
