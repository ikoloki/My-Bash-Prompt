#!/bin/bash

update_prompt() {
    export PS1="$(ls -la | awk '
	            ($9 ~ /^\./)      {hidden_count++}
              ($1 ~ /^d/)       {dir_count++}
              ($5 ~ /^[0-9]+$/) {total_size += $5}
        END { 
            printf "[🖬 %d 🖫 %d 🗀 %d 🗋 %.2fM 🗁 %s] \n\033[1;31m☭ \033[0m",
                   (NR-2),
                   hidden_count,
                   dir_count,
                   (total_size / (1024 * 1024)),
                   ENVIRON["PWD"]
        }'
    )"
}

PROMPT_COMMAND=update_prompt

