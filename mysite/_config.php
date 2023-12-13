<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	'type' => 'MySQLDatabase',
	'server' => 'localhost',
	'username' => 'hurtwoodschool',
	'password' => 'hurtwoodschool',
	'database' => 'hurtwoodschool',
	'path' => ''
);

Security::setDefaultAdmin('admin', 'password');

// Set the site locale
i18n::set_locale('en_US');

Director::set_environment_type('dev');