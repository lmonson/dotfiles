#!/usr/bin/env bash

n() {
  export NOTES_DIR=$HOME/Documents/notes
  export NOTES_TEMPLATE=$NOTES_DIR/template.md
  export NOTES_YEAR=$(date +"%Y")
  export NOTES_MONTH=$(date +"%m")
  export NOTES_DAY=$(date +"%d")

  if [[ "$1" = "add" && "$2" != "" ]]
  then
      export NOTES_PATH=$NOTES_DIR/$2
      mkdir -p $NOTES_PATH
      cd $NOTES_PATH

      if [[ "$3" = "" ]]
      then
        MAX=1000;
        PREFIX="$NOTES_YEAR-$NOTES_MONTH-$NOTES_DAY-log-"
        SUFFIX=".md"

        for i in `seq 1 $MAX` ; do
            file="${PREFIX}${i}${SUFFIX}"
            if [ ! -e $file ] ; then
                break;
            fi
        done
        cp $NOTES_TEMPLATE $file
        code $file
        return
      else
        code $3
        return
      fi
  fi
  echo "Usage: n add <proj> [notename]"


}



