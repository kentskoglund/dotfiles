#!/bin/sh
RSS_URL="https://www.nrk.no/nyheter/siste.rss"

curl --silent "$RSS_URL" | \

#sed -e /'(?<=title\>)(.*)(?=\<\/title)'/g > rsstest.txt
#grep -E '(?<=title\>)(.*)(?=\<\/title)' > rsstest.txt
perl -ne 'if (/\<title\>(.*?)\<\/title\>/) { print "$1\n"; }' > /home/kent/Downloads/rss_nrk.txt

#Fjerne første linjen
#tail -n +1 | \
#sed -n '1,$p' | \
#sed -e '1,3d' | \

#cat > /home/kent/Downloads/rss_nrk.txt

# uten escape
#perl -ne 'print "$1\n" if (/<title>(.*?)<\/title>/)'
