#!/bin/sh
echo "�� Top IPs:"
cut -d" " -f1 sample_log.txt | sort | uniq -c | sort -nr

echo "�� Failed login attempts:"
grep "Failed password" sample_log.txt | wc -l

echo "��️  IPs with more than 1 failure:"
cut -d" " -f1 sample_log.txt | sort | uniq -c | awk '$1 > 1'
