#!/bin/bash
#
#  Append a note to an existing Task warrior task
#
TASKBIN=task
TASKFOLDER=$HOME/.task/tasknotes/

# Preferred extension for tasknotes
EXT=".md"

# Message that gets annotated to the task to indicate that notes exist
NOTEMSG="Notes"

# Display usage if task number not supplied on cli
if [ $# != 1 ]; then
	echo "Usage: $0 <unique-task-id>"
	exit 1
fi

#find UUID from given task
uuid=`$TASKBIN rc._forcecolor=no rc.defaultwidth=300 $* info | grep UUID | grep -o "[-a-f0-9]*\$"`

# build full path & file name to store notes in
file="$TASKFOLDER$uuid$EXT"

# determine if notes file already exists
fileexists=0
if [ -f $file ]; then
  fileexists=1
fi

#create/edit $file with editor
$SHELL -c "$EDITOR $file"

# if note was just created, add NOTEMSG as annotation to task
if [ $fileexists = 0 ]; then
  if [ -f $file ]; then
    $SHELL -c "$TASKBIN $* annotate $NOTEMSG"
 fi
fi

exit 0
