#include <stdio.h>
#include <stdlib.h>

// ./a.out < info >> wpa_supplicant.conf
int main(void)
{
	char *name, *psk;
	while (2 == scanf("%ms %ms", &name, &psk))
	{
		printf("%s %s\n", name, psk);
		free(name); free(psk);
	}
	return 0;
}
