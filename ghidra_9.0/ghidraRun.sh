#!/bin/bash

#----------------------------------------
# Ghidra launch
#----------------------------------------

# Maximum heap memory may be changed if default is inadequate. This will generally be up to 1/4 of 
# the physical memory available to the OS. Uncomment MAXMEM setting if non-default value is needed.
#MAXMEM=2G

# Resolve symbolic link if present and get the directory this script lives in.
# NOTE: "readlink -f" is best but works on Linux only, "readlink" will only work if your PWD
# contains the link you are calling (which is the best we can do on macOS), and the "echo" is the 
# fallback, which doesn't attempt to do anything with links.
SCRIPT_FILE="$(readlink -f "$0" 2>/dev/null || readlink "$0" 2>/dev/null || echo "$0")"
SCRIPT_DIR="${SCRIPT_FILE%/*}"

# Launch Ghidra
"${SCRIPT_DIR}"/support/launch.sh bg Ghidra "${MAXMEM}" "" ghidra.GhidraRun "$@"
