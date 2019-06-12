local sleep_time = {}

sleep_time_default = {600,800}

sleep_time[view_sample] = {500,800}
sleep_time[view_home] = sleep_time_default
sleep_time[view_bt_playing] = {2333,6000}
sleep_time[view_bt_playing2] = {2333,4999}
sleep_time[view_sys_online] = {1000,2000}

return sleep_time