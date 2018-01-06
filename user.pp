user { 'u2':
	managehome 	=> true,
	uid 		=> '2002',
	ensure 		=> 'present',
}

user { 'u1':
	managehome 	=> true,
	uid 		=> '2003',
	ensure 		=> 'present',
	groups		=> [ 'root','users'],
	password	=> pw_hash('password', 'SHA-512', 'random'),
}
