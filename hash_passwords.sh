while IFS='' read -r line || [[ -n "$line" ]]; do
  mkpasswd -m sha-512 $line >> hashes_$1
done < "$1"
