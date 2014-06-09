node default {

  class { 'devscripts':
    ensure => present,
  }

  class { 'buildbot':
    ensure => present,
  }

}
