ls *.json > jsonlist
while IFS='' read -r line || [[ -n "$line" ]]; do
    python json-to-sql/j2s.py -i $line -o 'postgres://yourname@localhost:5432/test'
    rm -rf $line
done < "jsonlist"
