class vim {

# install VIM

    package { 'vim':
        ensure => latest
    }

# Copy the VIMRC to load Pathogen

    file { '.vimrc':
        name => '/home/will/.vimrc',
        owner => will,
        mode => '644',
        source => 'puppet:///modules/vim/.vimrc',
        require => Package['vim']
        }

# Copy the Pathogen Plugin

     file { ['/home/will/.vim',
             '/home/will/.vim/autoload']:
        ensure => directory
          }

     file { '/home/will/.vim/autoload/pathogen.vim':
        owner => will,
        mode => '644',
        source => 'puppet:///modules/vim/pathogen.vim',
        recurse => true
           } 

# Copy the Sensible Plugin

     file { ['/home/will/.vim/bundle',
             '/home/will/.vim/bundle/plugin']:
        ensure => directory
          }


  file { '/home/will/.vim/bundle/plugin/sensible.vim':
        owner => will,
        mode => '644',
        source => 'puppet:///modules/vim/plugin/sensible.vim',
        recurse => true,
        }

}
