<<<<<<< HEAD
#!/bin/bash
#@author Luke Snyder
## Checks every user on the system for a crontab. If there is a crontab, print the username and the contents, minus comments.

for user in `cat /etc/passwd | cut -d ":" -f 1`; do
        cron=$(sudo -u $user crontab -l 2> /dev/null| grep -v "#")
        if [ "$cron" ]; then
                echo "$user"
                echo "$cron"
        fi
done
=======
#!/bin/bash
## Checks every user on the system for a crontab. If there is a crontab, print the username and the contents, minus comments.

for user in `cat /etc/passwd | cut -d ":" -f 1`; do
        cron=$(sudo -u $user crontab -l 2> /dev/null| grep -v "#")
        if [ "$cron" ]; then
                echo "$user"
                echo "$cron"
        fi
done
>>>>>>> 173befd190fdc66f03ac7c28e618cce69b9e19ab
