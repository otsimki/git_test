#include <linux/init.h>
#include <linux/module.h>

MODULE_LICENSE("Dual BSD/GPL");

static int __init welcome_init(void)
{
	printk(KERN_ALERT "Hello, Welcome to Linux World!\n");
	return 0;
}

static void __exit welcome_exit(void)
{
	printk(KERN_ALERT "See you, My Friend.\n");
}

module_init(welcome_init);
module_exit(welcome_exit);
