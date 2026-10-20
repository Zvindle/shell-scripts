echo
echo "      $(adb shell getprop ro.product.model) ($(adb shell getprop ro.product.name)) - $(adb shell settings get global device_name)"
echo "             - current charge: $(adb shell cat /sys/class/power_supply/battery/capacity)%"
echo "             - cycle count: $(adb shell cat /sys/class/power_supply/battery/cycle_count)"
echo "             - approx. battery health: $(( $(adb shell cat /sys/class/power_supply/battery/charge_full) * 100 / $(adb shell cat /sys/class/power_supply/battery/charge_full_design) ))%"
