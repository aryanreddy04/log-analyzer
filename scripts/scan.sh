#!/bin/bash

echo "🔍 Starting Log Scan..."
echo "Scan Time: $(date)"

echo "Enter keyword to search:"
read keyword

echo "---- Results for '$keyword' ----"
grep "$keyword" logs/*.txt

echo "---- Count ----"
grep -c "$keyword" logs/*.txt

echo "---- IP Addresses ----"
grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' logs/*.txt

echo "✅ Scan Complete"
grep "$keyword" logs/*.txt > output/result.txt
