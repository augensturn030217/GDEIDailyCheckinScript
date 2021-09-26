#!/bin/bash
username=""
password=""
cookie=$(curl -D - 'https://tb.gdei.edu.cn/login'   -H 'Connection: keep-alive'   -H 'sec-ch-ua: "Chromium";v="94", "Microsoft Edge";v="94", ";Not A Brand";v="99"'   -H 'Accept: */*'   -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8'   -H 'X-Requested-With: XMLHttpRequest'   -H 'sec-ch-ua-mobile: ?0'   -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36 Edg/94.0.992.31'   -H 'sec-ch-ua-platform: "Windows"'   -H 'Origin: https://tb.gdei.edu.cn'   -H 'Sec-Fetch-Site: same-origin'   -H 'Sec-Fetch-Mode: cors'   -H 'Sec-Fetch-Dest: empty'   -H 'Referer: https://tb.gdei.edu.cn/login'   -H 'Accept-Language: zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6'      --data-raw "username=$username&password=$password&rdf=on" -sSL -o /dev/null  --compressed | grep JSESSIONID= | awk -F= '{print $2}' | awk -F\; '{print $1}')
time=$(date +%s)
curl -s "https://tb.gdei.edu.cn/system/yqdc/yjtb?_=$time" \
  -H 'Connection: keep-alive' \
  -H 'sec-ch-ua: "Chromium";v="94", "Microsoft Edge";v="94", ";Not A Brand";v="99"' \
  -H 'Accept: */*' \
  -H 'X-Requested-With: XMLHttpRequest' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36 Edg/94.0.992.31' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'Sec-Fetch-Site: same-origin' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Referer: https://tb.gdei.edu.cn/system/main' \
  -H 'Accept-Language: zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6' \
  -H "Cookie: JSESSIONID=$cookie" \
  --compressed

curl -s "https://tb.gdei.edu.cn/system/mrcj/yjcwj?_=$time" \
  -H 'Connection: keep-alive' \
  -H 'sec-ch-ua: "Chromium";v="94", "Microsoft Edge";v="94", ";Not A Brand";v="99"' \
  -H 'Accept: */*' \
  -H 'X-Requested-With: XMLHttpRequest' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36 Edg/94.0.992.31' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'Sec-Fetch-Site: same-origin' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Referer: https://tb.gdei.edu.cn/system/main' \
  -H 'Accept-Language: zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6' \
  -H "Cookie: JSESSIONID=$cookie" \
  --compressed


