cat $1 | while read line
do
param="url=$line"
response=$(curl 'https://sitereview.bluecoat.com/rest/categorization' 2>/dev/null -H 'Accept: */*' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.5' -H 'Cache-Control: no-cache' -H 'Connection: keep-alive' -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H 'Host: sitereview.bluecoat.com' -H 'Pragma: no-cache' -H 'Referer: https://sitereview.bluecoat.com/sitereview.jsp' -H 'User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0' -H 'X-ClickOnceSupport: ( .NET CLR 3.5.30729; .NET4.0E)' -H 'X-Requested-With: XMLHttpRequest' --data $param)

parseHere=$(( ${#response} - 50 ))

echo ---------------------------------------------
echo $line

echo ${response:$parseHere} | cut -d '>' -f2 | cut -d '<' -f1
echo ---------------------------------------------
done
