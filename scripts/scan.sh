#!/bin/bash

echo "🔍 Starting Log Scan..."
echo "Scan Time: $(date)"

echo "Enter keyword to search:"
read keyword

echo "---- Results for '$keyword' ----"
grep "$keyword" logs/*.txt

echo "---- Count ----"
grep -c "$keyword" logs/*.txt

echo "✅ Scan Complete"
grep "$keyword" logs/*.txt > output/result.txt
