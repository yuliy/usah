
# Bash

## How to set command line input mode?
Vi mode:
```
set -o vi
```

Emacs mode (default):
```
set -o emacs
```

## How to show last command?
To show the command in command-line press `<Ctrl+P>`.

Use built-in command `fc` to open some editor and insert last command into it.

## How to check whether path is a directory?
```(bash)
if [ -d "$path" ]; then
    # $path is a path a directory that exists
fi
```

Other useful operators:
```(bash)
-d - File exists and it is a folder
-e - File exists
-r - You have a right to read a file
-s - File exists and it's not empty
-w - You have a right wo write to a file
...
```
