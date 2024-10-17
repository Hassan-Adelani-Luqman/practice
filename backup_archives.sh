#!/usr/bin/env bash
unserName="4dee08f2da23"
host="4dee08f2da23.fa45f440.alu-cod.online"
archDir="archived_logs_group29"
if [! -d "$archDir"]; then 
	mkdir "$archDir"
else
	echo "the directory already exits"
fi
for eachFile in heart_rate_log.txt_*; do
	if [! -f "$eachFile"]; then
		echo "everything is backed up!"
	else
		mv "$eachFile" "$archDir"
	fi
done

scp -r $archDir $userName@$host:/home/
