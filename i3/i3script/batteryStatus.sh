#!/bin/bash

cg=$(acpi -b | grep -w -o "Charging")
full=$(acpi -b | grep -w -o "Full")
dg=$(acpi -b | grep -w -o "Discharging")
# BAT=$(acpi -b | grep -E -o '[0-9][0-9]?%')
BAT=$(acpi -b | grep -E -o '[0-9][0-9]?%'| grep -E -o '[0-9][0-9]')


if [[ $cg == "Charging" ]]; then
	echo "充电中..."
elif [[ $full == "Full" ]]; then
	echo "已充满"
elif [[ $dg == "Discharging" ]]; then
	if [[ $BAT -le 20 && $BAT != 00 ]]; then
		echo "电量不足，及时充电"
		# dialog --msgbox "电量不足，及时充电" 40 80
	else
		echo "电量充足"
	fi
fi

