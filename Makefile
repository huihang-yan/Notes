target_dir = /root/huihang/no-upload
target_conf = $(target_dir)/wifi-conf
general_conf = wpa_supplicant.conf
conf_wifi = conf-wifi

all: $(conf_wifi)
	tail -n 3 $(target_conf) | ./$(conf-wifi)

$(conf_wifi): $(conf_wifi).c
	gcc $? -o $@

# $@: $?
$(target_dir)/wpa_supplicant.conf: $(general_conf) $(target_conf)
	cat $(general_conf) > $@
	echo device_name=`head -n 1 $(target_dir)` >> $@

