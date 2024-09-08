#include "xmultihart_ip.h"

XMultihart_ip_Config XMultihart_ip_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,multihart-ip-1.0", /* compatible */
		0x40000000 /* reg */
	},
	 {
		 NULL
	}
};