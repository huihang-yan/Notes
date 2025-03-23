target_dir = /root/huihang/no-upload
target_conf = $(target_dir)/wifi-conf
general_conf = wpa_supplicant.conf
conf_wifi = conf-wifi
conf_dependencies = Makefile $(general_conf) $(target_conf) $(conf_wifi)

# $@: $?
$(target_dir)/wpa_supplicant.conf: $(conf_dependencies)
	cat $(general_conf) > $@
	echo device_name=`head -n 1 $(target_conf)` >> $@
	tail -n 3 $(target_conf) | ./$(conf_wifi) >> $@

$(conf_wifi): $(conf_wifi).c
	gcc $? -o $@
