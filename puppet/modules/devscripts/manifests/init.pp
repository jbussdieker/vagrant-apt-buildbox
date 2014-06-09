class devscripts($ensure = present) {

  package { 'devscripts':
    ensure => $ensure,
  }

}
