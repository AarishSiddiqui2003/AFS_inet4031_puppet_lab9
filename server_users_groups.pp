group { 'group01':
  ensure => present,
}

group { 'group02':
  ensure => present,
}

user { 'user04':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$6$xyz$qdO3OHfJknxz8S0xY9geaREmGemluK.RyAiq2/9.6koGuF/AxWihlUdmgviYjRtcadFfruEQW4u4PyvjJOuPX.',
  groups     => 'group01',
  managehome => true,
}

user { 'user05':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$6$xyz$sAvDz6fgyedtOBI2PYaNIcilJ.9dfj7x6XavldNGQi8catrU77nfDywaepFEV2owHfgtfkjcSmXd4aaoagi0W0',
  groups     => 'group02',
  managehome => true,
}

user { 'user06':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$6$xyz$hZOzrnZ5uiRJlaCevHTHyUO9FBd8nHiavEzBxNCIAKy7laN7QIchB0HI6O5RyRBK3./xXM1lN93KkwFqsdpPe1',
  groups     => ['group01', 'group02'],
  managehome => true,
}

user { 'user07':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$6$xyz$xrAlqlz7rUThmhFrgj5sNMA486ZDPoddpqo6a5o1SZwrpkv5UUkgA0oCRDNAAKcNDhLFGxIc/dXYnXl08i7AZ0',
  managehome => true,
}

