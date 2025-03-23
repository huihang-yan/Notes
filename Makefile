target_dir = /root/huihang/no-upload
target_conf = $(target_dir)/wifi-conf
general_conf = wpa_supplicant.conf

# $@: $?
$(target_dir)/wpa_supplicant.conf: $(general_conf) $(target_conf)
	cat $(general_conf) > $@
	echo device_name=`head -n 1 $(target_dir)` >> $@

