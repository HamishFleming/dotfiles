#! /bin/bash

#shutdown menu for dmenu

choice=$(echo -e "logout\nshutdown\nreboot\nsuspend\nhibernate" | dmenu)


case "$choice" in
  logout) i3-msg exit & ;;
  shutdown) shutdown -h now & ;;
  reboot) shutdown -r now & ;;
  suspend) pm-suspend & ;;
  hibernate) pm-hibernate & ;;
esac
