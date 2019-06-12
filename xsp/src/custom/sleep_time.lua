local sleep_time = {}

sleep_time_default = {570,830}

sleep_time[view_sample] = {500,800}
sleep_time[view_home] = sleep_time_default
sleep_time[view_bt_playing] = {2300,6000}
sleep_time[view_bt_playing2] = {2300,5000}
sleep_time[view_sys_online] = {2300,5000}

return sleep_time