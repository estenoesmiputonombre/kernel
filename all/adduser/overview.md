# adduser

add a user to the system.

## Synopsis

```
adduser [options] [--home DIR] [--shell SHELL] [--no-create-home]
[--uid ID] [--firstuid ID] [--lastuid ID] [--ingroup GROUP] [--gid ID]
[--disabled-password] [--disabled-login] [--gecos GECOS]
[--add_extra_groups] user
```

## Options

```
[--quiet] [--debug] [--force-badname] [--help|-h] [--version] [--conf FILE]
```

## Description

adduser add users to the system according to command line options and configuration in `/etc/adduser.conf`. It is friendlier than useradd program. By default, Debian policy conformant UID and GID values, creating a home directory with skeletal configuration, running a custom script, and other features.


## Add a normal user

* If it is called with non-option argument and without the `--system` or `--group` options, adduser will add a normal user.

* adduser will choose the first available __UID__ from the range specified for normal users in the config file. The __UID__ can be overridden with the `--uid` option.

* The range specified in the config file may be overridden with the `--firstuid` and `--lastuid` options.

* By default, each user in Debian GNU/Linux is given a corresponding group with the same name. Usergroups allow group writable directories to be easily maintaned by 
	
	+ placing the appropiate user in the new group.

	+ setting the set-group-ID bit in the directory.

	+ ensuring that all users use a mask of `002`. 

* If this option is turned off by setting __USERGROUPS__ to no. all users GIDs are set to __USERS-GID__

* Users primary groups can also be overridden from the command line with the `--gid` or `--ingroup` options to set the group by __id__ or __name__.

* Users can be added to one or more groups defined in `adduser.conf` by 

	+ setting __ADD-EXTRA-GROUPS__ to 1.

	+ passing `--add_extra_groups` on the commandline.

* adduser will create a home directory subject to 
	
	+ __DHOME__
	
	+  __GROUPHOMES__
	
	+ __LETTERHOMES__

* The home directory can be overridden from the command line with:

	+ home with `--home`

	+ shell with `--shell`

* The home directory's set-group-ID bit is set if __USERGROUPS__.

* adduser will copy files from __SKEL__ into the home directory and prompt for finger(gecos) information and a password.

* The gecos may also with the `--gecos` option.

* With the `--disabled-login` option, the account will be created but will be disabled until a password is set.

* The `--disabled-password` option will not set a passowrd, but login is still possible (for example with SSH RSA keys)

* If the file /usr/local/sbin/adduser.local exists, it will be executed adter the user account has been set up in order to do any local setup.

* The arguments passed to adduser.local are:

	+ username

	+ uid

	+ gid

	+ home-directory

* The environment variable __VERBOSE__ is set according to the following rule:

	+ 0 if `--quiet` is specified

	+ 1 if neither `--quiet` nor `--debug` is specified

	+ 2 if `--debug` is specified
