class fuel() {

package { 'unzip': ensure => present }
file {'/fuel': ensure => directory }

file { "/fuel/vbox-scripts-5.0.zip":
        owner   => "root",
        group   => "root",
        mode    => 0644,
        source  => "puppet:///modules/fuel/vbox-scripts-5.0.zip",
}

exec { 'unpack':
        path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ],
        command => "unzip -u /fuel/vbox-scripts-5.0.zip -d /fuel",
        require => File['/fuel/vbox-scripts-5.0.zip'],
}

file { "/fuel/virtualbox/config.sh":
        owner   => "root",
        group   => "root",
        mode    => 0755,
        source  => "puppet:///modules/fuel/config.sh",
        require => Exec['unpack'],
}

file { "/fuel/MirantisOpenStack-5.0.iso":
        owner   => "root",
        group   => "root",
        mode    => 0644,
        source  => "puppet:///modules/fuel/MirantisOpenStack-5.0.iso",
}

file { "/fuel/virtualbox/iso/MirantisOpenStack-5.0.iso":
        owner   => "root",
        group   => "root",
        mode    => 0644,
        ensure  => link,
        target  => '/fuel/MirantisOpenStack-5.0.iso',
        require => Exec['unpack'],
}

}
