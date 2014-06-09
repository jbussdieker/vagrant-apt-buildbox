class buildbot($ensure = present) {

  file { '/build':
    ensure => $ensure ? {
      absent  => absent,
      default => directory,
    },
  }

  file { '/build/build.sh':
    ensure => $ensure,
    mode   => 0755,
    source => 'puppet:///modules/buildbot/build.sh',
  }

}
