#!/bin/sh

wifi_status=$(nmcli networking connectivity)
if [ "$wifi_status"  = "full" ]; then
	nmcli networking off
else
	nmcli networking on
fi
