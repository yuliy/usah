
# Adding/modifying users

## Tools
There different ways of adding/modifying users on unix/linux systems. The basic (low-level) way of doing this is manually chaning these files:
  * `/etc/passwd` - list of all users (with ID, name, default-group, encrypted password etc)
  * `/etc/group` - list of all groups and their members
There also some additionals files like `/etc/shadow` (list of encrypted users' passwords) or `/etc/gshadow` (list of encrypted groups' passwords) etc. Names of these files may vary on different systems.

If you change these files manually, you should check whether these files are consistent and synced. Well, there are some tools that can help you checking. E.g. grpck. But you are to remember calling it manually.

The better ways of adding/modifying users are:
  * using tools `useradd`, `userdel`, `usermod` - if you wanna do it via command line on a single machine (or some limited list of machines)
  * using GUI tools in your system
  * using some wrap-system that allowes to modify users on multiple machines simultaneously (e.g. some corparate systems)

**Note!** In most systems command line tools are called `useradd`, `userdel`, `usermod`. But these tools may have different interface/behaviour in different systems. Moreover, these may be aliases to some system-specific tools. Hence, you'd better read corresponding man pages before using it.

## useradd/userdel/usermod tools (in Linux)
There are two basic tools of adding users in Linux: `useradd` and `adduser`. `adduser` is a Perl-wrap over `useradd`. `adduser` has more functionality. It allowes you to create home directories, copy configuration files etc. Configuration file for `adduser` tool is located at `/etc/adduser.conf`.

`adduser` has siblings: `addgroup`, `deluser`, `delgroup`.

Example of adding new user:
```(bash)
# Create new user "yuliy" with
#   in main group "faculty"
#   also added into group "famous"
#   with home directory ad "/home/math/yuliy"
#   and default interpreter "/bin/bash"
sudo useradd -с "Yuliy A." -d /home/math/yuliy -g faculty -G famous -m -s /bin/bash yuliy
```
