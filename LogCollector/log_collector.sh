 #!/bin/sh
 
 log_path=/cache/boot_logcat.log
 
 while true 
 do
     df | grep cache
     cache_check=$?
     echo ${cache_check}
     if [ ${cache_check} = 1 ]; then
         echo "wait for cache!"
         sleep 2
     else
         echo "cache mounted!"
         break
     fi
 done
 
 if [ -e ${log_path}".1" ]; then
     mv /cache/boot_logcat.log.1 /cache/boot_logcat.log.2
 fi
 
 if [ -e ${log_path} ]; then
     mv /cache/boot_logcat.log /cache/boot_logcat.log.1
 fi
 
/system/bin/logcat -v time > /cache/boot_logcat.log

