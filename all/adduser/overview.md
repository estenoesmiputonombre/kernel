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

* adduser will choose the first availabel __UID__ from the range specified for normal users in the config file. The __UID__ can be overridden with the `--uid` option.

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
