# Shell tricks

List the 5th column from myfile

   cat myfile | awk '{print $5}'

Show the top 20 occurences of IP addresses (first column) from an Apache common log file. First column is the count, second is the IP address.

    cat mylogfile | awk '{print $1}' | sort | uniq -c | sort -n | tail -n20