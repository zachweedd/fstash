function fstash () {
  STASH_COUNT=`git stash list | tail -n1 | awk '{print substr($1,8,2)}'`

  if [ "$STASH_COUNT" -ge "0" ]; then
    for i in `seq 0 $STASH_COUNT`
    do
      FOUND_IN_STASH=`git stash show stash@{${i}} | grep -c $1`
      if [ "$FOUND_IN_STASH" -ge 1 ]; then
        echo "Your file was found in stash number: $i"
        break
      fi
    done
    echo "We were unable to find the specified file"
  fi

}
