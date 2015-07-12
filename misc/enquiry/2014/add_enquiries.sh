#!/bin/sh

# print emails of those, who wanted to cooperate with OpenAlt z. s. (if there is an empty line, it means somebody forgot to give us an email)
# awk '{if (FNR == 3) { email = $0 } else if (FNR == 14) { if ($0 ~ /.+/) {print email}; quit; } }' *
# print all emails
# awk '{if (FNR == 3 && $0 ~ /.+/) { print $0; quit; } }' *

dir=responses
pre=enquiry_response_
post=.txt

while true; do
  [ -d "$dir" ] && {
    # highest existing index
    _idx="$(cd "$dir" && ls -1 | awk 'BEGIN {
      x=length("'"$pre"'")
      y=length("'"$post"'")
    } {
      sub("^.{"x"}", "", $0)
      sub(".{"y"}$", "", $0)
      print
    }' | sort -n | tail -n 1)"
  }
  fname="$pre$((_idx +1))$post"

  while printf 'Create new response sheet "%s"? y|n ' "$dir/$fname"; do
    read _r
    case "$_r" in
      y|Y) break;;
      n|N) exit;;
      *) ;;
    esac
  done

  [ -d "$dir" ] || mkdir "$dir" || exit $?
  [ -e "$dir/$fname" ] && {
    printf 'Naming schema mismatch: file "%s" already exists\n' \
      "$dir/$fname" >&2
    exit 1
  }

  cp template.txt "$dir/$fname"
  nvim -c 'wincmd w | startinsert' -O schema.txt "$dir/$fname"
done
