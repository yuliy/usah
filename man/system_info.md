
# System info

## Tools
List of useful tools:
  * top
  * htop
  * prstat
  * topas
  * vmstat
  * /proc

## /proc
`/proc` is a place in unix file system where you can find extended system information. See also `man proc` to know more about this folder.

### How to get list of file descriptors opened by a process?
```(bash)
ls /proc/<pid>/fd/
```
