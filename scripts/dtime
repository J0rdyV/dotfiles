#!/bin/bash
#
# a simple dmenu session script 
#
###

choice=$(echo -e "Meetings\nTimetracking\nLearning\nMails\nEten\nCodeReview\nBugfixes" | dmenu -c -l 15 -fn "Cascadia Code:style=Regular:size=14:antialias=true:autohint=true" -nb "#1d2021" -nf "#7c6f64" -sb "#458588" -sf "#ebdbb2" -p 'TimeW: ')

case "$choice" in
  Meetings) timew start Meetings & ;;
  Learning) timew start Learning & ;;
  Timetracking) timew start Timetracking & ;;
  Mails) timew start Mails & ;;
  Eten) timew start Eten & ;;
  CodeReview) timew start CodeReview & ;;
  Meetings) timew start Meetings & ;;
esac
