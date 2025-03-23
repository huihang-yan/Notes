#include <stdio.h>
#include <stdlib.h>

// ./a.out < info >> wpa_supplicant.conf
int main(void)
{
	char *name, *psk;
	int priority;
	while (3 == scanf("%ms %ms %d", &name, &psk, &priority))
	{
		if (priority >0)
			{ free(name); free(psk); continue; }
		printf("network={\n"
		       "	ssid=\"%s\"\n"
		       "        key_mgmt=WPA-PSK\n"
		       "	psk=\"%s\"\n"
		       "        priority=%d\n"
		       "}\n\n",
		       name, psk, priority);
		free(name); free(psk);
	}
	return 0;
}

// It is strange that the wireless turns back to work after adding
// the key_mgmt=WPA-PSK line.
//    The document says the default is WPA-PSK WPA-EAP. Maybe the EAP
// messed up the association?
