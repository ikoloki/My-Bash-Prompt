# Yeah, I used this for a long while and didnt even realize that complete secions of it didn't work 
PS1="[🖬 \$(ls -1 | wc -l | sed 's: ::g') 🗋 \$(ls -lah | grep -m 1 total | sed 's/total //')  🗀 \w] \n\033[1;31m☭ \033[0m"
