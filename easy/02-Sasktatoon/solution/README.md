1. Strip off everything unwanted, let's just only keep the IP's in a single line.
2. Use simple sort to bring all the duplicate values together.
3. Find out the number of occurrences using `uniq -c`.
4. To get the largest first using `sort -nr`

- Final command being:
    `awk -F' ' '{print $1}' access.log | sort | uniq -c | sort -nr`