name                'cop_sudoers'
maintainer          'Copious, Inc.'
maintainer_email    'engineering@copiousinc.com'
license             'MIT'
description         'Base OS packages.'
long_description    IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version             '0.0.1'
source_url          'https://github.com/copious-cookbooks/sudoers'
issues_url          'https://github.com/copious-cookbooks/sudoers/issues'

supports 'ubuntu', '>= 12.04'
supports 'debian', '>= 7'
supports 'rhel'
supports 'centos', '>= 6'
