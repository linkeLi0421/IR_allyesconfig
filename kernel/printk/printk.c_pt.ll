; ModuleID = '/llk/IR_all_yes/kernel/printk/printk.c_pt.bc'
source_filename = "../kernel/printk/printk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+console_printk\22, \22a\22\09"
module asm "\09.weak\09__crc_console_printk\09\09\09\09"
module asm "\09.long\09__crc_console_printk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22console_printk\22\09\09\09\09\09"
module asm "__kstrtabns_console_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ignore_console_lock_warning\22, \22a\22\09"
module asm "\09.weak\09__crc_ignore_console_lock_warning\09\09\09\09"
module asm "\09.long\09__crc_ignore_console_lock_warning\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ignore_console_lock_warning:\09\09\09\09\09"
module asm "\09.asciz \09\22ignore_console_lock_warning\22\09\09\09\09\09"
module asm "__kstrtabns_ignore_console_lock_warning:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+oops_in_progress\22, \22a\22\09"
module asm "\09.weak\09__crc_oops_in_progress\09\09\09\09"
module asm "\09.long\09__crc_oops_in_progress\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_oops_in_progress:\09\09\09\09\09"
module asm "\09.asciz \09\22oops_in_progress\22\09\09\09\09\09"
module asm "__kstrtabns_oops_in_progress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+console_drivers\22, \22a\22\09"
module asm "\09.weak\09__crc_console_drivers\09\09\09\09"
module asm "\09.long\09__crc_console_drivers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_drivers:\09\09\09\09\09"
module asm "\09.asciz \09\22console_drivers\22\09\09\09\09\09"
module asm "__kstrtabns_console_drivers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+console_set_on_cmdline\22, \22a\22\09"
module asm "\09.weak\09__crc_console_set_on_cmdline\09\09\09\09"
module asm "\09.long\09__crc_console_set_on_cmdline\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_set_on_cmdline:\09\09\09\09\09"
module asm "\09.asciz \09\22console_set_on_cmdline\22\09\09\09\09\09"
module asm "__kstrtabns_console_set_on_cmdline:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vprintk_emit\22, \22a\22\09"
module asm "\09.weak\09__crc_vprintk_emit\09\09\09\09"
module asm "\09.long\09__crc_vprintk_emit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vprintk_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22vprintk_emit\22\09\09\09\09\09"
module asm "__kstrtabns_vprintk_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vprintk_default\22, \22a\22\09"
module asm "\09.weak\09__crc_vprintk_default\09\09\09\09"
module asm "\09.long\09__crc_vprintk_default\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vprintk_default:\09\09\09\09\09"
module asm "\09.asciz \09\22vprintk_default\22\09\09\09\09\09"
module asm "__kstrtabns_vprintk_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_printk\22, \22a\22\09"
module asm "\09.weak\09__crc__printk\09\09\09\09"
module asm "\09.long\09__crc__printk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__printk:\09\09\09\09\09"
module asm "\09.asciz \09\22_printk\22\09\09\09\09\09"
module asm "__kstrtabns__printk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+console_suspend_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_console_suspend_enabled\09\09\09\09"
module asm "\09.long\09__crc_console_suspend_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_suspend_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22console_suspend_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_console_suspend_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+console_verbose\22, \22a\22\09"
module asm "\09.weak\09__crc_console_verbose\09\09\09\09"
module asm "\09.long\09__crc_console_verbose\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_verbose:\09\09\09\09\09"
module asm "\09.asciz \09\22console_verbose\22\09\09\09\09\09"
module asm "__kstrtabns_console_verbose:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+console_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_console_lock\09\09\09\09"
module asm "\09.long\09__crc_console_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22console_lock\22\09\09\09\09\09"
module asm "__kstrtabns_console_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+console_trylock\22, \22a\22\09"
module asm "\09.weak\09__crc_console_trylock\09\09\09\09"
module asm "\09.long\09__crc_console_trylock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22console_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_console_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+is_console_locked\22, \22a\22\09"
module asm "\09.weak\09__crc_is_console_locked\09\09\09\09"
module asm "\09.long\09__crc_is_console_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_console_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22is_console_locked\22\09\09\09\09\09"
module asm "__kstrtabns_is_console_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+console_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_console_unlock\09\09\09\09"
module asm "\09.long\09__crc_console_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22console_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_console_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+console_conditional_schedule\22, \22a\22\09"
module asm "\09.weak\09__crc_console_conditional_schedule\09\09\09\09"
module asm "\09.long\09__crc_console_conditional_schedule\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_conditional_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22console_conditional_schedule\22\09\09\09\09\09"
module asm "__kstrtabns_console_conditional_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+console_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_console_stop\09\09\09\09"
module asm "\09.long\09__crc_console_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22console_stop\22\09\09\09\09\09"
module asm "__kstrtabns_console_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+console_start\22, \22a\22\09"
module asm "\09.weak\09__crc_console_start\09\09\09\09"
module asm "\09.long\09__crc_console_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_start:\09\09\09\09\09"
module asm "\09.asciz \09\22console_start\22\09\09\09\09\09"
module asm "__kstrtabns_console_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+register_console\22, \22a\22\09"
module asm "\09.weak\09__crc_register_console\09\09\09\09"
module asm "\09.long\09__crc_register_console\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_console:\09\09\09\09\09"
module asm "\09.asciz \09\22register_console\22\09\09\09\09\09"
module asm "__kstrtabns_register_console:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_console\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_console\09\09\09\09"
module asm "\09.long\09__crc_unregister_console\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_console:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_console\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_console:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__printk_ratelimit\22, \22a\22\09"
module asm "\09.weak\09__crc___printk_ratelimit\09\09\09\09"
module asm "\09.long\09__crc___printk_ratelimit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___printk_ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22__printk_ratelimit\22\09\09\09\09\09"
module asm "__kstrtabns___printk_ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+printk_timed_ratelimit\22, \22a\22\09"
module asm "\09.weak\09__crc_printk_timed_ratelimit\09\09\09\09"
module asm "\09.long\09__crc_printk_timed_ratelimit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_printk_timed_ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22printk_timed_ratelimit\22\09\09\09\09\09"
module asm "__kstrtabns_printk_timed_ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kmsg_dump_register\22, \22a\22\09"
module asm "\09.weak\09__crc_kmsg_dump_register\09\09\09\09"
module asm "\09.long\09__crc_kmsg_dump_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmsg_dump_register:\09\09\09\09\09"
module asm "\09.asciz \09\22kmsg_dump_register\22\09\09\09\09\09"
module asm "__kstrtabns_kmsg_dump_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kmsg_dump_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_kmsg_dump_unregister\09\09\09\09"
module asm "\09.long\09__crc_kmsg_dump_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmsg_dump_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22kmsg_dump_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_kmsg_dump_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kmsg_dump_reason_str\22, \22a\22\09"
module asm "\09.weak\09__crc_kmsg_dump_reason_str\09\09\09\09"
module asm "\09.long\09__crc_kmsg_dump_reason_str\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmsg_dump_reason_str:\09\09\09\09\09"
module asm "\09.asciz \09\22kmsg_dump_reason_str\22\09\09\09\09\09"
module asm "__kstrtabns_kmsg_dump_reason_str:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kmsg_dump_get_line\22, \22a\22\09"
module asm "\09.weak\09__crc_kmsg_dump_get_line\09\09\09\09"
module asm "\09.long\09__crc_kmsg_dump_get_line\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmsg_dump_get_line:\09\09\09\09\09"
module asm "\09.asciz \09\22kmsg_dump_get_line\22\09\09\09\09\09"
module asm "__kstrtabns_kmsg_dump_get_line:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kmsg_dump_get_buffer\22, \22a\22\09"
module asm "\09.weak\09__crc_kmsg_dump_get_buffer\09\09\09\09"
module asm "\09.long\09__crc_kmsg_dump_get_buffer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmsg_dump_get_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22kmsg_dump_get_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_kmsg_dump_get_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kmsg_dump_rewind\22, \22a\22\09"
module asm "\09.weak\09__crc_kmsg_dump_rewind\09\09\09\09"
module asm "\09.long\09__crc_kmsg_dump_rewind\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmsg_dump_rewind:\09\09\09\09\09"
module asm "\09.asciz \09\22kmsg_dump_rewind\22\09\09\09\09\09"
module asm "__kstrtabns_kmsg_dump_rewind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__printk_wait_on_cpu_lock\22, \22a\22\09"
module asm "\09.weak\09__crc___printk_wait_on_cpu_lock\09\09\09\09"
module asm "\09.long\09__crc___printk_wait_on_cpu_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___printk_wait_on_cpu_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22__printk_wait_on_cpu_lock\22\09\09\09\09\09"
module asm "__kstrtabns___printk_wait_on_cpu_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__printk_cpu_trylock\22, \22a\22\09"
module asm "\09.weak\09__crc___printk_cpu_trylock\09\09\09\09"
module asm "\09.long\09__crc___printk_cpu_trylock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___printk_cpu_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22__printk_cpu_trylock\22\09\09\09\09\09"
module asm "__kstrtabns___printk_cpu_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__printk_cpu_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc___printk_cpu_unlock\09\09\09\09"
module asm "\09.long\09__crc___printk_cpu_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___printk_cpu_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22__printk_cpu_unlock\22\09\09\09\09\09"
module asm "__kstrtabns___printk_cpu_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%union.anon.105 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.printk_ringbuffer = type { %struct.prb_desc_ring, %struct.prb_data_ring, %struct.atomic_t }
%struct.prb_desc_ring = type { i32, ptr, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.prb_data_ring = type { i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.latched_seq = type { %struct.seqcount_latch_t, [2 x i64] }
%struct.seqcount_latch_t = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.80 }
%union.anon.80 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.prb_desc = type { %struct.atomic_t, %struct.prb_data_blk_lpos }
%struct.prb_data_blk_lpos = type { i32, i32 }
%struct.printk_info = type { i64, i64, i16, i8, i8, i32, %struct.dev_printk_info }
%struct.dev_printk_info = type { [16 x i8], [48 x i8] }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.console_cmdline = type { [16 x i8], i32, i8, ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_console = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.devkmsg_user = type { %struct.atomic64_t, %struct.ratelimit_state, %struct.mutex, [8192 x i8], %struct.printk_info, [8192 x i8], %struct.printk_record }
%struct.atomic64_t = type { i64 }
%struct.printk_record = type { ptr, ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.72, %union.anon.73 }
%union.anon.72 = type { ptr }
%union.anon.73 = type { i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.66, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.66 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.__va_list = type { ptr }
%struct.prb_reserved_entry = type { ptr, i32, i32, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.kmsg_dumper = type { %struct.list_head, ptr, i32, i8 }
%struct.kmsg_dump_iter = type { i64, i64 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_console = internal constant [8 x i8] c"console\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_console = dso_local global %struct.static_call_key { ptr @__traceiter_console }, align 4
@__tracepoint_console = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_console, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_console, ptr null, ptr @__traceiter_console, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_console = internal constant ptr @__tracepoint_console, section "__tracepoints_ptrs", align 4
@str__printk__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"printk\00", [25 x i8] zeroinitializer }, align 32
@trace_event_fields_console = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.89, %union.anon.0 { %struct.anon { ptr @.str.90, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_console = internal global %struct.trace_event_class { ptr @str__printk__trace_system_name, ptr @trace_event_raw_event_console, ptr @perf_trace_console, ptr @trace_event_reg, ptr @trace_event_fields_console, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_console, i64 24), ptr getelementptr (i8, ptr @event_class_console, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_console = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_console, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_console = internal global { [21 x i8], [43 x i8] } { [21 x i8] c"\22%s\22, __get_str(msg)\00", [43 x i8] zeroinitializer }, align 32
@event_console = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_console, %union.anon.1 { ptr @__tracepoint_console }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_console }, ptr @print_fmt_console, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_console = internal global ptr @event_console, section "_ftrace_events", align 4
@__bpf_trace_tp_map_console = internal global %union.anon.105 { %struct.bpf_raw_event_map { ptr @__tracepoint_console, ptr @__bpf_trace_console, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@console_printk = dso_local global { [4 x i32], [16 x i8] } { [4 x i32] [i32 7, i32 4, i32 1, i32 7], [16 x i8] zeroinitializer }, align 32
@__kstrtab_console_printk = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_printk = external dso_local constant [0 x i8], align 1
@__ksymtab_console_printk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_printk to i32), ptr @__kstrtab_console_printk, ptr @__kstrtabns_console_printk }, section "___ksymtab_gpl+console_printk", align 4
@ignore_console_lock_warning = dso_local global %struct.atomic_t zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_ignore_console_lock_warning = external dso_local constant [0 x i8], align 1
@__kstrtabns_ignore_console_lock_warning = external dso_local constant [0 x i8], align 1
@__ksymtab_ignore_console_lock_warning = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ignore_console_lock_warning to i32), ptr @__kstrtab_ignore_console_lock_warning, ptr @__kstrtabns_ignore_console_lock_warning }, section "___ksymtab+ignore_console_lock_warning", align 4
@oops_in_progress = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_oops_in_progress = external dso_local constant [0 x i8], align 1
@__kstrtabns_oops_in_progress = external dso_local constant [0 x i8], align 1
@__ksymtab_oops_in_progress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @oops_in_progress to i32), ptr @__kstrtab_oops_in_progress, ptr @__kstrtabns_oops_in_progress }, section "___ksymtab+oops_in_progress", align 4
@console_drivers = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_console_drivers = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_drivers = external dso_local constant [0 x i8], align 1
@__ksymtab_console_drivers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_drivers to i32), ptr @__kstrtab_console_drivers, ptr @__kstrtabns_console_drivers }, section "___ksymtab_gpl+console_drivers", align 4
@__setup_str_control_devkmsg = internal constant [16 x i8] c"printk.devkmsg=\00", section ".init.rodata", align 1
@__setup_control_devkmsg = internal global %struct.obs_kernel_param { ptr @__setup_str_control_devkmsg, ptr @control_devkmsg, i32 0 }, section ".init.setup", align 4
@devkmsg_log_str = dso_local global { [10 x i8], [22 x i8] } { [10 x i8] c"ratelimit\00", [22 x i8] zeroinitializer }, align 32
@devkmsg_log = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@console_set_on_cmdline = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_console_set_on_cmdline = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_set_on_cmdline = external dso_local constant [0 x i8], align 1
@__ksymtab_console_set_on_cmdline = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_set_on_cmdline to i32), ptr @__kstrtab_console_set_on_cmdline, ptr @__kstrtabns_console_set_on_cmdline }, section "___ksymtab+console_set_on_cmdline", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"log_wait.lock\00", [18 x i8] zeroinitializer }, align 32
@log_wait = dso_local global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @log_wait, i64 44), ptr getelementptr (i8, ptr @log_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@__printk_percpu_data_ready = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@log_buf = internal global { ptr, [28 x i8] } { ptr @__log_buf, [28 x i8] zeroinitializer }, align 32
@log_buf_len = internal global { i32, [28 x i8] } { i32 131072, [28 x i8] zeroinitializer }, align 32
@dmesg_restrict = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@kmsg_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @devkmsg_llseek, ptr @devkmsg_read, ptr null, ptr null, ptr @devkmsg_write, ptr null, ptr null, ptr null, ptr @devkmsg_poll, ptr null, ptr null, ptr null, i32 0, ptr @devkmsg_open, ptr null, ptr @devkmsg_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SYMBOL(%s)=%lx\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"prb\00", [28 x i8] zeroinitializer }, align 32
@prb = internal global { ptr, [28 x i8] } { ptr @printk_rb_static, [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"printk_rb_static\00", [47 x i8] zeroinitializer }, align 32
@printk_rb_static = internal global { %struct.printk_ringbuffer, [56 x i8] } { %struct.printk_ringbuffer { %struct.prb_desc_ring { i32 12, ptr @_printk_rb_static_descs, ptr @_printk_rb_static_infos, %struct.atomic_t { i32 1073737727 }, %struct.atomic_t { i32 1073737727 } }, %struct.prb_data_ring { i32 17, ptr @__log_buf, %struct.atomic_t { i32 -131072 }, %struct.atomic_t { i32 -131072 } }, %struct.atomic_t zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clear_seq\00", [22 x i8] zeroinitializer }, align 32
@clear_seq = internal global { %struct.latched_seq, [48 x i8] } { %struct.latched_seq { %struct.seqcount_latch_t { %struct.seqcount { i32 0, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.105, i8 0, i8 0, i8 0, i32 0, i32 0 } } }, [2 x i64] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SIZE(%s)=%lu\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"printk_ringbuffer\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"OFFSET(%s.%s)=%lu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"desc_ring\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"text_data_ring\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fail\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"prb_desc_ring\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"count_bits\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"descs\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"infos\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"head_id\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tail_id\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prb_desc\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"state_var\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"text_blk_lpos\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"prb_data_blk_lpos\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"begin\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"next\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"printk_info\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"seq\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ts_nsec\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"text_len\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"caller_id\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_info\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dev_printk_info\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"subsystem\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LENGTH(%s)=%lu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"printk_info_subsystem\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"printk_info_device\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"prb_data_ring\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"size_bits\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"head_lpos\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tail_lpos\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atomic_long_t\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"counter\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"latched_seq\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"val\00", [28 x i8] zeroinitializer }, align 32
@__setup_str_log_buf_len_setup = internal constant [12 x i8] c"log_buf_len\00", section ".init.rodata", align 1
@__setup_log_buf_len_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_log_buf_len_setup, ptr @log_buf_len_setup, i32 1 }, section ".init.setup", align 4
@__log_buf = internal global [131072 x i8] zeroinitializer, align 4
@new_log_buf_len = internal unnamed_addr global i32 0, section ".init.data", align 4
@setup_log_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.46, i32 1092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013printk: new_log_buf_len: %lu too small\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"setup_log_buf\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kernel/printk/printk.c\00", [41 x i8] zeroinitializer }, align 32
@setup_log_buf._entry_ptr = internal global ptr @setup_log_buf._entry, section ".printk_index", align 4
@setup_log_buf._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str.46, i32 1099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013printk: log_buf_len: %lu text bytes not available\0A\00", [43 x i8] zeroinitializer }, align 32
@setup_log_buf._entry_ptr.49 = internal global ptr @setup_log_buf._entry.47, section ".printk_index", align 4
@setup_log_buf._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.45, ptr @.str.46, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013printk: log_buf_len: %zu desc bytes not available\0A\00", [43 x i8] zeroinitializer }, align 32
@setup_log_buf._entry_ptr.52 = internal global ptr @setup_log_buf._entry.50, section ".printk_index", align 4
@setup_log_buf._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.45, ptr @.str.46, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013printk: log_buf_len: %zu info bytes not available\0A\00", [43 x i8] zeroinitializer }, align 32
@setup_log_buf._entry_ptr.55 = internal global ptr @setup_log_buf._entry.53, section ".printk_index", align 4
@setup_text_buf = internal global [976 x i8] zeroinitializer, section ".init.data", align 1
@printk_rb_dynamic = internal global { %struct.printk_ringbuffer, [56 x i8] } zeroinitializer, align 32
@setup_log_buf._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.45, ptr @.str.46, i32 1160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013printk: dropped %llu messages\0A\00", [63 x i8] zeroinitializer }, align 32
@setup_log_buf._entry_ptr.58 = internal global ptr @setup_log_buf._entry.56, section ".printk_index", align 4
@setup_log_buf._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.45, ptr @.str.46, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016printk: log_buf_len: %u bytes\0A\00", [63 x i8] zeroinitializer }, align 32
@setup_log_buf._entry_ptr.61 = internal global ptr @setup_log_buf._entry.59, section ".printk_index", align 4
@setup_log_buf._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.45, ptr @.str.46, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016printk: early log buf free: %u(%u%%)\0A\00", [56 x i8] zeroinitializer }, align 32
@setup_log_buf._entry_ptr.64 = internal global ptr @setup_log_buf._entry.62, section ".printk_index", align 4
@__setup_str_ignore_loglevel_setup = internal constant [16 x i8] c"ignore_loglevel\00", section ".init.rodata", align 1
@__setup_ignore_loglevel_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_ignore_loglevel_setup, ptr @ignore_loglevel_setup, i32 1 }, section ".init.setup", align 4
@__param_str_ignore_loglevel = internal constant [23 x i8] c"printk.ignore_loglevel\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ignore_loglevel = internal global i8 0, section ".data..read_mostly", align 1
@__param_ignore_loglevel = internal constant %struct.kernel_param { ptr @__param_str_ignore_loglevel, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.80 { ptr @ignore_loglevel } }, section "__param", align 4
@__UNIQUE_ID_ignore_logleveltype266 = internal constant [37 x i8] c"printk.parmtype=ignore_loglevel:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ignore_loglevel267 = internal constant [96 x i8] c"printk.parm=ignore_loglevel:ignore loglevel setting (prints all kernel messages to the console)\00", section ".modinfo", align 1
@__setup_str_boot_delay_setup = internal constant [11 x i8] c"boot_delay\00", section ".init.rodata", align 1
@__setup_boot_delay_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_boot_delay_setup, ptr @boot_delay_setup, i32 1 }, section ".init.setup", align 4
@__param_str_time = internal constant [12 x i8] c"printk.time\00", align 1
@printk_time = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_time = internal constant %struct.kernel_param { ptr @__param_str_time, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.80 { ptr @printk_time } }, section "__param", align 4
@__UNIQUE_ID_timetype269 = internal constant [26 x i8] c"printk.parmtype=time:bool\00", section ".modinfo", align 1
@do_syslog.saved_console_loglevel = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@syslog_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.124, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @syslog_lock, i64 52), ptr getelementptr (i8, ptr @syslog_lock, i64 52) }, ptr @syslog_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.125, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@syslog_seq = internal global { i64, [24 x i8] } zeroinitializer, align 32
@syslog_partial = internal global { i32, [28 x i8] } zeroinitializer, align 32
@syslog_time = internal global { i8, [31 x i8] } zeroinitializer, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_syslog\00", [47 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__syslog = internal global %struct.syscall_metadata { ptr @.str.67, i32 -1, i32 3, ptr @types__syslog, ptr @args__syslog, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__syslog, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__syslog, i64 20) }, ptr @event_enter__syslog, ptr @event_exit__syslog }, align 4
@event_enter__syslog = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.1 { ptr @.str.65 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__syslog, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__syslog = internal global ptr @event_enter__syslog, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_syslog\00", [16 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__syslog = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.1 { ptr @.str.66 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__syslog, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__syslog = internal global ptr @event_exit__syslog, section "_ftrace_events", align 4
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_syslog\00", [21 x i8] zeroinitializer }, align 32
@types__syslog = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.130, ptr @.str.131, ptr @.str.130], [20 x i8] zeroinitializer }, align 32
@args__syslog = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.132, ptr @.str.133, ptr @.str.134], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__syslog = internal global ptr @__syscall_meta__syslog, section "__syscalls_metadata", align 4
@trunc_msg = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"<truncated>\00", [20 x i8] zeroinitializer }, align 32
@suppress_printk = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@__kstrtab_vprintk_emit = external dso_local constant [0 x i8], align 1
@__kstrtabns_vprintk_emit = external dso_local constant [0 x i8], align 1
@__ksymtab_vprintk_emit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vprintk_emit to i32), ptr @__kstrtab_vprintk_emit, ptr @__kstrtabns_vprintk_emit }, section "___ksymtab+vprintk_emit", align 4
@__kstrtab_vprintk_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_vprintk_default = external dso_local constant [0 x i8], align 1
@__ksymtab_vprintk_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vprintk_default to i32), ptr @__kstrtab_vprintk_default, ptr @__kstrtabns_vprintk_default }, section "___ksymtab_gpl+vprintk_default", align 4
@__kstrtab__printk = external dso_local constant [0 x i8], align 1
@__kstrtabns__printk = external dso_local constant [0 x i8], align 1
@__ksymtab__printk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_printk to i32), ptr @__kstrtab__printk, ptr @__kstrtabns__printk }, section "___ksymtab+_printk", align 4
@early_console = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__setup_str_console_msg_format_setup = internal constant [20 x i8] c"console_msg_format=\00", section ".init.rodata", align 1
@__setup_console_msg_format_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_console_msg_format_setup, ptr @console_msg_format_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_console_setup = internal constant [9 x i8] c"console=\00", section ".init.rodata", align 1
@__setup_console_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_console_setup, ptr @console_setup, i32 0 }, section ".init.setup", align 4
@console_suspend_enabled = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__kstrtab_console_suspend_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_suspend_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_console_suspend_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_suspend_enabled to i32), ptr @__kstrtab_console_suspend_enabled, ptr @__kstrtabns_console_suspend_enabled }, section "___ksymtab+console_suspend_enabled", align 4
@__setup_str_console_suspend_disable = internal constant [19 x i8] c"no_console_suspend\00", section ".init.rodata", align 1
@__setup_console_suspend_disable = internal global %struct.obs_kernel_param { ptr @__setup_str_console_suspend_disable, ptr @console_suspend_disable, i32 0 }, section ".init.setup", align 4
@__param_str_console_suspend = internal constant [23 x i8] c"printk.console_suspend\00", align 1
@__param_console_suspend = internal constant %struct.kernel_param { ptr @__param_str_console_suspend, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.80 { ptr @console_suspend_enabled } }, section "__param", align 4
@__UNIQUE_ID_console_suspendtype276 = internal constant [37 x i8] c"printk.parmtype=console_suspend:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_console_suspend277 = internal constant [84 x i8] c"printk.parm=console_suspend:suspend console during suspend and hibernate operations\00", section ".modinfo", align 1
@printk_console_no_auto_verbose = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__kstrtab_console_verbose = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_verbose = external dso_local constant [0 x i8], align 1
@__ksymtab_console_verbose = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_verbose to i32), ptr @__kstrtab_console_verbose, ptr @__kstrtabns_console_verbose }, section "___ksymtab_gpl+console_verbose", align 4
@__param_str_console_no_auto_verbose = internal constant [31 x i8] c"printk.console_no_auto_verbose\00", align 1
@__param_console_no_auto_verbose = internal constant %struct.kernel_param { ptr @__param_str_console_no_auto_verbose, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.80 { ptr @printk_console_no_auto_verbose } }, section "__param", align 4
@__UNIQUE_ID_console_no_auto_verbosetype278 = internal constant [45 x i8] c"printk.parmtype=console_no_auto_verbose:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_console_no_auto_verbose279 = internal constant [96 x i8] c"printk.parm=console_no_auto_verbose:Disable console loglevel raise to highest on oops/panic/etc\00", section ".modinfo", align 1
@suspend_console._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.46, i32 2478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016printk: Suspending console(s) (use no_console_suspend to debug)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"suspend_console\00", [16 x i8] zeroinitializer }, align 32
@suspend_console._entry_ptr = internal global ptr @suspend_console._entry, section ".printk_index", align 4
@console_suspended = internal global { i1, [31 x i8] } zeroinitializer, align 32
@console_sem = internal global { %struct.semaphore, [40 x i8] } { %struct.semaphore { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.142, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1, %struct.list_head { ptr getelementptr (i8, ptr @console_sem, i64 48), ptr getelementptr (i8, ptr @console_sem, i64 48) } }, [40 x i8] zeroinitializer }, align 32
@console_lock_dep_map = internal global { %struct.lockdep_map, [36 x i8] } { %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.143, i8 0, i8 0, i8 0, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@console_locked = internal global { i1, [31 x i8] } zeroinitializer, align 32
@console_may_schedule = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_console_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_console_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_lock to i32), ptr @__kstrtab_console_lock, ptr @__kstrtabns_console_lock }, section "___ksymtab+console_lock", align 4
@__kstrtab_console_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_console_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_trylock to i32), ptr @__kstrtab_console_trylock, ptr @__kstrtabns_console_trylock }, section "___ksymtab+console_trylock", align 4
@__kstrtab_is_console_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_console_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_is_console_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_console_locked to i32), ptr @__kstrtab_is_console_locked, ptr @__kstrtabns_is_console_locked }, section "___ksymtab+is_console_locked", align 4
@console_unlock.ext_text = internal global { [8192 x i8], [2048 x i8] } zeroinitializer, align 32
@console_unlock.text = internal global { [1024 x i8], [256 x i8] } zeroinitializer, align 32
@console_seq = internal global { i64, [24 x i8] } zeroinitializer, align 32
@console_dropped = internal global { i32, [28 x i8] } zeroinitializer, align 32
@exclusive_console = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@exclusive_console_stop_seq = internal global { i64, [24 x i8] } zeroinitializer, align 32
@nr_ext_console_drivers = internal global { i32, [28 x i8] } zeroinitializer, align 32
@console_msg_format = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_console_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_console_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_unlock to i32), ptr @__kstrtab_console_unlock, ptr @__kstrtabns_console_unlock }, section "___ksymtab+console_unlock", align 4
@__kstrtab_console_conditional_schedule = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_conditional_schedule = external dso_local constant [0 x i8], align 1
@__ksymtab_console_conditional_schedule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_conditional_schedule to i32), ptr @__kstrtab_console_conditional_schedule, ptr @__kstrtabns_console_conditional_schedule }, section "___ksymtab+console_conditional_schedule", align 4
@__kstrtab_console_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_console_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_stop to i32), ptr @__kstrtab_console_stop, ptr @__kstrtabns_console_stop }, section "___ksymtab+console_stop", align 4
@__kstrtab_console_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_start = external dso_local constant [0 x i8], align 1
@__ksymtab_console_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_start to i32), ptr @__kstrtab_console_start, ptr @__kstrtabns_console_start }, section "___ksymtab+console_start", align 4
@__setup_str_keep_bootcon_setup = internal constant [13 x i8] c"keep_bootcon\00", section ".init.rodata", align 1
@__setup_keep_bootcon_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_keep_bootcon_setup, ptr @keep_bootcon_setup, i32 1 }, section ".init.setup", align 4
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"console '%s%d' already registered\0A\00", [61 x i8] zeroinitializer }, align 32
@register_console._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.46, i32 2968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016printk: Too late to register bootconsole %s%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"register_console\00", [47 x i8] zeroinitializer }, align 32
@register_console._entry_ptr = internal global ptr @register_console._entry, section ".printk_index", align 4
@preferred_console = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@register_console._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.46, i32 3066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016printk: %sconsole [%s%d] enabled\0A\00", [60 x i8] zeroinitializer }, align 32
@register_console._entry_ptr.75 = internal global ptr @register_console._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"boot\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@keep_bootcon = internal unnamed_addr global i1 false, section ".data..read_mostly", align 4
@__kstrtab_register_console = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_console = external dso_local constant [0 x i8], align 1
@__ksymtab_register_console = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_console to i32), ptr @__kstrtab_register_console, ptr @__kstrtabns_register_console }, section "___ksymtab+register_console", align 4
@unregister_console._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.46, i32 3087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016printk: %sconsole [%s%d] disabled\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unregister_console\00", [45 x i8] zeroinitializer }, align 32
@unregister_console._entry_ptr = internal global ptr @unregister_console._entry, section ".printk_index", align 4
@__kstrtab_unregister_console = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_console = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_console = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_console to i32), ptr @__kstrtab_unregister_console, ptr @__kstrtabns_unregister_console }, section "___ksymtab+unregister_console", align 4
@__con_initcall_start = external dso_local global [0 x ptr], align 4
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"console\00", [24 x i8] zeroinitializer }, align 32
@__con_initcall_end = external dso_local global [0 x ptr], align 4
@__initcall__kmod_printk__281_3218_printk_late_init7 = internal global ptr @printk_late_init, section ".initcall7.init", align 4
@wake_up_klogd_work = weak dso_local global %struct.irq_work { %struct.__call_single_node { %struct.llist_node zeroinitializer, %union.anon.34 { i32 4 } }, ptr @wake_up_klogd_work_func, %struct.rcuwait zeroinitializer }, section ".data..percpu", align 4
@printk_pending = weak dso_local global i32 0, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"printk_ratelimit_state.lock\00", [36 x i8] zeroinitializer }, align 32
@printk_ratelimit_state = dso_local global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.82, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__kstrtab___printk_ratelimit = external dso_local constant [0 x i8], align 1
@__kstrtabns___printk_ratelimit = external dso_local constant [0 x i8], align 1
@__ksymtab___printk_ratelimit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__printk_ratelimit to i32), ptr @__kstrtab___printk_ratelimit, ptr @__kstrtabns___printk_ratelimit }, section "___ksymtab+__printk_ratelimit", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_printk_timed_ratelimit = external dso_local constant [0 x i8], align 1
@__kstrtabns_printk_timed_ratelimit = external dso_local constant [0 x i8], align 1
@__ksymtab_printk_timed_ratelimit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @printk_timed_ratelimit to i32), ptr @__kstrtab_printk_timed_ratelimit, ptr @__kstrtabns_printk_timed_ratelimit }, section "___ksymtab+printk_timed_ratelimit", align 4
@dump_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.161, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dump_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dump_list, ptr @dump_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_kmsg_dump_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmsg_dump_register = external dso_local constant [0 x i8], align 1
@__ksymtab_kmsg_dump_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmsg_dump_register to i32), ptr @__kstrtab_kmsg_dump_register, ptr @__kstrtabns_kmsg_dump_register }, section "___ksymtab_gpl+kmsg_dump_register", align 4
@__kstrtab_kmsg_dump_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmsg_dump_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_kmsg_dump_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmsg_dump_unregister to i32), ptr @__kstrtab_kmsg_dump_unregister, ptr @__kstrtabns_kmsg_dump_unregister }, section "___ksymtab_gpl+kmsg_dump_unregister", align 4
@__param_str_always_kmsg_dump = internal constant [24 x i8] c"printk.always_kmsg_dump\00", align 1
@always_kmsg_dump = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_always_kmsg_dump = internal constant %struct.kernel_param { ptr @__param_str_always_kmsg_dump, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.80 { ptr @always_kmsg_dump } }, section "__param", align 4
@__UNIQUE_ID_always_kmsg_dumptype282 = internal constant [38 x i8] c"printk.parmtype=always_kmsg_dump:bool\00", section ".modinfo", align 1
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Panic\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Oops\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Emergency\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Shutdown\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_kmsg_dump_reason_str = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmsg_dump_reason_str = external dso_local constant [0 x i8], align 1
@__ksymtab_kmsg_dump_reason_str = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmsg_dump_reason_str to i32), ptr @__kstrtab_kmsg_dump_reason_str, ptr @__kstrtabns_kmsg_dump_reason_str }, section "___ksymtab_gpl+kmsg_dump_reason_str", align 4
@kmsg_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.88 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_kmsg_dump_get_line = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmsg_dump_get_line = external dso_local constant [0 x i8], align 1
@__ksymtab_kmsg_dump_get_line = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmsg_dump_get_line to i32), ptr @__kstrtab_kmsg_dump_get_line, ptr @__kstrtabns_kmsg_dump_get_line }, section "___ksymtab_gpl+kmsg_dump_get_line", align 4
@__kstrtab_kmsg_dump_get_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmsg_dump_get_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_kmsg_dump_get_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmsg_dump_get_buffer to i32), ptr @__kstrtab_kmsg_dump_get_buffer, ptr @__kstrtabns_kmsg_dump_get_buffer }, section "___ksymtab_gpl+kmsg_dump_get_buffer", align 4
@__kstrtab_kmsg_dump_rewind = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmsg_dump_rewind = external dso_local constant [0 x i8], align 1
@__ksymtab_kmsg_dump_rewind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmsg_dump_rewind to i32), ptr @__kstrtab_kmsg_dump_rewind, ptr @__kstrtabns_kmsg_dump_rewind }, section "___ksymtab_gpl+kmsg_dump_rewind", align 4
@printk_cpulock_owner = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@__kstrtab___printk_wait_on_cpu_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns___printk_wait_on_cpu_lock = external dso_local constant [0 x i8], align 1
@__ksymtab___printk_wait_on_cpu_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__printk_wait_on_cpu_lock to i32), ptr @__kstrtab___printk_wait_on_cpu_lock, ptr @__kstrtabns___printk_wait_on_cpu_lock }, section "___ksymtab+__printk_wait_on_cpu_lock", align 4
@printk_cpulock_nested = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab___printk_cpu_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns___printk_cpu_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab___printk_cpu_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__printk_cpu_trylock to i32), ptr @__kstrtab___printk_cpu_trylock, ptr @__kstrtabns___printk_cpu_trylock }, section "___ksymtab+__printk_cpu_trylock", align 4
@__kstrtab___printk_cpu_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns___printk_cpu_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab___printk_cpu_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__printk_cpu_unlock to i32), ptr @__kstrtab___printk_cpu_unlock, ptr @__kstrtabns___printk_cpu_unlock }, section "___ksymtab+__printk_cpu_unlock", align 4
@__pcpu_unique_printk_count = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@printk_count = weak dso_local global i8 0, section ".data..percpu", align 1
@__pcpu_unique_printk_count_nmi = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@printk_count_nmi = weak dso_local global i8 0, section ".data..percpu", align 1
@printk_delay_msec = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@__pcpu_unique_printk_pending = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_wake_up_klogd_work = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ratelimit\00", [22 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@devkmsg_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&user->lock\00", [20 x i8] zeroinitializer }, align 32
@ratelimit_state_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rs->lock\00", [22 x i8] zeroinitializer }, align 32
@ratelimit_state_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.103, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014printk: %s: %d output lines suppressed due to ratelimiting\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ratelimit_state_exit\00", [43 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/ratelimit.h\00", [38 x i8] zeroinitializer }, align 32
@ratelimit_state_exit._entry_ptr = internal global ptr @ratelimit_state_exit._entry, section ".printk_index", align 4
@_printk_rb_static_descs = internal global { [4096 x %struct.prb_desc], [12288 x i8] } { [4096 x %struct.prb_desc] [%struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc { %struct.atomic_t { i32 -4097 }, %struct.prb_data_blk_lpos { i32 1, i32 1 } }], [12288 x i8] zeroinitializer }, align 32
@_printk_rb_static_infos = internal global { <{ %struct.printk_info, [4095 x %struct.printk_info] }>, [90112 x i8] } { <{ %struct.printk_info, [4095 x %struct.printk_info] }> <{ %struct.printk_info { i64 -4096, i64 0, i16 0, i8 0, i8 0, i32 0, %struct.dev_printk_info zeroinitializer }, [4095 x %struct.printk_info] zeroinitializer }>, [90112 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clear_seq.latch.seqcount\00", [39 x i8] zeroinitializer }, align 32
@log_buf_len_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.46, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013printk: log_buf over 2G is not supported.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"log_buf_len_update\00", [45 x i8] zeroinitializer }, align 32
@log_buf_len_update._entry_ptr = internal global ptr @log_buf_len_update._entry, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@log_buf_add_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.46, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016printk: log_buf_len individual max cpu contribution: %d bytes\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"log_buf_add_cpu\00", [16 x i8] zeroinitializer }, align 32
@log_buf_add_cpu._entry_ptr = internal global ptr @log_buf_add_cpu._entry, section ".printk_index", align 4
@log_buf_add_cpu._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.46, i32 1017, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016printk: log_buf_len total cpu_extra contributions: %d bytes\0A\00", [33 x i8] zeroinitializer }, align 32
@log_buf_add_cpu._entry_ptr.112 = internal global ptr @log_buf_add_cpu._entry.110, section ".printk_index", align 4
@log_buf_add_cpu._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str.46, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016printk: log_buf_len min size: %d bytes\0A\00", [54 x i8] zeroinitializer }, align 32
@log_buf_add_cpu._entry_ptr.115 = internal global ptr @log_buf_add_cpu._entry.113, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@ignore_loglevel_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.46, i32 1179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016printk: debug: ignoring loglevel setting.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ignore_loglevel_setup\00", [42 x i8] zeroinitializer }, align 32
@ignore_loglevel_setup._entry_ptr = internal global ptr @ignore_loglevel_setup._entry, section ".printk_index", align 4
@preset_lpj = external dso_local local_unnamed_addr global i32, align 4
@loops_per_msec = internal global { i64, [24 x i8] } zeroinitializer, align 32
@boot_delay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@boot_delay_setup.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.118, ptr @.str.119, ptr @.str.46, ptr @.str.120, i8 1, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"printk\00", [25 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"boot_delay_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"boot_delay: %u, preset_lpj: %ld, lpj: %lu, HZ: %d, loops_per_msec: %llu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"printk: boot_delay: %u, preset_lpj: %ld, lpj: %lu, HZ: %d, loops_per_msec: %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@check_syslog_permissions.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@check_syslog_permissions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.46, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\014printk: %s (%d): Attempt to access syslog with CAP_SYS_ADMIN but no CAP_SYSLOG (deprecated).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"check_syslog_permissions\00", [39 x i8] zeroinitializer }, align 32
@check_syslog_permissions._entry_ptr = internal global ptr @check_syslog_permissions._entry, section ".printk_index", align 4
@.str.124 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"syslog_lock.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"syslog_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"<%u>\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[%5lu.%06lu]\00", [19 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%c%u\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%6s]\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"char *\00", [25 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@printk_count_nmi_early = internal global { i8, [31 x i8] } zeroinitializer, align 32
@printk_count_early = internal global { i8, [31 x i8] } zeroinitializer, align 32
@system_state = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@console_owner_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.135, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@console_owner = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@console_waiter = internal global { i8, [31 x i8] } zeroinitializer, align 32
@console_owner_dep_map = internal global { %struct.lockdep_map, [36 x i8] } { %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.136, i8 0, i8 0, i8 0, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"console_owner_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"console_owner\00", [18 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syslog\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"null\00", [27 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ttynull\00", [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ttyS\00", [27 x i8] zeroinitializer }, align 32
@console_cmdline = internal global { [8 x %struct.console_cmdline], [64 x i8] } zeroinitializer, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(console_sem).lock\00", [45 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"console_lock\00", [19 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.144 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",caller=%c%u\00", [19 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%u,%llu,%llu,%c%s;\00", [45 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SUBSYSTEM\00", [22 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DEVICE\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\\x%02x\00", [25 x i8] zeroinitializer }, align 32
@call_console_drivers.dropped_text = internal global { [64 x i8], [32 x i8] } zeroinitializer, align 32
@.str.150 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"** %lu printk messages dropped **\0A\00", [61 x i8] zeroinitializer }, align 32
@trace_console_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.151 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/printk.h\00", [34 x i8] zeroinitializer }, align 32
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@keep_bootcon_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.46, i32 2848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016printk: debug: skip boot console de-registration.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"keep_bootcon_setup\00", [45 x i8] zeroinitializer }, align 32
@keep_bootcon_setup._entry_ptr = internal global ptr @keep_bootcon_setup._entry, section ".printk_index", align 4
@__tracepoint_initcall_level = external dso_local global %struct.tracepoint, align 4
@.str.154 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/trace/events/initcall.h\00", [32 x i8] zeroinitializer }, align 32
@trace_initcall_level.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.155 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_initcall_start = external dso_local global %struct.tracepoint, align 4
@trace_initcall_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_initcall_finish = external dso_local global %struct.tracepoint, align 4
@trace_initcall_finish.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@printk_late_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.46, i32 3205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\014printk: bootconsole [%s%d] uses init memory and must be disabled even before the real one is ready\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"printk_late_init\00", [47 x i8] zeroinitializer }, align 32
@printk_late_init._entry_ptr = internal global ptr @printk_late_init._entry, section ".printk_index", align 4
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"printk:dead\00", [20 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"printk:online\00", [18 x i8] zeroinitializer }, align 32
@__init_begin = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@cpuhp_tasks_frozen = external dso_local local_unnamed_addr global i8, align 1
@.str.161 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dump_list_lock\00", [17 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.162 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.164 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@switch.table.kmsg_dump_reason_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.165 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.166 = internal global [11 x i64] [i64 9, i64 8, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 99]
@__sancov_gen_cov_switch_values.167 = internal global [11 x i64] [i64 9, i64 8, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 99]
@___asan_gen_.168 = private unnamed_addr constant [31 x i8] c"str__printk__trace_system_name\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 36, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant [27 x i8] c"trace_event_fields_console\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [31 x i8] c"trace_event_type_funcs_console\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [18 x i8] c"print_fmt_console\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [14 x i8] c"event_console\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [15 x i8] c"console_printk\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 63, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"oops_in_progress\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 78, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant [16 x i8] c"console_drivers\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 87, i32 17 }
@___asan_gen_.192 = private unnamed_addr constant [16 x i8] c"devkmsg_log_str\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 173, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant [23 x i8] c"console_set_on_cmdline\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 284, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant [9 x i8] c"log_wait\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 357, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant [8 x i8] c"log_buf\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 406, i32 14 }
@___asan_gen_.207 = private unnamed_addr constant [12 x i8] c"log_buf_len\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 407, i32 12 }
@___asan_gen_.210 = private unnamed_addr constant [15 x i8] c"dmesg_restrict\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 502, i32 5 }
@___asan_gen_.213 = private unnamed_addr constant [10 x i8] c"kmsg_fops\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 882, i32 30 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 904, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [4 x i8] c"prb\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 424, i32 34 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 905, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"printk_rb_static\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 906, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [10 x i8] c"clear_seq\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 380, i32 27 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 913, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 914, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 915, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 916, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 918, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 919, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 920, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 921, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 922, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 923, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 925, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 926, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 927, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 929, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 930, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 931, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 933, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 934, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 935, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 936, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 937, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 938, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 940, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 941, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 942, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 943, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 944, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 946, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 947, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 948, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 949, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 950, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 952, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 953, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 955, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 956, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1092, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1098, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1106, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1114, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant [18 x i8] c"printk_rb_dynamic\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 422, i32 33 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1159, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1163, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1164, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [12 x i8] c"printk_time\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1249, i32 13 }
@___asan_gen_.408 = private unnamed_addr constant [23 x i8] c"saved_console_loglevel\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1636, i32 13 }
@___asan_gen_.411 = private unnamed_addr constant [12 x i8] c"syslog_lock\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [11 x i8] c"syslog_seq\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 360, i32 12 }
@___asan_gen_.417 = private unnamed_addr constant [15 x i8] c"syslog_partial\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 361, i32 15 }
@___asan_gen_.420 = private unnamed_addr constant [12 x i8] c"syslog_time\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 362, i32 13 }
@___asan_gen_.426 = private unnamed_addr constant [20 x i8] c"event_enter__syslog\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [19 x i8] c"event_exit__syslog\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [14 x i8] c"types__syslog\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [13 x i8] c"args__syslog\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [10 x i8] c"trunc_msg\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 481, i32 19 }
@___asan_gen_.447 = private unnamed_addr constant [14 x i8] c"early_console\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2308, i32 17 }
@___asan_gen_.450 = private unnamed_addr constant [24 x i8] c"console_suspend_enabled\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2443, i32 6 }
@___asan_gen_.453 = private unnamed_addr constant [31 x i8] c"printk_console_no_auto_verbose\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2457, i32 13 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2478, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant [18 x i8] c"console_suspended\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [12 x i8] c"console_sem\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [21 x i8] c"console_lock_dep_map\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 97, i32 27 }
@___asan_gen_.472 = private unnamed_addr constant [15 x i8] c"console_locked\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [21 x i8] c"console_may_schedule\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [9 x i8] c"ext_text\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2604, i32 14 }
@___asan_gen_.477 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2605, i32 14 }
@___asan_gen_.480 = private unnamed_addr constant [12 x i8] c"console_seq\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 366, i32 12 }
@___asan_gen_.483 = private unnamed_addr constant [16 x i8] c"console_dropped\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 368, i32 22 }
@___asan_gen_.486 = private unnamed_addr constant [18 x i8] c"exclusive_console\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 273, i32 24 }
@___asan_gen_.489 = private unnamed_addr constant [27 x i8] c"exclusive_console_stop_seq\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 367, i32 12 }
@___asan_gen_.492 = private unnamed_addr constant [23 x i8] c"nr_ext_console_drivers\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 216, i32 12 }
@___asan_gen_.495 = private unnamed_addr constant [19 x i8] c"console_msg_format\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2953, i32 7 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2967, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant [18 x i8] c"preferred_console\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 283, i32 12 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3064, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3085, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3160, i32 23 }
@___asan_gen_.538 = private unnamed_addr constant [23 x i8] c"printk_ratelimit_state\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3303, i32 1 }
@___asan_gen_.541 = private unnamed_addr constant [15 x i8] c"dump_list_lock\00", align 1
@___asan_gen_.544 = private unnamed_addr constant [10 x i8] c"dump_list\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3334, i32 8 }
@___asan_gen_.547 = private unnamed_addr constant [17 x i8] c"always_kmsg_dump\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3391, i32 13 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3398, i32 10 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3400, i32 10 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3402, i32 10 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3404, i32 10 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3406, i32 10 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3424, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant [21 x i8] c"printk_cpulock_owner\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3603, i32 17 }
@___asan_gen_.571 = private unnamed_addr constant [22 x i8] c"printk_cpulock_nested\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3604, i32 17 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 156, i32 27 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 158, i32 27 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 138, i32 28 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 230, i32 6 }
@___asan_gen_.596 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 214, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 174, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 710, i32 32 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 857, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 14, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant [29 x i8] c"../include/linux/ratelimit.h\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 31, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant [24 x i8] c"_printk_rb_static_descs\00", align 1
@___asan_gen_.631 = private unnamed_addr constant [24 x i8] c"_printk_rb_static_infos\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 419, i32 1 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 381, i32 12 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 968, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1014, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1016, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1018, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1179, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant [15 x i8] c"loops_per_msec\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1197, i32 27 }
@___asan_gen_.679 = private unnamed_addr constant [11 x i8] c"boot_delay\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1196, i32 12 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1210, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 533, i32 4 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 354, i32 8 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1254, i32 22 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1261, i32 22 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1270, i32 35 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1272, i32 22 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1745, i32 1 }
@___asan_gen_.736 = private unnamed_addr constant [23 x i8] c"printk_count_nmi_early\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1943, i32 11 }
@___asan_gen_.739 = private unnamed_addr constant [19 x i8] c"printk_count_early\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1940, i32 11 }
@___asan_gen_.742 = private unnamed_addr constant [19 x i8] c"console_owner_lock\00", align 1
@___asan_gen_.745 = private unnamed_addr constant [14 x i8] c"console_owner\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1762, i32 28 }
@___asan_gen_.748 = private unnamed_addr constant [15 x i8] c"console_waiter\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1763, i32 13 }
@___asan_gen_.751 = private unnamed_addr constant [22 x i8] c"console_owner_dep_map\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1756, i32 27 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1761, i32 8 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1757, i32 10 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2363, i32 19 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2365, i32 19 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2386, i32 33 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2387, i32 27 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2398, i32 15 }
@___asan_gen_.775 = private unnamed_addr constant [16 x i8] c"console_cmdline\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 281, i32 31 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 86, i32 8 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 98, i32 10 }
@___asan_gen_.785 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.785, i32 108, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 559, i32 35 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 567, i32 30 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 620, i32 50 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 622, i32 50 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 584, i32 29 }
@___asan_gen_.802 = private unnamed_addr constant [13 x i8] c"dropped_text\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1898, i32 14 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1909, i32 12 }
@___asan_gen_.809 = private unnamed_addr constant [33 x i8] c"../include/trace/events/printk.h\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.809, i32 10, i32 1 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2848, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant [35 x i8] c"../include/trace/events/initcall.h\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 10, i32 1 }
@___asan_gen_.826 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3204, i32 4 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3209, i32 53 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3212, i32 55 }
@___asan_gen_.842 = private constant [26 x i8] c"../kernel/printk/printk.c\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 3333, i32 8 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.851, i32 695, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.851 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.851, i32 723, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant [34 x i8] c"switch.table.kmsg_dump_reason_str\00", align 1
@llvm.compiler.used = appending global [313 x ptr] [ptr @__UNIQUE_ID_always_kmsg_dumptype282, ptr @__UNIQUE_ID_console_no_auto_verbose279, ptr @__UNIQUE_ID_console_no_auto_verbosetype278, ptr @__UNIQUE_ID_console_suspend277, ptr @__UNIQUE_ID_console_suspendtype276, ptr @__UNIQUE_ID_ignore_loglevel267, ptr @__UNIQUE_ID_ignore_logleveltype266, ptr @__UNIQUE_ID_timetype269, ptr @__bpf_trace_tp_map_console, ptr @__event_console, ptr @__event_enter__syslog, ptr @__event_exit__syslog, ptr @__initcall__kmod_printk__281_3218_printk_late_init7, ptr @__ksymtab___printk_cpu_trylock, ptr @__ksymtab___printk_cpu_unlock, ptr @__ksymtab___printk_ratelimit, ptr @__ksymtab___printk_wait_on_cpu_lock, ptr @__ksymtab__printk, ptr @__ksymtab_console_conditional_schedule, ptr @__ksymtab_console_drivers, ptr @__ksymtab_console_lock, ptr @__ksymtab_console_printk, ptr @__ksymtab_console_set_on_cmdline, ptr @__ksymtab_console_start, ptr @__ksymtab_console_stop, ptr @__ksymtab_console_suspend_enabled, ptr @__ksymtab_console_trylock, ptr @__ksymtab_console_unlock, ptr @__ksymtab_console_verbose, ptr @__ksymtab_ignore_console_lock_warning, ptr @__ksymtab_is_console_locked, ptr @__ksymtab_kmsg_dump_get_buffer, ptr @__ksymtab_kmsg_dump_get_line, ptr @__ksymtab_kmsg_dump_reason_str, ptr @__ksymtab_kmsg_dump_register, ptr @__ksymtab_kmsg_dump_rewind, ptr @__ksymtab_kmsg_dump_unregister, ptr @__ksymtab_oops_in_progress, ptr @__ksymtab_printk_timed_ratelimit, ptr @__ksymtab_register_console, ptr @__ksymtab_unregister_console, ptr @__ksymtab_vprintk_default, ptr @__ksymtab_vprintk_emit, ptr @__p_syscall_meta__syslog, ptr @__param_always_kmsg_dump, ptr @__param_console_no_auto_verbose, ptr @__param_console_suspend, ptr @__param_ignore_loglevel, ptr @__param_time, ptr @__setup_boot_delay_setup, ptr @__setup_console_msg_format_setup, ptr @__setup_console_setup, ptr @__setup_console_suspend_disable, ptr @__setup_control_devkmsg, ptr @__setup_ignore_loglevel_setup, ptr @__setup_keep_bootcon_setup, ptr @__setup_log_buf_len_setup, ptr @__syscall_meta__syslog, ptr @__tracepoint_console, ptr @__tracepoint_ptr_console, ptr @check_syslog_permissions._entry, ptr @check_syslog_permissions._entry_ptr, ptr @event_class_console, ptr @event_console, ptr @event_enter__syslog, ptr @event_exit__syslog, ptr @ignore_loglevel_setup._entry, ptr @ignore_loglevel_setup._entry_ptr, ptr @keep_bootcon_setup._entry, ptr @keep_bootcon_setup._entry_ptr, ptr @log_buf_add_cpu._entry, ptr @log_buf_add_cpu._entry.110, ptr @log_buf_add_cpu._entry.113, ptr @log_buf_add_cpu._entry_ptr, ptr @log_buf_add_cpu._entry_ptr.112, ptr @log_buf_add_cpu._entry_ptr.115, ptr @log_buf_len_update._entry, ptr @log_buf_len_update._entry_ptr, ptr @printk_late_init._entry, ptr @printk_late_init._entry_ptr, ptr @ratelimit_state_exit._entry, ptr @ratelimit_state_exit._entry_ptr, ptr @register_console._entry, ptr @register_console._entry.73, ptr @register_console._entry_ptr, ptr @register_console._entry_ptr.75, ptr @setup_log_buf._entry, ptr @setup_log_buf._entry.47, ptr @setup_log_buf._entry.50, ptr @setup_log_buf._entry.53, ptr @setup_log_buf._entry.56, ptr @setup_log_buf._entry.59, ptr @setup_log_buf._entry.62, ptr @setup_log_buf._entry_ptr, ptr @setup_log_buf._entry_ptr.49, ptr @setup_log_buf._entry_ptr.52, ptr @setup_log_buf._entry_ptr.55, ptr @setup_log_buf._entry_ptr.58, ptr @setup_log_buf._entry_ptr.61, ptr @setup_log_buf._entry_ptr.64, ptr @suspend_console._entry, ptr @suspend_console._entry_ptr, ptr @unregister_console._entry, ptr @unregister_console._entry_ptr, ptr @str__printk__trace_system_name, ptr @trace_event_fields_console, ptr @trace_event_type_funcs_console, ptr @print_fmt_console, ptr @console_printk, ptr @oops_in_progress, ptr @console_drivers, ptr @devkmsg_log_str, ptr @console_set_on_cmdline, ptr @.str, ptr @log_wait, ptr @log_buf, ptr @log_buf_len, ptr @dmesg_restrict, ptr @kmsg_fops, ptr @.str.1, ptr @.str.2, ptr @prb, ptr @.str.3, ptr @printk_rb_static, ptr @.str.4, ptr @clear_seq, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @printk_rb_dynamic, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @printk_time, ptr @do_syslog.saved_console_loglevel, ptr @syslog_lock, ptr @syslog_seq, ptr @syslog_partial, ptr @syslog_time, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @types__syslog, ptr @args__syslog, ptr @trunc_msg, ptr @early_console, ptr @console_suspend_enabled, ptr @printk_console_no_auto_verbose, ptr @.str.68, ptr @.str.69, ptr @console_suspended, ptr @console_sem, ptr @console_lock_dep_map, ptr @console_locked, ptr @console_may_schedule, ptr @console_unlock.ext_text, ptr @console_unlock.text, ptr @console_seq, ptr @console_dropped, ptr @exclusive_console, ptr @exclusive_console_stop_seq, ptr @nr_ext_console_drivers, ptr @console_msg_format, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @preferred_console, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @printk_ratelimit_state, ptr @dump_list_lock, ptr @dump_list, ptr @always_kmsg_dump, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @printk_cpulock_owner, ptr @printk_cpulock_nested, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @devkmsg_open.__key, ptr @.str.99, ptr @ratelimit_state_init.__key, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @_printk_rb_static_descs, ptr @_printk_rb_static_infos, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @loops_per_msec, ptr @boot_delay, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @printk_count_nmi_early, ptr @printk_count_early, ptr @console_owner_lock, ptr @console_owner, ptr @console_waiter, ptr @console_owner_dep_map, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @console_cmdline, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @call_console_drivers.dropped_text, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @switch.table.kmsg_dump_reason_str], section "llvm.metadata"
@0 = internal global [232 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__printk__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_console to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_console to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_console to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_console to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_printk to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oops_in_progress to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_drivers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devkmsg_log_str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_set_on_cmdline to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_buf_len to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmesg_restrict to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmsg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printk_rb_static to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_seq to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_log_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_log_buf._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_log_buf._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_log_buf._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printk_rb_dynamic to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_log_buf._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_log_buf._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_log_buf._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printk_time to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_syslog.saved_console_loglevel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syslog_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syslog_seq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syslog_partial to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syslog_time to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__syslog to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__syslog to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__syslog to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__syslog to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trunc_msg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_console to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_suspend_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printk_console_no_auto_verbose to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_console._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_suspended to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_sem to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_lock_dep_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_locked to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_may_schedule to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_unlock.ext_text to i32), i32 8192, i32 10240, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_unlock.text to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_seq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_dropped to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exclusive_console to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exclusive_console_stop_seq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_ext_console_drivers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_msg_format to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_console._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preferred_console to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_console._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unregister_console._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printk_ratelimit_state to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @always_kmsg_dump to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printk_cpulock_owner to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printk_cpulock_nested to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devkmsg_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ratelimit_state_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ratelimit_state_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_printk_rb_static_descs to i32), i32 49152, i32 61440, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_printk_rb_static_infos to i32), i32 360448, i32 450560, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_buf_len_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_buf_add_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_buf_add_cpu._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_buf_add_cpu._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ignore_loglevel_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loops_per_msec to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_syslog_permissions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printk_count_nmi_early to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printk_count_early to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_owner_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_owner to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_waiter to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_owner_dep_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_cmdline to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @call_console_drivers.dropped_text to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keep_bootcon_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printk_late_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.kmsg_dump_reason_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_syslog = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_syslog

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_console(ptr nocapture readnone %__data, ptr noundef %text, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_console, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %text, i32 noundef %len) #25
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_console(ptr noundef %__data, ptr nocapture noundef readonly %text, i32 noundef %len) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #25
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !594

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !595

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #25
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %add = add i32 %len, 13
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #25
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.i = shl i32 %len, 16
  %or.i = add i32 %add.i, 65548
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_console, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_msg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not = icmp eq i32 %len, 0
  br i1 %cmp.not, label %if.end5.if.end10_crit_edge, label %land.lhs.true

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #27
  %sub = add i32 %len, -1
  %arrayidx = getelementptr i8, ptr %text, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp6 = icmp eq i8 %5, 10
  %spec.select = select i1 %cmp6, i32 %sub, i32 %len
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %if.end5.if.end10_crit_edge
  %len.addr.0 = phi i32 [ 0, %if.end5.if.end10_crit_edge ], [ %spec.select, %land.lhs.true ]
  %add.ptr = getelementptr i8, ptr %call3, i32 12
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %text, i32 %len.addr.0)
  %7 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %__data_loc_msg, align 4
  %and13 = and i32 %8, 65535
  %add.ptr14 = getelementptr i8, ptr %call3, i32 %and13
  %arrayidx15 = getelementptr i8, ptr %add.ptr14, i32 %len.addr.0
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx15, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_console(ptr noundef %__data, ptr nocapture noundef readonly %text, i32 noundef %len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #25
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !596
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #25
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !596
  %add.i = shl i32 %len, 16
  %or.i = add i32 %add.i, 65548
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %len, 24
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #25
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #25
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !584) #25
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_console, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_msg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not = icmp eq i32 %len, 0
  br i1 %cmp.not, label %if.end16.if.end24_crit_edge, label %land.lhs.true17

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end24

land.lhs.true17:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #27
  %sub18 = add i32 %len, -1
  %arrayidx19 = getelementptr i8, ptr %text, i32 %sub18
  %28 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %29)
  %cmp20 = icmp eq i8 %29, 10
  %spec.select = select i1 %cmp20, i32 %sub18, i32 %len
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true17, %if.end16.if.end24_crit_edge
  %len.addr.0 = phi i32 [ 0, %if.end16.if.end24_crit_edge ], [ %spec.select, %land.lhs.true17 ]
  %add.ptr = getelementptr i8, ptr %call13, i32 12
  %30 = call ptr @memcpy(ptr %add.ptr, ptr %text, i32 %len.addr.0)
  %31 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %__data_loc_msg, align 4
  %and28 = and i32 %32, 65535
  %add.ptr29 = getelementptr i8, ptr %call13, i32 %and28
  %arrayidx30 = getelementptr i8, ptr %add.ptr29, i32 %len.addr.0
  %33 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx30, align 1
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_console(ptr noundef %__data, ptr noundef %text, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  %0 = ptrtoint ptr %text to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %len to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #25
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @control_devkmsg(ptr noundef readonly %str) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %str, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %if.end.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %return

if.end.i:                                         ; preds = %entry
  %call1.i.i = tail call i32 @strncmp(ptr noundef nonnull %str, ptr noundef nonnull dereferenceable(3) @.str.92, i32 noundef 2) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i.not.i, label %if.then2, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %call1.i21.i = tail call i32 @strncmp(ptr noundef nonnull %str, ptr noundef nonnull dereferenceable(4) @.str.93, i32 noundef 3) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21.i)
  %cmp.i22.not.i = icmp eq i32 %call1.i21.i, 0
  br i1 %cmp.i22.not.i, label %if.then5, label %if.end7.i

if.end7.i:                                        ; preds = %if.end3.i
  %call1.i25.i = tail call i32 @strncmp(ptr noundef nonnull %str, ptr noundef nonnull dereferenceable(10) @.str.94, i32 noundef 9) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25.i)
  %cmp.i26.not.i = icmp eq i32 %call1.i25.i, 0
  br i1 %cmp.i26.not.i, label %if.end7.i.if.end8_crit_edge, label %if.end7.i.return_crit_edge

if.end7.i.return_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %return

if.end7.i.if.end8_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end8

if.then2:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  %0 = call ptr @memcpy(ptr @devkmsg_log_str, ptr @.str.92, i32 3)
  br label %if.end8

if.then5:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #27
  store i32 1868981760, ptr @devkmsg_log_str, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then2, %if.end7.i.if.end8_crit_edge
  %.sink.i13 = phi i32 [ 6, %if.then5 ], [ 5, %if.then2 ], [ 4, %if.end7.i.if.end8_crit_edge ]
  store i32 %.sink.i13, ptr @devkmsg_log, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.end7.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 1, %entry.return_crit_edge ], [ 1, %if.end7.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devkmsg_sysctl_set_loglvl(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  %old_str = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %old_str) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.end3.thread, label %if.then

if.end3.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %call430 = call i32 @proc_dostring(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #25
  br label %cleanup

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @devkmsg_log, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end3:                                          ; preds = %if.then
  %call = call ptr @strncpy(ptr noundef nonnull %old_str, ptr noundef nonnull @devkmsg_log_str, i32 noundef 10)
  %call4 = call i32 @proc_dostring(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp ne i32 %call4, 0
  %brmerge = or i1 %tobool.not, %tobool5.not
  br i1 %brmerge, label %if.end3.cleanup_crit_edge, label %if.then9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.then9:                                         ; preds = %if.end3
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) @devkmsg_log_str, ptr noundef nonnull dereferenceable(2) @.str.92, i32 2) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.i.not.i = icmp eq i32 %bcmp, 0
  br i1 %cmp.i.not.i, label %if.then9.lor.lhs.false_crit_edge, label %if.end3.i

if.then9.lor.lhs.false_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #27
  br label %lor.lhs.false

if.end3.i:                                        ; preds = %if.then9
  %bcmp27 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @devkmsg_log_str, ptr noundef nonnull dereferenceable(3) @.str.93, i32 3) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp27)
  %cmp.i22.not.i = icmp eq i32 %bcmp27, 0
  br i1 %cmp.i22.not.i, label %if.end3.i.lor.lhs.false_crit_edge, label %if.end7.i

if.end3.i.lor.lhs.false_crit_edge:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %lor.lhs.false

if.end7.i:                                        ; preds = %if.end3.i
  %bcmp28 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) @devkmsg_log_str, ptr noundef nonnull dereferenceable(9) @.str.94, i32 9) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp28)
  %cmp.i26.not.i = icmp eq i32 %bcmp28, 0
  br i1 %cmp.i26.not.i, label %if.end7.i.lor.lhs.false_crit_edge, label %if.end7.i.if.then12_crit_edge

if.end7.i.if.then12_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then12

if.end7.i.lor.lhs.false_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7.i.lor.lhs.false_crit_edge, %if.end3.i.lor.lhs.false_crit_edge, %if.then9.lor.lhs.false_crit_edge
  %.sink.i = phi i32 [ 1, %if.then9.lor.lhs.false_crit_edge ], [ 2, %if.end3.i.lor.lhs.false_crit_edge ], [ 0, %if.end7.i.lor.lhs.false_crit_edge ]
  %retval.0.ph.i = phi i32 [ 3, %if.then9.lor.lhs.false_crit_edge ], [ 4, %if.end3.i.lor.lhs.false_crit_edge ], [ 10, %if.end7.i.lor.lhs.false_crit_edge ]
  store i32 %.sink.i, ptr @devkmsg_log, align 4
  %1 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.ph.i, i32 %2)
  %cmp11.not = icmp eq i32 %retval.0.ph.i, %2
  br i1 %cmp11.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end7.i.if.then12_crit_edge
  store i32 %0, ptr @devkmsg_log, align 4
  %call14 = call ptr @strncpy(ptr noundef nonnull @devkmsg_log_str, ptr noundef nonnull %old_str, i32 noundef 10)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge, %if.end3.thread
  %retval.0 = phi i32 [ -22, %if.then12 ], [ -22, %if.then.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call430, %if.end3.thread ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %old_str) #25
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @printk_percpu_data_ready() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @__printk_percpu_data_ready, align 1
  ret i1 %.b1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @log_buf_addr_get() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @log_buf, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @log_buf_len_get() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @log_buf_len, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @devkmsg_llseek(ptr nocapture noundef readonly %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset)
  %tobool1.not = icmp eq i64 %offset, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %whence, label %if.end3.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %if.end3.do.body.i_crit_edge
    i32 2, label %sw.bb7
  ]

if.end3.do.body.i_crit_edge:                      ; preds = %if.end3
  br label %do.body.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #27
  %3 = load ptr, ptr @prb, align 4
  %call = tail call i64 @prb_first_valid_seq(ptr noundef %3) #25
  br label %cleanup.sink.split

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end3.do.body.i_crit_edge
  %4 = load volatile i32, ptr @clear_seq, align 8
  %and.i = and i32 %4, 1
  %arrayidx.i = getelementptr %struct.latched_seq, ptr @clear_seq, i32 0, i32 1, i32 %and.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !597
  %7 = load volatile i32, ptr @clear_seq, align 8
  %cmp.i.i.i.not.i = icmp eq i32 %7, %4
  br i1 %cmp.i.i.i.not.i, label %do.body.i.cleanup.sink.split_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body.i

do.body.i.cleanup.sink.split_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #27
  %8 = load ptr, ptr @prb, align 4
  %call9 = tail call i64 @prb_next_seq(ptr noundef %8) #25
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb7, %do.body.i.cleanup.sink.split_crit_edge, %sw.bb
  %call.sink = phi i64 [ %call, %sw.bb ], [ %call9, %sw.bb7 ], [ %6, %do.body.i.cleanup.sink.split_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 8) #25
  tail call void @generic_atomic64_set(ptr noundef nonnull %1, i64 noundef %call.sink) #25
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ -9, %entry.cleanup_crit_edge ], [ -29, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devkmsg_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %caller.i = alloca [20 x i8], align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %record = getelementptr inbounds %struct.devkmsg_user, ptr %1, i32 0, i32 6
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup64_crit_edge, label %if.end

entry.cleanup64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup64

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.devkmsg_user, ptr %1, i32 0, i32 2
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup64_crit_edge

if.end.cleanup64_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup64

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr @prb, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %1, i32 noundef 8) #25
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef nonnull %1) #25
  %call5 = tail call zeroext i1 @prb_read_valid(ptr noundef %2, i64 noundef %call.i, ptr noundef %record) #25
  br i1 %call5, label %if.end3.if.end32_crit_edge, label %if.then6

if.end3.if.end32_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end32

if.then6:                                         ; preds = %if.end3
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %3 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_flags, align 4
  %and = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.then6.out_crit_edge

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #27
  br label %out

if.end9:                                          ; preds = %if.then6
  tail call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 737) #25
  %5 = load ptr, ptr @prb, align 4
  %call.i.i99 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %1, i32 noundef 8) #25
  %call.i100 = tail call i64 @generic_atomic64_read(ptr noundef nonnull %1) #25
  %call15 = tail call zeroext i1 @prb_read_valid(ptr noundef %5, i64 noundef %call.i100, ptr noundef %record) #25
  br i1 %call15, label %if.end9.if.end32_crit_edge, label %if.then16

if.end9.if.end32_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end32

if.then16:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #25
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #25
  %call18129 = call i32 @prepare_to_wait_event(ptr noundef nonnull @log_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #25
  %7 = load ptr, ptr @prb, align 4
  %call.i.i101130 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %1, i32 noundef 8) #25
  %call.i102131 = call i64 @generic_atomic64_read(ptr noundef nonnull %1) #25
  %call21132 = call zeroext i1 @prb_read_valid(ptr noundef %7, i64 noundef %call.i102131, ptr noundef %record) #25
  br i1 %call21132, label %if.then16.if.end27.thread125_crit_edge, label %if.then16.if.end23_crit_edge

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  br label %if.end23

if.then16.if.end27.thread125_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end27.thread125

if.end23:                                         ; preds = %cleanup.if.end23_crit_edge, %if.then16.if.end23_crit_edge
  %call18133 = phi i32 [ %call18, %cleanup.if.end23_crit_edge ], [ %call18129, %if.then16.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18133)
  %tobool24.not = icmp eq i32 %call18133, 0
  br i1 %tobool24.not, label %cleanup, label %if.end27

cleanup:                                          ; preds = %if.end23
  call void @schedule() #25
  %call18 = call i32 @prepare_to_wait_event(ptr noundef nonnull @log_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #25
  %8 = load ptr, ptr @prb, align 4
  %call.i.i101 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %1, i32 noundef 8) #25
  %call.i102 = call i64 @generic_atomic64_read(ptr noundef nonnull %1) #25
  %call21 = call zeroext i1 @prb_read_valid(ptr noundef %8, i64 noundef %call.i102, ptr noundef %record) #25
  br i1 %call21, label %cleanup.if.end27.thread125_crit_edge, label %cleanup.if.end23_crit_edge

cleanup.if.end23_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end23

cleanup.if.end27.thread125_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end27.thread125

if.end27.thread125:                               ; preds = %cleanup.if.end27.thread125_crit_edge, %if.then16.if.end27.thread125_crit_edge
  call void @finish_wait(ptr noundef nonnull @log_wait, ptr noundef nonnull %__wq_entry) #25
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #25
  br label %if.end32

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #25
  br label %out

if.end32:                                         ; preds = %if.end27.thread125, %if.end9.if.end32_crit_edge, %if.end3.if.end32_crit_edge
  %9 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %record, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  %call.i.i103 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %1, i32 noundef 8) #25
  %call.i104 = call i64 @generic_atomic64_read(ptr noundef nonnull %1) #25
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %call.i104)
  %cmp.not = icmp eq i64 %12, %call.i104
  br i1 %cmp.not, label %if.end40, label %if.then36

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #27
  %13 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %record, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  %call.i.i105 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 8) #25
  call void @generic_atomic64_set(ptr noundef nonnull %1, i64 noundef %16) #25
  br label %out

if.end40:                                         ; preds = %if.end32
  %buf41 = getelementptr inbounds %struct.devkmsg_user, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %record, align 4
  %ts_nsec.i = getelementptr inbounds %struct.printk_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ts_nsec.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ts_nsec.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %caller.i) #25
  %caller_id.i = getelementptr inbounds %struct.printk_info, ptr %18, i32 0, i32 5
  %21 = call ptr @memset(ptr %caller.i, i32 255, i32 20)
  %22 = ptrtoint ptr %caller_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %caller_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %tobool.not.i = icmp sgt i32 %23, -1
  %cond.i = select i1 %tobool.not.i, i32 84, i32 67
  %and1.i = and i32 %23, 2147483647
  %call.i108 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %caller.i, i32 noundef 20, ptr noundef nonnull @.str.145, i32 noundef %cond.i, i32 noundef %and1.i) #25
  %24 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %20, i32 0) #29, !srcloc !598
  %asmresult.i.i109 = extractvalue { i64, i32 } %24, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %24, 1
  %25 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %20, i64 %asmresult.i.i109, i32 %asmresult4.i.i) #29, !srcloc !599
  %asmresult10.i.i = extractvalue { i64, i32 } %25, 0
  %ts_usec.0.i = lshr i64 %asmresult10.i.i, 9
  %facility.i = getelementptr inbounds %struct.printk_info, ptr %18, i32 0, i32 3
  %26 = ptrtoint ptr %facility.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %facility.i, align 2
  %conv185.i = zext i8 %27 to i32
  %shl186.i = shl nuw nsw i32 %conv185.i, 3
  %level.i = getelementptr inbounds %struct.printk_info, ptr %18, i32 0, i32 4
  %28 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %level.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 7
  %conv187.i = zext i8 %bf.clear.i to i32
  %or188.i = or i32 %shl186.i, %conv187.i
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %18, align 8
  %31 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool192.not.i = icmp eq i8 %31, 0
  %cond193.i = select i1 %tobool192.not.i, i32 45, i32 99
  %call195.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf41, i32 noundef 8192, ptr noundef nonnull @.str.146, i32 noundef %or188.i, i64 noundef %30, i64 noundef %ts_usec.0.i, i32 noundef %cond193.i, ptr noundef nonnull %caller.i) #25
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %caller.i) #25
  %add.ptr = getelementptr i8, ptr %buf41, i32 %call195.i
  %sub = sub i32 8192, %call195.i
  %text_buf = getelementptr inbounds %struct.devkmsg_user, ptr %1, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %text_buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %text_buf, align 4
  %34 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %record, align 4
  %text_len = getelementptr inbounds %struct.printk_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %text_len to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %text_len, align 8
  %conv = zext i16 %37 to i32
  %dev_info = getelementptr inbounds %struct.printk_info, ptr %35, i32 0, i32 6
  %add.ptr.i.i = getelementptr %struct.devkmsg_user, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp34.not.i.i = icmp eq i16 %37, 0
  br i1 %cmp34.not.i.i, label %if.end40.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end40.for.end.i.i_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end40
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i114.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.036.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i.i114.for.body.i.i_crit_edge ]
  %p.035.i.i = phi ptr [ %add.ptr, %for.body.lr.ph.i.i ], [ %p.2.i.i, %if.end.i.i114.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %33, i32 %i.036.i.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i, align 1
  %40 = add i8 %39, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %40)
  %41 = icmp ult i8 %40, -95
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %39)
  %cmp8.i.i = icmp eq i8 %39, 92
  %or.cond25.i.i = or i1 %cmp8.i.i, %41
  br i1 %or.cond25.i.i, label %if.then.i.i111, label %if.else.i.i112

if.then.i.i111:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #27
  %conv.i.i = zext i8 %39 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %p.035.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i110 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.035.i.i, i32 noundef %sub.ptr.sub.i.i, ptr noundef nonnull @.str.149, i32 noundef %conv.i.i) #25
  %add.ptr11.i.i = getelementptr i8, ptr %p.035.i.i, i32 %call.i.i110
  br label %if.end.i.i114

if.else.i.i112:                                   ; preds = %for.body.i.i
  %cmp.i.i.i = icmp ult ptr %p.035.i.i, %add.ptr.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i113, label %if.else.i.i112.if.end.i.i114_crit_edge

if.else.i.i112.if.end.i.i114_crit_edge:           ; preds = %if.else.i.i112
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end.i.i114

if.then.i.i.i113:                                 ; preds = %if.else.i.i112
  call void @__sanitizer_cov_trace_pc() #27
  %incdec.ptr.i.i.i = getelementptr i8, ptr %p.035.i.i, i32 1
  %42 = ptrtoint ptr %p.035.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %p.035.i.i, align 1
  br label %if.end.i.i114

if.end.i.i114:                                    ; preds = %if.then.i.i.i113, %if.else.i.i112.if.end.i.i114_crit_edge, %if.then.i.i111
  %p.2.i.i = phi ptr [ %add.ptr11.i.i, %if.then.i.i111 ], [ %incdec.ptr.i.i.i, %if.then.i.i.i113 ], [ %p.035.i.i, %if.else.i.i112.if.end.i.i114_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.036.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv
  br i1 %exitcond.not.i.i, label %if.end.i.i114.for.end.i.i_crit_edge, label %if.end.i.i114.for.body.i.i_crit_edge

if.end.i.i114.for.body.i.i_crit_edge:             ; preds = %if.end.i.i114
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body.i.i

if.end.i.i114.for.end.i.i_crit_edge:              ; preds = %if.end.i.i114
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end.i.i114.for.end.i.i_crit_edge, %if.end40.for.end.i.i_crit_edge
  %p.0.lcssa.i.i = phi ptr [ %add.ptr, %if.end40.for.end.i.i_crit_edge ], [ %p.2.i.i, %if.end.i.i114.for.end.i.i_crit_edge ]
  %cmp.i26.i.i = icmp ult ptr %p.0.lcssa.i.i, %add.ptr.i.i
  br i1 %cmp.i26.i.i, label %if.then.i28.i.i, label %for.end.i.i.msg_add_ext_text.exit.i_crit_edge

for.end.i.i.msg_add_ext_text.exit.i_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %msg_add_ext_text.exit.i

if.then.i28.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #27
  %incdec.ptr.i27.i.i = getelementptr i8, ptr %p.0.lcssa.i.i, i32 1
  %43 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 10, ptr %p.0.lcssa.i.i, align 1
  br label %msg_add_ext_text.exit.i

msg_add_ext_text.exit.i:                          ; preds = %if.then.i28.i.i, %for.end.i.i.msg_add_ext_text.exit.i_crit_edge
  %p.3.i.i = phi ptr [ %incdec.ptr.i27.i.i, %if.then.i28.i.i ], [ %p.0.lcssa.i.i, %for.end.i.i.msg_add_ext_text.exit.i_crit_edge ]
  %sub.ptr.lhs.cast12.i.i = ptrtoint ptr %p.3.i.i to i32
  %sub.ptr.rhs.cast13.i.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub14.i.i = sub i32 %sub.ptr.lhs.cast12.i.i, %sub.ptr.rhs.cast13.i.i
  %tobool.not.i115 = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i115, label %msg_add_ext_text.exit.i.msg_print_ext_body.exit_crit_edge, label %if.end.i

msg_add_ext_text.exit.i.msg_print_ext_body.exit_crit_edge: ; preds = %msg_add_ext_text.exit.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %msg_print_ext_body.exit

if.end.i:                                         ; preds = %msg_add_ext_text.exit.i
  call void @__sanitizer_cov_trace_pc() #27
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %sub.ptr.sub14.i.i
  %sub.i = sub i32 %sub, %sub.ptr.sub14.i.i
  %call1.i = call fastcc i32 @msg_add_dict_text(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.147, ptr noundef nonnull %dev_info) #25
  %add.i = add i32 %call1.i, %sub.ptr.sub14.i.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr, i32 %add.i
  %sub3.i = sub i32 %sub, %add.i
  %device.i = getelementptr inbounds %struct.printk_info, ptr %35, i32 0, i32 6, i32 1
  %call5.i = call fastcc i32 @msg_add_dict_text(ptr noundef %add.ptr2.i, i32 noundef %sub3.i, ptr noundef nonnull @.str.148, ptr noundef %device.i) #25
  %add6.i = add i32 %add.i, %call5.i
  br label %msg_print_ext_body.exit

msg_print_ext_body.exit:                          ; preds = %if.end.i, %msg_add_ext_text.exit.i.msg_print_ext_body.exit_crit_edge
  %len.0.i = phi i32 [ %add6.i, %if.end.i ], [ %sub.ptr.sub14.i.i, %msg_add_ext_text.exit.i.msg_print_ext_body.exit_crit_edge ]
  %add = add i32 %len.0.i, %call195.i
  %44 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %record, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %45, align 8
  %add52 = add i64 %47, 1
  %call.i.i106 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 8) #25
  call void @generic_atomic64_set(ptr noundef nonnull %1, i64 noundef %add52) #25
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp53 = icmp ugt i32 %add, %count
  br i1 %cmp53, label %msg_print_ext_body.exit.out_crit_edge, label %if.end8.i.i

msg_print_ext_body.exit.out_crit_edge:            ; preds = %msg_print_ext_body.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %out

if.end8.i.i:                                      ; preds = %msg_print_ext_body.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9.i.i = icmp slt i32 %add, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_crit_edge, label %if.then27.i.i, !prof !594

land.rhs16.i.i.out_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.95, i32 noundef 230, i32 noundef 9, ptr noundef null) #25
  br label %out

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  call void @__check_object_size(ptr noundef %buf41, i32 noundef %add, i1 noundef zeroext true) #25
  call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 174) #25
  %call.i.i107 = call zeroext i1 @should_fail_usercopy() #25
  br i1 %call.i.i107, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %48 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %add, i32 -1226833920) #29, !srcloc !600
  %asmresult.i.i = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #27
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %buf41, i32 noundef %add) #25
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %buf41, i32 noundef %add) #25
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %add, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool60.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool60.not, i32 %add, i32 -14
  br label %out

out:                                              ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.out_crit_edge, %msg_print_ext_body.exit.out_crit_edge, %if.then36, %if.end27, %if.then6.out_crit_edge
  %ret.0 = phi i32 [ -32, %if.then36 ], [ %call18133, %if.end27 ], [ -11, %if.then6.out_crit_edge ], [ -22, %msg_print_ext_body.exit.out_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @mutex_unlock(ptr noundef %lock) #25
  br label %cleanup64

cleanup64:                                        ; preds = %out, %if.end.cleanup64_crit_edge, %entry.cleanup64_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -9, %entry.cleanup64_crit_edge ], [ %call, %if.end.cleanup64_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devkmsg_write(ptr nocapture noundef readonly %iocb, ptr noundef %from) #0 align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @console_printk, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 8
  %tobool.not = icmp eq ptr %4, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 976, i32 %6)
  %cmp = icmp ugt i32 %6, 976
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32, ptr @devkmsg_log, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end3.if.end8.i_crit_edge

if.end3.if.end8.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end8.i

if.then6:                                         ; preds = %if.end3
  %rs = getelementptr inbounds %struct.devkmsg_user, ptr %4, i32 0, i32 1
  %8 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %call8 = tail call i32 @___ratelimit(ptr noundef %rs, ptr noundef %comm) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.cleanup_crit_edge, label %if.then6.if.end8.i_crit_edge

if.then6.if.end8.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end8.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end8.i:                                        ; preds = %if.then6.if.end8.i_crit_edge, %if.end3.if.end8.i_crit_edge
  %add = add nuw nsw i32 %6, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #30
  %cmp14 = icmp eq ptr %call9.i, null
  br i1 %cmp14, label %if.end8.i.cleanup_crit_edge, label %if.end16

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end16:                                         ; preds = %if.end8.i
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %6
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %6, i1 noundef zeroext false) #25
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef nonnull %call9.i, i32 noundef %6, ptr noundef %from) #25
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i, i32 %6)
  %cmp.i = icmp eq i32 %call3.i.i, %6
  br i1 %cmp.i, label %if.end19, label %if.then18, !prof !594

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @iov_iter_revert(ptr noundef %from, i32 noundef %call3.i.i) #25
  tail call void @kfree(ptr noundef nonnull %call9.i) #25
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %13 = ptrtoint ptr %call9.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %14)
  %cmp21 = icmp eq i8 %14, 60
  br i1 %cmp21, label %if.then23, label %if.end19.if.end40_crit_edge

if.end19.if.end40_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end40

if.then23:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #25
  %15 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %endp, align 4
  %add.ptr = getelementptr i8, ptr %call9.i, i32 1
  %call24 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef nonnull %endp, i32 noundef 10) #25
  %16 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %endp, align 4
  %tobool25.not = icmp eq ptr %17, null
  br i1 %tobool25.not, label %if.then23.if.end39_crit_edge, label %land.lhs.true

if.then23.if.end39_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end39

land.lhs.true:                                    ; preds = %if.then23
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %19)
  %cmp28 = icmp eq i8 %19, 62
  br i1 %cmp28, label %if.then30, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end39

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  %and31 = and i32 %call24, 7
  %shr = lshr i32 %call24, 3
  %and32 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %cmp33.not = icmp eq i32 %and32, 0
  %spec.select = select i1 %cmp33.not, i32 1, i32 %and32
  %incdec.ptr = getelementptr i8, ptr %17, i32 1
  br label %if.end39

if.end39:                                         ; preds = %if.then30, %land.lhs.true.if.end39_crit_edge, %if.then23.if.end39_crit_edge
  %line.0 = phi ptr [ %incdec.ptr, %if.then30 ], [ %call9.i, %land.lhs.true.if.end39_crit_edge ], [ %call9.i, %if.then23.if.end39_crit_edge ]
  %level.0 = phi i32 [ %and31, %if.then30 ], [ %0, %land.lhs.true.if.end39_crit_edge ], [ %0, %if.then23.if.end39_crit_edge ]
  %facility.1 = phi i32 [ %spec.select, %if.then30 ], [ 1, %land.lhs.true.if.end39_crit_edge ], [ 1, %if.then23.if.end39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #25
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end19.if.end40_crit_edge
  %line.1 = phi ptr [ %line.0, %if.end39 ], [ %call9.i, %if.end19.if.end40_crit_edge ]
  %level.1 = phi i32 [ %level.0, %if.end39 ], [ %0, %if.end19.if.end40_crit_edge ]
  %facility.2 = phi i32 [ %facility.1, %if.end39 ], [ 1, %if.end19.if.end40_crit_edge ]
  call void (i32, i32, ptr, ...) @devkmsg_emit(i32 noundef %facility.2, i32 noundef %level.1, ptr undef, ptr noundef %line.1) #31
  call void @kfree(ptr noundef nonnull %call9.i) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then18, %if.end8.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end40 ], [ -14, %if.then18 ], [ -22, %entry.cleanup_crit_edge ], [ %6, %if.end.cleanup_crit_edge ], [ %6, %if.then6.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devkmsg_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  %info = alloca %struct.printk_info, align 8
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %info) #25
  %2 = call ptr @memset(ptr %info, i32 255, i32 88)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end.poll_wait.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end
  %3 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  tail call void %4(ptr noundef %file, ptr noundef nonnull @log_wait, ptr noundef nonnull %wait) #25
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end.poll_wait.exit_crit_edge
  %5 = load ptr, ptr @prb, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %1, i32 noundef 8) #25
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef nonnull %1) #25
  %call1 = call zeroext i1 @prb_read_valid_info(ptr noundef %5, i64 noundef %call.i, ptr noundef nonnull %info, ptr noundef null) #25
  br i1 %call1, label %if.then2, label %poll_wait.exit.cleanup_crit_edge

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.then2:                                         ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #27
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %info, align 8
  %call.i.i14 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %1, i32 noundef 8) #25
  %call.i15 = call i64 @generic_atomic64_read(ptr noundef nonnull %1) #25
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %call.i15)
  %cmp.not = icmp eq i64 %7, %call.i15
  %. = select i1 %cmp.not, i32 65, i32 75
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %poll_wait.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 40, %entry.cleanup_crit_edge ], [ 0, %poll_wait.exit.cleanup_crit_edge ], [ %., %if.then2 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %info) #25
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devkmsg_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @devkmsg_log, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %1 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f_flags, align 4
  %and1 = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 1
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr @dmesg_restrict, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.not = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.not, label %if.then2.check_syslog_permissions.exit_crit_edge, label %if.then2.i

if.then2.check_syslog_permissions.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #27
  br label %check_syslog_permissions.exit

if.then2.i:                                       ; preds = %if.then2
  %call3.i = tail call zeroext i1 @capable(i32 noundef 34) #25
  br i1 %call3.i, label %if.then2.i.check_syslog_permissions.exit_crit_edge, label %if.end5.i

if.then2.i.check_syslog_permissions.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %check_syslog_permissions.exit

if.end5.i:                                        ; preds = %if.then2.i
  %call6.i = tail call zeroext i1 @capable(i32 noundef 21) #25
  br i1 %call6.i, label %land.end.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

land.end.i:                                       ; preds = %if.end5.i
  %.b33.i = load i1, ptr @check_syslog_permissions.__already_done, align 1
  br i1 %.b33.i, label %land.end.i.check_syslog_permissions.exit_crit_edge, label %if.then13.i, !prof !594

land.end.i.check_syslog_permissions.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %check_syslog_permissions.exit

if.then13.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @check_syslog_permissions.__already_done, align 1
  %4 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid.i.i, align 8
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %comm.i, i32 noundef %9) #32
  br label %check_syslog_permissions.exit

check_syslog_permissions.exit:                    ; preds = %if.then13.i, %land.end.i.check_syslog_permissions.exit_crit_edge, %if.then2.i.check_syslog_permissions.exit_crit_edge, %if.then2.check_syslog_permissions.exit_crit_edge
  %call29.i = tail call i32 @security_syslog(i32 noundef 3) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool3.not = icmp eq i32 %call29.i, 0
  br i1 %tobool3.not, label %check_syslog_permissions.exit.if.end6_crit_edge, label %check_syslog_permissions.exit.cleanup_crit_edge

check_syslog_permissions.exit.cleanup_crit_edge:  ; preds = %check_syslog_permissions.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

check_syslog_permissions.exit.if.end6_crit_edge:  ; preds = %check_syslog_permissions.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end6

if.end6:                                          ; preds = %check_syslog_permissions.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef 16656, i32 noundef 3264, i32 noundef -1) #30
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #27
  %rs = getelementptr inbounds %struct.devkmsg_user, ptr %call.i, i32 0, i32 1
  %10 = call ptr @memset(ptr %rs, i32 0, i32 68)
  tail call void @__raw_spin_lock_init(ptr noundef %rs, ptr noundef nonnull @.str.100, ptr noundef nonnull @ratelimit_state_init.__key, i16 noundef signext 2) #25
  %interval1.i.i = getelementptr inbounds %struct.devkmsg_user, ptr %call.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %interval1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 500, ptr %interval1.i.i, align 4
  %burst2.i.i = getelementptr inbounds %struct.devkmsg_user, ptr %call.i, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %burst2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %burst2.i.i, align 4
  %flags1.i = getelementptr inbounds %struct.devkmsg_user, ptr %call.i, i32 0, i32 1, i32 6
  %13 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %flags1.i, align 4
  %lock = getelementptr inbounds %struct.devkmsg_user, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.99, ptr noundef nonnull @devkmsg_open.__key) #25
  %record = getelementptr inbounds %struct.devkmsg_user, ptr %call.i, i32 0, i32 6
  %info = getelementptr inbounds %struct.devkmsg_user, ptr %call.i, i32 0, i32 4
  %text_buf = getelementptr inbounds %struct.devkmsg_user, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %record to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %info, ptr %record, align 4
  %text_buf2.i = getelementptr inbounds %struct.devkmsg_user, ptr %call.i, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %text_buf2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %text_buf, ptr %text_buf2.i, align 4
  %text_buf_size3.i = getelementptr inbounds %struct.devkmsg_user, ptr %call.i, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %text_buf_size3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8192, ptr %text_buf_size3.i, align 4
  %17 = load ptr, ptr @prb, align 4
  %call12 = tail call i64 @prb_first_valid_seq(ptr noundef %17) #25
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 8) #25
  tail call void @generic_atomic64_set(ptr noundef nonnull %call.i, i64 noundef %call12) #25
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %check_syslog_permissions.exit.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -1, %entry.cleanup_crit_edge ], [ %call29.i, %check_syslog_permissions.exit.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -1, %if.end5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devkmsg_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.devkmsg_user, ptr %1, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.ratelimit_state_exit.exit_crit_edge, label %if.end.i

if.end.ratelimit_state_exit.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %ratelimit_state_exit.exit

if.end.i:                                         ; preds = %if.end
  %missed.i = getelementptr inbounds %struct.devkmsg_user, ptr %1, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %missed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %missed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %if.end.i.ratelimit_state_exit.exit_crit_edge, label %do.end.i

if.end.i.ratelimit_state_exit.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %ratelimit_state_exit.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  %6 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %comm.i, i32 noundef %5) #32
  %10 = ptrtoint ptr %missed.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %missed.i, align 4
  br label %ratelimit_state_exit.exit

ratelimit_state_exit.exit:                        ; preds = %do.end.i, %if.end.i.ratelimit_state_exit.exit_crit_edge, %if.end.ratelimit_state_exit.exit_crit_edge
  %lock = getelementptr inbounds %struct.devkmsg_user, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %lock) #25
  tail call void @kvfree(ptr noundef nonnull %1) #25
  br label %cleanup

cleanup:                                          ; preds = %ratelimit_state_exit.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @log_buf_vmcoreinfo_setup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef ptrtoint (ptr @prb to i32)) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef ptrtoint (ptr @printk_rb_static to i32)) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef ptrtoint (ptr @clear_seq to i32)) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 40) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef 20) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, i32 noundef 36) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, i32 noundef 20) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13, i32 noundef 4) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14, i32 noundef 8) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15, i32 noundef 12) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.16, i32 noundef 16) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.17, i32 noundef 12) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, i32 noundef 4) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.20, i32 noundef 8) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22, i32 noundef 4) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.23, i32 noundef 88) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25, i32 noundef 8) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.26, i32 noundef 16) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.27, i32 noundef 20) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.28, i32 noundef 24) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.29, i32 noundef 64) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 16) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.33, i32 noundef 16) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34, i32 noundef 48) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.35, i32 noundef 16) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.37, i32 noundef 4) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.38, i32 noundef 8) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.39, i32 noundef 12) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.40, i32 noundef 4) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.42, i32 noundef 48) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 32) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vmcoreinfo_append_str(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @log_buf_len_setup(ptr noundef %str) #6 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %call = call i64 @memparse(ptr noundef nonnull %str, ptr noundef nonnull %str.addr) #25
  call fastcc void @log_buf_len_update(i64 noundef %call) #31
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @setup_log_buf(i32 noundef %early) local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  %info = alloca %struct.printk_info, align 8
  %r = alloca %struct.printk_record, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %info) #25
  %0 = call ptr @memset(ptr %info, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %r) #25
  %1 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 1
  %2 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %early)
  %tobool.not = icmp eq i32 %early, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  store i1 true, ptr @__printk_percpu_data_ready, align 1
  %3 = load ptr, ptr @log_buf, align 4
  %cmp.not = icmp eq ptr %3, @__log_buf
  br i1 %cmp.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  %4 = load ptr, ptr @log_buf, align 4
  %cmp.not232 = icmp eq ptr %4, @__log_buf
  br i1 %cmp.not232, label %if.end.thread.if.end6_crit_edge, label %if.end.thread.cleanup_crit_edge

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end.thread.if.end6_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, ptr @new_log_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end9

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  tail call fastcc void @log_buf_add_cpu() #31
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.thread.if.end6_crit_edge
  %.pr = load i32, ptr @new_log_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool7.not = icmp eq i32 %.pr, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end9:                                          ; preds = %if.end6.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge
  %6 = phi i32 [ %.pr, %if.end6.if.end9_crit_edge ], [ %5, %land.lhs.true.if.end9_crit_edge ]
  %shr = lshr i32 %6, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %6)
  %cmp10 = icmp ult i32 %6, 32
  br i1 %cmp10, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #27
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %6) #31
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef %6, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef -1) #25
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %do.end21, label %if.end24, !prof !595

do.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #27
  %7 = load i32, ptr @new_log_buf_len, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %7) #31
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %mul = mul nuw nsw i32 %shr, 12
  %call.i226 = tail call ptr @memblock_alloc_try_nid(i32 noundef %mul, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef -1) #25
  %tobool26.not = icmp eq ptr %call.i226, null
  br i1 %tobool26.not, label %do.end38, label %if.end41, !prof !595

do.end38:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #27
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %mul) #31
  br label %err_free_log_buf

if.end41:                                         ; preds = %if.end24
  %mul42 = mul i32 %shr, 88
  %call.i227 = tail call ptr @memblock_alloc_try_nid(i32 noundef %mul42, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef -1) #25
  %tobool44.not = icmp eq ptr %call.i227, null
  br i1 %tobool44.not, label %do.end56, label %if.end59, !prof !595

do.end56:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #27
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %mul42) #31
  tail call void @memblock_free(ptr noundef nonnull %call.i226, i32 noundef %mul) #25
  br label %err_free_log_buf

if.end59:                                         ; preds = %if.end41
  %8 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %info, ptr %r, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @setup_text_buf, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 976, ptr %2, align 4
  %11 = load i32, ptr @new_log_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  %12 = call i32 @llvm.ctlz.i32(i32 %11, i1 true) #25, !range !601
  %sub.i.op.i = xor i32 %12, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %13 = call i32 @llvm.ctlz.i32(i32 %shr, i1 true) #25, !range !601
  %sub.i.op.i229 = xor i32 %13, 31
  call void @prb_init(ptr noundef nonnull @printk_rb_dynamic, ptr noundef nonnull %call.i, i32 noundef %sub.i, ptr noundef nonnull %call.i226, i32 noundef %sub.i.op.i229, ptr noundef nonnull %call.i227) #25
  %14 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !602
  %and.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool95.not = icmp eq i32 %and.i, 0
  br i1 %tobool95.not, label %if.then96, label %if.end59.do.end99_crit_edge

if.end59.do.end99_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end99

if.then96:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #27
  call void @trace_hardirqs_off() #25
  br label %do.end99

do.end99:                                         ; preds = %if.then96, %if.end59.do.end99_crit_edge
  %15 = load i32, ptr @new_log_buf_len, align 4
  store i32 %15, ptr @log_buf_len, align 4
  store ptr %call.i, ptr @log_buf, align 4
  store i32 0, ptr @new_log_buf_len, align 4
  %call100234 = call zeroext i1 @prb_read_valid(ptr noundef nonnull @printk_rb_static, i64 noundef 0, ptr noundef nonnull %r) #25
  br i1 %call100234, label %do.end99.for.body_crit_edge, label %do.end99.for.end_crit_edge

do.end99.for.end_crit_edge:                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

do.end99.for.body_crit_edge:                      ; preds = %do.end99
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end99.for.body_crit_edge
  %free.0235 = phi i32 [ %16, %for.body.for.body_crit_edge ], [ 131072, %do.end99.for.body_crit_edge ]
  %call101 = call fastcc i32 @add_to_rb(ptr noundef nonnull %r) #31
  %16 = call i32 @llvm.usub.sat.i32(i32 %free.0235, i32 %call101)
  %17 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %r, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  %add = add i64 %20, 1
  %call100 = call zeroext i1 @prb_read_valid(ptr noundef nonnull @printk_rb_static, i64 noundef %add, ptr noundef nonnull %r) #25
  br i1 %call100, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end99.for.end_crit_edge
  %seq.0.lcssa = phi i64 [ 0, %do.end99.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %free.0.lcssa = phi i32 [ 131072, %do.end99.for.end_crit_edge ], [ %16, %for.body.for.end_crit_edge ]
  store ptr @printk_rb_dynamic, ptr @prb, align 4
  br i1 %tobool95.not, label %if.then118, label %for.end.do.body120_crit_edge

for.end.do.body120_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body120

if.then118:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #27
  call void @trace_hardirqs_on() #25
  br label %do.body120

do.body120:                                       ; preds = %if.then118, %for.end.do.body120_crit_edge
  %21 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #25, !srcloc !603
  %and.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool128.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool128.not, label %if.then137, label %do.body120.do.end140_crit_edge, !prof !595

do.body120.do.end140_crit_edge:                   ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end140

if.then137:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #27
  call void @warn_bogus_irq_restore() #25
  br label %do.end140

do.end140:                                        ; preds = %if.then137, %do.body120.do.end140_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #25, !srcloc !604
  %call146237 = call zeroext i1 @prb_read_valid(ptr noundef nonnull @printk_rb_static, i64 noundef %seq.0.lcssa, ptr noundef nonnull %r) #25
  br i1 %call146237, label %do.end140.for.body147_crit_edge, label %do.end140.for.end159_crit_edge

do.end140.for.end159_crit_edge:                   ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end159

do.end140.for.body147_crit_edge:                  ; preds = %do.end140
  br label %for.body147

for.body147:                                      ; preds = %for.body147.for.body147_crit_edge, %do.end140.for.body147_crit_edge
  %free.2238 = phi i32 [ %22, %for.body147.for.body147_crit_edge ], [ %free.0.lcssa, %do.end140.for.body147_crit_edge ]
  %call148 = call fastcc i32 @add_to_rb(ptr noundef nonnull %r) #31
  %22 = call i32 @llvm.usub.sat.i32(i32 %free.2238, i32 %call148)
  %23 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %r, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %24, align 8
  %add158 = add i64 %26, 1
  %call146 = call zeroext i1 @prb_read_valid(ptr noundef nonnull @printk_rb_static, i64 noundef %add158, ptr noundef nonnull %r) #25
  br i1 %call146, label %for.body147.for.body147_crit_edge, label %for.body147.for.end159_crit_edge

for.body147.for.end159_crit_edge:                 ; preds = %for.body147
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end159

for.body147.for.body147_crit_edge:                ; preds = %for.body147
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body147

for.end159:                                       ; preds = %for.body147.for.end159_crit_edge, %do.end140.for.end159_crit_edge
  %seq.1.lcssa = phi i64 [ %seq.0.lcssa, %do.end140.for.end159_crit_edge ], [ %add158, %for.body147.for.end159_crit_edge ]
  %free.2.lcssa = phi i32 [ %free.0.lcssa, %do.end140.for.end159_crit_edge ], [ %22, %for.body147.for.end159_crit_edge ]
  %call160 = call i64 @prb_next_seq(ptr noundef nonnull @printk_rb_static) #25
  call void @__sanitizer_cov_trace_cmp8(i64 %seq.1.lcssa, i64 %call160)
  %cmp161.not = icmp eq i64 %seq.1.lcssa, %call160
  br i1 %cmp161.not, label %for.end159.do.end174_crit_edge, label %do.end166

for.end159.do.end174_crit_edge:                   ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end174

do.end166:                                        ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #27
  %call168 = call i64 @prb_next_seq(ptr noundef nonnull @printk_rb_static) #25
  %sub169 = sub i64 %call168, %seq.1.lcssa
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i64 noundef %sub169) #31
  br label %do.end174

do.end174:                                        ; preds = %do.end166, %for.end159.do.end174_crit_edge
  %27 = load i32, ptr @log_buf_len, align 4
  %call176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %27) #31
  %mul181 = mul i32 %free.2.lcssa, 100
  %div225 = lshr i32 %mul181, 17
  %call182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %free.2.lcssa, i32 noundef %div225) #31
  br label %cleanup

err_free_log_buf:                                 ; preds = %do.end56, %do.end38
  %28 = load i32, ptr @new_log_buf_len, align 4
  tail call void @memblock_free(ptr noundef nonnull %call.i, i32 noundef %28) #25
  br label %cleanup

cleanup:                                          ; preds = %err_free_log_buf, %do.end174, %do.end21, %do.end, %if.end6.cleanup_crit_edge, %if.end.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %r) #25
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %info) #25
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @log_buf_add_cpu() unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %0) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i.i)
  %cmp = icmp eq i32 %call4.i.i, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end.i.i117

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end.i.i117:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i116 = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %1) #25
  %sub = shl i32 %call4.i.i116, 12
  %mul = add i32 %sub, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %mul)
  %cmp2 = icmp ult i32 %mul, 65537
  br i1 %cmp2, label %if.end.i.i117.cleanup_crit_edge, label %do.end

if.end.i.i117.cleanup_crit_edge:                  ; preds = %if.end.i.i117
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

do.end:                                           ; preds = %if.end.i.i117
  call void @__sanitizer_cov_trace_pc() #27
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef 4096) #31
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %mul) #31
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef 131072) #31
  %add = add i32 %sub, 126976
  %conv = zext i32 %add to i64
  tail call fastcc void @log_buf_len_update(i64 noundef %conv) #31
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.i117.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_printk(ptr noundef %fmt, ...) #6 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #25
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !596
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vprintk(ptr noundef %fmt, [1 x i32] %.fca.0.insert) #25
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #25
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prb_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prb_read_valid(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_to_rb(ptr nocapture noundef readonly %r) unnamed_addr #6 section ".init.text" align 64 {
entry:
  %e = alloca %struct.prb_reserved_entry, align 4
  %dest_r = alloca %struct.printk_record, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e) #25
  %0 = call ptr @memset(ptr %e, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dest_r) #25
  %1 = getelementptr inbounds %struct.printk_record, ptr %dest_r, i32 0, i32 1
  %2 = getelementptr inbounds %struct.printk_record, ptr %dest_r, i32 0, i32 2
  %3 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %r, align 4
  %text_len = getelementptr inbounds %struct.printk_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %text_len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %text_len, align 8
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %dest_r to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dest_r, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %2, align 4
  %call = call zeroext i1 @prb_reserve(ptr noundef nonnull %e, ptr noundef nonnull @printk_rb_dynamic, ptr noundef nonnull %dest_r) #25
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %text_buf1 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 1
  %12 = ptrtoint ptr %text_buf1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %text_buf1, align 4
  %14 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %r, align 4
  %text_len4 = getelementptr inbounds %struct.printk_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %text_len4 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %text_len4, align 8
  %conv5 = zext i16 %17 to i32
  %18 = call ptr @memcpy(ptr %11, ptr %13, i32 %conv5)
  %19 = load ptr, ptr %r, align 4
  %text_len7 = getelementptr inbounds %struct.printk_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %text_len7 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %text_len7, align 8
  %22 = ptrtoint ptr %dest_r to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dest_r, align 4
  %text_len9 = getelementptr inbounds %struct.printk_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %text_len9 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %21, ptr %text_len9, align 8
  %25 = load ptr, ptr %r, align 4
  %facility = getelementptr inbounds %struct.printk_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %facility to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %facility, align 2
  %facility12 = getelementptr inbounds %struct.printk_info, ptr %23, i32 0, i32 3
  %28 = ptrtoint ptr %facility12 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %facility12, align 2
  %29 = load ptr, ptr %r, align 4
  %level = getelementptr inbounds %struct.printk_info, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %level, align 1
  %bf.clear = and i8 %bf.load, 7
  %level15 = getelementptr inbounds %struct.printk_info, ptr %23, i32 0, i32 4
  %31 = ptrtoint ptr %level15 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load16 = load i8, ptr %level15, align 1
  %bf.clear17 = and i8 %bf.load16, -8
  %bf.set = or i8 %bf.clear17, %bf.clear
  store i8 %bf.set, ptr %level15, align 1
  %32 = load ptr, ptr %r, align 4
  %flags = getelementptr inbounds %struct.printk_info, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load19 = load i8, ptr %flags, align 1
  %bf.lshr = and i8 %bf.load19, -8
  %bf.set25 = or i8 %bf.lshr, %bf.clear
  store i8 %bf.set25, ptr %level15, align 1
  %34 = load ptr, ptr %r, align 4
  %ts_nsec = getelementptr inbounds %struct.printk_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %ts_nsec to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ts_nsec, align 8
  %ts_nsec28 = getelementptr inbounds %struct.printk_info, ptr %23, i32 0, i32 1
  %37 = ptrtoint ptr %ts_nsec28 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %ts_nsec28, align 8
  %38 = load ptr, ptr %r, align 4
  %caller_id = getelementptr inbounds %struct.printk_info, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %caller_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %caller_id, align 4
  %caller_id31 = getelementptr inbounds %struct.printk_info, ptr %23, i32 0, i32 5
  %41 = ptrtoint ptr %caller_id31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %caller_id31, align 4
  %dev_info = getelementptr inbounds %struct.printk_info, ptr %23, i32 0, i32 6
  %42 = load ptr, ptr %r, align 4
  %dev_info34 = getelementptr inbounds %struct.printk_info, ptr %42, i32 0, i32 6
  %43 = call ptr @memcpy(ptr %dev_info, ptr %dev_info34, i32 64)
  call void @prb_final_commit(ptr noundef nonnull %e) #25
  %call35 = call i32 @prb_record_text_space(ptr noundef nonnull %e) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dest_r) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %e) #25
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prb_next_seq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ignore_loglevel_setup(ptr nocapture noundef readnone %str) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 1, ptr @ignore_loglevel, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #31
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @boot_delay_setup(ptr noundef %str) #6 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @preset_lpj to i32))
  %1 = load i32, ptr @preset_lpj, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %spec.select = select i1 %tobool.not, i32 1000000, i32 %1
  %2 = udiv i32 %spec.select, 1000
  %narrow = mul nuw nsw i32 %2, 100
  %mul = zext i32 %narrow to i64
  store i64 %mul, ptr @loops_per_msec, align 8
  %call = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull @boot_delay) #25
  %3 = load i32, ptr @boot_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %3)
  %cmp = icmp sgt i32 %3, 10000
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  store i32 0, ptr @boot_delay, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @boot_delay_setup.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@boot_delay_setup, %if.then6)) #25
          to label %do.end [label %if.then6], !srcloc !605

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #27
  %4 = load i32, ptr @boot_delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @preset_lpj to i32))
  %5 = load i32, ptr @preset_lpj, align 4
  %6 = load i64, ptr @loops_per_msec, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @boot_delay_setup.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.121, i32 noundef %4, i32 noundef %5, i32 noundef %spec.select, i32 noundef 100, i64 noundef %6) #25
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_syslog(i32 noundef %type, ptr noundef %buf, i32 noundef %len, i32 noundef %source) local_unnamed_addr #0 align 64 {
entry:
  %prefix.i = alloca [48 x i8], align 1
  %info = alloca %struct.printk_info, align 8
  %line_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %info) #25
  %0 = call ptr @memset(ptr %info, i32 255, i32 88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %source)
  %cmp.i = icmp ne i32 %source, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp1.not.i = icmp eq i32 %type, 1
  %or.cond.i = or i1 %cmp1.not.i, %cmp.i
  br i1 %or.cond.i, label %if.end.i, label %entry.check_syslog_permissions.exit_crit_edge

entry.check_syslog_permissions.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %check_syslog_permissions.exit

if.end.i:                                         ; preds = %entry
  %1 = load i32, ptr @dmesg_restrict, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp.not.i.i = icmp ne i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %type)
  %cmp1.i.i = icmp ne i32 %type, 10
  %narrow.i.i = and i1 %cmp.not.i.i, %cmp1.i.i
  %narrow3.i.i = or i1 %narrow.i.i, %tobool.not.i.i
  br i1 %narrow3.i.i, label %if.then2.i, label %if.end.i.check_syslog_permissions.exit_crit_edge

if.end.i.check_syslog_permissions.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %check_syslog_permissions.exit

if.then2.i:                                       ; preds = %if.end.i
  %call3.i = tail call zeroext i1 @capable(i32 noundef 34) #25
  br i1 %call3.i, label %if.then2.i.check_syslog_permissions.exit_crit_edge, label %if.end5.i

if.then2.i.check_syslog_permissions.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %check_syslog_permissions.exit

if.end5.i:                                        ; preds = %if.then2.i
  %call6.i = tail call zeroext i1 @capable(i32 noundef 21) #25
  br i1 %call6.i, label %land.end.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

land.end.i:                                       ; preds = %if.end5.i
  %.b33.i = load i1, ptr @check_syslog_permissions.__already_done, align 1
  br i1 %.b33.i, label %land.end.i.check_syslog_permissions.exit_crit_edge, label %if.then13.i, !prof !594

land.end.i.check_syslog_permissions.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %check_syslog_permissions.exit

if.then13.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @check_syslog_permissions.__already_done, align 1
  %2 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid.i.i, align 8
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %comm.i, i32 noundef %7) #32
  br label %check_syslog_permissions.exit

check_syslog_permissions.exit:                    ; preds = %if.then13.i, %land.end.i.check_syslog_permissions.exit_crit_edge, %if.then2.i.check_syslog_permissions.exit_crit_edge, %if.end.i.check_syslog_permissions.exit_crit_edge, %entry.check_syslog_permissions.exit_crit_edge
  %call29.i = tail call i32 @security_syslog(i32 noundef %type) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool.not = icmp eq i32 %call29.i, 0
  br i1 %tobool.not, label %if.end, label %check_syslog_permissions.exit.cleanup_crit_edge

check_syslog_permissions.exit.cleanup_crit_edge:  ; preds = %check_syslog_permissions.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %check_syslog_permissions.exit
  %8 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %type, label %sw.default [
    i32 0, label %if.end.cleanup_crit_edge
    i32 1, label %if.end.cleanup_crit_edge112
    i32 2, label %sw.bb
    i32 4, label %sw.bb12
    i32 3, label %if.end.sw.bb13_crit_edge
    i32 5, label %sw.bb32
    i32 6, label %sw.bb33
    i32 7, label %sw.bb37
    i32 8, label %sw.bb41
    i32 9, label %sw.bb50
    i32 10, label %sw.bb77
  ]

if.end.sw.bb13_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %sw.bb13

if.end.cleanup_crit_edge112:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %tobool1.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp slt i32 %len, 0
  %or.cond = or i1 %tobool1.not, %cmp
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %if.end3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool4.not = icmp eq i32 %len, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %buf, i32 %len, i32 -1226833920) #29, !srcloc !606
  %asmresult = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp8 = icmp eq i32 %asmresult, 0
  br i1 %cmp8, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #27
  %call11 = tail call fastcc i32 @syslog_print(ptr noundef nonnull %buf, i32 noundef %len)
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %sw.bb13

sw.bb13:                                          ; preds = %sw.bb12, %if.end.sw.bb13_crit_edge
  %clear.0.off0 = phi i1 [ false, %if.end.sw.bb13_crit_edge ], [ true, %sw.bb12 ]
  %tobool14.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp16 = icmp slt i32 %len, 0
  %or.cond104 = or i1 %tobool14.not, %cmp16
  br i1 %or.cond104, label %sw.bb13.cleanup_crit_edge, label %if.end18

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end18:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool19.not = icmp eq i32 %len, 0
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %buf, i32 %len, i32 -1226833920) #29, !srcloc !607
  %asmresult24 = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult24)
  %cmp27 = icmp eq i32 %asmresult24, 0
  br i1 %cmp27, label %if.end29, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #27
  %call31 = tail call fastcc i32 @syslog_print_all(ptr noundef nonnull %buf, i32 noundef %len, i1 noundef zeroext %clear.0.off0)
  br label %cleanup

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @mutex_lock_nested(ptr noundef nonnull @syslog_lock, i32 noundef 0) #25
  %11 = load ptr, ptr @prb, align 4
  %call.i = tail call i64 @prb_next_seq(ptr noundef %11) #25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !608
  %12 = load i32, ptr @clear_seq, align 8
  %inc.i.i.i = add i32 %12, 1
  store i32 %inc.i.i.i, ptr @clear_seq, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !609
  store i64 %call.i, ptr getelementptr inbounds (%struct.latched_seq, ptr @clear_seq, i32 0, i32 1), align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !608
  %13 = load i32, ptr @clear_seq, align 8
  %inc.i1.i.i = add i32 %13, 1
  store i32 %inc.i1.i.i, ptr @clear_seq, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !609
  store i64 %call.i, ptr getelementptr inbounds (%struct.latched_seq, ptr @clear_seq, i32 0, i32 1, i32 1), align 8
  tail call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  br label %cleanup

sw.bb33:                                          ; preds = %if.end
  %14 = load i32, ptr @do_syslog.saved_console_loglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp34 = icmp eq i32 %14, -1
  br i1 %cmp34, label %if.then35, label %sw.bb33.if.end36_crit_edge

sw.bb33.if.end36_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end36

if.then35:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #27
  %15 = load i32, ptr @console_printk, align 4
  store i32 %15, ptr @do_syslog.saved_console_loglevel, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %sw.bb33.if.end36_crit_edge
  %16 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @console_printk, i32 0, i32 2), align 4
  store i32 %16, ptr @console_printk, align 4
  br label %cleanup

sw.bb37:                                          ; preds = %if.end
  %17 = load i32, ptr @do_syslog.saved_console_loglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp38.not = icmp eq i32 %17, -1
  br i1 %cmp38.not, label %sw.bb37.cleanup_crit_edge, label %if.then39

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.then39:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #27
  store i32 %17, ptr @console_printk, align 4
  store i32 -1, ptr @do_syslog.saved_console_loglevel, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  %18 = add i32 %len, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %18)
  %19 = icmp ult i32 %18, -8
  br i1 %19, label %sw.bb41.cleanup_crit_edge, label %if.end46

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end46:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #27
  %20 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @console_printk, i32 0, i32 2), align 4
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 %len)
  store i32 %21, ptr @console_printk, align 4
  store i32 -1, ptr @do_syslog.saved_console_loglevel, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @syslog_lock, i32 noundef 0) #25
  %22 = load ptr, ptr @prb, align 4
  %23 = load i64, ptr @syslog_seq, align 8
  %call51 = call zeroext i1 @prb_read_valid_info(ptr noundef %22, i64 noundef %23, ptr noundef nonnull %info, ptr noundef null) #25
  br i1 %call51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #27
  call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  br label %cleanup

if.end53:                                         ; preds = %sw.bb50
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %info, align 8
  %26 = load i64, ptr @syslog_seq, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %26)
  %cmp54.not = icmp eq i64 %25, %26
  br i1 %cmp54.not, label %if.end53.if.end57_crit_edge, label %if.then55

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end57

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #27
  store i64 %25, ptr @syslog_seq, align 8
  store i32 0, ptr @syslog_partial, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end53.if.end57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %source)
  %cmp58 = icmp eq i32 %source, 1
  br i1 %cmp58, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #27
  %27 = load ptr, ptr @prb, align 4
  %call60 = call i64 @prb_next_seq(ptr noundef %27) #25
  %28 = load i64, ptr @syslog_seq, align 8
  %sub = sub i64 %call60, %28
  %conv = trunc i64 %sub to i32
  br label %if.end76

if.else:                                          ; preds = %if.end57
  %29 = load i32, ptr @syslog_partial, align 4
  %printk_time.val = load i8, ptr @printk_time, align 1
  %syslog_time.val = load i8, ptr @syslog_time, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line_count) #25
  %30 = ptrtoint ptr %line_count to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %line_count, align 4, !annotation !596
  %31 = load i64, ptr @syslog_seq, align 8
  %32 = load ptr, ptr @prb, align 4
  %call68109 = call zeroext i1 @prb_read_valid_info(ptr noundef %32, i64 noundef %31, ptr noundef nonnull %info, ptr noundef nonnull %line_count) #25
  br i1 %call68109, label %for.body.lr.ph, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool61.not = icmp eq i32 %29, 0
  %cond.in = select i1 %tobool61.not, i8 %printk_time.val, i8 %syslog_time.val
  %text_len.i = getelementptr inbounds %struct.printk_info, ptr %info, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %time.0.in.in111 = phi i8 [ %cond.in, %for.body.lr.ph ], [ %37, %for.body.for.body_crit_edge ]
  %error.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %time.0.in.in111)
  %time.0.in = icmp ne i8 %time.0.in.in111, 0
  %33 = ptrtoint ptr %line_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %line_count, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %prefix.i) #25
  %call.i106 = call fastcc i32 @info_print_prefix(ptr noundef nonnull %info, i1 noundef zeroext true, i1 noundef zeroext %time.0.in, ptr noundef nonnull %prefix.i) #25
  %mul.i = mul i32 %call.i106, %34
  %35 = ptrtoint ptr %text_len.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %text_len.i, align 8
  %conv.i = zext i16 %36 to i32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %prefix.i) #25
  %add.i = add i32 %error.0110, 1
  %add3.i = add i32 %add.i, %mul.i
  %add = add i32 %add3.i, %conv.i
  %37 = load i8, ptr @printk_time, align 1, !range !610
  %38 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %info, align 8
  %add74 = add i64 %39, 1
  %40 = load ptr, ptr @prb, align 4
  %call68 = call zeroext i1 @prb_read_valid_info(ptr noundef %40, i64 noundef %add74, ptr noundef nonnull %info, ptr noundef nonnull %line_count) #25
  br i1 %call68, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.else.for.end_crit_edge
  %error.0.lcssa = phi i32 [ 0, %if.else.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %41 = load i32, ptr @syslog_partial, align 4
  %sub75 = sub i32 %error.0.lcssa, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line_count) #25
  br label %if.end76

if.end76:                                         ; preds = %for.end, %if.then59
  %error.1 = phi i32 [ %conv, %if.then59 ], [ %sub75, %for.end ]
  call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  br label %cleanup

sw.bb77:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  %42 = load i32, ptr @log_buf_len, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb77, %if.end76, %if.then52, %if.end46, %sw.bb41.cleanup_crit_edge, %if.then39, %sw.bb37.cleanup_crit_edge, %if.end36, %sw.bb32, %if.end29, %if.end21.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %if.end10, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge112, %check_syslog_permissions.exit.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then52 ], [ %call29.i, %check_syslog_permissions.exit.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ -14, %if.end6.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ -14, %if.end21.cleanup_crit_edge ], [ -22, %sw.bb41.cleanup_crit_edge ], [ -22, %sw.default ], [ %42, %sw.bb77 ], [ %error.1, %if.end76 ], [ 0, %if.end46 ], [ 0, %if.then39 ], [ 0, %sw.bb37.cleanup_crit_edge ], [ 0, %if.end36 ], [ 0, %sw.bb32 ], [ %call31, %if.end29 ], [ %call11, %if.end10 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge112 ], [ -1, %if.end5.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %info) #25
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @syslog_print(ptr noundef %buf, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %prefix.i = alloca [48 x i8], align 1
  %info = alloca %struct.printk_info, align 8
  %r = alloca %struct.printk_record, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %info) #25
  %0 = call ptr @memset(ptr %info, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %r) #25
  %1 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 1
  %2 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 1024) #33
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup71_crit_edge, label %if.end

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup71

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %info, ptr %r, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1024, ptr %2, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @syslog_lock, i32 noundef 0) #25
  br label %do.body

do.body:                                          ; preds = %do.cond20.do.body_crit_edge, %if.end
  %7 = load i64, ptr @syslog_seq, align 8
  call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 1503) #25
  %8 = load ptr, ptr @prb, align 4
  %call5 = call zeroext i1 @prb_read_valid(ptr noundef %8, i64 noundef %7, ptr noundef null) #25
  br i1 %call5, label %do.body.do.cond20_crit_edge, label %if.then6

do.body.do.cond20_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.cond20

if.then6:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #25
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #25
  %call8137 = call i32 @prepare_to_wait_event(ptr noundef nonnull @log_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #25
  %10 = load ptr, ptr @prb, align 4
  %call9138 = call zeroext i1 @prb_read_valid(ptr noundef %10, i64 noundef %7, ptr noundef null) #25
  br i1 %call9138, label %if.then6.if.end15.thread107_crit_edge, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  br label %if.end11

if.then6.if.end15.thread107_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end15.thread107

if.end11:                                         ; preds = %cleanup.if.end11_crit_edge, %if.then6.if.end11_crit_edge
  %call8139 = phi i32 [ %call8, %cleanup.if.end11_crit_edge ], [ %call8137, %if.then6.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8139)
  %tobool12.not = icmp eq i32 %call8139, 0
  br i1 %tobool12.not, label %cleanup, label %if.end15

cleanup:                                          ; preds = %if.end11
  call void @schedule() #25
  %call8 = call i32 @prepare_to_wait_event(ptr noundef nonnull @log_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #25
  %11 = load ptr, ptr @prb, align 4
  %call9 = call zeroext i1 @prb_read_valid(ptr noundef %11, i64 noundef %7, ptr noundef null) #25
  br i1 %call9, label %cleanup.if.end15.thread107_crit_edge, label %cleanup.if.end11_crit_edge

cleanup.if.end11_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end11

cleanup.if.end15.thread107_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end15.thread107

if.end15.thread107:                               ; preds = %cleanup.if.end15.thread107_crit_edge, %if.then6.if.end15.thread107_crit_edge
  call void @finish_wait(ptr noundef nonnull @log_wait, ptr noundef nonnull %__wq_entry) #25
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #25
  br label %do.cond20

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #25
  call void @mutex_lock_nested(ptr noundef nonnull @syslog_lock, i32 noundef 0) #25
  br label %out

do.cond20:                                        ; preds = %if.end15.thread107, %do.body.do.cond20_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @syslog_lock, i32 noundef 0) #25
  %12 = load i64, ptr @syslog_seq, align 8
  %cmp.not = icmp eq i64 %12, %7
  br i1 %cmp.not, label %do.cond20.do.body22_crit_edge, label %do.cond20.do.body_crit_edge

do.cond20.do.body_crit_edge:                      ; preds = %do.cond20
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body

do.cond20.do.body22_crit_edge:                    ; preds = %do.cond20
  br label %do.body22

do.body22:                                        ; preds = %cleanup63.do.body22_crit_edge, %do.cond20.do.body22_crit_edge
  %size.addr.0 = phi i32 [ %sub61, %cleanup63.do.body22_crit_edge ], [ %size, %do.cond20.do.body22_crit_edge ]
  %len.0 = phi i32 [ %add60, %cleanup63.do.body22_crit_edge ], [ 0, %do.cond20.do.body22_crit_edge ]
  %buf.addr.0 = phi ptr [ %add.ptr62, %cleanup63.do.body22_crit_edge ], [ %buf, %do.cond20.do.body22_crit_edge ]
  %13 = load ptr, ptr @prb, align 4
  %14 = load i64, ptr @syslog_seq, align 8
  %call23 = call zeroext i1 @prb_read_valid(ptr noundef %13, i64 noundef %14, ptr noundef nonnull %r) #25
  br i1 %call23, label %if.end25, label %do.body22.out_crit_edge

do.body22.out_crit_edge:                          ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #27
  br label %out

if.end25:                                         ; preds = %do.body22
  %15 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %r, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  %19 = load i64, ptr @syslog_seq, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %19)
  %cmp28.not = icmp eq i64 %18, %19
  br i1 %cmp28.not, label %if.end32, label %if.end32.thread

if.end32.thread:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #27
  store i64 %18, ptr @syslog_seq, align 8
  store i32 0, ptr @syslog_partial, align 4
  br label %if.then34

if.end32:                                         ; preds = %if.end25
  %.pr = load i32, ptr @syslog_partial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool33.not = icmp eq i32 %.pr, 0
  br i1 %tobool33.not, label %if.end32.if.then34_crit_edge, label %if.end32.if.end36_crit_edge

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end36

if.end32.if.then34_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then34

if.then34:                                        ; preds = %if.end32.if.then34_crit_edge, %if.end32.thread
  %20 = load i8, ptr @printk_time, align 1, !range !610
  store i8 %20, ptr @syslog_time, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32.if.end36_crit_edge
  %21 = phi i32 [ 0, %if.then34 ], [ %.pr, %if.end32.if.end36_crit_edge ]
  %22 = load i8, ptr @syslog_time, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool37 = icmp ne i8 %22, 0
  %text_len2.i = getelementptr inbounds %struct.printk_info, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %text_len2.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %text_len2.i, align 8
  %conv.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %2, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %prefix.i) #25
  %29 = call ptr @memset(ptr %prefix.i, i32 255, i32 48)
  %30 = call i32 @llvm.umin.i32(i32 %26, i32 %conv.i) #25
  %call.i = call fastcc i32 @info_print_prefix(ptr noundef %16, i1 noundef zeroext true, i1 noundef zeroext %tobool37, ptr noundef nonnull %prefix.i) #25
  %sub28.i = add i32 %26, -1
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end39.i, %if.end36
  %text_len.1.i = phi i32 [ %30, %if.end36 ], [ %sub44.i, %if.end39.i ]
  %text.0.i = phi ptr [ %28, %if.end36 ], [ %add.ptr42.i, %if.end39.i ]
  %truncated.0.off0.i = phi i1 [ false, %if.end36 ], [ %truncated.1.off0.i, %if.end39.i ]
  %len.0.i = phi i32 [ 0, %if.end36 ], [ %add34.i, %if.end39.i ]
  %call6.i = call ptr @memchr(ptr noundef %text.0.i, i32 noundef 10, i32 noundef %text_len.1.i) #34
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #27
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call6.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %text.0.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %if.end12.i

if.else.i:                                        ; preds = %for.cond.i
  br i1 %truncated.0.off0.i, label %if.else.i.for.end.i_crit_edge, label %if.else.i.if.end12.i_crit_edge

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end12.i

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i

if.end12.i:                                       ; preds = %if.else.i.if.end12.i_crit_edge, %if.then8.i
  %line_len.0.i = phi i32 [ %sub.ptr.sub.i, %if.then8.i ], [ %text_len.1.i, %if.else.i.if.end12.i_crit_edge ]
  %add.i = add i32 %len.0.i, %call.i
  %add13.i = add i32 %add.i, 2
  %add15.i = add i32 %add13.i, %text_len.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %26)
  %cmp16.i = icmp ugt i32 %add15.i, %26
  br i1 %cmp16.i, label %if.then18.i, label %if.end12.i.if.end30.i_crit_edge

if.end12.i.if.end30.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end30.i

if.then18.i:                                      ; preds = %if.end12.i
  %add22.i = add i32 %line_len.0.i, %add13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i, i32 %26)
  %cmp23.i = icmp ugt i32 %add22.i, %26
  br i1 %cmp23.i, label %if.then18.i.for.end.i_crit_edge, label %if.end26.i

if.then18.i.for.end.i_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i

if.end26.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #27
  %31 = xor i32 %add.i, -1
  %sub29.i = add i32 %sub28.i, %31
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end26.i, %if.end12.i.if.end30.i_crit_edge
  %text_len.2.i = phi i32 [ %sub29.i, %if.end26.i ], [ %text_len.1.i, %if.end12.i.if.end30.i_crit_edge ]
  %truncated.1.off0.i = phi i1 [ true, %if.end26.i ], [ %truncated.0.off0.i, %if.end12.i.if.end30.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %text.0.i, i32 %call.i
  %32 = call ptr @memmove(ptr %add.ptr.i, ptr %text.0.i, i32 %text_len.2.i)
  %33 = call ptr @memcpy(ptr %text.0.i, ptr %prefix.i, i32 %call.i)
  %add32.i = add i32 %line_len.0.i, %call.i
  %add33.i = add i32 %add32.i, 1
  %add34.i = add i32 %add33.i, %len.0.i
  %cmp35.i = icmp eq i32 %text_len.2.i, %line_len.0.i
  br i1 %cmp35.i, label %if.then37.i, label %if.end39.i

if.then37.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #27
  %arrayidx.i = getelementptr i8, ptr %text.0.i, i32 %add32.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 10, ptr %arrayidx.i, align 1
  br label %for.end.i

if.end39.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #27
  %add.ptr42.i = getelementptr i8, ptr %text.0.i, i32 %add33.i
  %add43.neg.i = xor i32 %line_len.0.i, -1
  %sub44.i = add i32 %text_len.2.i, %add43.neg.i
  br label %for.cond.i

for.end.i:                                        ; preds = %if.then37.i, %if.then18.i.for.end.i_crit_edge, %if.else.i.for.end.i_crit_edge
  %len.1.i = phi i32 [ %add34.i, %if.then37.i ], [ %len.0.i, %if.else.i.for.end.i_crit_edge ], [ %len.0.i, %if.then18.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp45.not.i = icmp eq i32 %26, 0
  br i1 %cmp45.not.i, label %for.end.i.record_print_text.exit_crit_edge, label %if.then47.i

for.end.i.record_print_text.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %record_print_text.exit

if.then47.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #27
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %arrayidx49.i = getelementptr i8, ptr %36, i32 %len.1.i
  %37 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx49.i, align 1
  br label %record_print_text.exit

record_print_text.exit:                           ; preds = %if.then47.i, %for.end.i.record_print_text.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %prefix.i) #25
  %38 = load i32, ptr @syslog_partial, align 4
  %sub = sub i32 %len.1.i, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %size.addr.0)
  %cmp39.not = icmp ugt i32 %sub, %size.addr.0
  br i1 %cmp39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %record_print_text.exit
  call void @__sanitizer_cov_trace_pc() #27
  %39 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %r, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  %add = add i64 %42, 1
  store i64 %add, ptr @syslog_seq, align 8
  br label %if.end49

if.else:                                          ; preds = %record_print_text.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool44.not = icmp eq i32 %len.0, 0
  br i1 %tobool44.not, label %if.then45, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #27
  br label %out

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #27
  %add46 = add i32 %38, %size.addr.0
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.then40
  %storemerge = phi i32 [ 0, %if.then40 ], [ %add46, %if.then45 ]
  %n.0 = phi i32 [ %sub, %if.then40 ], [ %size.addr.0, %if.then45 ]
  store i32 %storemerge, ptr @syslog_partial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0)
  %tobool50.not = icmp eq i32 %n.0, 0
  br i1 %tobool50.not, label %if.end49.out_crit_edge, label %if.end52

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #27
  br label %out

if.end52:                                         ; preds = %if.end49
  call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0)
  %cmp9.i.i = icmp slt i32 %n.0, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end52
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !594

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.95, i32 noundef 230, i32 noundef 9, ptr noundef null) #25
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %if.end52
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %n.0, i1 noundef zeroext true) #25
  call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 174) #25
  %call.i.i = call zeroext i1 @should_fail_usercopy() #25
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %43 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 %n.0, i32 -1226833920) #29, !srcloc !600
  %asmresult.i.i = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.then.i.i.i.copy_to_user.exit.thread_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @syslog_lock, i32 noundef 0) #25
  br label %if.then55

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %n.0) #25
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0, ptr noundef %add.ptr, i32 noundef %n.0) #25
  call void @mutex_lock_nested(ptr noundef nonnull @syslog_lock, i32 noundef 0) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool54.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool54.not, label %cleanup63, label %copy_to_user.exit.if.then55_crit_edge

copy_to_user.exit.if.then55_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then55

if.then55:                                        ; preds = %copy_to_user.exit.if.then55_crit_edge, %copy_to_user.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool56.not = icmp eq i32 %len.0, 0
  %spec.store.select = select i1 %tobool56.not, i32 -14, i32 %len.0
  br label %out

cleanup63:                                        ; preds = %copy_to_user.exit
  %add60 = add i32 %n.0, %len.0
  %sub61 = sub i32 %size.addr.0, %n.0
  %add.ptr62 = getelementptr i8, ptr %buf.addr.0, i32 %n.0
  %tobool69.not = icmp eq i32 %sub61, 0
  br i1 %tobool69.not, label %cleanup63.out_crit_edge, label %cleanup63.do.body22_crit_edge

cleanup63.do.body22_crit_edge:                    ; preds = %cleanup63
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body22

cleanup63.out_crit_edge:                          ; preds = %cleanup63
  call void @__sanitizer_cov_trace_pc() #27
  br label %out

out:                                              ; preds = %cleanup63.out_crit_edge, %if.then55, %if.end49.out_crit_edge, %if.else.out_crit_edge, %do.body22.out_crit_edge, %if.end15
  %len.2 = phi i32 [ %call8139, %if.end15 ], [ %spec.store.select, %if.then55 ], [ %len.0, %if.else.out_crit_edge ], [ %len.0, %do.body22.out_crit_edge ], [ %len.0, %if.end49.out_crit_edge ], [ %add60, %cleanup63.out_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  call void @kfree(ptr noundef nonnull %call7.i) #25
  br label %cleanup71

cleanup71:                                        ; preds = %out, %entry.cleanup71_crit_edge
  %retval.0 = phi i32 [ %len.2, %out ], [ -12, %entry.cleanup71_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %r) #25
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %info) #25
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @syslog_print_all(ptr noundef %buf, i32 noundef %size, i1 noundef zeroext %clear) unnamed_addr #0 align 64 {
entry:
  %prefix.i = alloca [48 x i8], align 1
  %info = alloca %struct.printk_info, align 8
  %r = alloca %struct.printk_record, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %info) #25
  %0 = call ptr @memset(ptr %info, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %r) #25
  %1 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 1
  %2 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 1024) #33
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup25_crit_edge, label %if.end

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup25

if.end:                                           ; preds = %entry
  %4 = load i8, ptr @printk_time, align 1, !range !610
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %5 = load volatile i32, ptr @clear_seq, align 8
  %and.i = and i32 %5, 1
  %arrayidx.i = getelementptr %struct.latched_seq, ptr @clear_seq, i32 0, i32 1, i32 %and.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !597
  %8 = load volatile i32, ptr @clear_seq, align 8
  %cmp.i.i.i.not.i = icmp eq i32 %8, %5
  br i1 %cmp.i.i.i.not.i, label %latched_seq_read_nolock.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body.i

latched_seq_read_nolock.exit:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1 = icmp ne i8 %4, 0
  %call5 = tail call fastcc i64 @find_first_fitting_seq(i64 noundef %7, i64 noundef -1, i32 noundef %size, i1 noundef zeroext true, i1 noundef zeroext %tobool1)
  %9 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %info, ptr %r, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1024, ptr %2, align 4
  %12 = load ptr, ptr @prb, align 4
  %call662 = call zeroext i1 @prb_read_valid(ptr noundef %12, i64 noundef %call5, ptr noundef nonnull %r) #25
  br i1 %call662, label %latched_seq_read_nolock.exit.for.body_crit_edge, label %latched_seq_read_nolock.exit.for.end_crit_edge

latched_seq_read_nolock.exit.for.end_crit_edge:   ; preds = %latched_seq_read_nolock.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

latched_seq_read_nolock.exit.for.body_crit_edge:  ; preds = %latched_seq_read_nolock.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %latched_seq_read_nolock.exit.for.body_crit_edge
  %seq.064 = phi i64 [ %add21, %for.inc.for.body_crit_edge ], [ %call5, %latched_seq_read_nolock.exit.for.body_crit_edge ]
  %len.063 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %latched_seq_read_nolock.exit.for.body_crit_edge ]
  %13 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %r, align 4
  %text_len2.i = getelementptr inbounds %struct.printk_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %text_len2.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %text_len2.i, align 8
  %conv.i = zext i16 %16 to i32
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %2, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %prefix.i) #25
  %21 = call ptr @memset(ptr %prefix.i, i32 255, i32 48)
  %22 = call i32 @llvm.umin.i32(i32 %18, i32 %conv.i) #25
  %call.i = call fastcc i32 @info_print_prefix(ptr noundef %14, i1 noundef zeroext true, i1 noundef zeroext %tobool1, ptr noundef nonnull %prefix.i) #25
  %sub28.i = add i32 %18, -1
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end39.i, %for.body
  %text_len.1.i = phi i32 [ %22, %for.body ], [ %sub44.i, %if.end39.i ]
  %text.0.i = phi ptr [ %20, %for.body ], [ %add.ptr42.i, %if.end39.i ]
  %truncated.0.off0.i = phi i1 [ false, %for.body ], [ %truncated.1.off0.i, %if.end39.i ]
  %len.0.i = phi i32 [ 0, %for.body ], [ %add34.i, %if.end39.i ]
  %call6.i = call ptr @memchr(ptr noundef %text.0.i, i32 noundef 10, i32 noundef %text_len.1.i) #34
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #27
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call6.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %text.0.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %if.end12.i

if.else.i:                                        ; preds = %for.cond.i
  br i1 %truncated.0.off0.i, label %if.else.i.for.end.i_crit_edge, label %if.else.i.if.end12.i_crit_edge

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end12.i

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i

if.end12.i:                                       ; preds = %if.else.i.if.end12.i_crit_edge, %if.then8.i
  %line_len.0.i = phi i32 [ %sub.ptr.sub.i, %if.then8.i ], [ %text_len.1.i, %if.else.i.if.end12.i_crit_edge ]
  %add.i = add i32 %len.0.i, %call.i
  %add13.i = add i32 %add.i, 2
  %add15.i = add i32 %add13.i, %text_len.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %18)
  %cmp16.i = icmp ugt i32 %add15.i, %18
  br i1 %cmp16.i, label %if.then18.i, label %if.end12.i.if.end30.i_crit_edge

if.end12.i.if.end30.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end30.i

if.then18.i:                                      ; preds = %if.end12.i
  %add22.i = add i32 %line_len.0.i, %add13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i, i32 %18)
  %cmp23.i = icmp ugt i32 %add22.i, %18
  br i1 %cmp23.i, label %if.then18.i.for.end.i_crit_edge, label %if.end26.i

if.then18.i.for.end.i_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i

if.end26.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #27
  %23 = xor i32 %add.i, -1
  %sub29.i = add i32 %sub28.i, %23
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end26.i, %if.end12.i.if.end30.i_crit_edge
  %text_len.2.i = phi i32 [ %sub29.i, %if.end26.i ], [ %text_len.1.i, %if.end12.i.if.end30.i_crit_edge ]
  %truncated.1.off0.i = phi i1 [ true, %if.end26.i ], [ %truncated.0.off0.i, %if.end12.i.if.end30.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %text.0.i, i32 %call.i
  %24 = call ptr @memmove(ptr %add.ptr.i, ptr %text.0.i, i32 %text_len.2.i)
  %25 = call ptr @memcpy(ptr %text.0.i, ptr %prefix.i, i32 %call.i)
  %add32.i = add i32 %line_len.0.i, %call.i
  %add33.i = add i32 %add32.i, 1
  %add34.i = add i32 %add33.i, %len.0.i
  %cmp35.i = icmp eq i32 %text_len.2.i, %line_len.0.i
  br i1 %cmp35.i, label %if.then37.i, label %if.end39.i

if.then37.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #27
  %arrayidx.i45 = getelementptr i8, ptr %text.0.i, i32 %add32.i
  %26 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %arrayidx.i45, align 1
  br label %for.end.i

if.end39.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #27
  %add.ptr42.i = getelementptr i8, ptr %text.0.i, i32 %add33.i
  %add43.neg.i = xor i32 %line_len.0.i, -1
  %sub44.i = add i32 %text_len.2.i, %add43.neg.i
  br label %for.cond.i

for.end.i:                                        ; preds = %if.then37.i, %if.then18.i.for.end.i_crit_edge, %if.else.i.for.end.i_crit_edge
  %len.1.i = phi i32 [ %add34.i, %if.then37.i ], [ %len.0.i, %if.else.i.for.end.i_crit_edge ], [ %len.0.i, %if.then18.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp45.not.i = icmp eq i32 %18, 0
  br i1 %cmp45.not.i, label %for.end.i.record_print_text.exit_crit_edge, label %if.then47.i

for.end.i.record_print_text.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %record_print_text.exit

if.then47.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #27
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %arrayidx49.i = getelementptr i8, ptr %28, i32 %len.1.i
  %29 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx49.i, align 1
  br label %record_print_text.exit

record_print_text.exit:                           ; preds = %if.then47.i, %for.end.i.record_print_text.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %prefix.i) #25
  %add = add i32 %len.1.i, %len.063
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size)
  %cmp = icmp sgt i32 %add, %size
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %record_print_text.exit
  call void @__sanitizer_cov_trace_pc() #27
  %dec = add i64 %seq.064, -1
  br label %for.end

if.end10:                                         ; preds = %record_print_text.exit
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.063
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %len.1.i)
  %cmp1.i.i = icmp ugt i32 %len.1.i, 1024
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !595

if.then3.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #27
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.95, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.96, i32 noundef 1024, i32 noundef %len.1.i) #25
  br label %for.end

if.then.i.i.i:                                    ; preds = %if.end10
  call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %len.1.i, i1 noundef zeroext true) #25
  call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 174) #25
  %call.i.i = call zeroext i1 @should_fail_usercopy() #25
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %30 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %len.1.i, i32 -1226833920) #29, !srcloc !600
  %asmresult.i.i = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #27
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef %len.1.i) #25
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef nonnull %call7.i, i32 noundef %len.1.i) #25
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %len.1.i, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %len.1.i, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool12.not = icmp eq i32 %n.addr.0.i, 0
  %add. = select i1 %tobool12.not, i32 %add, i32 -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.)
  %cmp16 = icmp slt i32 %add., 0
  br i1 %cmp16, label %copy_to_user.exit.for.end_crit_edge, label %for.inc

copy_to_user.exit.for.end_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.inc:                                          ; preds = %copy_to_user.exit
  %31 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %r, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %32, align 8
  %add21 = add i64 %34, 1
  %35 = load ptr, ptr @prb, align 4
  %call6 = call zeroext i1 @prb_read_valid(ptr noundef %35, i64 noundef %add21, ptr noundef nonnull %r) #25
  br i1 %call6, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %copy_to_user.exit.for.end_crit_edge, %if.then3.i.i, %if.then9, %latched_seq_read_nolock.exit.for.end_crit_edge
  %len.3 = phi i32 [ %len.063, %if.then9 ], [ -14, %if.then3.i.i ], [ 0, %latched_seq_read_nolock.exit.for.end_crit_edge ], [ %add, %for.inc.for.end_crit_edge ], [ %add., %copy_to_user.exit.for.end_crit_edge ]
  %seq.2 = phi i64 [ %dec, %if.then9 ], [ %seq.064, %if.then3.i.i ], [ %call5, %latched_seq_read_nolock.exit.for.end_crit_edge ], [ %add21, %for.inc.for.end_crit_edge ], [ %seq.064, %copy_to_user.exit.for.end_crit_edge ]
  br i1 %clear, label %if.then23, label %for.end.if.end24_crit_edge

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end24

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #27
  call void @mutex_lock_nested(ptr noundef nonnull @syslog_lock, i32 noundef 0) #25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !608
  %36 = load i32, ptr @clear_seq, align 8
  %inc.i.i = add i32 %36, 1
  store i32 %inc.i.i, ptr @clear_seq, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !609
  store i64 %seq.2, ptr getelementptr inbounds (%struct.latched_seq, ptr @clear_seq, i32 0, i32 1), align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !608
  %37 = load i32, ptr @clear_seq, align 8
  %inc.i1.i = add i32 %37, 1
  store i32 %inc.i1.i, ptr @clear_seq, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !609
  store i64 %seq.2, ptr getelementptr inbounds (%struct.latched_seq, ptr @clear_seq, i32 0, i32 1, i32 1), align 8
  call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.end.if.end24_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #25
  br label %cleanup25

cleanup25:                                        ; preds = %if.end24, %entry.cleanup25_crit_edge
  %retval.0 = phi i32 [ %len.3, %if.end24 ], [ -12, %entry.cleanup25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %r) #25
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %info) #25
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prb_read_valid_info(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_syslog(i32 noundef %type, i32 noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buf to ptr
  %call.i = tail call i32 @do_syslog(i32 noundef %type, ptr noundef %0, i32 noundef %len, i32 noundef 0) #25
  ret i32 %call.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @printk_parse_prefix(ptr nocapture noundef readonly %text, ptr noundef %level, ptr noundef %flags) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %text to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %text, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cond19 = icmp eq i8 %1, 1
  br i1 %cond19, label %land.lhs.true.i.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %while.end

land.lhs.true.i.lr.ph:                            ; preds = %entry
  %tobool2.not = icmp eq ptr %level, null
  %tobool6.not = icmp eq ptr %flags, null
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.epilog.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %prefix_len.021 = phi i16 [ 0, %land.lhs.true.i.lr.ph ], [ %add, %sw.epilog.land.lhs.true.i_crit_edge ]
  %text.addr.020 = phi ptr [ %text, %land.lhs.true.i.lr.ph ], [ %add.ptr, %sw.epilog.land.lhs.true.i_crit_edge ]
  %arrayidx2.i = getelementptr i8, ptr %text.addr.020, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.166)
  switch i8 %3, label %land.lhs.true.i.while.end_crit_edge [
    i8 55, label %land.lhs.true.i.printk_get_level.exit_crit_edge
    i8 99, label %land.lhs.true.i.printk_get_level.exit_crit_edge23
    i8 48, label %land.lhs.true.i.printk_get_level.exit_crit_edge24
    i8 49, label %land.lhs.true.i.printk_get_level.exit_crit_edge25
    i8 50, label %land.lhs.true.i.printk_get_level.exit_crit_edge26
    i8 51, label %land.lhs.true.i.printk_get_level.exit_crit_edge27
    i8 52, label %land.lhs.true.i.printk_get_level.exit_crit_edge28
    i8 53, label %land.lhs.true.i.printk_get_level.exit_crit_edge29
    i8 54, label %land.lhs.true.i.printk_get_level.exit_crit_edge30
  ]

land.lhs.true.i.printk_get_level.exit_crit_edge30: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %printk_get_level.exit

land.lhs.true.i.printk_get_level.exit_crit_edge29: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %printk_get_level.exit

land.lhs.true.i.printk_get_level.exit_crit_edge28: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %printk_get_level.exit

land.lhs.true.i.printk_get_level.exit_crit_edge27: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %printk_get_level.exit

land.lhs.true.i.printk_get_level.exit_crit_edge26: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %printk_get_level.exit

land.lhs.true.i.printk_get_level.exit_crit_edge25: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %printk_get_level.exit

land.lhs.true.i.printk_get_level.exit_crit_edge24: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %printk_get_level.exit

land.lhs.true.i.printk_get_level.exit_crit_edge23: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %printk_get_level.exit

land.lhs.true.i.printk_get_level.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %printk_get_level.exit

land.lhs.true.i.while.end_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %while.end

printk_get_level.exit:                            ; preds = %land.lhs.true.i.printk_get_level.exit_crit_edge, %land.lhs.true.i.printk_get_level.exit_crit_edge23, %land.lhs.true.i.printk_get_level.exit_crit_edge24, %land.lhs.true.i.printk_get_level.exit_crit_edge25, %land.lhs.true.i.printk_get_level.exit_crit_edge26, %land.lhs.true.i.printk_get_level.exit_crit_edge27, %land.lhs.true.i.printk_get_level.exit_crit_edge28, %land.lhs.true.i.printk_get_level.exit_crit_edge29, %land.lhs.true.i.printk_get_level.exit_crit_edge30
  %conv8.i = zext i8 %3 to i32
  %5 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.167)
  switch i8 %3, label %printk_get_level.exit.sw.epilog_crit_edge [
    i8 99, label %sw.bb5
    i8 48, label %printk_get_level.exit.sw.bb_crit_edge
    i8 49, label %printk_get_level.exit.sw.bb_crit_edge31
    i8 50, label %printk_get_level.exit.sw.bb_crit_edge32
    i8 51, label %printk_get_level.exit.sw.bb_crit_edge33
    i8 52, label %printk_get_level.exit.sw.bb_crit_edge34
    i8 53, label %printk_get_level.exit.sw.bb_crit_edge35
    i8 54, label %printk_get_level.exit.sw.bb_crit_edge36
    i8 55, label %printk_get_level.exit.sw.bb_crit_edge37
  ]

printk_get_level.exit.sw.bb_crit_edge37:          ; preds = %printk_get_level.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %sw.bb

printk_get_level.exit.sw.bb_crit_edge36:          ; preds = %printk_get_level.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %sw.bb

printk_get_level.exit.sw.bb_crit_edge35:          ; preds = %printk_get_level.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %sw.bb

printk_get_level.exit.sw.bb_crit_edge34:          ; preds = %printk_get_level.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %sw.bb

printk_get_level.exit.sw.bb_crit_edge33:          ; preds = %printk_get_level.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %sw.bb

printk_get_level.exit.sw.bb_crit_edge32:          ; preds = %printk_get_level.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %sw.bb

printk_get_level.exit.sw.bb_crit_edge31:          ; preds = %printk_get_level.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %sw.bb

printk_get_level.exit.sw.bb_crit_edge:            ; preds = %printk_get_level.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %sw.bb

printk_get_level.exit.sw.epilog_crit_edge:        ; preds = %printk_get_level.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %sw.epilog

sw.bb:                                            ; preds = %printk_get_level.exit.sw.bb_crit_edge, %printk_get_level.exit.sw.bb_crit_edge31, %printk_get_level.exit.sw.bb_crit_edge32, %printk_get_level.exit.sw.bb_crit_edge33, %printk_get_level.exit.sw.bb_crit_edge34, %printk_get_level.exit.sw.bb_crit_edge35, %printk_get_level.exit.sw.bb_crit_edge36, %printk_get_level.exit.sw.bb_crit_edge37
  br i1 %tobool2.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #27
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %6 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp eq i32 %7, -1
  br i1 %cmp, label %if.then3, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %sw.epilog

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  %sub = add nsw i32 %conv8.i, -48
  %8 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %level, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %printk_get_level.exit
  br i1 %tobool6.not, label %sw.bb5.sw.epilog_crit_edge, label %if.then7

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #27
  br label %sw.epilog

if.then7:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #27
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %or = or i32 %10, 8
  store i32 %or, ptr %flags, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then7, %sw.bb5.sw.epilog_crit_edge, %if.then3, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %printk_get_level.exit.sw.epilog_crit_edge
  %add = add i16 %prefix_len.021, 2
  %add.ptr = getelementptr i8, ptr %text.addr.020, i32 2
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr, align 1
  %cond = icmp eq i8 %12, 1
  br i1 %cond, label %sw.epilog.land.lhs.true.i_crit_edge, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #27
  br label %while.end

sw.epilog.land.lhs.true.i_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #27
  br label %land.lhs.true.i

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %land.lhs.true.i.while.end_crit_edge, %entry.while.end_crit_edge
  %prefix_len.0.lcssa = phi i16 [ 0, %entry.while.end_crit_edge ], [ %add, %sw.epilog.while.end_crit_edge ], [ %prefix_len.021, %land.lhs.true.i.while.end_crit_edge ]
  ret i16 %prefix_len.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vprintk_store(i32 noundef %facility, i32 noundef %level, ptr noundef readonly %dev_info, ptr noundef %fmt, [1 x i32] %args.coerce) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %level.addr = alloca i32, align 4
  %e = alloca %struct.prb_reserved_entry, align 4
  %flags = alloca i32, align 4
  %r = alloca %struct.printk_record, align 4
  %prefix_buf = alloca [8 x i8], align 8
  %args2 = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %args.coerce.fca.0.extract = extractvalue [1 x i32] %args.coerce, 0
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %args.coerce.fca.0.extract, ptr %args, align 4
  %1 = ptrtoint ptr %level.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %level, ptr %level.addr, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %5, 15728640
  %6 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i10.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i10.i to ptr
  %preempt_count.i11.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i11.i, align 4
  %and2.i = and i32 %9, 983040
  %or.i = or i32 %and2.i, %and.i
  %10 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i12.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i12.i to ptr
  %preempt_count.i13.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i13.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i13.i, align 4
  %and5.i = and i32 %13, 256
  %or6.i = or i32 %or.i, %and5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6.i)
  %tobool.not.i = icmp eq i32 %or6.i, 0
  %14 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  br i1 %tobool.not.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid.i.i, align 8
  br label %printk_caller_id.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i, align 4
  %add.i = xor i32 %21, -2147483648
  br label %printk_caller_id.exit

printk_caller_id.exit:                            ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %19, %cond.true.i ], [ %add.i, %cond.false.i ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e) #25
  %22 = call ptr @memset(ptr %e, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #25
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %r) #25
  %24 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %r, align 4, !annotation !596
  %25 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %25, align 4, !annotation !596
  %27 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %27, align 4, !annotation !596
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prefix_buf) #25
  %29 = ptrtoint ptr %prefix_buf to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 -1, ptr %prefix_buf, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args2) #25
  %30 = ptrtoint ptr %args2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %args2, align 4, !annotation !596
  %call.i = tail call i64 @sched_clock() #25
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !602
  %and.i255 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i255)
  %tobool.not = icmp eq i32 %and.i255, 0
  br i1 %tobool.not, label %if.then, label %printk_caller_id.exit.do.end17_crit_edge

printk_caller_id.exit.do.end17_crit_edge:         ; preds = %printk_caller_id.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end17

if.then:                                          ; preds = %printk_caller_id.exit
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @trace_hardirqs_off() #25
  br label %do.end17

do.end17:                                         ; preds = %if.then, %printk_caller_id.exit.do.end17_crit_edge
  %32 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i256 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i256 to ptr
  %preempt_count.i.i257 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i257 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i257, align 4
  %and.i258 = and i32 %35, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i258)
  %tobool.not.i259 = icmp eq i32 %and.i258, 0
  %.b1.i19.i = load i1, ptr @__printk_percpu_data_ready, align 1
  %printk_count_early.printk_count_nmi_early.i = select i1 %tobool.not.i259, ptr @printk_count_early, ptr @printk_count_nmi_early
  br i1 %.b1.i19.i, label %return.sink.split.i, label %do.end17.__printk_recursion_counter.exit_crit_edge

do.end17.__printk_recursion_counter.exit_crit_edge: ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #27
  br label %__printk_recursion_counter.exit

return.sink.split.i:                              ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #27
  %..i = select i1 %tobool.not.i259, i32 ptrtoint (ptr @printk_count to i32), i32 ptrtoint (ptr @printk_count_nmi to i32)
  %36 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i20.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i20.i to ptr
  %cpu15.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu15.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu15.i, align 4
  %arrayidx16.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx16.i, align 4
  %add17.i = add i32 %41, %..i
  %42 = inttoptr i32 %add17.i to ptr
  br label %__printk_recursion_counter.exit

__printk_recursion_counter.exit:                  ; preds = %return.sink.split.i, %do.end17.__printk_recursion_counter.exit_crit_edge
  %retval.0.i = phi ptr [ %42, %return.sink.split.i ], [ %printk_count_early.printk_count_nmi_early.i, %do.end17.__printk_recursion_counter.exit_crit_edge ]
  %43 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %retval.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %cmp20 = icmp ugt i8 %44, 3
  br i1 %cmp20, label %do.body23, label %if.else

do.body23:                                        ; preds = %__printk_recursion_counter.exit
  br i1 %tobool.not, label %if.then33, label %do.body23.do.body35_crit_edge

do.body23.do.body35_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body35

if.then33:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @trace_hardirqs_on() #25
  br label %do.body35

do.body35:                                        ; preds = %if.then33, %do.body23.do.body35_crit_edge
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #25, !srcloc !603
  %and.i.i261 = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i261)
  %tobool43.not = icmp eq i32 %and.i.i261, 0
  br i1 %tobool43.not, label %if.then47, label %do.body35.do.end50_crit_edge, !prof !595

do.body35.do.end50_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end50

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @warn_bogus_irq_restore() #25
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %do.body35.do.end50_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #25, !srcloc !604
  br label %cleanup

if.else:                                          ; preds = %__printk_recursion_counter.exit
  %inc = add nuw nsw i8 %44, 1
  %46 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %inc, ptr %retval.0.i, align 1
  call void @llvm.va_copy(ptr nonnull %args2, ptr nonnull %args)
  %47 = ptrtoint ptr %args2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.fca.0.load = load i32, ptr %args2, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call62 = call i32 @vsnprintf(ptr noundef nonnull %prefix_buf, i32 noundef 8, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  %48 = trunc i32 %call62 to i16
  %conv63 = add i16 %48, 1
  call void @llvm.va_end(ptr nonnull %args2)
  %49 = call i16 @llvm.umin.i16(i16 %conv63, i16 976)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %facility)
  %cmp69 = icmp eq i32 %facility, 0
  br i1 %cmp69, label %if.then71, label %if.else.if.end74_crit_edge

if.else.if.end74_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end74

if.then71:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #27
  %call73 = call zeroext i16 @printk_parse_prefix(ptr noundef nonnull %prefix_buf, ptr noundef nonnull %level.addr, ptr noundef nonnull %flags)
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.else.if.end74_crit_edge
  %50 = ptrtoint ptr %level.addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %level.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp75 = icmp eq i32 %51, -1
  br i1 %cmp75, label %if.then77, label %if.end74.if.end78_crit_edge

if.end74.if.end78_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end78

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #27
  %52 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @console_printk, i32 0, i32 1), align 4
  %53 = ptrtoint ptr %level.addr to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %level.addr, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end74.if.end78_crit_edge
  %tobool79.not = icmp eq ptr %dev_info, null
  br i1 %tobool79.not, label %if.end78.if.end81_crit_edge, label %if.then80

if.end78.if.end81_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end81

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #27
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %or = or i32 %55, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end78.if.end81_crit_edge
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  %and = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool82.not = icmp eq i32 %and, 0
  %.pre = zext i16 %49 to i32
  br i1 %tobool82.not, label %if.end81.if.end110_crit_edge, label %if.then83

if.end81.if.end110_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end110

if.then83:                                        ; preds = %if.end81
  %58 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %r, align 4
  %59 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %25, align 4
  %60 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.pre, ptr %27, align 4
  %61 = load ptr, ptr @prb, align 4
  %call85 = call zeroext i1 @prb_reserve_in_last(ptr noundef nonnull %e, ptr noundef %61, ptr noundef nonnull %r, i32 noundef %cond.i, i32 noundef 976) #25
  br i1 %call85, label %if.then86, label %if.then83.if.end110_crit_edge

if.then83.if.end110_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end110

if.then86:                                        ; preds = %if.then83
  %62 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %25, align 4
  %64 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %r, align 4
  %text_len87 = getelementptr inbounds %struct.printk_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %text_len87 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %text_len87, align 8
  %idxprom = zext i16 %67 to i32
  %arrayidx88 = getelementptr i8, ptr %63, i32 %idxprom
  %68 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %68)
  %.fca.0.load250 = load i32, ptr %args, align 4
  %.fca.0.insert251 = insertvalue [1 x i32] poison, i32 %.fca.0.load250, 0
  %call.i262 = call i32 @vscnprintf(ptr noundef %arrayidx88, i32 noundef %.pre, ptr noundef %fmt, [1 x i32] %.fca.0.insert251) #25
  %conv2.i = trunc i32 %call.i262 to i16
  %conv3.i = and i32 %call.i262, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %tobool.not.i263 = icmp eq i32 %conv3.i, 0
  br i1 %tobool.not.i263, label %if.then86.if.end.i_crit_edge, label %land.lhs.true.i

if.then86.if.end.i_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then86
  %sub.i = add nsw i32 %conv3.i, -1
  %arrayidx.i = getelementptr i8, ptr %arrayidx88, i32 %sub.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %70)
  %cmp.i = icmp eq i8 %70, 10
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  %dec.i = add i16 %conv2.i, -1
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags, align 4
  %or.i264 = or i32 %72, 2
  store i32 %or.i264, ptr %flags, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then86.if.end.i_crit_edge
  %text_len.0.i = phi i16 [ %dec.i, %if.then.i ], [ %conv2.i, %land.lhs.true.i.if.end.i_crit_edge ], [ %conv2.i, %if.then86.if.end.i_crit_edge ]
  br i1 %cmp69, label %if.then9.i, label %if.end.i.printk_sprint.exit_crit_edge

if.end.i.printk_sprint.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %printk_sprint.exit

if.then9.i:                                       ; preds = %if.end.i
  %call10.i = call zeroext i16 @printk_parse_prefix(ptr noundef %arrayidx88, ptr noundef null, ptr noundef null) #25
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call10.i)
  %tobool11.not.i = icmp eq i16 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then9.i.printk_sprint.exit_crit_edge, label %if.then12.i

if.then9.i.printk_sprint.exit_crit_edge:          ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %printk_sprint.exit

if.then12.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #27
  %conv13.i = zext i16 %call10.i to i32
  %sub15.i = sub i16 %text_len.0.i, %call10.i
  %add.ptr.i = getelementptr i8, ptr %arrayidx88, i32 %conv13.i
  %conv18.i = zext i16 %sub15.i to i32
  %73 = call ptr @memmove(ptr %arrayidx88, ptr %add.ptr.i, i32 %conv18.i)
  br label %printk_sprint.exit

printk_sprint.exit:                               ; preds = %if.then12.i, %if.then9.i.printk_sprint.exit_crit_edge, %if.end.i.printk_sprint.exit_crit_edge
  %text_len.2.i = phi i16 [ %text_len.0.i, %if.end.i.printk_sprint.exit_crit_edge ], [ %sub15.i, %if.then12.i ], [ %text_len.0.i, %if.then9.i.printk_sprint.exit_crit_edge ]
  %conv91 = zext i16 %text_len.2.i to i32
  %74 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %r, align 4
  %text_len93 = getelementptr inbounds %struct.printk_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %text_len93 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %text_len93, align 8
  %add95 = add i16 %77, %text_len.2.i
  store i16 %add95, ptr %text_len93, align 8
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags, align 4
  %and97 = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.else106, label %if.then99

if.then99:                                        ; preds = %printk_sprint.exit
  call void @__sanitizer_cov_trace_pc() #27
  %flags101 = getelementptr inbounds %struct.printk_info, ptr %75, i32 0, i32 4
  %80 = ptrtoint ptr %flags101 to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load = load i8, ptr %flags101, align 1
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %flags101, align 1
  call void @prb_final_commit(ptr noundef nonnull %e) #25
  br label %do.body175

if.else106:                                       ; preds = %printk_sprint.exit
  call void @__sanitizer_cov_trace_pc() #27
  call void @prb_commit(ptr noundef nonnull %e) #25
  br label %do.body175

if.end110:                                        ; preds = %if.then83.if.end110_crit_edge, %if.end81.if.end110_crit_edge
  %81 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %r, align 4
  %82 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %25, align 4
  %83 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %.pre, ptr %27, align 4
  %84 = load ptr, ptr @prb, align 4
  %call112 = call zeroext i1 @prb_reserve(ptr noundef nonnull %e, ptr noundef %84, ptr noundef nonnull %r) #25
  br i1 %call112, label %if.end110.if.end120_crit_edge, label %if.then113

if.end110.if.end120_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end120

if.then113:                                       ; preds = %if.end110
  %85 = load i32, ptr @log_buf_len, align 4
  %div20.i = lshr i32 %85, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div20.i, i32 %.pre)
  %cmp.i268 = icmp ult i32 %div20.i, %.pre
  %conv2.i269 = trunc i32 %div20.i to i16
  %spec.select312 = select i1 %cmp.i268, i16 %conv2.i269, i16 %49
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %spec.select312)
  %cmp6.i = icmp ugt i16 %spec.select312, 10
  %sub.i272 = add i16 %spec.select312, -11
  %trunc_msg_len.0 = select i1 %cmp6.i, i16 11, i16 0
  %reserve_size.2 = select i1 %cmp6.i, i16 %sub.i272, i16 %spec.select312
  %conv114 = zext i16 %reserve_size.2 to i32
  %conv115 = zext i16 %trunc_msg_len.0 to i32
  %add116 = add nuw nsw i32 %conv114, %conv115
  %86 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %r, align 4
  %87 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %25, align 4
  %88 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add116, ptr %27, align 4
  %89 = load ptr, ptr @prb, align 4
  %call117 = call zeroext i1 @prb_reserve(ptr noundef nonnull %e, ptr noundef %89, ptr noundef nonnull %r) #25
  br i1 %call117, label %if.then113.if.end120_crit_edge, label %if.then113.do.body175_crit_edge

if.then113.do.body175_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body175

if.then113.if.end120_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end120

if.end120:                                        ; preds = %if.then113.if.end120_crit_edge, %if.end110.if.end120_crit_edge
  %conv.i275.pre-phi = phi i32 [ %conv114, %if.then113.if.end120_crit_edge ], [ %.pre, %if.end110.if.end120_crit_edge ]
  %trunc_msg_len.1 = phi i16 [ %trunc_msg_len.0, %if.then113.if.end120_crit_edge ], [ 0, %if.end110.if.end120_crit_edge ]
  %90 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %25, align 4
  %92 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %92)
  %.fca.0.load253 = load i32, ptr %args, align 4
  %.fca.0.insert254 = insertvalue [1 x i32] poison, i32 %.fca.0.load253, 0
  %call.i276 = call i32 @vscnprintf(ptr noundef %91, i32 noundef %conv.i275.pre-phi, ptr noundef %fmt, [1 x i32] %.fca.0.insert254) #25
  %conv2.i277 = trunc i32 %call.i276 to i16
  %conv3.i278 = and i32 %call.i276, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i278)
  %tobool.not.i279 = icmp eq i32 %conv3.i278, 0
  br i1 %tobool.not.i279, label %if.end120.if.end.i289_crit_edge, label %land.lhs.true.i283

if.end120.if.end.i289_crit_edge:                  ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end.i289

land.lhs.true.i283:                               ; preds = %if.end120
  %sub.i280 = add nsw i32 %conv3.i278, -1
  %arrayidx.i281 = getelementptr i8, ptr %91, i32 %sub.i280
  %93 = ptrtoint ptr %arrayidx.i281 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i281, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %94)
  %cmp.i282 = icmp eq i8 %94, 10
  br i1 %cmp.i282, label %if.then.i286, label %land.lhs.true.i283.if.end.i289_crit_edge

land.lhs.true.i283.if.end.i289_crit_edge:         ; preds = %land.lhs.true.i283
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end.i289

if.then.i286:                                     ; preds = %land.lhs.true.i283
  call void @__sanitizer_cov_trace_pc() #27
  %dec.i284 = add i16 %conv2.i277, -1
  %95 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags, align 4
  %or.i285 = or i32 %96, 2
  store i32 %or.i285, ptr %flags, align 4
  br label %if.end.i289

if.end.i289:                                      ; preds = %if.then.i286, %land.lhs.true.i283.if.end.i289_crit_edge, %if.end120.if.end.i289_crit_edge
  %text_len.0.i287 = phi i16 [ %dec.i284, %if.then.i286 ], [ %conv2.i277, %land.lhs.true.i283.if.end.i289_crit_edge ], [ %conv2.i277, %if.end120.if.end.i289_crit_edge ]
  br i1 %cmp69, label %if.then9.i292, label %if.end.i289.printk_sprint.exit299_crit_edge

if.end.i289.printk_sprint.exit299_crit_edge:      ; preds = %if.end.i289
  call void @__sanitizer_cov_trace_pc() #27
  br label %printk_sprint.exit299

if.then9.i292:                                    ; preds = %if.end.i289
  %call10.i290 = call zeroext i16 @printk_parse_prefix(ptr noundef %91, ptr noundef null, ptr noundef null) #25
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call10.i290)
  %tobool11.not.i291 = icmp eq i16 %call10.i290, 0
  br i1 %tobool11.not.i291, label %if.then9.i292.printk_sprint.exit299_crit_edge, label %if.then12.i297

if.then9.i292.printk_sprint.exit299_crit_edge:    ; preds = %if.then9.i292
  call void @__sanitizer_cov_trace_pc() #27
  br label %printk_sprint.exit299

if.then12.i297:                                   ; preds = %if.then9.i292
  call void @__sanitizer_cov_trace_pc() #27
  %conv13.i293 = zext i16 %call10.i290 to i32
  %sub15.i294 = sub i16 %text_len.0.i287, %call10.i290
  %add.ptr.i295 = getelementptr i8, ptr %91, i32 %conv13.i293
  %conv18.i296 = zext i16 %sub15.i294 to i32
  %97 = call ptr @memmove(ptr %91, ptr %add.ptr.i295, i32 %conv18.i296)
  br label %printk_sprint.exit299

printk_sprint.exit299:                            ; preds = %if.then12.i297, %if.then9.i292.printk_sprint.exit299_crit_edge, %if.end.i289.printk_sprint.exit299_crit_edge
  %text_len.2.i298 = phi i16 [ %text_len.0.i287, %if.end.i289.printk_sprint.exit299_crit_edge ], [ %sub15.i294, %if.then12.i297 ], [ %text_len.0.i287, %if.then9.i292.printk_sprint.exit299_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %trunc_msg_len.1)
  %tobool125.not = icmp eq i16 %trunc_msg_len.1, 0
  br i1 %tobool125.not, label %printk_sprint.exit299.if.end131_crit_edge, label %if.then126

printk_sprint.exit299.if.end131_crit_edge:        ; preds = %printk_sprint.exit299
  call void @__sanitizer_cov_trace_pc() #27
  %.pre313 = zext i16 %text_len.2.i298 to i32
  br label %if.end131

if.then126:                                       ; preds = %printk_sprint.exit299
  call void @__sanitizer_cov_trace_pc() #27
  %98 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %25, align 4
  %idxprom128 = zext i16 %text_len.2.i298 to i32
  %arrayidx129 = getelementptr i8, ptr %99, i32 %idxprom128
  %conv130 = zext i16 %trunc_msg_len.1 to i32
  %100 = call ptr @memcpy(ptr %arrayidx129, ptr @trunc_msg, i32 %conv130)
  br label %if.end131

if.end131:                                        ; preds = %if.then126, %printk_sprint.exit299.if.end131_crit_edge
  %conv132.pre-phi = phi i32 [ %.pre313, %printk_sprint.exit299.if.end131_crit_edge ], [ %idxprom128, %if.then126 ]
  %add134 = add i16 %text_len.2.i298, %trunc_msg_len.1
  %101 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %r, align 4
  %text_len137 = getelementptr inbounds %struct.printk_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %text_len137 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %add134, ptr %text_len137, align 8
  %conv138 = trunc i32 %facility to i8
  %facility140 = getelementptr inbounds %struct.printk_info, ptr %102, i32 0, i32 3
  %104 = ptrtoint ptr %facility140 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv138, ptr %facility140, align 2
  %105 = ptrtoint ptr %level.addr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %level.addr, align 4
  %107 = trunc i32 %106 to i8
  %conv142 = and i8 %107, 7
  %level144 = getelementptr inbounds %struct.printk_info, ptr %102, i32 0, i32 4
  %108 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags, align 4
  %110 = trunc i32 %109 to i8
  %bf.shl155 = shl i8 %110, 3
  %bf.set157 = or i8 %bf.shl155, %conv142
  %111 = ptrtoint ptr %level144 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %bf.set157, ptr %level144, align 1
  %ts_nsec159 = getelementptr inbounds %struct.printk_info, ptr %102, i32 0, i32 1
  %112 = ptrtoint ptr %ts_nsec159 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %call.i, ptr %ts_nsec159, align 8
  %caller_id161 = getelementptr inbounds %struct.printk_info, ptr %102, i32 0, i32 5
  %113 = ptrtoint ptr %caller_id161 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %cond.i, ptr %caller_id161, align 4
  br i1 %tobool79.not, label %if.end131.if.end166_crit_edge, label %if.then163

if.end131.if.end166_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end166

if.then163:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #27
  %dev_info165 = getelementptr inbounds %struct.printk_info, ptr %102, i32 0, i32 6
  %114 = call ptr @memcpy(ptr %dev_info165, ptr %dev_info, i32 64)
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %if.end131.if.end166_crit_edge
  %and167 = and i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.then169, label %if.else170

if.then169:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #27
  call void @prb_commit(ptr noundef nonnull %e) #25
  br label %if.end171

if.else170:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #27
  call void @prb_final_commit(ptr noundef nonnull %e) #25
  br label %if.end171

if.end171:                                        ; preds = %if.else170, %if.then169
  %conv173 = zext i16 %trunc_msg_len.1 to i32
  %add174 = add nuw nsw i32 %conv132.pre-phi, %conv173
  br label %do.body175

do.body175:                                       ; preds = %if.end171, %if.then113.do.body175_crit_edge, %if.else106, %if.then99
  %ret.0 = phi i32 [ %add174, %if.end171 ], [ 0, %if.then113.do.body175_crit_edge ], [ %conv91, %if.else106 ], [ %conv91, %if.then99 ]
  %115 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %retval.0.i, align 1
  %dec = add i8 %116, -1
  store i8 %dec, ptr %retval.0.i, align 1
  br i1 %tobool.not, label %if.then190, label %do.body175.do.body192_crit_edge

do.body175.do.body192_crit_edge:                  ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body192

if.then190:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #27
  call void @trace_hardirqs_on() #25
  br label %do.body192

do.body192:                                       ; preds = %if.then190, %do.body175.do.body192_crit_edge
  %117 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #25, !srcloc !603
  %and.i.i301 = and i32 %117, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i301)
  %tobool200.not = icmp eq i32 %and.i.i301, 0
  br i1 %tobool200.not, label %if.then209, label %do.body192.do.end212_crit_edge, !prof !595

do.body192.do.end212_crit_edge:                   ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end212

if.then209:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #27
  call void @warn_bogus_irq_restore() #25
  br label %do.end212

do.end212:                                        ; preds = %if.then209, %do.body192.do.end212_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #25, !srcloc !604
  br label %cleanup

cleanup:                                          ; preds = %do.end212, %do.end50
  %retval.0 = phi i32 [ %ret.0, %do.end212 ], [ 0, %do.end50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prefix_buf) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %r) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %e) #25
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prb_reserve_in_last(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prb_final_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prb_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prb_reserve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vprintk_emit(i32 noundef %facility, i32 noundef %level, ptr noundef %dev_info, ptr noundef %fmt, [1 x i32] %args.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @suppress_printk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !594

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %level)
  %cmp = icmp eq i32 %level, -2
  %spec.select = select i1 %cmp, i32 -1, i32 %level
  %1 = load i32, ptr @boot_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.end.boot_delay_msec.exit_crit_edge, label %lor.lhs.false.i

if.end.boot_delay_msec.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %boot_delay_msec.exit

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %2 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp1.i = icmp ugt i32 %2, 2
  br i1 %cmp1.i, label %lor.lhs.false.i.boot_delay_msec.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.boot_delay_msec.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %boot_delay_msec.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %3 = load i32, ptr @console_printk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %spec.select)
  %cmp.not.i.i = icmp sgt i32 %3, %spec.select
  br i1 %cmp.not.i.i, label %lor.lhs.false2.i.if.end.i_crit_edge, label %suppress_message_printing.exit.i

lor.lhs.false2.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end.i

suppress_message_printing.exit.i:                 ; preds = %lor.lhs.false2.i
  %4 = load i8, ptr @ignore_loglevel, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i, label %suppress_message_printing.exit.i.boot_delay_msec.exit_crit_edge, label %suppress_message_printing.exit.i.if.end.i_crit_edge

suppress_message_printing.exit.i.if.end.i_crit_edge: ; preds = %suppress_message_printing.exit.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end.i

suppress_message_printing.exit.i.boot_delay_msec.exit_crit_edge: ; preds = %suppress_message_printing.exit.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %boot_delay_msec.exit

if.end.i:                                         ; preds = %suppress_message_printing.exit.i.if.end.i_crit_edge, %lor.lhs.false2.i.if.end.i_crit_edge
  %5 = load i64, ptr @loops_per_msec, align 8
  %conv.i = sext i32 %1 to i64
  %mul.i = mul i64 %5, %conv.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #25
  %add.i21 = add i32 %call2.i.i, %6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul.i)
  %tobool.not16.i = icmp eq i64 %mul.i, 0
  br i1 %tobool.not16.i, label %if.end.i.boot_delay_msec.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.boot_delay_msec.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %boot_delay_msec.exit

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %k.017.i = phi i64 [ %dec.i, %if.end13.i.while.body.i_crit_edge ], [ %mul.i, %if.end.i.while.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !611
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #25, !srcloc !612
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i22 = sub i32 %add.i21, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i22)
  %cmp10.i = icmp slt i32 %sub.i22, 0
  br i1 %cmp10.i, label %while.body.i.boot_delay_msec.exit_crit_edge, label %if.end13.i

while.body.i.boot_delay_msec.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %boot_delay_msec.exit

if.end13.i:                                       ; preds = %while.body.i
  %dec.i = add i64 %k.017.i, -1
  tail call void @touch_softlockup_watchdog() #25
  %tobool.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool.not.i, label %if.end13.i.boot_delay_msec.exit_crit_edge, label %if.end13.i.while.body.i_crit_edge

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %while.body.i

if.end13.i.boot_delay_msec.exit_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %boot_delay_msec.exit

boot_delay_msec.exit:                             ; preds = %if.end13.i.boot_delay_msec.exit_crit_edge, %while.body.i.boot_delay_msec.exit_crit_edge, %if.end.i.boot_delay_msec.exit_crit_edge, %suppress_message_printing.exit.i.boot_delay_msec.exit_crit_edge, %lor.lhs.false.i.boot_delay_msec.exit_crit_edge, %if.end.boot_delay_msec.exit_crit_edge
  %8 = load i32, ptr @printk_delay_msec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i23 = icmp eq i32 %8, 0
  br i1 %tobool.not.i23, label %boot_delay_msec.exit.printk_delay.exit_crit_edge, label %boot_delay_msec.exit.while.body.i25_crit_edge, !prof !594

boot_delay_msec.exit.while.body.i25_crit_edge:    ; preds = %boot_delay_msec.exit
  br label %while.body.i25

boot_delay_msec.exit.printk_delay.exit_crit_edge: ; preds = %boot_delay_msec.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %printk_delay.exit

while.body.i25:                                   ; preds = %while.body.i25.while.body.i25_crit_edge, %boot_delay_msec.exit.while.body.i25_crit_edge
  %m.05.i = phi i32 [ %dec.i24, %while.body.i25.while.body.i25_crit_edge ], [ %8, %boot_delay_msec.exit.while.body.i25_crit_edge ]
  %dec.i24 = add i32 %m.05.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #25
  tail call void @touch_softlockup_watchdog() #25
  %tobool3.not.i = icmp eq i32 %dec.i24, 0
  br i1 %tobool3.not.i, label %while.body.i25.printk_delay.exit_crit_edge, label %while.body.i25.while.body.i25_crit_edge

while.body.i25.while.body.i25_crit_edge:          ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #27
  br label %while.body.i25

while.body.i25.printk_delay.exit_crit_edge:       ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #27
  br label %printk_delay.exit

printk_delay.exit:                                ; preds = %while.body.i25.printk_delay.exit_crit_edge, %boot_delay_msec.exit.printk_delay.exit_crit_edge
  %call = tail call i32 @vprintk_store(i32 noundef %facility, i32 noundef %spec.select, ptr noundef %dev_info, ptr noundef %fmt, [1 x i32] %args.coerce)
  br i1 %cmp, label %printk_delay.exit.if.end15_crit_edge, label %do.body

printk_delay.exit.if.end15_crit_edge:             ; preds = %printk_delay.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end15

do.body:                                          ; preds = %printk_delay.exit
  %10 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %13, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !613
  %call8 = tail call fastcc i32 @console_trylock_spinning()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.do.body12_crit_edge, label %if.then10

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body12

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @console_unlock()
  br label %do.body12

do.body12:                                        ; preds = %if.then10, %do.body.do.body12_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !614
  %14 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i19 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i19 to ptr
  %preempt_count.i.i20 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i20, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i20, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.body12, %printk_delay.exit.if.end15_crit_edge
  %.b1.i.i = load i1, ptr @__printk_percpu_data_ready, align 1
  br i1 %.b1.i.i, label %do.body.i, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

do.body.i:                                        ; preds = %if.end15
  %18 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %21, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !615
  %22 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @log_wait, i32 0, i32 1), align 4
  %cmp.i.i.not.i = icmp eq ptr %22, getelementptr inbounds (%struct.wait_queue_head, ptr @log_wait, i32 0, i32 1)
  br i1 %cmp.i.i.not.i, label %do.body.i.do.body55.i_crit_edge, label %do.body4.i

do.body.i.do.body55.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body55.i

do.body4.i:                                       ; preds = %do.body.i
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !602
  %24 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i27 = add i32 %29, ptrtoint (ptr @printk_pending to i32)
  %30 = inttoptr i32 %add.i27 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %or.i = or i32 %32, 1
  store i32 %or.i, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #25, !srcloc !603
  %and.i.i.i28 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i28)
  %tobool28.not.i = icmp eq i32 %and.i.i.i28, 0
  br i1 %tobool28.not.i, label %if.then32.i, label %do.body4.i.do.end35.i_crit_edge, !prof !595

do.body4.i.do.end35.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end35.i

if.then32.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @warn_bogus_irq_restore() #25
  br label %do.end35.i

do.end35.i:                                       ; preds = %if.then32.i, %do.body4.i.do.end35.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #25, !srcloc !604
  %34 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i, align 4
  %arrayidx51.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx51.i, align 4
  %add52.i = add i32 %37, ptrtoint (ptr @wake_up_klogd_work to i32)
  %38 = inttoptr i32 %add52.i to ptr
  %call53.i = tail call zeroext i1 @irq_work_queue(ptr noundef %38) #25
  br label %do.body55.i

do.body55.i:                                      ; preds = %do.end35.i, %do.body.i.do.body55.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !616
  %39 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i58.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i58.i to ptr
  %preempt_count.i.i59.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i59.i, align 4
  %sub.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i59.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body55.i, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end15.cleanup_crit_edge ], [ %call, %do.body55.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @console_trylock_spinning() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0) #25
  %1 = ptrtoint ptr %0 to i32
  %call.i = tail call fastcc i32 @__down_trylock_console_sem(i32 noundef %1) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body2

if.end.i:                                         ; preds = %entry
  %.b.i = load i1, ptr @console_suspended, align 4
  br i1 %.b.i, label %if.then2.i, label %console_trylock.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  tail call fastcc void @__up_console_sem(i32 noundef %1) #25
  br label %do.body2

console_trylock.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @console_locked, align 4
  store i1 false, ptr @console_may_schedule, align 4
  br label %cleanup

do.body2:                                         ; preds = %if.then2.i, %entry.do.body2_crit_edge
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !602
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not = icmp eq i32 %and.i, 0
  br i1 %tobool11.not, label %if.then12, label %do.body2.do.end15_crit_edge

do.body2.do.end15_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end15

if.then12:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @trace_hardirqs_off() #25
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body2.do.end15_crit_edge
  tail call void @__printk_safe_enter() #25
  tail call void @_raw_spin_lock(ptr noundef nonnull @console_owner_lock) #25
  %3 = load volatile ptr, ptr @console_owner, align 4
  %4 = load volatile i8, ptr @console_waiter, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool26.not = icmp ne i8 %4, 0
  %tobool30.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool26.not, i1 true, i1 %tobool30.not
  br i1 %or.cond, label %do.end15.do.body48_crit_edge, label %land.lhs.true31

do.end15.do.body48_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body48

land.lhs.true31:                                  ; preds = %do.end15
  %5 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i151 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i151 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %cmp33.not = icmp eq ptr %3, %8
  br i1 %cmp33.not, label %land.lhs.true31.do.body48_crit_edge, label %do.body40

land.lhs.true31.do.body48_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body48

do.body40:                                        ; preds = %land.lhs.true31
  store volatile i8 1, ptr @console_waiter, align 1
  tail call void @_raw_spin_unlock(ptr noundef nonnull @console_owner_lock) #25
  br label %__here

do.body48:                                        ; preds = %land.lhs.true31.do.body48_crit_edge, %do.end15.do.body48_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @console_owner_lock) #25
  tail call void @__printk_safe_exit() #25
  br i1 %tobool11.not, label %if.then58, label %do.body48.do.body60_crit_edge

do.body48.do.body60_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body60

if.then58:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @trace_hardirqs_on() #25
  br label %do.body60

do.body60:                                        ; preds = %if.then58, %do.body48.do.body60_crit_edge
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #25, !srcloc !603
  %and.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool68.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool68.not, label %if.then72, label %do.body60.do.end75_crit_edge, !prof !595

do.body60.do.end75_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end75

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @warn_bogus_irq_restore() #25
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %do.body60.do.end75_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #25, !srcloc !604
  br label %cleanup

__here:                                           ; preds = %do.body40
  tail call void @lock_acquire(ptr noundef nonnull @console_owner_dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@console_trylock_spinning, %__here) to i32)) #25
  %10 = load volatile i8, ptr @console_waiter, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool88.not157 = icmp eq i8 %10, 0
  br i1 %tobool88.not157, label %__here.__here100_crit_edge, label %__here.do.end95_crit_edge

__here.do.end95_crit_edge:                        ; preds = %__here
  br label %do.end95

__here.__here100_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #27
  br label %__here100

do.end95:                                         ; preds = %do.end95.do.end95_crit_edge, %__here.do.end95_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !617
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #25, !srcloc !618
  %11 = load volatile i8, ptr @console_waiter, align 1, !range !610
  %tobool88.not = icmp eq i8 %11, 0
  br i1 %tobool88.not, label %do.end95.__here100_crit_edge, label %do.end95.do.end95_crit_edge

do.end95.do.end95_crit_edge:                      ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end95

do.end95.__here100_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #27
  br label %__here100

__here100:                                        ; preds = %do.end95.__here100_crit_edge, %__here.__here100_crit_edge
  tail call void @lock_release(ptr noundef nonnull @console_owner_dep_map, i32 noundef ptrtoint (ptr blockaddress(@console_trylock_spinning, %__here100) to i32)) #25
  tail call void @__printk_safe_exit() #25
  br i1 %tobool11.not, label %if.then112, label %__here100.do.body114_crit_edge

__here100.do.body114_crit_edge:                   ; preds = %__here100
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body114

if.then112:                                       ; preds = %__here100
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @trace_hardirqs_on() #25
  br label %do.body114

do.body114:                                       ; preds = %if.then112, %__here100.do.body114_crit_edge
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #25, !srcloc !603
  %and.i.i154 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i154)
  %tobool122.not = icmp eq i32 %and.i.i154, 0
  br i1 %tobool122.not, label %if.then131, label %do.body114.do.end134_crit_edge, !prof !595

do.body114.do.end134_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end134

if.then131:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @warn_bogus_irq_restore() #25
  br label %do.end134

do.end134:                                        ; preds = %if.then131, %do.body114.do.end134_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #25, !srcloc !604
  br label %__here141

__here141:                                        ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @lock_acquire(ptr noundef nonnull @console_lock_dep_map, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@console_trylock_spinning, %__here141) to i32)) #25
  br label %cleanup

cleanup:                                          ; preds = %__here141, %do.end75, %console_trylock.exit
  %retval.0 = phi i32 [ 1, %__here141 ], [ 0, %do.end75 ], [ 1, %console_trylock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @console_unlock() #0 align 64 {
entry:
  %prefix.i = alloca [48 x i8], align 1
  %caller.i = alloca [20 x i8], align 1
  %info = alloca %struct.printk_info, align 8
  %r = alloca %struct.printk_record, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %info) #25
  %0 = call ptr @memset(ptr %info, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %r) #25
  %1 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 1
  %2 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 2
  %.b = load i1, ptr @console_suspended, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  tail call fastcc void @__up_console_sem(i32 noundef %4)
  br label %cleanup120

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %info, ptr %r, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @console_unlock.text, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1024, ptr %2, align 4
  %.b134 = load i1, ptr @console_may_schedule, align 4
  %.b134.not = xor i1 %.b134, true
  br label %again

again:                                            ; preds = %console_trylock.exit, %if.end
  store i1 false, ptr @console_may_schedule, align 4
  %8 = call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %11)
  %cmp.not.i.i.i.i.i = icmp ugt i32 %12, %11
  br i1 %cmp.not.i.i.i.i.i, label %again.cpu_online.exit.i_crit_edge, label %land.rhs.i.i.i.i.i

again.cpu_online.exit.i_crit_edge:                ; preds = %again
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit.i

land.rhs.i.i.i.i.i:                               ; preds = %again
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, label %if.then.i.i.i.i.i, !prof !594

land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge:   ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.144, i32 noundef 108, i32 noundef 9, ptr noundef null) #25
  br label %cpu_online.exit.i

cpu_online.exit.i:                                ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i.i.cpu_online.exit.i_crit_edge, %again.cpu_online.exit.i_crit_edge
  %div1.i.i.i.i = lshr i32 %11, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i.i
  %13 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %11, 31
  %15 = shl nuw i32 1, %and.i.i.i.i
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %lor.rhs.i, label %cpu_online.exit.i.for.cond.preheader_crit_edge

cpu_online.exit.i.for.cond.preheader_crit_edge:   ; preds = %cpu_online.exit.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.body.i.i.for.cond.preheader_crit_edge, %cpu_online.exit.i.for.cond.preheader_crit_edge
  br label %for.cond

lor.rhs.i:                                        ; preds = %cpu_online.exit.i
  %con.09.i.i = load ptr, ptr @console_drivers, align 4
  %cmp.not10.i.i = icmp eq ptr %con.09.i.i, null
  br i1 %cmp.not10.i.i, label %lor.rhs.i.if.then3_crit_edge, label %lor.rhs.i.for.body.i.i_crit_edge

lor.rhs.i.for.body.i.i_crit_edge:                 ; preds = %lor.rhs.i
  br label %for.body.i.i

lor.rhs.i.if.then3_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then3

for.cond.i.i:                                     ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.console, ptr %con.011.i.i, i32 0, i32 14
  %17 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %con.0.i.i = load ptr, ptr %next.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %con.0.i.i, null
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.then3_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body.i.i

for.cond.i.i.if.then3_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then3

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %lor.rhs.i.for.body.i.i_crit_edge
  %con.011.i.i = phi ptr [ %con.0.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ %con.09.i.i, %lor.rhs.i.for.body.i.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.console, ptr %con.011.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags.i.i, align 4
  %20 = and i16 %19, 20
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %20)
  %.not.i.i = icmp eq i16 %20, 20
  br i1 %.not.i.i, label %for.body.i.i.for.cond.preheader_crit_edge, label %for.cond.i.i

for.body.i.i.for.cond.preheader_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.cond.preheader

if.then3:                                         ; preds = %for.cond.i.i.if.then3_crit_edge, %lor.rhs.i.if.then3_crit_edge
  store i1 false, ptr @console_locked, align 4
  %21 = call ptr @llvm.returnaddress(i32 0)
  %22 = ptrtoint ptr %21 to i32
  call fastcc void @__up_console_sem(i32 noundef %22)
  br label %cleanup120

for.cond:                                         ; preds = %cleanup.for.cond_crit_edge, %for.cond.preheader
  %23 = load ptr, ptr @prb, align 4
  %24 = load i64, ptr @console_seq, align 8
  %call5176 = call zeroext i1 @prb_read_valid(ptr noundef %23, i64 noundef %24, ptr noundef nonnull %r) #25
  br i1 %call5176, label %for.cond.if.end7_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.cond.if.end7_crit_edge:                       ; preds = %for.cond
  br label %if.end7

if.end7:                                          ; preds = %if.then19.if.end7_crit_edge, %for.cond.if.end7_crit_edge
  %25 = load i64, ptr @console_seq, align 8
  %26 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %r, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %27, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %25)
  %cmp.not = icmp eq i64 %29, %25
  br i1 %cmp.not, label %if.end7.if.end15_crit_edge, label %if.then9

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end15

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #27
  %sub = sub i64 %29, %25
  %30 = load i32, ptr @console_dropped, align 4
  %31 = trunc i64 %sub to i32
  %conv12 = add i32 %30, %31
  store i32 %conv12, ptr @console_dropped, align 4
  store i64 %29, ptr @console_seq, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end7.if.end15_crit_edge
  %level = getelementptr inbounds %struct.printk_info, ptr %27, i32 0, i32 4
  %32 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %level, align 1
  %bf.clear = and i8 %bf.load, 7
  %conv17 = zext i8 %bf.clear to i32
  %33 = load i32, ptr @console_printk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv17)
  %cmp.not.i = icmp sgt i32 %33, %conv17
  br i1 %cmp.not.i, label %if.end15.if.end20_crit_edge, label %suppress_message_printing.exit

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end20

suppress_message_printing.exit:                   ; preds = %if.end15
  %34 = load i8, ptr @ignore_loglevel, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %if.then19, label %suppress_message_printing.exit.if.end20_crit_edge

suppress_message_printing.exit.if.end20_crit_edge: ; preds = %suppress_message_printing.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end20

if.then19:                                        ; preds = %suppress_message_printing.exit
  %35 = load i64, ptr @console_seq, align 8
  %inc = add i64 %35, 1
  store i64 %inc, ptr @console_seq, align 8
  %36 = load ptr, ptr @prb, align 4
  %call5 = call zeroext i1 @prb_read_valid(ptr noundef %36, i64 noundef %inc, ptr noundef nonnull %r) #25
  br i1 %call5, label %if.then19.if.end7_crit_edge, label %if.then19.for.end_crit_edge

if.then19.for.end_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

if.then19.if.end7_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end7

if.end20:                                         ; preds = %suppress_message_printing.exit.if.end20_crit_edge, %if.end15.if.end20_crit_edge
  %level.le = getelementptr inbounds %struct.printk_info, ptr %27, i32 0, i32 4
  %37 = load ptr, ptr @exclusive_console, align 4
  %tobool21.not = icmp eq ptr %37, null
  br i1 %tobool21.not, label %if.end20.if.end27_crit_edge, label %land.rhs

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end27

land.rhs:                                         ; preds = %if.end20
  %38 = load i64, ptr @console_seq, align 8
  %39 = load i64, ptr @exclusive_console_stop_seq, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %39)
  %cmp22.not = icmp ult i64 %38, %39
  br i1 %cmp22.not, label %land.rhs.if.end27_crit_edge, label %if.then26, !prof !594

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end27

if.then26:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #27
  store ptr null, ptr @exclusive_console, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %land.rhs.if.end27_crit_edge, %if.end20.if.end27_crit_edge
  %40 = load i32, ptr @nr_ext_console_drivers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool28.not = icmp eq i32 %40, 0
  br i1 %tobool28.not, label %if.end27.if.end38_crit_edge, label %if.then29

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end38

if.then29:                                        ; preds = %if.end27
  %ts_nsec.i = getelementptr inbounds %struct.printk_info, ptr %27, i32 0, i32 1
  %41 = ptrtoint ptr %ts_nsec.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ts_nsec.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %caller.i) #25
  %caller_id.i = getelementptr inbounds %struct.printk_info, ptr %27, i32 0, i32 5
  %43 = call ptr @memset(ptr %caller.i, i32 255, i32 20)
  %44 = ptrtoint ptr %caller_id.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %caller_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %tobool.not.i136 = icmp sgt i32 %45, -1
  %cond.i = select i1 %tobool.not.i136, i32 84, i32 67
  %and1.i = and i32 %45, 2147483647
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %caller.i, i32 noundef 20, ptr noundef nonnull @.str.145, i32 noundef %cond.i, i32 noundef %and1.i) #25
  %46 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %42, i32 0) #29, !srcloc !598
  %asmresult.i.i = extractvalue { i64, i32 } %46, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %46, 1
  %47 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %42, i64 %asmresult.i.i, i32 %asmresult4.i.i) #29, !srcloc !599
  %asmresult10.i.i = extractvalue { i64, i32 } %47, 0
  %ts_usec.0.i = lshr i64 %asmresult10.i.i, 9
  %facility.i = getelementptr inbounds %struct.printk_info, ptr %27, i32 0, i32 3
  %48 = ptrtoint ptr %facility.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %facility.i, align 2
  %conv185.i = zext i8 %49 to i32
  %shl186.i = shl nuw nsw i32 %conv185.i, 3
  %50 = ptrtoint ptr %level.le to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i = load i8, ptr %level.le, align 1
  %bf.clear.i = and i8 %bf.load.i, 7
  %conv187.i = zext i8 %bf.clear.i to i32
  %or188.i = or i32 %shl186.i, %conv187.i
  %51 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %27, align 8
  %53 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool192.not.i = icmp eq i8 %53, 0
  %cond193.i = select i1 %tobool192.not.i, i32 45, i32 99
  %call195.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull @console_unlock.ext_text, i32 noundef 8192, ptr noundef nonnull @.str.146, i32 noundef %or188.i, i64 noundef %52, i64 noundef %ts_usec.0.i, i32 noundef %cond193.i, ptr noundef nonnull %caller.i) #25
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %caller.i) #25
  %add.ptr = getelementptr i8, ptr @console_unlock.ext_text, i32 %call195.i
  %sub32 = sub i32 8192, %call195.i
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %56 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %r, align 4
  %text_len = getelementptr inbounds %struct.printk_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %text_len to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %text_len, align 8
  %conv34 = zext i16 %59 to i32
  %dev_info = getelementptr inbounds %struct.printk_info, ptr %57, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp34.not.i.i = icmp eq i16 %59, 0
  br i1 %cmp34.not.i.i, label %if.then29.for.end.i.i_crit_edge, label %if.then29.for.body.i.i137_crit_edge

if.then29.for.body.i.i137_crit_edge:              ; preds = %if.then29
  br label %for.body.i.i137

if.then29.for.end.i.i_crit_edge:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i.i

for.body.i.i137:                                  ; preds = %if.end.i.i.for.body.i.i137_crit_edge, %if.then29.for.body.i.i137_crit_edge
  %i.036.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i137_crit_edge ], [ 0, %if.then29.for.body.i.i137_crit_edge ]
  %p.035.i.i = phi ptr [ %p.2.i.i, %if.end.i.i.for.body.i.i137_crit_edge ], [ %add.ptr, %if.then29.for.body.i.i137_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %55, i32 %i.036.i.i
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i.i, align 1
  %62 = add i8 %61, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %62)
  %63 = icmp ult i8 %62, -95
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %61)
  %cmp8.i.i = icmp eq i8 %61, 92
  %or.cond25.i.i = or i1 %cmp8.i.i, %63
  br i1 %or.cond25.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i.i137
  call void @__sanitizer_cov_trace_pc() #27
  %conv.i.i = zext i8 %61 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %p.035.i.i to i32
  %sub.ptr.sub.i.i = sub i32 ptrtoint (ptr getelementptr inbounds ([8192 x i8], ptr @console_unlock.ext_text, i32 1, i32 0) to i32), %sub.ptr.rhs.cast.i.i
  %call.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.035.i.i, i32 noundef %sub.ptr.sub.i.i, ptr noundef nonnull @.str.149, i32 noundef %conv.i.i) #25
  %add.ptr11.i.i = getelementptr i8, ptr %p.035.i.i, i32 %call.i.i
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %for.body.i.i137
  %cmp.i.i.i = icmp ult ptr %p.035.i.i, getelementptr inbounds ([8192 x i8], ptr @console_unlock.ext_text, i32 1, i32 0)
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.if.end.i.i_crit_edge

if.else.i.i.if.end.i.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #27
  %incdec.ptr.i.i.i = getelementptr i8, ptr %p.035.i.i, i32 1
  %64 = ptrtoint ptr %p.035.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %61, ptr %p.035.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i.i, %if.else.i.i.if.end.i.i_crit_edge, %if.then.i.i
  %p.2.i.i = phi ptr [ %add.ptr11.i.i, %if.then.i.i ], [ %incdec.ptr.i.i.i, %if.then.i.i.i ], [ %p.035.i.i, %if.else.i.i.if.end.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.036.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv34
  br i1 %exitcond.not.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.for.body.i.i137_crit_edge

if.end.i.i.for.body.i.i137_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body.i.i137

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end.i.i.for.end.i.i_crit_edge, %if.then29.for.end.i.i_crit_edge
  %p.0.lcssa.i.i = phi ptr [ %add.ptr, %if.then29.for.end.i.i_crit_edge ], [ %p.2.i.i, %if.end.i.i.for.end.i.i_crit_edge ]
  %cmp.i26.i.i = icmp ult ptr %p.0.lcssa.i.i, getelementptr inbounds ([8192 x i8], ptr @console_unlock.ext_text, i32 1, i32 0)
  br i1 %cmp.i26.i.i, label %if.then.i28.i.i, label %for.end.i.i.msg_add_ext_text.exit.i_crit_edge

for.end.i.i.msg_add_ext_text.exit.i_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %msg_add_ext_text.exit.i

if.then.i28.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #27
  %incdec.ptr.i27.i.i = getelementptr i8, ptr %p.0.lcssa.i.i, i32 1
  %65 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 10, ptr %p.0.lcssa.i.i, align 1
  br label %msg_add_ext_text.exit.i

msg_add_ext_text.exit.i:                          ; preds = %if.then.i28.i.i, %for.end.i.i.msg_add_ext_text.exit.i_crit_edge
  %p.3.i.i = phi ptr [ %incdec.ptr.i27.i.i, %if.then.i28.i.i ], [ %p.0.lcssa.i.i, %for.end.i.i.msg_add_ext_text.exit.i_crit_edge ]
  %sub.ptr.lhs.cast12.i.i = ptrtoint ptr %p.3.i.i to i32
  %sub.ptr.rhs.cast13.i.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub14.i.i = sub i32 %sub.ptr.lhs.cast12.i.i, %sub.ptr.rhs.cast13.i.i
  %tobool.not.i138 = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i138, label %msg_add_ext_text.exit.i.msg_print_ext_body.exit_crit_edge, label %if.end.i

msg_add_ext_text.exit.i.msg_print_ext_body.exit_crit_edge: ; preds = %msg_add_ext_text.exit.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %msg_print_ext_body.exit

if.end.i:                                         ; preds = %msg_add_ext_text.exit.i
  call void @__sanitizer_cov_trace_pc() #27
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %sub.ptr.sub14.i.i
  %sub.i = sub i32 %sub32, %sub.ptr.sub14.i.i
  %call1.i = call fastcc i32 @msg_add_dict_text(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.147, ptr noundef nonnull %dev_info) #25
  %add.i = add i32 %call1.i, %sub.ptr.sub14.i.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr, i32 %add.i
  %sub3.i = sub i32 %sub32, %add.i
  %device.i = getelementptr inbounds %struct.printk_info, ptr %57, i32 0, i32 6, i32 1
  %call5.i = call fastcc i32 @msg_add_dict_text(ptr noundef %add.ptr2.i, i32 noundef %sub3.i, ptr noundef nonnull @.str.148, ptr noundef %device.i) #25
  %add6.i = add i32 %add.i, %call5.i
  br label %msg_print_ext_body.exit

msg_print_ext_body.exit:                          ; preds = %if.end.i, %msg_add_ext_text.exit.i.msg_print_ext_body.exit_crit_edge
  %len.0.i = phi i32 [ %add6.i, %if.end.i ], [ %sub.ptr.sub14.i.i, %msg_add_ext_text.exit.i.msg_print_ext_body.exit_crit_edge ]
  %add37 = add i32 %len.0.i, %call195.i
  br label %if.end38

if.end38:                                         ; preds = %msg_print_ext_body.exit, %if.end27.if.end38_crit_edge
  %ext_len.0 = phi i32 [ %add37, %msg_print_ext_body.exit ], [ 0, %if.end27.if.end38_crit_edge ]
  %.b135 = load i1, ptr @console_msg_format, align 4
  %66 = load i8, ptr @printk_time, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool40 = icmp ne i8 %66, 0
  %67 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %r, align 4
  %text_len2.i = getelementptr inbounds %struct.printk_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %text_len2.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %text_len2.i, align 8
  %conv.i = zext i16 %70 to i32
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %2, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %prefix.i) #25
  %75 = call ptr @memset(ptr %prefix.i, i32 255, i32 48)
  %76 = call i32 @llvm.umin.i32(i32 %72, i32 %conv.i) #25
  %call.i139 = call fastcc i32 @info_print_prefix(ptr noundef %68, i1 noundef zeroext %.b135, i1 noundef zeroext %tobool40, ptr noundef nonnull %prefix.i) #25
  %sub28.i = add i32 %72, -1
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end39.i, %if.end38
  %text_len.1.i = phi i32 [ %76, %if.end38 ], [ %sub44.i, %if.end39.i ]
  %text.0.i = phi ptr [ %74, %if.end38 ], [ %add.ptr42.i, %if.end39.i ]
  %truncated.0.off0.i = phi i1 [ false, %if.end38 ], [ %truncated.1.off0.i, %if.end39.i ]
  %len.0.i140 = phi i32 [ 0, %if.end38 ], [ %add34.i, %if.end39.i ]
  %call6.i = call ptr @memchr(ptr noundef %text.0.i, i32 noundef 10, i32 noundef %text_len.1.i) #34
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #27
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call6.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %text.0.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %if.end12.i

if.else.i:                                        ; preds = %for.cond.i
  br i1 %truncated.0.off0.i, label %if.else.i.for.end.i_crit_edge, label %if.else.i.if.end12.i_crit_edge

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end12.i

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i

if.end12.i:                                       ; preds = %if.else.i.if.end12.i_crit_edge, %if.then8.i
  %line_len.0.i = phi i32 [ %sub.ptr.sub.i, %if.then8.i ], [ %text_len.1.i, %if.else.i.if.end12.i_crit_edge ]
  %add.i141 = add i32 %len.0.i140, %call.i139
  %add13.i = add i32 %add.i141, 2
  %add15.i = add i32 %add13.i, %text_len.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %72)
  %cmp16.i = icmp ugt i32 %add15.i, %72
  br i1 %cmp16.i, label %if.then18.i, label %if.end12.i.if.end30.i_crit_edge

if.end12.i.if.end30.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end30.i

if.then18.i:                                      ; preds = %if.end12.i
  %add22.i = add i32 %line_len.0.i, %add13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i, i32 %72)
  %cmp23.i = icmp ugt i32 %add22.i, %72
  br i1 %cmp23.i, label %if.then18.i.for.end.i_crit_edge, label %if.end26.i

if.then18.i.for.end.i_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i

if.end26.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #27
  %77 = xor i32 %add.i141, -1
  %sub29.i = add i32 %sub28.i, %77
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end26.i, %if.end12.i.if.end30.i_crit_edge
  %text_len.2.i = phi i32 [ %sub29.i, %if.end26.i ], [ %text_len.1.i, %if.end12.i.if.end30.i_crit_edge ]
  %truncated.1.off0.i = phi i1 [ true, %if.end26.i ], [ %truncated.0.off0.i, %if.end12.i.if.end30.i_crit_edge ]
  %add.ptr.i142 = getelementptr i8, ptr %text.0.i, i32 %call.i139
  %78 = call ptr @memmove(ptr %add.ptr.i142, ptr %text.0.i, i32 %text_len.2.i)
  %79 = call ptr @memcpy(ptr %text.0.i, ptr %prefix.i, i32 %call.i139)
  %add32.i = add i32 %line_len.0.i, %call.i139
  %add33.i = add i32 %add32.i, 1
  %add34.i = add i32 %add33.i, %len.0.i140
  %cmp35.i = icmp eq i32 %text_len.2.i, %line_len.0.i
  br i1 %cmp35.i, label %if.then37.i, label %if.end39.i

if.then37.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #27
  %arrayidx.i = getelementptr i8, ptr %text.0.i, i32 %add32.i
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 10, ptr %arrayidx.i, align 1
  br label %for.end.i

if.end39.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #27
  %add.ptr42.i = getelementptr i8, ptr %text.0.i, i32 %add33.i
  %add43.neg.i = xor i32 %line_len.0.i, -1
  %sub44.i = add i32 %text_len.2.i, %add43.neg.i
  br label %for.cond.i

for.end.i:                                        ; preds = %if.then37.i, %if.then18.i.for.end.i_crit_edge, %if.else.i.for.end.i_crit_edge
  %len.1.i = phi i32 [ %add34.i, %if.then37.i ], [ %len.0.i140, %if.else.i.for.end.i_crit_edge ], [ %len.0.i140, %if.then18.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp45.not.i = icmp eq i32 %72, 0
  br i1 %cmp45.not.i, label %for.end.i.record_print_text.exit_crit_edge, label %if.then47.i

for.end.i.record_print_text.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %record_print_text.exit

if.then47.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #27
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %arrayidx49.i = getelementptr i8, ptr %82, i32 %len.1.i
  %83 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %arrayidx49.i, align 1
  br label %record_print_text.exit

record_print_text.exit:                           ; preds = %if.then47.i, %for.end.i.record_print_text.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %prefix.i) #25
  %84 = load i64, ptr @console_seq, align 8
  %inc42 = add i64 %84, 1
  store i64 %inc42, ptr @console_seq, align 8
  %85 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !602
  %and.i = and i32 %85, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool55.not = icmp eq i32 %and.i, 0
  br i1 %tobool55.not, label %if.then56, label %record_print_text.exit.do.end59_crit_edge

record_print_text.exit.do.end59_crit_edge:        ; preds = %record_print_text.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end59

if.then56:                                        ; preds = %record_print_text.exit
  call void @__sanitizer_cov_trace_pc() #27
  call void @trace_hardirqs_off() #25
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %record_print_text.exit.do.end59_crit_edge
  call void @__printk_safe_enter() #25
  call fastcc void @console_lock_spinning_enable()
  call void @stop_critical_timings() #25
  call fastcc void @trace_console_rcuidle(i32 noundef %len.1.i) #25
  %86 = load ptr, ptr @console_drivers, align 4
  %tobool.not.i143 = icmp eq ptr %86, null
  br i1 %tobool.not.i143, label %do.end59.call_console_drivers.exit_crit_edge, label %if.end.i144

do.end59.call_console_drivers.exit_crit_edge:     ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #27
  br label %call_console_drivers.exit

if.end.i144:                                      ; preds = %do.end59
  %87 = load i32, ptr @console_dropped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool1.not.i = icmp eq i32 %87, 0
  br i1 %tobool1.not.i, label %if.end.i144.for.body.lr.ph.i_crit_edge, label %if.end3.i

if.end.i144.for.body.lr.ph.i_crit_edge:           ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body.lr.ph.i

if.end3.i:                                        ; preds = %if.end.i144
  %call.i145 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @call_console_drivers.dropped_text, i32 noundef 64, ptr noundef nonnull @.str.150, i32 noundef %87) #25
  store i32 0, ptr @console_dropped, align 4
  %con.04.pr.i = load ptr, ptr @console_drivers, align 4
  %cmp.not5.i = icmp eq ptr %con.04.pr.i, null
  br i1 %cmp.not5.i, label %if.end3.i.call_console_drivers.exit_crit_edge, label %if.end3.i.for.body.lr.ph.i_crit_edge

if.end3.i.for.body.lr.ph.i_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body.lr.ph.i

if.end3.i.call_console_drivers.exit_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %call_console_drivers.exit

for.body.lr.ph.i:                                 ; preds = %if.end3.i.for.body.lr.ph.i_crit_edge, %if.end.i144.for.body.lr.ph.i_crit_edge
  %dropped_len.012.i = phi i32 [ %call.i145, %if.end3.i.for.body.lr.ph.i_crit_edge ], [ 0, %if.end.i144.for.body.lr.ph.i_crit_edge ]
  %con.0411.i = phi ptr [ %con.04.pr.i, %if.end3.i.for.body.lr.ph.i_crit_edge ], [ %86, %if.end.i144.for.body.lr.ph.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dropped_len.012.i)
  %tobool29.not.i = icmp eq i32 %dropped_len.012.i, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %con.06.i = phi ptr [ %con.0411.i, %for.body.lr.ph.i ], [ %con.0.i, %for.inc.i.for.body.i_crit_edge ]
  %88 = load ptr, ptr @exclusive_console, align 4
  %tobool4.not.i = icmp eq ptr %88, null
  %cmp5.not.i = icmp eq ptr %con.06.i, %88
  %or.cond.i = select i1 %tobool4.not.i, i1 true, i1 %cmp5.not.i
  br i1 %or.cond.i, label %if.end7.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i
  %flags.i = getelementptr inbounds %struct.console, ptr %con.06.i, i32 0, i32 8
  %89 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %flags.i, align 4
  %91 = and i16 %90, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool8.not.i = icmp eq i16 %91, 0
  br i1 %tobool8.not.i, label %if.end7.i.for.inc.i_crit_edge, label %if.end10.i

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end7.i
  %write.i = getelementptr inbounds %struct.console, ptr %con.06.i, i32 0, i32 1
  %92 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write.i, align 4
  %tobool11.not.i = icmp eq ptr %93, null
  br i1 %tobool11.not.i, label %if.end10.i.for.inc.i_crit_edge, label %if.end13.i

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end10.i
  %94 = call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i146 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i146 to ptr
  %cpu.i147 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %cpu.i147 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cpu.i147, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %98 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %97)
  %cmp.not.i.i.i.i.i148 = icmp ugt i32 %98, %97
  br i1 %cmp.not.i.i.i.i.i148, label %if.end13.i.cpu_online.exit.i156_crit_edge, label %land.rhs.i.i.i.i.i150

if.end13.i.cpu_online.exit.i156_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit.i156

land.rhs.i.i.i.i.i150:                            ; preds = %if.end13.i
  %.b37.i.i.i.i.i149 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i149, label %land.rhs.i.i.i.i.i150.cpu_online.exit.i156_crit_edge, label %if.then.i.i.i.i.i151, !prof !594

land.rhs.i.i.i.i.i150.cpu_online.exit.i156_crit_edge: ; preds = %land.rhs.i.i.i.i.i150
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit.i156

if.then.i.i.i.i.i151:                             ; preds = %land.rhs.i.i.i.i.i150
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.144, i32 noundef 108, i32 noundef 9, ptr noundef null) #25
  br label %cpu_online.exit.i156

cpu_online.exit.i156:                             ; preds = %if.then.i.i.i.i.i151, %land.rhs.i.i.i.i.i150.cpu_online.exit.i156_crit_edge, %if.end13.i.cpu_online.exit.i156_crit_edge
  %div1.i.i.i.i152 = lshr i32 %97, 5
  %arrayidx.i.i.i.i153 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i.i152
  %99 = ptrtoint ptr %arrayidx.i.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %arrayidx.i.i.i.i153, align 4
  %and.i.i.i.i154 = and i32 %97, 31
  %101 = shl nuw i32 1, %and.i.i.i.i154
  %102 = and i32 %100, %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.i.not.i155 = icmp eq i32 %102, 0
  br i1 %tobool.i.not.i155, label %land.lhs.true16.i, label %cpu_online.exit.i156.if.end22.i_crit_edge

cpu_online.exit.i156.if.end22.i_crit_edge:        ; preds = %cpu_online.exit.i156
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end22.i

land.lhs.true16.i:                                ; preds = %cpu_online.exit.i156
  %103 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %flags.i, align 4
  %105 = and i16 %104, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool20.not.i = icmp eq i16 %105, 0
  br i1 %tobool20.not.i, label %land.lhs.true16.i.for.inc.i_crit_edge, label %land.lhs.true16.i.if.end22.i_crit_edge

land.lhs.true16.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end22.i

land.lhs.true16.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.i

if.end22.i:                                       ; preds = %land.lhs.true16.i.if.end22.i_crit_edge, %cpu_online.exit.i156.if.end22.i_crit_edge
  %106 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %flags.i, align 4
  %108 = and i16 %107, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool26.not.i = icmp eq i16 %108, 0
  br i1 %tobool26.not.i, label %if.else.i157, label %if.then27.i

if.then27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #27
  %109 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write.i, align 4
  call void %110(ptr noundef nonnull %con.06.i, ptr noundef nonnull @console_unlock.ext_text, i32 noundef %ext_len.0) #25
  br label %for.inc.i

if.else.i157:                                     ; preds = %if.end22.i
  br i1 %tobool29.not.i, label %if.else.i157.if.end32.i_crit_edge, label %if.then30.i

if.else.i157.if.end32.i_crit_edge:                ; preds = %if.else.i157
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end32.i

if.then30.i:                                      ; preds = %if.else.i157
  call void @__sanitizer_cov_trace_pc() #27
  %111 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write.i, align 4
  call void %112(ptr noundef nonnull %con.06.i, ptr noundef nonnull @call_console_drivers.dropped_text, i32 noundef %dropped_len.012.i) #25
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %if.else.i157.if.end32.i_crit_edge
  %113 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write.i, align 4
  call void %114(ptr noundef nonnull %con.06.i, ptr noundef nonnull @console_unlock.text, i32 noundef %len.1.i) #25
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end32.i, %if.then27.i, %land.lhs.true16.i.for.inc.i_crit_edge, %if.end10.i.for.inc.i_crit_edge, %if.end7.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %next.i = getelementptr inbounds %struct.console, ptr %con.06.i, i32 0, i32 14
  %115 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %con.0.i = load ptr, ptr %next.i, align 4
  %cmp.not.i158 = icmp eq ptr %con.0.i, null
  br i1 %cmp.not.i158, label %for.inc.i.call_console_drivers.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body.i

for.inc.i.call_console_drivers.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %call_console_drivers.exit

call_console_drivers.exit:                        ; preds = %for.inc.i.call_console_drivers.exit_crit_edge, %if.end3.i.call_console_drivers.exit_crit_edge, %do.end59.call_console_drivers.exit_crit_edge
  call void @start_critical_timings() #25
  %call62 = call fastcc i32 @console_lock_spinning_disable_and_check()
  call void @__printk_safe_exit() #25
  br i1 %tobool55.not, label %if.then73, label %call_console_drivers.exit.do.body75_crit_edge

call_console_drivers.exit.do.body75_crit_edge:    ; preds = %call_console_drivers.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body75

if.then73:                                        ; preds = %call_console_drivers.exit
  call void @__sanitizer_cov_trace_pc() #27
  call void @trace_hardirqs_on() #25
  br label %do.body75

do.body75:                                        ; preds = %if.then73, %call_console_drivers.exit.do.body75_crit_edge
  %116 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #25, !srcloc !603
  %and.i.i160 = and i32 %116, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i160)
  %tobool83.not = icmp eq i32 %and.i.i160, 0
  br i1 %tobool83.not, label %if.then92, label %do.body75.do.end95_crit_edge, !prof !595

do.body75.do.end95_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end95

if.then92:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #27
  call void @warn_bogus_irq_restore() #25
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %do.body75.do.end95_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %85) #25, !srcloc !604
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool102.not = icmp ne i32 %call62, 0
  %brmerge = select i1 %tobool102.not, i1 true, i1 %.b134.not
  %.mux = zext i1 %tobool102.not to i32
  br i1 %brmerge, label %do.end95.cleanup_crit_edge, label %if.then106

do.end95.cleanup_crit_edge:                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.then106:                                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #27
  call void @__might_resched(ptr noundef nonnull @.str.46, i32 noundef 2720, i32 noundef 0) #25
  %call.i161 = call i32 @__cond_resched() #25
  br label %cleanup

cleanup:                                          ; preds = %if.then106, %do.end95.cleanup_crit_edge
  %cleanup.dest.slot.0 = phi i32 [ %.mux, %do.end95.cleanup_crit_edge ], [ 0, %if.then106 ]
  %cond = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond, label %cleanup.for.cond_crit_edge, label %cleanup.cleanup120_crit_edge

cleanup.cleanup120_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup120

cleanup.for.cond_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.cond

for.end:                                          ; preds = %if.then19.for.end_crit_edge, %for.cond.for.end_crit_edge
  %117 = load i64, ptr @console_seq, align 8
  store i1 false, ptr @console_locked, align 4
  %118 = call ptr @llvm.returnaddress(i32 0)
  %119 = ptrtoint ptr %118 to i32
  call fastcc void @__up_console_sem(i32 noundef %119)
  %120 = load ptr, ptr @prb, align 4
  %call112 = call zeroext i1 @prb_read_valid(ptr noundef %120, i64 noundef %117, ptr noundef null) #25
  br i1 %call112, label %land.lhs.true, label %for.end.cleanup120_crit_edge

for.end.cleanup120_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup120

land.lhs.true:                                    ; preds = %for.end
  %call.i162 = call fastcc i32 @__down_trylock_console_sem(i32 noundef %119) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool.not.i163 = icmp eq i32 %call.i162, 0
  br i1 %tobool.not.i163, label %if.end.i164, label %land.lhs.true.cleanup120_crit_edge

land.lhs.true.cleanup120_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup120

if.end.i164:                                      ; preds = %land.lhs.true
  %.b.i = load i1, ptr @console_suspended, align 4
  br i1 %.b.i, label %if.then2.i, label %console_trylock.exit

if.then2.i:                                       ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #27
  %121 = ptrtoint ptr %118 to i32
  call fastcc void @__up_console_sem(i32 noundef %121) #25
  br label %cleanup120

console_trylock.exit:                             ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @console_locked, align 4
  store i1 false, ptr @console_may_schedule, align 4
  br label %again

cleanup120:                                       ; preds = %if.then2.i, %land.lhs.true.cleanup120_crit_edge, %for.end.cleanup120_crit_edge, %cleanup.cleanup120_crit_edge, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %r) #25
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %info) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wake_up_klogd() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1.i = load i1, ptr @__printk_percpu_data_ready, align 1
  br i1 %.b1.i, label %do.body, label %entry.do.end57_crit_edge

entry.do.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end57

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !615
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @log_wait, i32 0, i32 1), align 4
  %cmp.i.i.not = icmp eq ptr %4, getelementptr inbounds (%struct.wait_queue_head, ptr @log_wait, i32 0, i32 1)
  br i1 %cmp.i.i.not, label %do.body.do.body55_crit_edge, label %do.body4

do.body.do.body55_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body55

do.body4:                                         ; preds = %do.body
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !602
  %6 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, ptrtoint (ptr @printk_pending to i32)
  %12 = inttoptr i32 %add to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %or = or i32 %14, 1
  store i32 %or, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #25, !srcloc !603
  %and.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool28.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool28.not, label %if.then32, label %do.body4.do.end35_crit_edge, !prof !595

do.body4.do.end35_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end35

if.then32:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @warn_bogus_irq_restore() #25
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %do.body4.do.end35_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #25, !srcloc !604
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx51 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx51, align 4
  %add52 = add i32 %19, ptrtoint (ptr @wake_up_klogd_work to i32)
  %20 = inttoptr i32 %add52 to ptr
  %call53 = tail call zeroext i1 @irq_work_queue(ptr noundef %20) #25
  br label %do.body55

do.body55:                                        ; preds = %do.end35, %do.body.do.body55_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !616
  %21 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i58 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i58 to ptr
  %preempt_count.i.i59 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i59, align 4
  %sub.i = add i32 %24, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i59, align 4
  br label %do.end57

do.end57:                                         ; preds = %do.body55, %entry.do.end57_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vprintk_default(ptr noundef %fmt, [1 x i32] %args.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vprintk_emit(i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef %fmt, [1 x i32] %args.coerce)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @early_printk(ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  %buf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #25
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !596
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #25
  %1 = call ptr @memset(ptr %buf, i32 255, i32 512)
  %2 = load ptr, ptr @early_console, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.va_start(ptr nonnull %ap)
  %3 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %3)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vscnprintf(ptr noundef nonnull %buf, i32 noundef 512, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #25
  call void @llvm.va_end(ptr nonnull %ap)
  %4 = load ptr, ptr @early_console, align 4
  %write = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  call void %6(ptr noundef %4, ptr noundef nonnull %buf, i32 noundef %call) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @console_msg_format_setup(ptr nocapture noundef readonly %str) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(7) @.str.137) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @console_msg_format, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(8) @.str.138) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  store i1 false, ptr @console_msg_format, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @console_setup(ptr noundef %str) #6 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  %buf = alloca [20 x i8], align 1
  %brl_options = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #25
  %1 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i32 4
  %2 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i32 19
  %3 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %brl_options) #25
  %4 = ptrtoint ptr %brl_options to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %brl_options, align 4
  %5 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(5) @.str.139) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call4 = tail call fastcc i32 @__add_preferred_console(ptr noundef nonnull @.str.140, i32 noundef 0, ptr noundef null, ptr noundef null, i1 noundef zeroext true)
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call5 = call i32 @_braille_console_setup(ptr noundef nonnull %str.addr, ptr noundef nonnull %brl_options) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %str.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %str.addr, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %11 = add i8 %10, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %12 = icmp ult i8 %11, 10
  br i1 %12, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #27
  %13 = call ptr @memcpy(ptr %buf, ptr @.str.141, i32 5)
  %call19 = call ptr @strncpy(ptr noundef %1, ptr noundef %8, i32 noundef 15)
  br label %if.end22

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #27
  %call21 = call ptr @strncpy(ptr noundef nonnull %buf, ptr noundef %8, i32 noundef 19)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then16
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %2, align 1
  %call24 = call ptr @strchr(ptr noundef %8, i32 noundef 44)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end22.if.end27_crit_edge, label %if.then26

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end27

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #27
  %incdec.ptr = getelementptr i8, ptr %call24, i32 1
  %15 = ptrtoint ptr %call24 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %call24, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end22.if.end27_crit_edge
  %options.0 = phi ptr [ %incdec.ptr, %if.then26 ], [ null, %if.end22.if.end27_crit_edge ]
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not55 = icmp eq i8 %17, 0
  br i1 %tobool29.not55, label %if.end27.for.end_crit_edge, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  br label %for.body

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end27.for.body_crit_edge
  %18 = phi i8 [ %22, %for.inc.for.body_crit_edge ], [ %17, %if.end27.for.body_crit_edge ]
  %s.056 = phi ptr [ %incdec.ptr39, %for.inc.for.body_crit_edge ], [ %buf, %if.end27.for.body_crit_edge ]
  %conv30 = zext i8 %18 to i32
  %19 = add nsw i32 %conv30, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %19)
  %20 = icmp ult i32 %19, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %18)
  %cmp35 = icmp eq i8 %18, 44
  %or.cond54 = select i1 %20, i1 true, i1 %cmp35
  br i1 %or.cond54, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.inc:                                          ; preds = %for.body
  %incdec.ptr39 = getelementptr i8, ptr %s.056, i32 1
  %21 = ptrtoint ptr %incdec.ptr39 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr39, align 1
  %tobool29.not = icmp eq i8 %22, 0
  br i1 %tobool29.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end27.for.end_crit_edge
  %s.0.lcssa = phi ptr [ %buf, %if.end27.for.end_crit_edge ], [ %s.056, %for.body.for.end_crit_edge ], [ %incdec.ptr39, %for.inc.for.end_crit_edge ]
  %call40 = call i32 @simple_strtoul(ptr noundef %s.0.lcssa, ptr noundef null, i32 noundef 10) #25
  %23 = ptrtoint ptr %s.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %s.0.lcssa, align 1
  %24 = ptrtoint ptr %brl_options to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %brl_options, align 4
  %call42 = call fastcc i32 @__add_preferred_console(ptr noundef nonnull %buf, i32 noundef %call40, ptr noundef %options.0, ptr noundef %25, i1 noundef zeroext true)
  store i32 1, ptr @console_set_on_cmdline, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %brl_options) #25
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #25
  ret i32 1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_preferred_console(ptr noundef %name, i32 noundef %idx, ptr noundef %options) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__add_preferred_console(ptr noundef %name, i32 noundef %idx, ptr noundef %options, ptr noundef null, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__add_preferred_console(ptr noundef %name, i32 noundef %idx, ptr noundef %options, ptr noundef %brl_options, i1 noundef zeroext %user_specified) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %user_specified to i8
  %0 = load i8, ptr @console_cmdline, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %for.body

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end17

for.body:                                         ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef nonnull @console_cmdline, ptr noundef %name) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %1 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp5 = icmp eq i32 %1, %idx
  br i1 %cmp5, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.7.if.then_crit_edge, %land.lhs.true.6.if.then_crit_edge, %land.lhs.true.5.if.then_crit_edge, %land.lhs.true.4.if.then_crit_edge, %land.lhs.true.3.if.then_crit_edge, %land.lhs.true.2.if.then_crit_edge, %land.lhs.true.1.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %i.057.lcssa61 = phi i32 [ 0, %land.lhs.true.if.then_crit_edge ], [ 1, %land.lhs.true.1.if.then_crit_edge ], [ 2, %land.lhs.true.2.if.then_crit_edge ], [ 3, %land.lhs.true.3.if.then_crit_edge ], [ 4, %land.lhs.true.4.if.then_crit_edge ], [ 5, %land.lhs.true.5.if.then_crit_edge ], [ 6, %land.lhs.true.6.if.then_crit_edge ], [ 7, %land.lhs.true.7.if.then_crit_edge ]
  %c.055.lcssa59 = phi ptr [ @console_cmdline, %land.lhs.true.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 1), %land.lhs.true.1.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 2), %land.lhs.true.2.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 3), %land.lhs.true.3.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 4), %land.lhs.true.4.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 5), %land.lhs.true.5.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 6), %land.lhs.true.6.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 7), %land.lhs.true.7.if.then_crit_edge ]
  %tobool7.not = icmp eq ptr %brl_options, null
  br i1 %tobool7.not, label %if.then8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #27
  store i32 %i.057.lcssa61, ptr @preferred_console, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  br i1 %user_specified, label %if.then10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  %user_specified11 = getelementptr inbounds %struct.console_cmdline, ptr %c.055.lcssa59, i32 0, i32 2
  %2 = ptrtoint ptr %user_specified11 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %user_specified11, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %3 = load i8, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.1 = icmp eq i8 %3, 0
  br i1 %tobool.not.1, label %for.inc.if.end17_crit_edge, label %for.body.1

for.inc.if.end17_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end17

for.body.1:                                       ; preds = %for.inc
  %call.1 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 1), ptr noundef %name) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp3.1 = icmp eq i32 %call.1, 0
  br i1 %cmp3.1, label %land.lhs.true.1, label %for.body.1.for.inc.1_crit_edge

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.body.1
  %4 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %idx)
  %cmp5.1 = icmp eq i32 %4, %idx
  br i1 %cmp5.1, label %land.lhs.true.1.if.then_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.1

land.lhs.true.1.if.then_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.body.1.for.inc.1_crit_edge
  %5 = load i8, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.2 = icmp eq i8 %5, 0
  br i1 %tobool.not.2, label %for.inc.1.if.end17_crit_edge, label %for.body.2

for.inc.1.if.end17_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end17

for.body.2:                                       ; preds = %for.inc.1
  %call.2 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 2), ptr noundef %name) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp3.2 = icmp eq i32 %call.2, 0
  br i1 %cmp3.2, label %land.lhs.true.2, label %for.body.2.for.inc.2_crit_edge

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.body.2
  %6 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %idx)
  %cmp5.2 = icmp eq i32 %6, %idx
  br i1 %cmp5.2, label %land.lhs.true.2.if.then_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.2

land.lhs.true.2.if.then_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.body.2.for.inc.2_crit_edge
  %7 = load i8, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.3 = icmp eq i8 %7, 0
  br i1 %tobool.not.3, label %for.inc.2.if.end17_crit_edge, label %for.body.3

for.inc.2.if.end17_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end17

for.body.3:                                       ; preds = %for.inc.2
  %call.3 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 3), ptr noundef %name) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp3.3 = icmp eq i32 %call.3, 0
  br i1 %cmp3.3, label %land.lhs.true.3, label %for.body.3.for.inc.3_crit_edge

for.body.3.for.inc.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.body.3
  %8 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %idx)
  %cmp5.3 = icmp eq i32 %8, %idx
  br i1 %cmp5.3, label %land.lhs.true.3.if.then_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.3

land.lhs.true.3.if.then_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.body.3.for.inc.3_crit_edge
  %9 = load i8, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.4 = icmp eq i8 %9, 0
  br i1 %tobool.not.4, label %for.inc.3.if.end17_crit_edge, label %for.body.4

for.inc.3.if.end17_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end17

for.body.4:                                       ; preds = %for.inc.3
  %call.4 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 4), ptr noundef %name) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp3.4 = icmp eq i32 %call.4, 0
  br i1 %cmp3.4, label %land.lhs.true.4, label %for.body.4.for.inc.4_crit_edge

for.body.4.for.inc.4_crit_edge:                   ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.body.4
  %10 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %idx)
  %cmp5.4 = icmp eq i32 %10, %idx
  br i1 %cmp5.4, label %land.lhs.true.4.if.then_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.4

land.lhs.true.4.if.then_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.body.4.for.inc.4_crit_edge
  %11 = load i8, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.5 = icmp eq i8 %11, 0
  br i1 %tobool.not.5, label %for.inc.4.if.end17_crit_edge, label %for.body.5

for.inc.4.if.end17_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end17

for.body.5:                                       ; preds = %for.inc.4
  %call.5 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 5), ptr noundef %name) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp3.5 = icmp eq i32 %call.5, 0
  br i1 %cmp3.5, label %land.lhs.true.5, label %for.body.5.for.inc.5_crit_edge

for.body.5.for.inc.5_crit_edge:                   ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.body.5
  %12 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %idx)
  %cmp5.5 = icmp eq i32 %12, %idx
  br i1 %cmp5.5, label %land.lhs.true.5.if.then_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.5

land.lhs.true.5.if.then_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.body.5.for.inc.5_crit_edge
  %13 = load i8, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.6 = icmp eq i8 %13, 0
  br i1 %tobool.not.6, label %for.inc.5.if.end17_crit_edge, label %for.body.6

for.inc.5.if.end17_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end17

for.body.6:                                       ; preds = %for.inc.5
  %call.6 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 6), ptr noundef %name) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp3.6 = icmp eq i32 %call.6, 0
  br i1 %cmp3.6, label %land.lhs.true.6, label %for.body.6.for.inc.6_crit_edge

for.body.6.for.inc.6_crit_edge:                   ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.body.6
  %14 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 6, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %idx)
  %cmp5.6 = icmp eq i32 %14, %idx
  br i1 %cmp5.6, label %land.lhs.true.6.if.then_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc.6

land.lhs.true.6.if.then_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.body.6.for.inc.6_crit_edge
  %15 = load i8, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.7 = icmp eq i8 %15, 0
  br i1 %tobool.not.7, label %for.inc.6.if.end17_crit_edge, label %for.body.7

for.inc.6.if.end17_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end17

for.body.7:                                       ; preds = %for.inc.6
  %call.7 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 7), ptr noundef %name) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %cmp3.7 = icmp eq i32 %call.7, 0
  br i1 %cmp3.7, label %land.lhs.true.7, label %for.body.7.cleanup_crit_edge

for.body.7.cleanup_crit_edge:                     ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

land.lhs.true.7:                                  ; preds = %for.body.7
  %16 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 7, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %idx)
  %cmp5.7 = icmp eq i32 %16, %idx
  br i1 %cmp5.7, label %land.lhs.true.7.if.then_crit_edge, label %land.lhs.true.7.cleanup_crit_edge

land.lhs.true.7.cleanup_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

land.lhs.true.7.if.then_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then

if.end17:                                         ; preds = %for.inc.6.if.end17_crit_edge, %for.inc.5.if.end17_crit_edge, %for.inc.4.if.end17_crit_edge, %for.inc.3.if.end17_crit_edge, %for.inc.2.if.end17_crit_edge, %for.inc.1.if.end17_crit_edge, %for.inc.if.end17_crit_edge, %entry.if.end17_crit_edge
  %i.057.lcssa = phi i32 [ 0, %entry.if.end17_crit_edge ], [ 1, %for.inc.if.end17_crit_edge ], [ 2, %for.inc.1.if.end17_crit_edge ], [ 3, %for.inc.2.if.end17_crit_edge ], [ 4, %for.inc.3.if.end17_crit_edge ], [ 5, %for.inc.4.if.end17_crit_edge ], [ 6, %for.inc.5.if.end17_crit_edge ], [ 7, %for.inc.6.if.end17_crit_edge ]
  %c.055.lcssa = phi ptr [ @console_cmdline, %entry.if.end17_crit_edge ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 1), %for.inc.if.end17_crit_edge ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 2), %for.inc.1.if.end17_crit_edge ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 3), %for.inc.2.if.end17_crit_edge ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 4), %for.inc.3.if.end17_crit_edge ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 5), %for.inc.4.if.end17_crit_edge ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 6), %for.inc.5.if.end17_crit_edge ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 7), %for.inc.6.if.end17_crit_edge ]
  %tobool18.not = icmp eq ptr %brl_options, null
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #27
  store i32 %i.057.lcssa, ptr @preferred_console, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %call23 = tail call i32 @strlcpy(ptr noundef %c.055.lcssa, ptr noundef %name, i32 noundef 16) #25
  %options24 = getelementptr inbounds %struct.console_cmdline, ptr %c.055.lcssa, i32 0, i32 3
  %17 = ptrtoint ptr %options24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %options, ptr %options24, align 4
  %user_specified26 = getelementptr inbounds %struct.console_cmdline, ptr %c.055.lcssa, i32 0, i32 2
  %18 = ptrtoint ptr %user_specified26 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %user_specified26, align 4
  %brl_options1.i = getelementptr inbounds %struct.console_cmdline, ptr %c.055.lcssa, i32 0, i32 4
  %19 = ptrtoint ptr %brl_options1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %brl_options, ptr %brl_options1.i, align 4
  %index28 = getelementptr inbounds %struct.console_cmdline, ptr %c.055.lcssa, i32 0, i32 1
  %20 = ptrtoint ptr %index28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %idx, ptr %index28, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %land.lhs.true.7.cleanup_crit_edge, %for.body.7.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ 0, %if.then10 ], [ 0, %if.end.cleanup_crit_edge ], [ -7, %land.lhs.true.7.cleanup_crit_edge ], [ -7, %for.body.7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @console_suspend_disable(ptr nocapture noundef readnone %str) #11 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 0, ptr @console_suspend_enabled, align 1
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @console_verbose() #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @console_printk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr @printk_console_no_auto_verbose, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  store i32 15, ptr @console_printk, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @suspend_console() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @console_suspend_enabled, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %return

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #31
  tail call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 2522) #25
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %1 = tail call ptr @llvm.returnaddress(i32 0) #25
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef nonnull @console_lock_dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %2) #25
  %.b.i = load i1, ptr @console_suspended, align 4
  br i1 %.b.i, label %do.end.console_lock.exit_crit_edge, label %if.end.i

do.end.console_lock.exit_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %console_lock.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @console_locked, align 4
  store i1 true, ptr @console_may_schedule, align 4
  br label %console_lock.exit

console_lock.exit:                                ; preds = %if.end.i, %do.end.console_lock.exit_crit_edge
  store i1 true, ptr @console_suspended, align 4
  tail call fastcc void @__up_console_sem(i32 noundef %2)
  br label %return

return:                                           ; preds = %console_lock.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @console_lock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 2522) #25
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef nonnull @console_lock_dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #25
  %.b = load i1, ptr @console_suspended, align 4
  br i1 %.b, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @console_locked, align 4
  store i1 true, ptr @console_may_schedule, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__up_console_sem(i32 noundef %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_release(ptr noundef nonnull @console_lock_dep_map, i32 noundef %ip) #25
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !602
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body26.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @trace_hardirqs_off() #25
  tail call void @__printk_safe_enter() #25
  tail call void @up(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  tail call void @trace_hardirqs_on() #25
  br label %do.body26

do.body26.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @__printk_safe_enter() #25
  tail call void @up(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  br label %do.body26

do.body26:                                        ; preds = %do.body26.critedge, %if.then
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #25, !srcloc !603
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool34.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool34.not, label %if.then38, label %do.body26.do.end41_crit_edge, !prof !595

do.body26.do.end41_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end41

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @warn_bogus_irq_restore() #25
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body26.do.end41_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #25, !srcloc !604
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @resume_console() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @console_suspend_enabled, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef nonnull @console_lock_dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %2) #25
  store i1 false, ptr @console_suspended, align 4
  tail call void @console_unlock()
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @console_trylock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call fastcc i32 @__down_trylock_console_sem(i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %return

if.end:                                           ; preds = %entry
  %.b = load i1, ptr @console_suspended, align 4
  br i1 %.b, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  tail call fastcc void @__up_console_sem(i32 noundef %1)
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @console_locked, align 4
  store i1 false, ptr @console_may_schedule, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.end3 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__down_trylock_console_sem(i32 noundef %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !602
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @trace_hardirqs_off() #25
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  tail call void @__printk_safe_enter() #25
  %call14 = tail call i32 @down_trylock(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  br i1 %tobool.not, label %if.then25, label %do.end11.do.body27_crit_edge

do.end11.do.body27_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body27

if.then25:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @trace_hardirqs_on() #25
  br label %do.body27

do.body27:                                        ; preds = %if.then25, %do.end11.do.body27_crit_edge
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #25, !srcloc !603
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool35.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool35.not, label %if.then39, label %do.body27.do.end42_crit_edge, !prof !595

do.body27.do.end42_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end42

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @warn_bogus_irq_restore() #25
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body27.do.end42_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #25, !srcloc !604
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool49.not = icmp eq i32 %call14, 0
  br i1 %tobool49.not, label %if.end51, label %do.end42.cleanup_crit_edge

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end51:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @lock_acquire(ptr noundef nonnull @console_lock_dep_map, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %ip) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end42.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ 1, %do.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @is_console_locked() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @console_locked, align 4
  %0 = zext i1 %.b to i32
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_safe_enter() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @console_lock_spinning_enable() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @console_owner_lock) #25
  %0 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  store ptr %3, ptr @console_owner, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @console_owner_lock) #25
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @lock_acquire(ptr noundef nonnull @console_owner_dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@console_lock_spinning_enable, %__here) to i32)) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_critical_timings() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_critical_timings() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @console_lock_spinning_disable_and_check() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @console_owner_lock) #25
  %0 = load volatile i8, ptr @console_waiter, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  store ptr null, ptr @console_owner, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @console_owner_lock) #25
  br i1 %tobool.not, label %__here, label %do.body8

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @lock_release(ptr noundef nonnull @console_owner_dep_map, i32 noundef ptrtoint (ptr blockaddress(@console_lock_spinning_disable_and_check, %__here) to i32)) #25
  br label %cleanup

do.body8:                                         ; preds = %entry
  store volatile i8 0, ptr @console_waiter, align 1
  br label %__here13

__here13:                                         ; preds = %do.body8
  tail call void @lock_release(ptr noundef nonnull @console_owner_dep_map, i32 noundef ptrtoint (ptr blockaddress(@console_lock_spinning_disable_and_check, %__here13) to i32)) #25
  br label %__here15

__here15:                                         ; preds = %__here13
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @lock_release(ptr noundef nonnull @console_lock_dep_map, i32 noundef ptrtoint (ptr blockaddress(@console_lock_spinning_disable_and_check, %__here15) to i32)) #25
  br label %cleanup

cleanup:                                          ; preds = %__here15, %__here
  %retval.0 = phi i32 [ 1, %__here15 ], [ 0, %__here ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_safe_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @console_conditional_schedule() #0 section ".sched.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @console_may_schedule, align 4
  br i1 %.b, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @__might_resched(ptr noundef nonnull @.str.46, i32 noundef 2753, i32 noundef 0) #25
  %call.i = tail call i32 @__cond_resched() #25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @console_unblank() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  %call = tail call fastcc i32 @__down_trylock_console_sem(i32 noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.then.if.end2_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end2

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 2522) #25
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %3 = tail call ptr @llvm.returnaddress(i32 0) #25
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef nonnull @console_lock_dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %4) #25
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then.if.end2_crit_edge
  store i1 true, ptr @console_locked, align 4
  store i1 false, ptr @console_may_schedule, align 4
  %c.014 = load ptr, ptr @console_drivers, align 4
  %cmp3.not15 = icmp eq ptr %c.014, null
  br i1 %cmp3.not15, label %if.end2.for.end_crit_edge, label %if.end2.for.body_crit_edge

if.end2.for.body_crit_edge:                       ; preds = %if.end2
  br label %for.body

if.end2.for.end_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end2.for.body_crit_edge
  %c.016 = phi ptr [ %c.0, %for.inc.for.body_crit_edge ], [ %c.014, %if.end2.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.console, ptr %c.016, i32 0, i32 8
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 4
  %7 = and i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not = icmp eq i16 %7, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %unblank = getelementptr inbounds %struct.console, ptr %c.016, i32 0, i32 4
  %8 = ptrtoint ptr %unblank to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unblank, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %land.lhs.true.for.inc_crit_edge, label %if.then6

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  tail call void %9() #25
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.console, ptr %c.016, i32 0, i32 14
  %10 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %10)
  %c.0 = load ptr, ptr %next, align 4
  %cmp3.not = icmp eq ptr %c.0, null
  br i1 %cmp3.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end2.for.end_crit_edge
  tail call void @console_unlock()
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @console_flush_on_panic(i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0) #25
  %1 = ptrtoint ptr %0 to i32
  %call.i = tail call fastcc i32 @__down_trylock_console_sem(i32 noundef %1) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.console_trylock.exit_crit_edge

entry.console_trylock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %console_trylock.exit

if.end.i:                                         ; preds = %entry
  %.b.i = load i1, ptr @console_suspended, align 4
  br i1 %.b.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  tail call fastcc void @__up_console_sem(i32 noundef %1) #25
  br label %console_trylock.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @console_locked, align 4
  br label %console_trylock.exit

console_trylock.exit:                             ; preds = %if.end3.i, %if.then2.i, %entry.console_trylock.exit_crit_edge
  store i1 false, ptr @console_may_schedule, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then, label %console_trylock.exit.if.end_crit_edge

console_trylock.exit.if.end_crit_edge:            ; preds = %console_trylock.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.then:                                          ; preds = %console_trylock.exit
  call void @__sanitizer_cov_trace_pc() #27
  %2 = load ptr, ptr @prb, align 4
  %call1 = tail call i64 @prb_first_valid_seq(ptr noundef %2) #25
  store i64 %call1, ptr @console_seq, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %console_trylock.exit.if.end_crit_edge
  tail call void @console_unlock()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prb_first_valid_seq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @console_device(ptr noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 2522) #25
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %0 = tail call ptr @llvm.returnaddress(i32 0) #25
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef nonnull @console_lock_dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #25
  %.b.i = load i1, ptr @console_suspended, align 4
  br i1 %.b.i, label %entry.console_lock.exit_crit_edge, label %if.end.i

entry.console_lock.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %console_lock.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @console_locked, align 4
  store i1 true, ptr @console_may_schedule, align 4
  br label %console_lock.exit

console_lock.exit:                                ; preds = %if.end.i, %entry.console_lock.exit_crit_edge
  %c.010 = load ptr, ptr @console_drivers, align 4
  %cmp.not11 = icmp eq ptr %c.010, null
  br i1 %cmp.not11, label %console_lock.exit.for.end_crit_edge, label %console_lock.exit.for.body_crit_edge

console_lock.exit.for.body_crit_edge:             ; preds = %console_lock.exit
  br label %for.body

console_lock.exit.for.end_crit_edge:              ; preds = %console_lock.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %console_lock.exit.for.body_crit_edge
  %c.012 = phi ptr [ %c.0, %for.inc.for.body_crit_edge ], [ %c.010, %console_lock.exit.for.body_crit_edge ]
  %device = getelementptr inbounds %struct.console, ptr %c.012, i32 0, i32 3
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = tail call ptr %3(ptr noundef nonnull %c.012, ptr noundef %index) #25
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.for.inc_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.console, ptr %c.012, i32 0, i32 14
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %c.0 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %c.0, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %console_lock.exit.for.end_crit_edge
  %driver.2 = phi ptr [ null, %console_lock.exit.for.end_crit_edge ], [ %call, %if.end.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @console_unlock()
  ret ptr %driver.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @console_stop(ptr nocapture noundef %console) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 2522) #25
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %0 = tail call ptr @llvm.returnaddress(i32 0) #25
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef nonnull @console_lock_dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #25
  %.b.i = load i1, ptr @console_suspended, align 4
  br i1 %.b.i, label %entry.console_lock.exit_crit_edge, label %if.end.i

entry.console_lock.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %console_lock.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @console_locked, align 4
  store i1 true, ptr @console_may_schedule, align 4
  br label %console_lock.exit

console_lock.exit:                                ; preds = %if.end.i, %entry.console_lock.exit_crit_edge
  %flags = getelementptr inbounds %struct.console, ptr %console, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  %4 = and i16 %3, -5
  store i16 %4, ptr %flags, align 4
  tail call void @console_unlock()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @console_start(ptr nocapture noundef %console) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 2522) #25
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %0 = tail call ptr @llvm.returnaddress(i32 0) #25
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef nonnull @console_lock_dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #25
  %.b.i = load i1, ptr @console_suspended, align 4
  br i1 %.b.i, label %entry.console_lock.exit_crit_edge, label %if.end.i

entry.console_lock.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %console_lock.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @console_locked, align 4
  store i1 true, ptr @console_may_schedule, align 4
  br label %console_lock.exit

console_lock.exit:                                ; preds = %if.end.i, %entry.console_lock.exit_crit_edge
  %flags = getelementptr inbounds %struct.console, ptr %console, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  %4 = or i16 %3, 4
  store i16 %4, ptr %flags, align 4
  tail call void @console_unlock()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @keep_bootcon_setup(ptr nocapture noundef readnone %str) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @keep_bootcon, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #31
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @register_console(ptr noundef %newcon) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %con.0226 = load ptr, ptr @console_drivers, align 4
  %cmp.not227 = icmp eq ptr %con.0226, null
  br i1 %cmp.not227, label %entry.for.end33.thread_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end33.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end33.thread

for.cond23.preheader:                             ; preds = %for.inc
  %con.1229.pr = load ptr, ptr @console_drivers, align 4
  %cmp24.not230 = icmp eq ptr %con.1229.pr, null
  br i1 %cmp24.not230, label %for.cond23.preheader.for.end33.thread_crit_edge, label %for.cond23.preheader.for.body26_crit_edge

for.cond23.preheader.for.body26_crit_edge:        ; preds = %for.cond23.preheader
  br label %for.body26

for.cond23.preheader.for.end33.thread_crit_edge:  ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end33.thread

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %con.0228 = phi ptr [ %con.0, %for.inc.for.body_crit_edge ], [ %con.0226, %entry.for.body_crit_edge ]
  %cmp1 = icmp eq ptr %con.0228, %newcon
  br i1 %cmp1, label %do.end, label %for.inc, !prof !595

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  %index = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %conv = sext i16 %1 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 2954, i32 noundef 9, ptr noundef nonnull @.str.70, ptr noundef nonnull %newcon, i32 noundef %conv) #25
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.console, ptr %con.0228, i32 0, i32 14
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %con.0 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %con.0, null
  br i1 %cmp.not, label %for.cond23.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.cond23.preheader.for.body26_crit_edge
  %con.1233 = phi ptr [ %con.1, %for.body26.for.body26_crit_edge ], [ %con.1229.pr, %for.cond23.preheader.for.body26_crit_edge ]
  %bootcon_enabled.0.off0232 = phi i1 [ %bootcon_enabled.0.off0., %for.body26.for.body26_crit_edge ], [ false, %for.cond23.preheader.for.body26_crit_edge ]
  %realcon_enabled.0.off0231 = phi i1 [ %.realcon_enabled.0.off0, %for.body26.for.body26_crit_edge ], [ false, %for.cond23.preheader.for.body26_crit_edge ]
  %flags = getelementptr inbounds %struct.console, ptr %con.1233, i32 0, i32 8
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 4
  %5 = and i16 %4, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool28.not = icmp eq i16 %5, 0
  %.realcon_enabled.0.off0 = select i1 %tobool28.not, i1 true, i1 %realcon_enabled.0.off0231
  %not.tobool28.not = xor i1 %tobool28.not, true
  %bootcon_enabled.0.off0. = select i1 %not.tobool28.not, i1 true, i1 %bootcon_enabled.0.off0232
  %next32 = getelementptr inbounds %struct.console, ptr %con.1233, i32 0, i32 14
  %6 = ptrtoint ptr %next32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %con.1 = load ptr, ptr %next32, align 4
  %cmp24.not = icmp eq ptr %con.1, null
  br i1 %cmp24.not, label %for.end33, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body26

for.end33.thread:                                 ; preds = %for.cond23.preheader.for.end33.thread_crit_edge, %entry.for.end33.thread_crit_edge
  %flags34244 = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 8
  br label %if.end49

for.end33:                                        ; preds = %for.body26
  %flags34 = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 8
  %7 = ptrtoint ptr %flags34 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags34, align 4
  %9 = and i16 %8, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool37.not = icmp eq i16 %9, 0
  %realcon_enabled.0.off0.not = xor i1 %.realcon_enabled.0.off0, true
  %brmerge = select i1 %tobool37.not, i1 true, i1 %realcon_enabled.0.off0.not
  br i1 %brmerge, label %for.end33.if.end49_crit_edge, label %do.end43

for.end33.if.end49_crit_edge:                     ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end49

do.end43:                                         ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #27
  %index47 = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 9
  %10 = ptrtoint ptr %index47 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %index47, align 2
  %conv48 = sext i16 %11 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %newcon, i32 noundef %conv48) #31
  br label %cleanup

if.end49:                                         ; preds = %for.end33.if.end49_crit_edge, %for.end33.thread
  %flags34249 = phi ptr [ %flags34244, %for.end33.thread ], [ %flags34, %for.end33.if.end49_crit_edge ]
  %bootcon_enabled.0.off0.lcssa248 = phi i1 [ false, %for.end33.thread ], [ %bootcon_enabled.0.off0., %for.end33.if.end49_crit_edge ]
  %12 = load i32, ptr @preferred_console, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp50 = icmp slt i32 %12, 0
  br i1 %cmp50, label %if.then52, label %if.end49.if.end62_crit_edge

if.end49.if.end62_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end62

if.then52:                                        ; preds = %if.end49
  %13 = load ptr, ptr @console_drivers, align 4
  %tobool53.not = icmp eq ptr %13, null
  br i1 %tobool53.not, label %if.then52.if.then60_crit_edge, label %lor.lhs.false

if.then52.if.then60_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then60

lor.lhs.false:                                    ; preds = %if.then52
  %device = getelementptr inbounds %struct.console, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %tobool54.not = icmp eq ptr %15, null
  br i1 %tobool54.not, label %lor.lhs.false.if.then60_crit_edge, label %lor.lhs.false55

lor.lhs.false.if.then60_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then60

lor.lhs.false55:                                  ; preds = %lor.lhs.false
  %flags56 = getelementptr inbounds %struct.console, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %flags56 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags56, align 4
  %18 = and i16 %17, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool59.not = icmp eq i16 %18, 0
  br i1 %tobool59.not, label %lor.lhs.false55.if.end62_crit_edge, label %lor.lhs.false55.if.then60_crit_edge

lor.lhs.false55.if.then60_crit_edge:              ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.then60

lor.lhs.false55.if.end62_crit_edge:               ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end62

if.then60:                                        ; preds = %lor.lhs.false55.if.then60_crit_edge, %lor.lhs.false.if.then60_crit_edge, %if.then52.if.then60_crit_edge
  %index.i = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 9
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %index.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.i = icmp slt i16 %20, 0
  br i1 %cmp.i, label %if.then.i, label %if.then60.if.end.i_crit_edge

if.then60.if.end.i_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end.i

if.then.i:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #27
  %21 = ptrtoint ptr %index.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %index.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then60.if.end.i_crit_edge
  %setup.i = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 5
  %22 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %setup.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call.i = tail call i32 %23(ptr noundef %newcon, ptr noundef null) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp4.not.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %land.lhs.true.i.if.end62_crit_edge

land.lhs.true.i.if.end62_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end62

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end7.i

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %24 = ptrtoint ptr %flags34249 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags34249, align 4
  %26 = or i16 %25, 4
  store i16 %26, ptr %flags34249, align 4
  %device.i = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 3
  %27 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device.i, align 4
  %tobool10.not.i = icmp eq ptr %28, null
  br i1 %tobool10.not.i, label %if.end7.i.if.end62_crit_edge, label %if.then11.i

if.end7.i.if.end62_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end62

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #27
  %29 = or i16 %25, 6
  %30 = ptrtoint ptr %flags34249 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %flags34249, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then11.i, %if.end7.i.if.end62_crit_edge, %land.lhs.true.i.if.end62_crit_edge, %lor.lhs.false55.if.end62_crit_edge, %if.end49.if.end62_crit_edge
  %call63 = tail call fastcc i32 @try_enable_preferred_console(ptr noundef %newcon, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call63)
  %cmp64 = icmp eq i32 %call63, -2
  br i1 %cmp64, label %if.then66, label %if.end62.if.end68_crit_edge

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end68

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #27
  %call67 = tail call fastcc i32 @try_enable_preferred_console(ptr noundef %newcon, i1 noundef zeroext false)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end62.if.end68_crit_edge
  %err.0 = phi i32 [ %call67, %if.then66 ], [ %call63, %if.end62.if.end68_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool69.not = icmp eq i32 %err.0, 0
  br i1 %tobool69.not, label %lor.lhs.false70, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

lor.lhs.false70:                                  ; preds = %if.end68
  %31 = ptrtoint ptr %flags34249 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags34249, align 4
  %conv72239 = zext i16 %32 to i32
  %and73 = and i32 %conv72239, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end76, label %lor.lhs.false70.cleanup_crit_edge

lor.lhs.false70.cleanup_crit_edge:                ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end76:                                         ; preds = %lor.lhs.false70
  %and82 = and i32 %conv72239, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and82)
  %cmp83 = icmp eq i32 %and82, 2
  %or.cond = select i1 %bootcon_enabled.0.off0.lcssa248, i1 %cmp83, i1 false
  br i1 %or.cond, label %if.then85, label %if.end76.if.end90_crit_edge

if.end76.if.end90_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end90

if.then85:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #27
  %and88 = and i16 %32, -2
  %33 = ptrtoint ptr %flags34249 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %and88, ptr %flags34249, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end76.if.end90_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 2522) #25
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %34 = tail call ptr @llvm.returnaddress(i32 0) #25
  %35 = ptrtoint ptr %34 to i32
  tail call void @lock_acquire(ptr noundef nonnull @console_lock_dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %35) #25
  %.b.i = load i1, ptr @console_suspended, align 4
  br i1 %.b.i, label %if.end90.console_lock.exit_crit_edge, label %if.end.i222

if.end90.console_lock.exit_crit_edge:             ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #27
  br label %console_lock.exit

if.end.i222:                                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @console_locked, align 4
  store i1 true, ptr @console_may_schedule, align 4
  br label %console_lock.exit

console_lock.exit:                                ; preds = %if.end.i222, %if.end90.console_lock.exit_crit_edge
  %36 = ptrtoint ptr %flags34249 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags34249, align 4
  %38 = and i16 %37, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool94.not = icmp eq i16 %38, 0
  %39 = load ptr, ptr @console_drivers, align 4
  br i1 %tobool94.not, label %lor.lhs.false95, label %if.then98

lor.lhs.false95:                                  ; preds = %console_lock.exit
  %cmp96 = icmp eq ptr %39, null
  br i1 %cmp96, label %if.then98.thread, label %if.else112

if.then98.thread:                                 ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #27
  %next99223 = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 14
  %40 = ptrtoint ptr %next99223 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %next99223, align 4
  store ptr %newcon, ptr @console_drivers, align 4
  br label %if.end108

if.then98:                                        ; preds = %console_lock.exit
  %next99 = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 14
  %41 = ptrtoint ptr %next99 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %next99, align 4
  store ptr %newcon, ptr @console_drivers, align 4
  %tobool101.not = icmp eq ptr %39, null
  br i1 %tobool101.not, label %if.then98.if.end108_crit_edge, label %if.then102

if.then98.if.end108_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end108

if.then102:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #27
  %flags104 = getelementptr inbounds %struct.console, ptr %39, i32 0, i32 8
  %42 = ptrtoint ptr %flags104 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %flags104, align 4
  %44 = and i16 %43, -3
  store i16 %44, ptr %flags104, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then102, %if.then98.if.end108_crit_edge, %if.then98.thread
  %45 = ptrtoint ptr %flags34249 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flags34249, align 4
  %47 = or i16 %46, 2
  store i16 %47, ptr %flags34249, align 4
  br label %if.end116

if.else112:                                       ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #27
  %next113 = getelementptr inbounds %struct.console, ptr %39, i32 0, i32 14
  %48 = ptrtoint ptr %next113 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %next113, align 4
  %next114 = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 14
  %50 = ptrtoint ptr %next114 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %next114, align 4
  store ptr %newcon, ptr %next113, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.else112, %if.end108
  %51 = ptrtoint ptr %flags34249 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %flags34249, align 4
  %53 = and i16 %52, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool120.not = icmp eq i16 %53, 0
  br i1 %tobool120.not, label %if.end116.if.end122_crit_edge, label %if.then121

if.end116.if.end122_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end122

if.then121:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #27
  %54 = load i32, ptr @nr_ext_console_drivers, align 4
  %inc = add i32 %54, 1
  store i32 %inc, ptr @nr_ext_console_drivers, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end116.if.end122_crit_edge
  %55 = and i16 %52, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool126.not = icmp eq i16 %55, 0
  br i1 %tobool126.not, label %if.end122.if.end128_crit_edge, label %if.then127

if.end122.if.end128_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end128

if.then127:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #27
  store ptr %newcon, ptr @exclusive_console, align 4
  %56 = load i64, ptr @console_seq, align 8
  store i64 %56, ptr @exclusive_console_stop_seq, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @syslog_lock, i32 noundef 0) #25
  %57 = load i64, ptr @syslog_seq, align 8
  store i64 %57, ptr @console_seq, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.end122.if.end128_crit_edge
  tail call void @console_unlock()
  tail call void @console_sysfs_notify() #25
  %58 = ptrtoint ptr %flags34249 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %flags34249, align 4
  %60 = and i16 %59, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool136.not = icmp eq i16 %60, 0
  %cond = select i1 %tobool136.not, ptr @.str.77, ptr @.str.76
  %index139 = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 9
  %61 = ptrtoint ptr %index139 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %index139, align 2
  %conv140 = sext i16 %62 to i32
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull %cond, ptr noundef %newcon, i32 noundef %conv140) #31
  br i1 %bootcon_enabled.0.off0.lcssa248, label %land.lhs.true144, label %if.end128.cleanup_crit_edge

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

land.lhs.true144:                                 ; preds = %if.end128
  %63 = ptrtoint ptr %flags34249 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %flags34249, align 4
  %65 = and i16 %64, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %65)
  %cmp148 = icmp eq i16 %65, 2
  br i1 %cmp148, label %land.lhs.true150, label %land.lhs.true144.cleanup_crit_edge

land.lhs.true144.cleanup_crit_edge:               ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

land.lhs.true150:                                 ; preds = %land.lhs.true144
  %.b = load i1, ptr @keep_bootcon, align 4
  br i1 %.b, label %land.lhs.true150.cleanup_crit_edge, label %for.cond153.preheader

land.lhs.true150.cleanup_crit_edge:               ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

for.cond153.preheader:                            ; preds = %land.lhs.true150
  %con.2235 = load ptr, ptr @console_drivers, align 4
  %cmp154.not236 = icmp eq ptr %con.2235, null
  br i1 %cmp154.not236, label %for.cond153.preheader.cleanup_crit_edge, label %for.cond153.preheader.for.body156_crit_edge

for.cond153.preheader.for.body156_crit_edge:      ; preds = %for.cond153.preheader
  br label %for.body156

for.cond153.preheader.cleanup_crit_edge:          ; preds = %for.cond153.preheader
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

for.body156:                                      ; preds = %for.inc164.for.body156_crit_edge, %for.cond153.preheader.for.body156_crit_edge
  %con.2237 = phi ptr [ %con.2, %for.inc164.for.body156_crit_edge ], [ %con.2235, %for.cond153.preheader.for.body156_crit_edge ]
  %flags157 = getelementptr inbounds %struct.console, ptr %con.2237, i32 0, i32 8
  %66 = ptrtoint ptr %flags157 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %flags157, align 4
  %68 = and i16 %67, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool160.not = icmp eq i16 %68, 0
  br i1 %tobool160.not, label %for.body156.for.inc164_crit_edge, label %if.then161

for.body156.for.inc164_crit_edge:                 ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc164

if.then161:                                       ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #27
  %call162 = tail call i32 @unregister_console(ptr noundef nonnull %con.2237)
  br label %for.inc164

for.inc164:                                       ; preds = %if.then161, %for.body156.for.inc164_crit_edge
  %next165 = getelementptr inbounds %struct.console, ptr %con.2237, i32 0, i32 14
  %69 = ptrtoint ptr %next165 to i32
  call void @__asan_load4_noabort(i32 %69)
  %con.2 = load ptr, ptr %next165, align 4
  %cmp154.not = icmp eq ptr %con.2, null
  br i1 %cmp154.not, label %for.inc164.cleanup_crit_edge, label %for.inc164.for.body156_crit_edge

for.inc164.for.body156_crit_edge:                 ; preds = %for.inc164
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body156

for.inc164.cleanup_crit_edge:                     ; preds = %for.inc164
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

cleanup:                                          ; preds = %for.inc164.cleanup_crit_edge, %for.cond153.preheader.cleanup_crit_edge, %land.lhs.true150.cleanup_crit_edge, %land.lhs.true144.cleanup_crit_edge, %if.end128.cleanup_crit_edge, %lor.lhs.false70.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %do.end43, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_enable_preferred_console(ptr noundef %newcon, i1 noundef zeroext %user_specified) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i1 %user_specified to i8
  %match = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 7
  %index23 = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 9
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry
  %i.0126 = phi i32 [ 0, %entry ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %c.0124 = phi ptr [ @console_cmdline, %entry ], [ %incdec.ptr, %for.inc.land.rhs_crit_edge ]
  %1 = ptrtoint ptr %c.0124 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %c.0124, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %user_specified1 = getelementptr inbounds %struct.console_cmdline, ptr %c.0124, i32 0, i32 2
  %3 = ptrtoint ptr %user_specified1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %user_specified1, align 4, !range !610
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %0)
  %cmp6.not = icmp eq i8 %4, %0
  br i1 %cmp6.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %match, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %index = getelementptr inbounds %struct.console_cmdline, ptr %c.0124, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %options = getelementptr inbounds %struct.console_cmdline, ptr %c.0124, i32 0, i32 3
  %9 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %options, align 4
  %call = tail call i32 %6(ptr noundef %newcon, ptr noundef %c.0124, i32 noundef %8, ptr noundef %10) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11.not = icmp eq i32 %call, 0
  br i1 %cmp11.not, label %lor.lhs.false.if.end56_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end

lor.lhs.false.if.end56_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end56

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %call18 = tail call i32 @strcmp(ptr noundef %c.0124, ptr noundef %newcon) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end22, label %do.end.for.inc_crit_edge

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc

if.end22:                                         ; preds = %do.end
  %11 = ptrtoint ptr %index23 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %index23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %cmp25 = icmp sgt i16 %12, -1
  br i1 %cmp25, label %land.lhs.true, label %if.then38

land.lhs.true:                                    ; preds = %if.end22
  %conv24113 = zext i16 %12 to i32
  %index29 = getelementptr inbounds %struct.console_cmdline, ptr %c.0124, i32 0, i32 1
  %13 = ptrtoint ptr %index29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv24113)
  %cmp30.not = icmp eq i32 %14, %conv24113
  br i1 %cmp30.not, label %land.lhs.true.if.end42_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end42

if.then38:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #27
  %index39 = getelementptr inbounds %struct.console_cmdline, ptr %c.0124, i32 0, i32 1
  %15 = ptrtoint ptr %index39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index39, align 4
  %conv40 = trunc i32 %16 to i16
  %17 = ptrtoint ptr %index23 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv40, ptr %index23, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %land.lhs.true.if.end42_crit_edge
  %call43 = tail call i32 @_braille_register_console(ptr noundef %newcon, ptr noundef %c.0124) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %setup = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 5
  %18 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %setup, align 4
  %tobool47.not = icmp eq ptr %19, null
  br i1 %tobool47.not, label %if.end46.if.end56_crit_edge, label %land.lhs.true48

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end56

land.lhs.true48:                                  ; preds = %if.end46
  %options50 = getelementptr inbounds %struct.console_cmdline, ptr %c.0124, i32 0, i32 3
  %20 = ptrtoint ptr %options50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %options50, align 4
  %call51 = tail call i32 %19(ptr noundef %newcon, ptr noundef %21) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52.not = icmp eq i32 %call51, 0
  br i1 %cmp52.not, label %land.lhs.true48.if.end56_crit_edge, label %land.lhs.true48.cleanup_crit_edge

land.lhs.true48.cleanup_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

land.lhs.true48.if.end56_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end56

if.end56:                                         ; preds = %land.lhs.true48.if.end56_crit_edge, %if.end46.if.end56_crit_edge, %lor.lhs.false.if.end56_crit_edge
  %flags = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 8
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags, align 4
  %24 = or i16 %23, 4
  store i16 %24, ptr %flags, align 4
  %25 = load i32, ptr @preferred_console, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0126, i32 %25)
  %cmp59 = icmp eq i32 %i.0126, %25
  br i1 %cmp59, label %if.then61, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #27
  %26 = or i16 %23, 6
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %flags, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %do.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0126, 1
  %incdec.ptr = getelementptr %struct.console_cmdline, ptr %c.0124, i32 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %c.0.lcssa = phi ptr [ %incdec.ptr, %for.inc.for.end_crit_edge ], [ %c.0124, %land.rhs.for.end_crit_edge ]
  %flags67 = getelementptr inbounds %struct.console, ptr %newcon, i32 0, i32 8
  %28 = ptrtoint ptr %flags67 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags67, align 4
  %30 = and i16 %29, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool69.not = icmp eq i16 %30, 0
  br i1 %tobool69.not, label %for.end.if.end79_crit_edge, label %land.lhs.true70

for.end.if.end79_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end79

land.lhs.true70:                                  ; preds = %for.end
  %user_specified71 = getelementptr inbounds %struct.console_cmdline, ptr %c.0.lcssa, i32 0, i32 2
  %31 = ptrtoint ptr %user_specified71 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %user_specified71, align 4, !range !610
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %0)
  %cmp76 = icmp eq i8 %32, %0
  br i1 %cmp76, label %land.lhs.true70.cleanup_crit_edge, label %land.lhs.true70.if.end79_crit_edge

land.lhs.true70.if.end79_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end79

land.lhs.true70.cleanup_crit_edge:                ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end79:                                         ; preds = %land.lhs.true70.if.end79_crit_edge, %for.end.if.end79_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %land.lhs.true70.cleanup_crit_edge, %if.then61, %if.end56.cleanup_crit_edge, %land.lhs.true48.cleanup_crit_edge, %if.end42.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end79 ], [ 0, %if.end42.cleanup_crit_edge ], [ %call51, %land.lhs.true48.cleanup_crit_edge ], [ 0, %if.then61 ], [ 0, %if.end56.cleanup_crit_edge ], [ 0, %land.lhs.true70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_sysfs_notify() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_console(ptr noundef %console) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.console, ptr %console, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 4
  %2 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %cond = select i1 %tobool.not, ptr @.str.77, ptr @.str.76
  %index = getelementptr inbounds %struct.console, ptr %console, i32 0, i32 9
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %index, align 2
  %conv1 = sext i16 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull %cond, ptr noundef %console, i32 noundef %conv1) #31
  %call2 = tail call i32 @_braille_unregister_console(ptr noundef %console) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4.not = icmp eq i32 %call2, 0
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 2522) #25
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %5 = tail call ptr @llvm.returnaddress(i32 0) #25
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef nonnull @console_lock_dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %6) #25
  %.b.i = load i1, ptr @console_suspended, align 4
  br i1 %.b.i, label %if.end7.console_lock.exit_crit_edge, label %if.end.i

if.end7.console_lock.exit_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #27
  br label %console_lock.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @console_locked, align 4
  store i1 true, ptr @console_may_schedule, align 4
  br label %console_lock.exit

console_lock.exit:                                ; preds = %if.end.i, %if.end7.console_lock.exit_crit_edge
  %7 = load ptr, ptr @console_drivers, align 4
  %cmp8 = icmp eq ptr %7, %console
  br i1 %cmp8, label %console_lock.exit.if.end24_crit_edge, label %console_lock.exit.for.cond_crit_edge

console_lock.exit.for.cond_crit_edge:             ; preds = %console_lock.exit
  br label %for.cond

console_lock.exit.if.end24_crit_edge:             ; preds = %console_lock.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end24

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %console_lock.exit.for.cond_crit_edge
  %con.0 = phi ptr [ %9, %for.body.for.cond_crit_edge ], [ %7, %console_lock.exit.for.cond_crit_edge ]
  %cmp11.not = icmp eq ptr %con.0, null
  br i1 %cmp11.not, label %out_disable_unlock, label %for.body

for.body:                                         ; preds = %for.cond
  %next13 = getelementptr inbounds %struct.console, ptr %con.0, i32 0, i32 14
  %8 = ptrtoint ptr %next13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next13, align 4
  %cmp14 = icmp eq ptr %9, %console
  br i1 %cmp14, label %if.then16, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.cond

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  %next13.le = getelementptr inbounds %struct.console, ptr %con.0, i32 0, i32 14
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %console_lock.exit.if.end24_crit_edge
  %next13.le.sink = phi ptr [ %next13.le, %if.then16 ], [ @console_drivers, %console_lock.exit.if.end24_crit_edge ]
  %next17 = getelementptr inbounds %struct.console, ptr %console, i32 0, i32 14
  %10 = ptrtoint ptr %next17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next17, align 4
  %12 = ptrtoint ptr %next13.le.sink to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %next13.le.sink, align 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags, align 4
  %15 = and i16 %14, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool28.not = icmp eq i16 %15, 0
  br i1 %tobool28.not, label %if.end24.if.end30_crit_edge, label %if.then29

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end30

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #27
  %16 = load i32, ptr @nr_ext_console_drivers, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr @nr_ext_console_drivers, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end24.if.end30_crit_edge
  %17 = load ptr, ptr @console_drivers, align 4
  %cmp31.not = icmp eq ptr %17, null
  %18 = and i16 %14, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool36.not = icmp eq i16 %18, 0
  %or.cond = select i1 %cmp31.not, i1 true, i1 %tobool36.not
  br i1 %or.cond, label %if.end30.if.end41_crit_edge, label %if.then37

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end41

if.then37:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #27
  %flags38 = getelementptr inbounds %struct.console, ptr %17, i32 0, i32 8
  %19 = ptrtoint ptr %flags38 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags38, align 4
  %21 = or i16 %20, 2
  store i16 %21, ptr %flags38, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end30.if.end41_crit_edge
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags, align 4
  %24 = and i16 %23, -5
  store i16 %24, ptr %flags, align 4
  tail call void @console_unlock()
  tail call void @console_sysfs_notify() #25
  %exit = getelementptr inbounds %struct.console, ptr %console, i32 0, i32 6
  %25 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %exit, align 4
  %tobool46.not = icmp eq ptr %26, null
  br i1 %tobool46.not, label %if.end41.cleanup_crit_edge, label %if.then47

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #27
  %call49 = tail call i32 %26(ptr noundef %console) #25
  br label %cleanup

out_disable_unlock:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #27
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags, align 4
  %29 = and i16 %28, -5
  store i16 %29, ptr %flags, align 4
  tail call void @console_unlock()
  br label %cleanup

cleanup:                                          ; preds = %out_disable_unlock, %if.then47, %if.end41.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %out_disable_unlock ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call49, %if.then47 ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_braille_unregister_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @console_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @n_tty_init() #32
  tail call fastcc void @trace_initcall_level()
  br i1 icmp ult (ptr @__con_initcall_start, ptr @__con_initcall_end), label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %ce.07 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ @__con_initcall_start, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %ce.07 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce.07, align 4
  tail call fastcc void @trace_initcall_start(ptr noundef %1)
  %call2 = tail call i32 %1() #25
  tail call fastcc void @trace_initcall_finish(ptr noundef %1, i32 noundef %call2)
  %incdec.ptr = getelementptr ptr, ptr %ce.07, i32 1
  %cmp = icmp ult ptr %incdec.ptr, @__con_initcall_end
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @n_tty_init() local_unnamed_addr #14 section ".init.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_initcall_level() unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_level, i32 0, i32 1), ptr blockaddress(@trace_initcall_level, %do.body)) #25
          to label %if.end48 [label %do.body], !srcloc !605

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !594

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.144, i32 noundef 108, i32 noundef 9, ptr noundef null) #25
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #27
  %9 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !619
  %call42 = tail call i32 @__traceiter_initcall_level(ptr noundef null, ptr noundef nonnull @.str.80) #25
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !620
  %13 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !594

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.144, i32 noundef 108, i32 noundef 9, ptr noundef null) #25
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !621
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_level, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_level, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_initcall_level.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @trace_initcall_level.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.154, i32 noundef 25, ptr noundef nonnull @.str.155) #25
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !622
  %31 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_initcall_start(ptr noundef %func) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_start, i32 0, i32 1), ptr blockaddress(@trace_initcall_start, %do.body)) #25
          to label %if.end48 [label %do.body], !srcloc !605

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !594

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.144, i32 noundef 108, i32 noundef 9, ptr noundef null) #25
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #27
  %9 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !623
  %call42 = tail call i32 @__traceiter_initcall_start(ptr noundef null, ptr noundef %func) #25
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !624
  %13 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !594

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.144, i32 noundef 108, i32 noundef 9, ptr noundef null) #25
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !621
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_initcall_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @trace_initcall_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.154, i32 noundef 46, ptr noundef nonnull @.str.155) #25
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !622
  %31 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_initcall_finish(ptr noundef %func, i32 noundef %ret) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_finish, i32 0, i32 1), ptr blockaddress(@trace_initcall_finish, %do.body)) #25
          to label %if.end48 [label %do.body], !srcloc !605

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !594

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.144, i32 noundef 108, i32 noundef 9, ptr noundef null) #25
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #27
  %9 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !625
  %call42 = tail call i32 @__traceiter_initcall_finish(ptr noundef null, ptr noundef %func, i32 noundef %ret) #25
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !626
  %13 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !594

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.144, i32 noundef 108, i32 noundef 9, ptr noundef null) #25
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !621
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_finish, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_finish, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_initcall_finish.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @trace_initcall_finish.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.154, i32 noundef 69, ptr noundef nonnull @.str.155) #25
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !622
  %31 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @printk_late_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %con.0113 = load ptr, ptr @console_drivers, align 4
  %cmp.not114 = icmp eq ptr %con.0113, null
  br i1 %cmp.not114, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %con.0115 = phi ptr [ %con.0, %for.inc.for.body_crit_edge ], [ %con.0113, %entry.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.console, ptr %con.0115, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 4
  %2 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc

if.end:                                           ; preds = %for.body
  %cmp.not.i.i = icmp uge ptr %con.0115, @__init_begin
  %cmp1.i.i = icmp ult ptr %con.0115, @__init_end
  %or.cond.i.i = and i1 %cmp.not.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %if.end.do.end_crit_edge, label %init_section_intersects.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end

init_section_intersects.exit:                     ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %con.0115, i32 68
  %cmp2.not.i.i = icmp uge ptr %add.ptr.i.i, @__init_begin
  %cmp3.i.i = icmp ult ptr %add.ptr.i.i, @__init_end
  %spec.select.i.i = and i1 %cmp2.not.i.i, %cmp3.i.i
  br i1 %spec.select.i.i, label %init_section_intersects.exit.do.end_crit_edge, label %lor.lhs.false

init_section_intersects.exit.do.end_crit_edge:    ; preds = %init_section_intersects.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end

lor.lhs.false:                                    ; preds = %init_section_intersects.exit
  %write = getelementptr inbounds %struct.console, ptr %con.0115, i32 0, i32 1
  %3 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write, align 4
  %cmp.not.i.i97 = icmp uge ptr %4, @__init_begin
  %cmp1.i.i98 = icmp ule ptr %4, @__init_end
  %spec.select.i.i99 = and i1 %cmp.not.i.i97, %cmp1.i.i98
  br i1 %spec.select.i.i99, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false4

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %read = getelementptr inbounds %struct.console, ptr %con.0115, i32 0, i32 2
  %5 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read, align 4
  %cmp.not.i.i100 = icmp uge ptr %6, @__init_begin
  %cmp1.i.i101 = icmp ule ptr %6, @__init_end
  %spec.select.i.i102 = and i1 %cmp.not.i.i100, %cmp1.i.i101
  br i1 %spec.select.i.i102, label %lor.lhs.false4.do.end_crit_edge, label %lor.lhs.false7

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %device = getelementptr inbounds %struct.console, ptr %con.0115, i32 0, i32 3
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %cmp.not.i.i103 = icmp uge ptr %8, @__init_begin
  %cmp1.i.i104 = icmp ule ptr %8, @__init_end
  %spec.select.i.i105 = and i1 %cmp.not.i.i103, %cmp1.i.i104
  br i1 %spec.select.i.i105, label %lor.lhs.false7.do.end_crit_edge, label %lor.lhs.false10

lor.lhs.false7.do.end_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %unblank = getelementptr inbounds %struct.console, ptr %con.0115, i32 0, i32 4
  %9 = ptrtoint ptr %unblank to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unblank, align 4
  %cmp.not.i.i106 = icmp uge ptr %10, @__init_begin
  %cmp1.i.i107 = icmp ule ptr %10, @__init_end
  %spec.select.i.i108 = and i1 %cmp.not.i.i106, %cmp1.i.i107
  br i1 %spec.select.i.i108, label %lor.lhs.false10.do.end_crit_edge, label %lor.lhs.false13

lor.lhs.false10.do.end_crit_edge:                 ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %data = getelementptr inbounds %struct.console, ptr %con.0115, i32 0, i32 13
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %cmp.not.i.i109 = icmp uge ptr %12, @__init_begin
  %cmp1.i.i110 = icmp ule ptr %12, @__init_end
  %spec.select.i.i111 = and i1 %cmp.not.i.i109, %cmp1.i.i110
  br i1 %spec.select.i.i111, label %lor.lhs.false13.do.end_crit_edge, label %lor.lhs.false13.for.inc_crit_edge

lor.lhs.false13.for.inc_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.inc

lor.lhs.false13.do.end_crit_edge:                 ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false13.do.end_crit_edge, %lor.lhs.false10.do.end_crit_edge, %lor.lhs.false7.do.end_crit_edge, %lor.lhs.false4.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %init_section_intersects.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %index = getelementptr inbounds %struct.console, ptr %con.0115, i32 0, i32 9
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %index, align 2
  %conv17 = sext i16 %14 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull %con.0115, i32 noundef %conv17) #31
  %call19 = tail call i32 @unregister_console(ptr noundef nonnull %con.0115)
  br label %for.inc

for.inc:                                          ; preds = %do.end, %lor.lhs.false13.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.console, ptr %con.0115, i32 0, i32 14
  %15 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %15)
  %con.0 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %con.0, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 28, ptr noundef nonnull @.str.158, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @console_cpu_notify, i1 noundef zeroext false) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22 = icmp slt i32 %call.i, 0
  br i1 %cmp22, label %do.end35, label %for.end.if.end41_crit_edge, !prof !595

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end41

do.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 3211, i32 noundef 9, ptr noundef null) #25
  br label %if.end41

if.end41:                                         ; preds = %do.end35, %for.end.if.end41_crit_edge
  %call.i112 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.159, i1 noundef zeroext false, ptr noundef nonnull @console_cpu_notify, ptr noundef null, i1 noundef zeroext false) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %cmp51 = icmp slt i32 %call.i112, 0
  br i1 %cmp51, label %do.end68, label %if.end41.if.end74_crit_edge, !prof !595

if.end41.if.end74_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end74

do.end68:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 3214, i32 noundef 9, ptr noundef null) #25
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %if.end41.if.end74_crit_edge
  tail call void @printk_sysctl_init() #32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wake_up_klogd_work_func(ptr nocapture noundef readnone %irq_work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @printk_pending to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end12

if.then:                                          ; preds = %entry
  %9 = tail call ptr @llvm.returnaddress(i32 0) #25
  %10 = ptrtoint ptr %9 to i32
  %call.i = tail call fastcc i32 @__down_trylock_console_sem(i32 noundef %10) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end12

if.end.i:                                         ; preds = %if.then
  %.b.i = load i1, ptr @console_suspended, align 4
  br i1 %.b.i, label %if.then2.i, label %if.then11

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  tail call fastcc void @__up_console_sem(i32 noundef %10) #25
  br label %if.end12

if.then11:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @console_locked, align 4
  store i1 false, ptr @console_may_schedule, align 4
  tail call void @console_unlock()
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then2.i, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %and13 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @__wake_up(ptr noundef nonnull @log_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #25
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @defer_console_output() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1.i = load i1, ptr @__printk_percpu_data_ready, align 1
  br i1 %.b1.i, label %do.body, label %entry.do.end24_crit_edge

entry.do.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end24

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %0 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !627
  %4 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @printk_pending to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %or = or i32 %12, 2
  store i32 %or, ptr %10, align 4
  %13 = load i32, ptr %cpu, align 4
  %arrayidx20 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx20, align 4
  %add21 = add i32 %15, ptrtoint (ptr @wake_up_klogd_work to i32)
  %16 = inttoptr i32 %add21 to ptr
  %call22 = tail call zeroext i1 @irq_work_queue(ptr noundef %16) #25
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !628
  %17 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i25 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i25 to ptr
  %preempt_count.i.i26 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i26, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i26, align 4
  br label %do.end24

do.end24:                                         ; preds = %do.body, %entry.do.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @printk_trigger_flush() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1.i.i = load i1, ptr @__printk_percpu_data_ready, align 1
  br i1 %.b1.i.i, label %do.body.i, label %entry.defer_console_output.exit_crit_edge

entry.defer_console_output.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %defer_console_output.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %0 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !627
  %4 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @printk_pending to i32)
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %or.i = or i32 %12, 2
  store i32 %or.i, ptr %10, align 4
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx20.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx20.i, align 4
  %add21.i = add i32 %15, ptrtoint (ptr @wake_up_klogd_work to i32)
  %16 = inttoptr i32 %add21.i to ptr
  %call22.i = tail call zeroext i1 @irq_work_queue(ptr noundef %16) #25
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !628
  %17 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i25.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i25.i to ptr
  %preempt_count.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i26.i, align 4
  %sub.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i26.i, align 4
  br label %defer_console_output.exit

defer_console_output.exit:                        ; preds = %do.body.i, %entry.defer_console_output.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vprintk_deferred(ptr noundef %fmt, [1 x i32] %args.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vprintk_emit(i32 noundef 0, i32 noundef -2, ptr noundef null, ptr noundef %fmt, [1 x i32] %args.coerce)
  %.b1.i.i = load i1, ptr @__printk_percpu_data_ready, align 1
  br i1 %.b1.i.i, label %do.body.i, label %entry.defer_console_output.exit_crit_edge

entry.defer_console_output.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %defer_console_output.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %0 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !627
  %4 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @printk_pending to i32)
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %or.i = or i32 %12, 2
  store i32 %or.i, ptr %10, align 4
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx20.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx20.i, align 4
  %add21.i = add i32 %15, ptrtoint (ptr @wake_up_klogd_work to i32)
  %16 = inttoptr i32 %add21.i to ptr
  %call22.i = tail call zeroext i1 @irq_work_queue(ptr noundef %16) #25
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !628
  %17 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i25.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i25.i to ptr
  %preempt_count.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i26.i, align 4
  %sub.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i26.i, align 4
  br label %defer_console_output.exit

defer_console_output.exit:                        ; preds = %do.body.i, %entry.defer_console_output.exit_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_printk_deferred(ptr noundef %fmt, ...) local_unnamed_addr #6 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #25
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !596
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vprintk_deferred(ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #25
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__printk_ratelimit(ptr noundef %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @printk_ratelimit_state, ptr noundef %func) #25
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @printk_timed_ratelimit(ptr nocapture noundef %caller_jiffies, i32 noundef %interval_msecs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = ptrtoint ptr %caller_jiffies to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %caller_jiffies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sub = sub i32 %0, %2
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %interval_msecs) #25
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %call2.i)
  %cmp.not = icmp ugt i32 %sub, %call2.i
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = ptrtoint ptr %caller_jiffies to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %caller_jiffies, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kmsg_dump_register(ptr noundef %dumper) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %dump = getelementptr inbounds %struct.kmsg_dumper, ptr %dumper, i32 0, i32 1
  %0 = ptrtoint ptr %dump to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dump, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dump_list_lock) #25
  %registered = getelementptr inbounds %struct.kmsg_dumper, ptr %dumper, i32 0, i32 3
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %registered, align 4, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.then6, label %do.body1.if.end8_crit_edge

do.body1.if.end8_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end8

if.then6:                                         ; preds = %do.body1
  %4 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %registered, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dump_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dumper, ptr noundef %5, ptr noundef nonnull @dump_list) #25
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.if.end8_crit_edge

if.then6.if.end8_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end8

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #27
  %6 = ptrtoint ptr %dumper to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dump_list, ptr %dumper, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %dumper, i32 0, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !629
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %dumper, ptr %5, align 4
  store ptr %dumper, ptr getelementptr inbounds (%struct.list_head, ptr @dump_list, i32 0, i32 1), align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end.i.i, %if.then6.if.end8_crit_edge, %do.body1.if.end8_crit_edge
  %err.0 = phi i32 [ -16, %do.body1.if.end8_crit_edge ], [ 0, %if.then6.if.end8_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dump_list_lock, i32 noundef %call2) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kmsg_dump_unregister(ptr noundef %dumper) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dump_list_lock) #25
  %registered = getelementptr inbounds %struct.kmsg_dumper, ptr %dumper, i32 0, i32 3
  %0 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %registered, align 4, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %registered, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dumper) #25
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_rcu.exit_crit_edge

if.then.list_del_rcu.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #27
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #27
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dumper, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %dumper to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dumper, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dumper, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_rcu.exit, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 0, %list_del_rcu.exit ], [ -22, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dump_list_lock, i32 noundef %call2) #25
  tail call void @synchronize_rcu() #25
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @kmsg_dump_reason_str(i32 noundef %reason) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reason, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 4
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.kmsg_dump_reason_str, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.87, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmsg_dump(i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !630
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #25
  %call.i = tail call zeroext i1 @rcu_is_watching() #25
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.162, i32 noundef 696, ptr noundef nonnull @.str.163) #25
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @kmsg_dump.__warned, align 1
  br i1 %.b31, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @kmsg_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 3424, ptr noundef nonnull @.str.88) #25
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %dumper.041 = load volatile ptr, ptr @dump_list, align 4
  %cmp.not42 = icmp eq ptr %dumper.041, @dump_list
  br i1 %cmp.not42, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.end.for.body_crit_edge
  %dumper.043 = phi ptr [ %dumper.0, %cleanup.for.body_crit_edge ], [ %dumper.041, %do.end.for.body_crit_edge ]
  %max_reason9 = getelementptr inbounds %struct.kmsg_dumper, ptr %dumper.043, i32 0, i32 2
  %4 = ptrtoint ptr %max_reason9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_reason9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp eq i32 %5, 0
  br i1 %cmp10, label %if.then11, label %for.body.if.end13_crit_edge

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end13

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  %6 = load i8, ptr @always_kmsg_dump, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool12.not, i32 2, i32 5
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %for.body.if.end13_crit_edge
  %max_reason.0 = phi i32 [ %cond, %if.then11 ], [ %5, %for.body.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %max_reason.0, i32 %reason)
  %cmp14 = icmp ult i32 %max_reason.0, %reason
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #27
  %dump = getelementptr inbounds %struct.kmsg_dumper, ptr %dumper.043, i32 0, i32 1
  %7 = ptrtoint ptr %dump to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dump, align 4
  tail call void %8(ptr noundef %dumper.043, i32 noundef %reason) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end13.cleanup_crit_edge
  %9 = ptrtoint ptr %dumper.043 to i32
  call void @__asan_load4_noabort(i32 %9)
  %dumper.0 = load volatile ptr, ptr %dumper.043, align 4
  %cmp.not = icmp eq ptr %dumper.0, @dump_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i32 = tail call zeroext i1 @rcu_is_watching() #25
  br i1 %call.i32, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i35

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_unlock.exit

land.lhs.true.i35:                                ; preds = %for.end
  %call1.i33 = tail call i32 @debug_lockdep_rcu_enabled() #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i37

land.lhs.true.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_unlock.exit

land.lhs.true2.i37:                               ; preds = %land.lhs.true.i35
  %.b4.i36 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36, label %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, label %if.then.i38

land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #27
  br label %rcu_read_unlock.exit

if.then.i38:                                      ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.162, i32 noundef 724, ptr noundef nonnull @.str.164) #25
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i38, %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !631
  %10 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i.i.i39 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i39 to ptr
  %preempt_count.i.i.i.i40 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i40, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i40, align 4
  tail call void @rcu_read_unlock_strict() #25
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kmsg_dump_get_line(ptr nocapture noundef %iter, i1 noundef zeroext %syslog, ptr noundef %line, i32 noundef %size, ptr noundef writeonly %len) #0 align 64 {
entry:
  %prefix.i33 = alloca [48 x i8], align 1
  %prefix.i = alloca [48 x i8], align 1
  %info = alloca %struct.printk_info, align 8
  %line_count = alloca i32, align 4
  %r = alloca %struct.printk_record, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = load volatile i32, ptr @clear_seq, align 8
  %and.i = and i32 %0, 1
  %arrayidx.i = getelementptr %struct.latched_seq, ptr @clear_seq, i32 0, i32 1, i32 %and.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %arrayidx.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !597
  %3 = load volatile i32, ptr @clear_seq, align 8
  %cmp.i.i.i.not.i = icmp eq i32 %3, %0
  br i1 %cmp.i.i.i.not.i, label %latched_seq_read_nolock.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body.i

latched_seq_read_nolock.exit:                     ; preds = %do.body.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %info) #25
  %4 = call ptr @memset(ptr %info, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line_count) #25
  %5 = ptrtoint ptr %line_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %line_count, align 4, !annotation !596
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %r) #25
  %6 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 1
  %7 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 2
  %8 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %iter, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %2)
  %cmp = icmp ult i64 %9, %2
  br i1 %cmp, label %if.then, label %latched_seq_read_nolock.exit.if.end_crit_edge

latched_seq_read_nolock.exit.if.end_crit_edge:    ; preds = %latched_seq_read_nolock.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.then:                                          ; preds = %latched_seq_read_nolock.exit
  call void @__sanitizer_cov_trace_pc() #27
  %10 = ptrtoint ptr %iter to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %2, ptr %iter, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %latched_seq_read_nolock.exit.if.end_crit_edge
  %11 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %info, ptr %r, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %line, ptr %6, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %size, ptr %7, align 4
  %tobool.not = icmp eq ptr %line, null
  %14 = load ptr, ptr @prb, align 4
  %15 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %iter, align 8
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call4 = call zeroext i1 @prb_read_valid(ptr noundef %14, i64 noundef %16, ptr noundef nonnull %r) #25
  br i1 %call4, label %if.end6, label %if.then2.out_crit_edge

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #27
  br label %out

if.end6:                                          ; preds = %if.then2
  %17 = load i8, ptr @printk_time, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8 = icmp ne i8 %17, 0
  %18 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %r, align 4
  %text_len2.i = getelementptr inbounds %struct.printk_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %text_len2.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %text_len2.i, align 8
  %conv.i = zext i16 %21 to i32
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %7, align 4
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %prefix.i) #25
  %26 = call ptr @memset(ptr %prefix.i, i32 255, i32 48)
  %27 = call i32 @llvm.umin.i32(i32 %23, i32 %conv.i) #25
  %call.i = call fastcc i32 @info_print_prefix(ptr noundef %19, i1 noundef zeroext %syslog, i1 noundef zeroext %tobool8, ptr noundef nonnull %prefix.i) #25
  %sub28.i = add i32 %23, -1
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end39.i, %if.end6
  %text_len.1.i = phi i32 [ %27, %if.end6 ], [ %sub44.i, %if.end39.i ]
  %text.0.i = phi ptr [ %25, %if.end6 ], [ %add.ptr42.i, %if.end39.i ]
  %truncated.0.off0.i = phi i1 [ false, %if.end6 ], [ %truncated.1.off0.i, %if.end39.i ]
  %len.0.i = phi i32 [ 0, %if.end6 ], [ %add34.i, %if.end39.i ]
  %call6.i = call ptr @memchr(ptr noundef %text.0.i, i32 noundef 10, i32 noundef %text_len.1.i) #34
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #27
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call6.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %text.0.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %if.end12.i

if.else.i:                                        ; preds = %for.cond.i
  br i1 %truncated.0.off0.i, label %if.else.i.for.end.i_crit_edge, label %if.else.i.if.end12.i_crit_edge

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end12.i

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i

if.end12.i:                                       ; preds = %if.else.i.if.end12.i_crit_edge, %if.then8.i
  %line_len.0.i = phi i32 [ %sub.ptr.sub.i, %if.then8.i ], [ %text_len.1.i, %if.else.i.if.end12.i_crit_edge ]
  %add.i = add i32 %len.0.i, %call.i
  %add13.i = add i32 %add.i, 2
  %add15.i = add i32 %add13.i, %text_len.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %23)
  %cmp16.i = icmp ugt i32 %add15.i, %23
  br i1 %cmp16.i, label %if.then18.i, label %if.end12.i.if.end30.i_crit_edge

if.end12.i.if.end30.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end30.i

if.then18.i:                                      ; preds = %if.end12.i
  %add22.i = add i32 %line_len.0.i, %add13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i, i32 %23)
  %cmp23.i = icmp ugt i32 %add22.i, %23
  br i1 %cmp23.i, label %if.then18.i.for.end.i_crit_edge, label %if.end26.i

if.then18.i.for.end.i_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i

if.end26.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #27
  %28 = xor i32 %add.i, -1
  %sub29.i = add i32 %sub28.i, %28
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end26.i, %if.end12.i.if.end30.i_crit_edge
  %text_len.2.i = phi i32 [ %sub29.i, %if.end26.i ], [ %text_len.1.i, %if.end12.i.if.end30.i_crit_edge ]
  %truncated.1.off0.i = phi i1 [ true, %if.end26.i ], [ %truncated.0.off0.i, %if.end12.i.if.end30.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %text.0.i, i32 %call.i
  %29 = call ptr @memmove(ptr %add.ptr.i, ptr %text.0.i, i32 %text_len.2.i)
  %30 = call ptr @memcpy(ptr %text.0.i, ptr %prefix.i, i32 %call.i)
  %add32.i = add i32 %line_len.0.i, %call.i
  %add33.i = add i32 %add32.i, 1
  %add34.i = add i32 %add33.i, %len.0.i
  %cmp35.i = icmp eq i32 %text_len.2.i, %line_len.0.i
  br i1 %cmp35.i, label %if.then37.i, label %if.end39.i

if.then37.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #27
  %arrayidx.i32 = getelementptr i8, ptr %text.0.i, i32 %add32.i
  %31 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 10, ptr %arrayidx.i32, align 1
  br label %for.end.i

if.end39.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #27
  %add.ptr42.i = getelementptr i8, ptr %text.0.i, i32 %add33.i
  %add43.neg.i = xor i32 %line_len.0.i, -1
  %sub44.i = add i32 %text_len.2.i, %add43.neg.i
  br label %for.cond.i

for.end.i:                                        ; preds = %if.then37.i, %if.then18.i.for.end.i_crit_edge, %if.else.i.for.end.i_crit_edge
  %len.1.i = phi i32 [ %add34.i, %if.then37.i ], [ %len.0.i, %if.else.i.for.end.i_crit_edge ], [ %len.0.i, %if.then18.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp45.not.i = icmp eq i32 %23, 0
  br i1 %cmp45.not.i, label %for.end.i.record_print_text.exit_crit_edge, label %if.then47.i

for.end.i.record_print_text.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %record_print_text.exit

if.then47.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #27
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %6, align 4
  %arrayidx49.i = getelementptr i8, ptr %33, i32 %len.1.i
  %34 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx49.i, align 1
  br label %record_print_text.exit

record_print_text.exit:                           ; preds = %if.then47.i, %for.end.i.record_print_text.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %prefix.i) #25
  br label %if.end17

if.else:                                          ; preds = %if.end
  %call11 = call zeroext i1 @prb_read_valid_info(ptr noundef %14, i64 noundef %16, ptr noundef nonnull %info, ptr noundef nonnull %line_count) #25
  br i1 %call11, label %if.end13, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #27
  br label %out

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #27
  %35 = ptrtoint ptr %line_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %line_count, align 4
  %37 = load i8, ptr @printk_time, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool15 = icmp ne i8 %37, 0
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %prefix.i33) #25
  %call.i34 = call fastcc i32 @info_print_prefix(ptr noundef nonnull %info, i1 noundef zeroext %syslog, i1 noundef zeroext %tobool15, ptr noundef nonnull %prefix.i33) #25
  %mul.i = mul i32 %call.i34, %36
  %text_len.i = getelementptr inbounds %struct.printk_info, ptr %info, i32 0, i32 2
  %38 = ptrtoint ptr %text_len.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %text_len.i, align 8
  %conv.i35 = zext i16 %39 to i32
  %add.i36 = add i32 %mul.i, 1
  %add3.i = add i32 %add.i36, %conv.i35
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %prefix.i33) #25
  br label %if.end17

if.end17:                                         ; preds = %if.end13, %record_print_text.exit
  %l.0 = phi i32 [ %len.1.i, %record_print_text.exit ], [ %add3.i, %if.end13 ]
  %40 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %r, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %41, align 8
  %add = add i64 %43, 1
  %44 = ptrtoint ptr %iter to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %add, ptr %iter, align 8
  br label %out

out:                                              ; preds = %if.end17, %if.else.out_crit_edge, %if.then2.out_crit_edge
  %l.1 = phi i32 [ %l.0, %if.end17 ], [ 0, %if.then2.out_crit_edge ], [ 0, %if.else.out_crit_edge ]
  %ret.0.off0 = phi i1 [ true, %if.end17 ], [ false, %if.then2.out_crit_edge ], [ false, %if.else.out_crit_edge ]
  %tobool20.not = icmp eq ptr %len, null
  br i1 %tobool20.not, label %out.if.end22_crit_edge, label %if.then21

out.if.end22_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end22

if.then21:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #27
  %45 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %l.1, ptr %len, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %out.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %r) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line_count) #25
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %info) #25
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kmsg_dump_get_buffer(ptr nocapture noundef %iter, i1 noundef zeroext %syslog, ptr noundef %buf, i32 noundef %size, ptr noundef writeonly %len_out) #0 align 64 {
entry:
  %prefix.i = alloca [48 x i8], align 1
  %info = alloca %struct.printk_info, align 8
  %r = alloca %struct.printk_record, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = load volatile i32, ptr @clear_seq, align 8
  %and.i = and i32 %0, 1
  %arrayidx.i = getelementptr %struct.latched_seq, ptr @clear_seq, i32 0, i32 1, i32 %and.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %arrayidx.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !597
  %3 = load volatile i32, ptr @clear_seq, align 8
  %cmp.i.i.i.not.i = icmp eq i32 %3, %0
  br i1 %cmp.i.i.i.not.i, label %latched_seq_read_nolock.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body.i

latched_seq_read_nolock.exit:                     ; preds = %do.body.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %info) #25
  %4 = call ptr @memset(ptr %info, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %r) #25
  %5 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 1
  %6 = getelementptr inbounds %struct.printk_record, ptr %r, i32 0, i32 2
  %7 = load i8, ptr @printk_time, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool = icmp ne i8 %7, 0
  %tobool2.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool3.not = icmp eq i32 %size, 0
  %or.cond = or i1 %tobool2.not, %tobool3.not
  br i1 %or.cond, label %latched_seq_read_nolock.exit.out_crit_edge, label %if.end

latched_seq_read_nolock.exit.out_crit_edge:       ; preds = %latched_seq_read_nolock.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %out

if.end:                                           ; preds = %latched_seq_read_nolock.exit
  %8 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %iter, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %2)
  %cmp = icmp ult i64 %9, %2
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  %10 = ptrtoint ptr %iter to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %2, ptr %iter, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %11 = load ptr, ptr @prb, align 4
  %12 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %iter, align 8
  %call8 = call zeroext i1 @prb_read_valid_info(ptr noundef %11, i64 noundef %13, ptr noundef nonnull %info, ptr noundef null) #25
  br i1 %call8, label %if.then9, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end17

if.then9:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %info, align 8
  %16 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %iter, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %17)
  %cmp12.not = icmp eq i64 %15, %17
  br i1 %cmp12.not, label %if.then9.if.end17_crit_edge, label %if.then13

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end17

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #27
  %18 = ptrtoint ptr %iter to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %15, ptr %iter, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.then9.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  %19 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %iter, align 8
  %next_seq19 = getelementptr inbounds %struct.kmsg_dump_iter, ptr %iter, i32 0, i32 1
  %21 = ptrtoint ptr %next_seq19 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %next_seq19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp20.not = icmp ult i64 %20, %22
  br i1 %cmp20.not, label %if.end22, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #27
  br label %out

if.end22:                                         ; preds = %if.end17
  %sub = add i32 %size, -1
  %call27 = call fastcc i64 @find_first_fitting_seq(i64 noundef %20, i64 noundef %22, i32 noundef %sub, i1 noundef zeroext %syslog, i1 noundef zeroext %tobool)
  %23 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %info, ptr %r, align 4
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf, ptr %5, align 4
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %size, ptr %6, align 4
  %26 = load ptr, ptr @prb, align 4
  %call2878 = call zeroext i1 @prb_read_valid(ptr noundef %26, i64 noundef %call27, ptr noundef nonnull %r) #25
  br i1 %call2878, label %if.end22.for.body_crit_edge, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

for.body:                                         ; preds = %record_print_text.exit.for.body_crit_edge, %if.end22.for.body_crit_edge
  %len.079 = phi i32 [ %add, %record_print_text.exit.for.body_crit_edge ], [ 0, %if.end22.for.body_crit_edge ]
  %27 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %r, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %28, align 8
  %31 = ptrtoint ptr %next_seq19 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %next_seq19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %32)
  %cmp32.not = icmp ult i64 %30, %32
  br i1 %cmp32.not, label %if.end34, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

if.end34:                                         ; preds = %for.body
  %text_len2.i = getelementptr inbounds %struct.printk_info, ptr %28, i32 0, i32 2
  %33 = ptrtoint ptr %text_len2.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %text_len2.i, align 8
  %conv.i = zext i16 %34 to i32
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %6, align 4
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %prefix.i) #25
  %39 = call ptr @memset(ptr %prefix.i, i32 255, i32 48)
  %40 = call i32 @llvm.umin.i32(i32 %36, i32 %conv.i) #25
  %call.i = call fastcc i32 @info_print_prefix(ptr noundef %28, i1 noundef zeroext %syslog, i1 noundef zeroext %tobool, ptr noundef nonnull %prefix.i) #25
  %sub28.i = add i32 %36, -1
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end39.i, %if.end34
  %text_len.1.i = phi i32 [ %40, %if.end34 ], [ %sub44.i, %if.end39.i ]
  %text.0.i = phi ptr [ %38, %if.end34 ], [ %add.ptr42.i, %if.end39.i ]
  %truncated.0.off0.i = phi i1 [ false, %if.end34 ], [ %truncated.1.off0.i, %if.end39.i ]
  %len.0.i = phi i32 [ 0, %if.end34 ], [ %add34.i, %if.end39.i ]
  %call6.i = call ptr @memchr(ptr noundef %text.0.i, i32 noundef 10, i32 noundef %text_len.1.i) #34
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #27
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call6.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %text.0.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %if.end12.i

if.else.i:                                        ; preds = %for.cond.i
  br i1 %truncated.0.off0.i, label %if.else.i.for.end.i_crit_edge, label %if.else.i.if.end12.i_crit_edge

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end12.i

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i

if.end12.i:                                       ; preds = %if.else.i.if.end12.i_crit_edge, %if.then8.i
  %line_len.0.i = phi i32 [ %sub.ptr.sub.i, %if.then8.i ], [ %text_len.1.i, %if.else.i.if.end12.i_crit_edge ]
  %add.i = add i32 %len.0.i, %call.i
  %add13.i = add i32 %add.i, 2
  %add15.i = add i32 %add13.i, %text_len.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %36)
  %cmp16.i = icmp ugt i32 %add15.i, %36
  br i1 %cmp16.i, label %if.then18.i, label %if.end12.i.if.end30.i_crit_edge

if.end12.i.if.end30.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end30.i

if.then18.i:                                      ; preds = %if.end12.i
  %add22.i = add i32 %line_len.0.i, %add13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i, i32 %36)
  %cmp23.i = icmp ugt i32 %add22.i, %36
  br i1 %cmp23.i, label %if.then18.i.for.end.i_crit_edge, label %if.end26.i

if.then18.i.for.end.i_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i

if.end26.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #27
  %41 = xor i32 %add.i, -1
  %sub29.i = add i32 %sub28.i, %41
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end26.i, %if.end12.i.if.end30.i_crit_edge
  %text_len.2.i = phi i32 [ %sub29.i, %if.end26.i ], [ %text_len.1.i, %if.end12.i.if.end30.i_crit_edge ]
  %truncated.1.off0.i = phi i1 [ true, %if.end26.i ], [ %truncated.0.off0.i, %if.end12.i.if.end30.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %text.0.i, i32 %call.i
  %42 = call ptr @memmove(ptr %add.ptr.i, ptr %text.0.i, i32 %text_len.2.i)
  %43 = call ptr @memcpy(ptr %text.0.i, ptr %prefix.i, i32 %call.i)
  %add32.i = add i32 %line_len.0.i, %call.i
  %add33.i = add i32 %add32.i, 1
  %add34.i = add i32 %add33.i, %len.0.i
  %cmp35.i = icmp eq i32 %text_len.2.i, %line_len.0.i
  br i1 %cmp35.i, label %if.then37.i, label %if.end39.i

if.then37.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #27
  %arrayidx.i73 = getelementptr i8, ptr %text.0.i, i32 %add32.i
  %44 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 10, ptr %arrayidx.i73, align 1
  br label %for.end.i

if.end39.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #27
  %add.ptr42.i = getelementptr i8, ptr %text.0.i, i32 %add33.i
  %add43.neg.i = xor i32 %line_len.0.i, -1
  %sub44.i = add i32 %text_len.2.i, %add43.neg.i
  br label %for.cond.i

for.end.i:                                        ; preds = %if.then37.i, %if.then18.i.for.end.i_crit_edge, %if.else.i.for.end.i_crit_edge
  %len.1.i = phi i32 [ %add34.i, %if.then37.i ], [ %len.0.i, %if.else.i.for.end.i_crit_edge ], [ %len.0.i, %if.then18.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp45.not.i = icmp eq i32 %36, 0
  br i1 %cmp45.not.i, label %for.end.i.record_print_text.exit_crit_edge, label %if.then47.i

for.end.i.record_print_text.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %record_print_text.exit

if.then47.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #27
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  %arrayidx49.i = getelementptr i8, ptr %46, i32 %len.1.i
  %47 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx49.i, align 1
  br label %record_print_text.exit

record_print_text.exit:                           ; preds = %if.then47.i, %for.end.i.record_print_text.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %prefix.i) #25
  %add = add i32 %len.1.i, %len.079
  %add.ptr = getelementptr i8, ptr %buf, i32 %add
  %sub38 = sub i32 %size, %add
  %48 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %info, ptr %r, align 4
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr, ptr %5, align 4
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub38, ptr %6, align 4
  %51 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %info, align 8
  %add41 = add i64 %52, 1
  %53 = load ptr, ptr @prb, align 4
  %call28 = call zeroext i1 @prb_read_valid(ptr noundef %53, i64 noundef %add41, ptr noundef nonnull %r) #25
  br i1 %call28, label %record_print_text.exit.for.body_crit_edge, label %record_print_text.exit.for.end_crit_edge

record_print_text.exit.for.end_crit_edge:         ; preds = %record_print_text.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

record_print_text.exit.for.body_crit_edge:        ; preds = %record_print_text.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body

for.end:                                          ; preds = %record_print_text.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end22.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %if.end22.for.end_crit_edge ], [ %len.079, %for.body.for.end_crit_edge ], [ %add, %record_print_text.exit.for.end_crit_edge ]
  %54 = ptrtoint ptr %next_seq19 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %call27, ptr %next_seq19, align 8
  br label %out

out:                                              ; preds = %for.end, %if.end17.out_crit_edge, %latched_seq_read_nolock.exit.out_crit_edge
  %len.1 = phi i32 [ 0, %if.end17.out_crit_edge ], [ %len.0.lcssa, %for.end ], [ 0, %latched_seq_read_nolock.exit.out_crit_edge ]
  %ret.0.off0 = phi i1 [ false, %if.end17.out_crit_edge ], [ true, %for.end ], [ false, %latched_seq_read_nolock.exit.out_crit_edge ]
  %tobool43.not = icmp eq ptr %len_out, null
  br i1 %tobool43.not, label %out.if.end45_crit_edge, label %if.then44

out.if.end45_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end45

if.then44:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #27
  %55 = ptrtoint ptr %len_out to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %len.1, ptr %len_out, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %out.if.end45_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %r) #25
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %info) #25
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @find_first_fitting_seq(i64 noundef %start_seq, i64 noundef %max_seq, i32 noundef %size, i1 noundef zeroext %syslog, i1 noundef zeroext %time) unnamed_addr #0 align 64 {
entry:
  %prefix.i36 = alloca [48 x i8], align 1
  %prefix.i = alloca [48 x i8], align 1
  %info = alloca %struct.printk_info, align 8
  %line_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %info) #25
  %0 = call ptr @memset(ptr %info, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line_count) #25
  %1 = ptrtoint ptr %line_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %line_count, align 4, !annotation !596
  %2 = load ptr, ptr @prb, align 4
  %call43 = call zeroext i1 @prb_read_valid_info(ptr noundef %2, i64 noundef %start_seq, ptr noundef nonnull %info, ptr noundef nonnull %line_count) #25
  br i1 %call43, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %text_len.i = getelementptr inbounds %struct.printk_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %info, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %max_seq)
  %cmp.not56 = icmp ult i64 %4, %max_seq
  br i1 %cmp.not56, label %for.body.lr.ph.if.end_crit_edge, label %for.body.lr.ph.for.end_crit_edge

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.body.lr.ph.if.end_crit_edge:                  ; preds = %for.body.lr.ph
  br label %if.end

for.body:                                         ; preds = %if.end
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %info, align 8
  %cmp.not = icmp ult i64 %6, %max_seq
  br i1 %cmp.not, label %for.body.if.end_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.body.lr.ph.if.end_crit_edge
  %len.04457 = phi i32 [ %add, %for.body.if.end_crit_edge ], [ 0, %for.body.lr.ph.if.end_crit_edge ]
  %7 = ptrtoint ptr %line_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %line_count, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %prefix.i) #25
  %call.i = call fastcc i32 @info_print_prefix(ptr noundef nonnull %info, i1 noundef zeroext %syslog, i1 noundef zeroext %time, ptr noundef nonnull %prefix.i) #25
  %mul.i = mul i32 %call.i, %8
  %9 = ptrtoint ptr %text_len.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %text_len.i, align 8
  %conv.i = zext i16 %10 to i32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %prefix.i) #25
  %add.i = add i32 %len.04457, 1
  %add3.i = add i32 %add.i, %mul.i
  %add = add i32 %add3.i, %conv.i
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %info, align 8
  %add6 = add i64 %12, 1
  %13 = load ptr, ptr @prb, align 4
  %call = call zeroext i1 @prb_read_valid_info(ptr noundef %13, i64 noundef %add6, ptr noundef nonnull %info, ptr noundef nonnull %line_count) #25
  br i1 %call, label %for.body, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 0, %for.body.lr.ph.for.end_crit_edge ], [ %add, %if.end.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %seq.0.lcssa = phi i64 [ %start_seq, %entry.for.end_crit_edge ], [ %start_seq, %for.body.lr.ph.for.end_crit_edge ], [ %add6, %if.end.for.end_crit_edge ], [ %add6, %for.body.for.end_crit_edge ]
  %14 = call i64 @llvm.umin.i64(i64 %seq.0.lcssa, i64 %max_seq)
  %15 = load ptr, ptr @prb, align 4
  %call1149 = call zeroext i1 @prb_read_valid_info(ptr noundef %15, i64 noundef %start_seq, ptr noundef nonnull %info, ptr noundef nonnull %line_count) #25
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.lcssa, i32 %size)
  %cmp13.not50 = icmp ugt i32 %len.0.lcssa, %size
  %or.cond51 = select i1 %call1149, i1 %cmp13.not50, i1 false
  br i1 %or.cond51, label %lor.lhs.false.lr.ph, label %for.end.for.end24_crit_edge

for.end.for.end24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end24

lor.lhs.false.lr.ph:                              ; preds = %for.end
  %text_len.i39 = getelementptr inbounds %struct.printk_info, ptr %info, i32 0, i32 2
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %info, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %14)
  %cmp15.not61 = icmp ult i64 %17, %14
  br i1 %cmp15.not61, label %lor.lhs.false.lr.ph.if.end17_crit_edge, label %lor.lhs.false.lr.ph.for.end24_crit_edge

lor.lhs.false.lr.ph.for.end24_crit_edge:          ; preds = %lor.lhs.false.lr.ph
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end24

lor.lhs.false.lr.ph.if.end17_crit_edge:           ; preds = %lor.lhs.false.lr.ph
  br label %if.end17

lor.lhs.false:                                    ; preds = %if.end17
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %info, align 8
  %cmp15.not = icmp ult i64 %19, %14
  br i1 %cmp15.not, label %lor.lhs.false.if.end17_crit_edge, label %lor.lhs.false.for.end24_crit_edge

lor.lhs.false.for.end24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end24

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end17

if.end17:                                         ; preds = %lor.lhs.false.if.end17_crit_edge, %lor.lhs.false.lr.ph.if.end17_crit_edge
  %len.15262 = phi i32 [ %sub, %lor.lhs.false.if.end17_crit_edge ], [ %len.0.lcssa, %lor.lhs.false.lr.ph.if.end17_crit_edge ]
  %20 = ptrtoint ptr %line_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %line_count, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %prefix.i36) #25
  %call.i37 = call fastcc i32 @info_print_prefix(ptr noundef nonnull %info, i1 noundef zeroext %syslog, i1 noundef zeroext %time, ptr noundef nonnull %prefix.i36) #25
  %mul.i38 = mul i32 %call.i37, %21
  %22 = ptrtoint ptr %text_len.i39 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %text_len.i39, align 8
  %conv.i40 = zext i16 %23 to i32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %prefix.i36) #25
  %24 = xor i32 %mul.i38, -1
  %add3.i42.neg = add i32 %len.15262, %24
  %sub = sub i32 %add3.i42.neg, %conv.i40
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %info, align 8
  %add23 = add i64 %26, 1
  %27 = load ptr, ptr @prb, align 4
  %call11 = call zeroext i1 @prb_read_valid_info(ptr noundef %27, i64 noundef %add23, ptr noundef nonnull %info, ptr noundef nonnull %line_count) #25
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %size)
  %cmp13.not = icmp ugt i32 %sub, %size
  %or.cond = select i1 %call11, i1 %cmp13.not, i1 false
  br i1 %or.cond, label %lor.lhs.false, label %if.end17.for.end24_crit_edge

if.end17.for.end24_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end24

for.end24:                                        ; preds = %if.end17.for.end24_crit_edge, %lor.lhs.false.for.end24_crit_edge, %lor.lhs.false.lr.ph.for.end24_crit_edge, %for.end.for.end24_crit_edge
  %seq.1.lcssa = phi i64 [ %start_seq, %for.end.for.end24_crit_edge ], [ %start_seq, %lor.lhs.false.lr.ph.for.end24_crit_edge ], [ %add23, %if.end17.for.end24_crit_edge ], [ %add23, %lor.lhs.false.for.end24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line_count) #25
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %info) #25
  ret i64 %seq.1.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmsg_dump_rewind(ptr nocapture noundef writeonly %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = load volatile i32, ptr @clear_seq, align 8
  %and.i = and i32 %0, 1
  %arrayidx.i = getelementptr %struct.latched_seq, ptr @clear_seq, i32 0, i32 1, i32 %and.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %arrayidx.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !597
  %3 = load volatile i32, ptr @clear_seq, align 8
  %cmp.i.i.i.not.i = icmp eq i32 %3, %0
  br i1 %cmp.i.i.i.not.i, label %latched_seq_read_nolock.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body.i

latched_seq_read_nolock.exit:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #27
  %4 = ptrtoint ptr %iter to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %2, ptr %iter, align 8
  %5 = load ptr, ptr @prb, align 4
  %call1 = tail call i64 @prb_next_seq(ptr noundef %5) #25
  %next_seq = getelementptr inbounds %struct.kmsg_dump_iter, ptr %iter, i32 0, i32 1
  %6 = ptrtoint ptr %next_seq to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call1, ptr %next_seq, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__printk_wait_on_cpu_lock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !632
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #25, !srcloc !633
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @printk_cpulock_owner, i32 noundef 4) #25
  %0 = load volatile i32, ptr @printk_cpulock_owner, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %do.end6, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body

do.end6:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__printk_cpu_trylock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @printk_cpulock_owner, i32 noundef 4) #25
  tail call void @llvm.prefetch.p0(ptr nonnull @printk_cpulock_owner, i32 1, i32 3, i32 1) #25
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @printk_cpulock_owner, ptr nonnull @printk_cpulock_owner, i32 -1, i32 %3, ptr nonnull elementtype(i32) @printk_cpulock_owner) #25, !srcloc !634
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg_acquire.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body.i.i.i

atomic_cmpxchg_acquire.exit:                      ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !635
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult3.i.i.i)
  %cmp = icmp eq i32 %asmresult3.i.i.i, -1
  br i1 %cmp, label %atomic_cmpxchg_acquire.exit.cleanup_crit_edge, label %if.else

atomic_cmpxchg_acquire.exit.cleanup_crit_edge:    ; preds = %atomic_cmpxchg_acquire.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.else:                                          ; preds = %atomic_cmpxchg_acquire.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i, i32 %3)
  %cmp3 = icmp eq i32 %asmresult3.i.i.i, %3
  br i1 %cmp3, label %if.then4, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #27
  %call.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @printk_cpulock_nested, i32 noundef 4) #25
  tail call void @llvm.prefetch.p0(ptr nonnull @printk_cpulock_nested, i32 1, i32 3, i32 1) #25
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @printk_cpulock_nested, ptr nonnull @printk_cpulock_nested, i32 1, ptr nonnull elementtype(i32) @printk_cpulock_nested) #25, !srcloc !636
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.else.cleanup_crit_edge, %atomic_cmpxchg_acquire.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 1, %atomic_cmpxchg_acquire.exit.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__printk_cpu_unlock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @printk_cpulock_nested, i32 noundef 4) #25
  %0 = load volatile i32, ptr @printk_cpulock_nested, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @printk_cpulock_nested, i32 noundef 4) #25
  tail call void @llvm.prefetch.p0(ptr nonnull @printk_cpulock_nested, i32 1, i32 3, i32 1) #25
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @printk_cpulock_nested, ptr nonnull @printk_cpulock_nested, i32 1, ptr nonnull elementtype(i32) @printk_cpulock_nested) #25, !srcloc !637
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %call.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @printk_cpulock_owner, i32 noundef 4) #25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #25, !srcloc !638
  store volatile i32 -1, ptr @printk_cpulock_owner, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_console(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_console, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_msg, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.91, ptr noundef %add.ptr) #25
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #13

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @devkmsg_emit(i32 noundef %facility, i32 noundef %level, ptr nocapture readnone %fmt, ...) unnamed_addr #6 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #25
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !596
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vprintk_emit(i32 noundef %facility, i32 noundef %level, ptr noundef null, ptr noundef nonnull @.str.98, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #25
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #21

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @log_buf_len_update(i64 noundef %size) unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %size)
  %cmp = icmp ugt i64 %size, 2147483648
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #31
  br label %cond.false18

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %tobool.not = icmp eq i64 %size, 0
  %extract.t = trunc i64 %size to i32
  br i1 %tobool.not, label %if.end.if.end29_crit_edge, label %if.end.cond.false18_crit_edge

if.end.cond.false18_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %cond.false18

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end29

cond.false18:                                     ; preds = %if.end.cond.false18_crit_edge, %if.end.thread
  %size.addr.045.off0 = phi i32 [ -2147483648, %if.end.thread ], [ %extract.t, %if.end.cond.false18_crit_edge ]
  %sub.i40 = add i32 %size.addr.045.off0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i40)
  %tobool.not.i.i.i41 = icmp eq i32 %sub.i40, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub.i40, i1 true) #25, !range !601
  %sub.i.i.i = sub nuw nsw i32 32, %0
  %sub.i.i.op.i42 = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i41, i32 1, i32 %sub.i.i.op.i42
  %1 = load i32, ptr @log_buf_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %1)
  %cmp25 = icmp ugt i32 %shl.i, %1
  br i1 %cmp25, label %if.then27, label %cond.false18.if.end29_crit_edge

cond.false18.if.end29_crit_edge:                  ; preds = %cond.false18
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end29

if.then27:                                        ; preds = %cond.false18
  call void @__sanitizer_cov_trace_pc() #27
  store i32 %shl.i, ptr @new_log_buf_len, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %cond.false18.if.end29_crit_edge, %if.end.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prb_record_text_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_syslog(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @info_print_prefix(ptr nocapture noundef readonly %info, i1 noundef zeroext %syslog, i1 noundef zeroext %time, ptr nocapture noundef writeonly %buf) unnamed_addr #0 align 64 {
entry:
  %caller.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %syslog, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  %facility = getelementptr inbounds %struct.printk_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %facility to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %facility, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 3
  %level = getelementptr inbounds %struct.printk_info, ptr %info, i32 0, i32 4
  %2 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %level, align 1
  %bf.clear = and i8 %bf.load, 7
  %conv2 = zext i8 %bf.clear to i32
  %or = or i32 %shl, %conv2
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.126, i32 noundef %or) #25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %call.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  br i1 %time, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  %ts_nsec = getelementptr inbounds %struct.printk_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %ts_nsec to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ts_nsec, align 8
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.0
  %conv14.i = trunc i64 %4 to i32
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %4, i32 0) #29, !srcloc !598
  %asmresult.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %4, i64 %asmresult.i.i, i32 %asmresult4.i.i) #29, !srcloc !599
  %asmresult10.i.i = extractvalue { i64, i32 } %6, 0
  %div158262.i = lshr i64 %asmresult10.i.i, 29
  %conv159.i = trunc i64 %div158262.i to i32
  %mul160.neg.i = mul i32 %conv159.i, -1000000000
  %sub161.i = add i32 %mul160.neg.i, %conv14.i
  %div181.i = udiv i32 %sub161.i, 1000
  %call182.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.127, i32 noundef %conv159.i, i32 noundef %div181.i) #25
  %add = add i32 %call182.i, %len.0
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %len.1 = phi i32 [ %add, %if.then4 ], [ %len.0, %if.end.if.end6_crit_edge ]
  %caller_id = getelementptr inbounds %struct.printk_info, ptr %info, i32 0, i32 5
  %7 = ptrtoint ptr %caller_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %caller_id, align 4
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %len.1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %caller.i) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not.i = icmp sgt i32 %8, -1
  %cond.i = select i1 %tobool.not.i, i32 84, i32 67
  %and1.i = and i32 %8, 2147483647
  %9 = call ptr @memset(ptr %caller.i, i32 255, i32 12)
  %call.i24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %caller.i, i32 noundef 12, ptr noundef nonnull @.str.128, i32 noundef %cond.i, i32 noundef %and1.i) #25
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr7, ptr noundef nonnull @.str.129, ptr noundef nonnull %caller.i) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %caller.i) #25
  %add9 = add i32 %call3.i, %len.1
  %inc = add i32 %add9, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %add9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 32, ptr %arrayidx, align 1
  %arrayidx10 = getelementptr i8, ptr %buf, i32 %inc
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx10, align 1
  ret i32 %inc
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_braille_console_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msg_add_dict_text(ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %val) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %size
  %cmp.i26.i = icmp ugt ptr %add.ptr.i, %buf
  br i1 %cmp.i26.i, label %if.then.i28.i, label %if.end.msg_add_ext_text.exit_crit_edge

if.end.msg_add_ext_text.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %msg_add_ext_text.exit

if.then.i28.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  %incdec.ptr.i27.i = getelementptr i8, ptr %buf, i32 1
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 32, ptr %buf, align 1
  br label %msg_add_ext_text.exit

msg_add_ext_text.exit:                            ; preds = %if.then.i28.i, %if.end.msg_add_ext_text.exit_crit_edge
  %p.3.i = phi ptr [ %incdec.ptr.i27.i, %if.then.i28.i ], [ %buf, %if.end.msg_add_ext_text.exit_crit_edge ]
  %sub.ptr.lhs.cast12.i = ptrtoint ptr %p.3.i to i32
  %sub.ptr.rhs.cast13.i = ptrtoint ptr %buf to i32
  %sub.ptr.sub14.i = sub i32 %sub.ptr.lhs.cast12.i, %sub.ptr.rhs.cast13.i
  %add.ptr = getelementptr i8, ptr %buf, i32 %sub.ptr.sub14.i
  %call2 = tail call i32 @strlen(ptr noundef %key) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp34.not.i = icmp eq i32 %call2, 0
  br i1 %cmp34.not.i, label %msg_add_ext_text.exit.for.end.i_crit_edge, label %for.body.lr.ph.i

msg_add_ext_text.exit.for.end.i_crit_edge:        ; preds = %msg_add_ext_text.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %msg_add_ext_text.exit
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.036.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %p.035.i = phi ptr [ %add.ptr, %for.body.lr.ph.i ], [ %p.2.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %key, i32 %i.036.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %3 = add i8 %2, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %3)
  %4 = icmp ult i8 %3, -95
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %2)
  %cmp8.i = icmp eq i8 %2, 92
  %or.cond25.i = or i1 %cmp8.i, %4
  br i1 %or.cond25.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #27
  %conv.i = zext i8 %2 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %p.035.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.035.i, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull @.str.149, i32 noundef %conv.i) #25
  %add.ptr11.i = getelementptr i8, ptr %p.035.i, i32 %call.i
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  %cmp.i.i = icmp ult ptr %p.035.i, %add.ptr.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #27
  %incdec.ptr.i.i = getelementptr i8, ptr %p.035.i, i32 1
  %5 = ptrtoint ptr %p.035.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %p.035.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.else.i.if.end.i_crit_edge, %if.then.i
  %p.2.i = phi ptr [ %add.ptr11.i, %if.then.i ], [ %incdec.ptr.i.i, %if.then.i.i ], [ %p.035.i, %if.else.i.if.end.i_crit_edge ]
  %inc.i = add nuw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call2
  br i1 %exitcond.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %msg_add_ext_text.exit.for.end.i_crit_edge
  %p.0.lcssa.i = phi ptr [ %add.ptr, %msg_add_ext_text.exit.for.end.i_crit_edge ], [ %p.2.i, %if.end.i.for.end.i_crit_edge ]
  %cmp.i26.i23 = icmp ult ptr %p.0.lcssa.i, %add.ptr.i
  br i1 %cmp.i26.i23, label %if.then.i28.i25, label %for.end.i.for.body.lr.ph.i34_crit_edge

for.end.i.for.body.lr.ph.i34_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body.lr.ph.i34

if.then.i28.i25:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #27
  %incdec.ptr.i27.i24 = getelementptr i8, ptr %p.0.lcssa.i, i32 1
  %6 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 61, ptr %p.0.lcssa.i, align 1
  br label %for.body.lr.ph.i34

for.body.lr.ph.i34:                               ; preds = %if.then.i28.i25, %for.end.i.for.body.lr.ph.i34_crit_edge
  %p.3.i26 = phi ptr [ %incdec.ptr.i27.i24, %if.then.i28.i25 ], [ %p.0.lcssa.i, %for.end.i.for.body.lr.ph.i34_crit_edge ]
  %sub.ptr.lhs.cast12.i27 = ptrtoint ptr %p.3.i26 to i32
  %sub.ptr.rhs.cast13.i28 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub14.i29 = sub i32 %sub.ptr.lhs.cast12.i27, %sub.ptr.rhs.cast13.i28
  %add = add i32 %sub.ptr.sub14.i29, %sub.ptr.sub14.i
  %add.ptr4 = getelementptr i8, ptr %buf, i32 %add
  %sub.ptr.lhs.cast.i33 = ptrtoint ptr %add.ptr.i to i32
  br label %for.body.i40

for.body.i40:                                     ; preds = %if.end.i54.for.body.i40_crit_edge, %for.body.lr.ph.i34
  %i.036.i35 = phi i32 [ 0, %for.body.lr.ph.i34 ], [ %inc.i52, %if.end.i54.for.body.i40_crit_edge ]
  %p.035.i36 = phi ptr [ %add.ptr4, %for.body.lr.ph.i34 ], [ %p.2.i51, %if.end.i54.for.body.i40_crit_edge ]
  %arrayidx.i37 = getelementptr i8, ptr %val, i32 %i.036.i35
  %7 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i37, align 1
  %9 = add i8 %8, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %9)
  %10 = icmp ult i8 %9, -95
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %8)
  %cmp8.i38 = icmp eq i8 %8, 92
  %or.cond25.i39 = or i1 %cmp8.i38, %10
  br i1 %or.cond25.i39, label %if.then.i46, label %if.else.i48

if.then.i46:                                      ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #27
  %conv.i41 = zext i8 %8 to i32
  %sub.ptr.rhs.cast.i42 = ptrtoint ptr %p.035.i36 to i32
  %sub.ptr.sub.i43 = sub i32 %sub.ptr.lhs.cast.i33, %sub.ptr.rhs.cast.i42
  %call.i44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.035.i36, i32 noundef %sub.ptr.sub.i43, ptr noundef nonnull @.str.149, i32 noundef %conv.i41) #25
  %add.ptr11.i45 = getelementptr i8, ptr %p.035.i36, i32 %call.i44
  br label %if.end.i54

if.else.i48:                                      ; preds = %for.body.i40
  %cmp.i.i47 = icmp ult ptr %p.035.i36, %add.ptr.i
  br i1 %cmp.i.i47, label %if.then.i.i50, label %if.else.i48.if.end.i54_crit_edge

if.else.i48.if.end.i54_crit_edge:                 ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end.i54

if.then.i.i50:                                    ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #27
  %incdec.ptr.i.i49 = getelementptr i8, ptr %p.035.i36, i32 1
  %11 = ptrtoint ptr %p.035.i36 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %8, ptr %p.035.i36, align 1
  br label %if.end.i54

if.end.i54:                                       ; preds = %if.then.i.i50, %if.else.i48.if.end.i54_crit_edge, %if.then.i46
  %p.2.i51 = phi ptr [ %add.ptr11.i45, %if.then.i46 ], [ %incdec.ptr.i.i49, %if.then.i.i50 ], [ %p.035.i36, %if.else.i48.if.end.i54_crit_edge ]
  %inc.i52 = add nuw i32 %i.036.i35, 1
  %exitcond.not.i53 = icmp eq i32 %inc.i52, %call
  br i1 %exitcond.not.i53, label %for.end.i57, label %if.end.i54.for.body.i40_crit_edge

if.end.i54.for.body.i40_crit_edge:                ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #27
  br label %for.body.i40

for.end.i57:                                      ; preds = %if.end.i54
  %cmp.i26.i56 = icmp ult ptr %p.2.i51, %add.ptr.i
  br i1 %cmp.i26.i56, label %if.then.i28.i59, label %for.end.i57.msg_add_ext_text.exit64_crit_edge

for.end.i57.msg_add_ext_text.exit64_crit_edge:    ; preds = %for.end.i57
  call void @__sanitizer_cov_trace_pc() #27
  br label %msg_add_ext_text.exit64

if.then.i28.i59:                                  ; preds = %for.end.i57
  call void @__sanitizer_cov_trace_pc() #27
  %incdec.ptr.i27.i58 = getelementptr i8, ptr %p.2.i51, i32 1
  %12 = ptrtoint ptr %p.2.i51 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 10, ptr %p.2.i51, align 1
  br label %msg_add_ext_text.exit64

msg_add_ext_text.exit64:                          ; preds = %if.then.i28.i59, %for.end.i57.msg_add_ext_text.exit64_crit_edge
  %p.3.i60 = phi ptr [ %incdec.ptr.i27.i58, %if.then.i28.i59 ], [ %p.2.i51, %for.end.i57.msg_add_ext_text.exit64_crit_edge ]
  %sub.ptr.lhs.cast12.i61 = ptrtoint ptr %p.3.i60 to i32
  %sub.ptr.rhs.cast13.i62 = ptrtoint ptr %add.ptr4 to i32
  %sub.ptr.sub14.i63 = sub i32 %add, %sub.ptr.rhs.cast13.i62
  %add7 = add i32 %sub.ptr.sub14.i63, %sub.ptr.lhs.cast12.i61
  br label %cleanup

cleanup:                                          ; preds = %msg_add_ext_text.exit64, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add7, %msg_add_ext_text.exit64 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_console_rcuidle(i32 noundef %len) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_console, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_console_rcuidle, %do.body)) #25
          to label %if.end53 [label %do.body], !srcloc !605

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !594

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.144, i32 noundef 108, i32 noundef 9, ptr noundef null) #25
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end53_crit_edge, label %if.end

cpu_online.exit.if.end53_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end53

if.end:                                           ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %12, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end35_crit_edge, label %land.rhs

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end35

land.rhs:                                         ; preds = %if.end
  %.b1 = load i1, ptr @trace_console_rcuidle.__already_done, align 1
  br i1 %.b1, label %land.rhs.if.end35_crit_edge, label %if.then12, !prof !594

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end35

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @trace_console_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.151, i32 noundef 33, i32 noundef 9, ptr noundef null) #25
  br label %if.end35

if.end35:                                         ; preds = %if.then12, %land.rhs.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %13 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %16, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !639
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #25
  tail call void @rcu_irq_enter_irqson() #25
  %17 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_console, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end35.__traceiter_console.exit_crit_edge, label %if.end35.do.body2.i_crit_edge

if.end35.do.body2.i_crit_edge:                    ; preds = %if.end35
  br label %do.body2.i

if.end35.__traceiter_console.exit_crit_edge:      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #27
  br label %__traceiter_console.exit

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end35.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %17, %if.end35.do.body2.i_crit_edge ]
  %18 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  tail call void %19(ptr noundef %21, ptr noundef nonnull @console_unlock.text, i32 noundef %len) #25
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %22 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %23, null
  br i1 %tobool9.not.i, label %do.body2.i.__traceiter_console.exit_crit_edge, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %do.body2.i

do.body2.i.__traceiter_console.exit_crit_edge:    ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #27
  br label %__traceiter_console.exit

__traceiter_console.exit:                         ; preds = %do.body2.i.__traceiter_console.exit_crit_edge, %if.end35.__traceiter_console.exit_crit_edge
  tail call void @rcu_irq_exit_irqson() #25
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %call.i) #25
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !640
  %24 = tail call i32 @llvm.read_register.i32(metadata !584) #25
  %and.i.i.i2 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %27, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end53

if.end53:                                         ; preds = %__traceiter_console.exit, %cpu_online.exit.if.end53_crit_edge, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_braille_register_console(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_initcall_level(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_initcall_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_initcall_finish(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @console_cpu_notify(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @cpuhp_tasks_frozen to i32))
  %0 = load i8, ptr @cpuhp_tasks_frozen, align 1, !range !610
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end3

if.then:                                          ; preds = %entry
  %1 = tail call ptr @llvm.returnaddress(i32 0) #25
  %2 = ptrtoint ptr %1 to i32
  %call.i = tail call fastcc i32 @__down_trylock_console_sem(i32 noundef %2) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #27
  br label %if.end3

if.end.i:                                         ; preds = %if.then
  %.b.i = load i1, ptr @console_suspended, align 4
  br i1 %.b.i, label %if.then2.i, label %if.then2

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  tail call fastcc void @__up_console_sem(i32 noundef %2) #25
  br label %if.end3

if.then2:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #27
  store i1 true, ptr @console_locked, align 4
  store i1 false, ptr @console_may_schedule, align 4
  tail call void @console_unlock()
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then2.i, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @printk_sysctl_init() local_unnamed_addr #14 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #27
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #27
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #23

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #21

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #25

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #26 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 232)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #26 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 232)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind readonly }
attributes #18 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #22 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #23 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #24 = { argmemonly nofree nounwind readonly willreturn }
attributes #25 = { nounwind }
attributes #26 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #27 = { nomerge }
attributes #28 = { nobuiltin }
attributes #29 = { nounwind readnone }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { cold }
attributes #32 = { cold nounwind }
attributes #33 = { nounwind allocsize(2) }
attributes #34 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !36, !38, !40, !42, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !151, !152, !154, !156, !158, !159, !161, !163, !164, !165, !166, !167, !168, !169, !170, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !190, !192, !194, !196, !197, !199, !201, !202, !203, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !229, !230, !231, !233, !234, !235, !236, !237, !239, !241, !242, !243, !244, !246, !248, !250, !252, !254, !256, !257, !259, !261, !263, !265, !267, !268, !270, !272, !274, !276, !278, !280, !282, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !340, !342, !343, !345, !347, !349, !351, !353, !354, !355, !357, !358, !360, !361, !362, !363, !364, !365, !366, !367, !369, !371, !373, !375, !377, !379, !381, !382, !384, !386, !388, !390, !391, !393, !394, !396, !397, !398, !399, !400, !402, !404, !405, !406, !408, !410, !411, !413, !414, !415, !416, !418, !419, !420, !421, !423, !424, !425, !427, !428, !429, !430, !432, !433, !434, !435, !436, !437, !439, !440, !441, !442, !443, !445, !447, !448, !450, !452, !453, !454, !455, !456, !458, !459, !460, !462, !464, !466, !468, !469, !470, !471, !472, !473, !474, !475, !477, !479, !481, !483, !484, !486, !488, !490, !492, !493, !495, !497, !498, !500, !502, !504, !506, !507, !508, !509, !511, !512, !514, !516, !518, !519, !521, !523, !525, !527, !529, !531, !533, !535, !536, !537, !538, !540, !541, !542, !543, !545, !547, !548, !549, !550, !552, !553, !555, !556, !558, !559, !560, !561, !563, !565, !567, !569, !570, !572, !573, !575, !576, !577, !579, !580, !582}
!llvm.named.register.sp = !{!584}
!llvm.module.flags = !{!585, !586, !587, !588, !589, !590, !591, !592}
!llvm.ident = !{!593}

!0 = !{ptr @__tracepoint_console, !1, !"__tracepoint_console", i1 false, i1 false}
!1 = !{!"../include/trace/events/printk.h", i32 10, i32 1}
!2 = !{ptr @__tracepoint_ptr_console, !1, !"__tracepoint_ptr_console", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_console, !1, !"__SCK__tp_func_console", i1 false, i1 false}
!4 = !{ptr @event_class_console, !1, !"event_class_console", i1 false, i1 false}
!5 = !{ptr @event_console, !1, !"event_console", i1 false, i1 false}
!6 = !{ptr @__event_console, !1, !"__event_console", i1 false, i1 false}
!7 = !{ptr @__bpf_trace_tp_map_console, !1, !"__bpf_trace_tp_map_console", i1 false, i1 false}
!8 = !{ptr @console_printk, !9, !"console_printk", i1 false, i1 false}
!9 = !{!"../kernel/printk/printk.c", i32 63, i32 5}
!10 = !{ptr @__ksymtab_console_printk, !11, !"__ksymtab_console_printk", i1 false, i1 false}
!11 = !{!"../kernel/printk/printk.c", i32 69, i32 1}
!12 = !{ptr @ignore_console_lock_warning, !13, !"ignore_console_lock_warning", i1 false, i1 false}
!13 = !{!"../kernel/printk/printk.c", i32 71, i32 10}
!14 = !{ptr @__ksymtab_ignore_console_lock_warning, !15, !"__ksymtab_ignore_console_lock_warning", i1 false, i1 false}
!15 = !{!"../kernel/printk/printk.c", i32 72, i32 1}
!16 = !{ptr @__ksymtab_oops_in_progress, !17, !"__ksymtab_oops_in_progress", i1 false, i1 false}
!17 = !{!"../kernel/printk/printk.c", i32 79, i32 1}
!18 = !{ptr @__ksymtab_console_drivers, !19, !"__ksymtab_console_drivers", i1 false, i1 false}
!19 = !{!"../kernel/printk/printk.c", i32 88, i32 1}
!20 = !{ptr @__setup_control_devkmsg, !21, !"__setup_control_devkmsg", i1 false, i1 false}
!21 = !{!"../kernel/printk/printk.c", i32 171, i32 1}
!22 = !{ptr @devkmsg_log_str, !23, !"devkmsg_log_str", i1 false, i1 false}
!23 = !{!"../kernel/printk/printk.c", i32 173, i32 6}
!24 = !{ptr @__ksymtab_console_set_on_cmdline, !25, !"__ksymtab_console_set_on_cmdline", i1 false, i1 false}
!25 = !{!"../kernel/printk/printk.c", i32 285, i32 1}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/printk/printk.c", i32 357, i32 1}
!28 = !{ptr @log_wait, !27, !"log_wait", i1 false, i1 false}
!29 = !{ptr @dmesg_restrict, !30, !"dmesg_restrict", i1 false, i1 false}
!30 = !{!"../kernel/printk/printk.c", i32 502, i32 5}
!31 = !{ptr @kmsg_fops, !32, !"kmsg_fops", i1 false, i1 false}
!32 = !{!"../kernel/printk/printk.c", i32 882, i32 30}
!33 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../kernel/printk/printk.c", i32 904, i32 2}
!35 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/printk/printk.c", i32 905, i32 2}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/printk/printk.c", i32 906, i32 2}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/printk/printk.c", i32 913, i32 2}
!42 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/printk/printk.c", i32 914, i32 2}
!45 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/printk/printk.c", i32 915, i32 2}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/printk/printk.c", i32 916, i32 2}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../kernel/printk/printk.c", i32 918, i32 2}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/printk/printk.c", i32 919, i32 2}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/printk/printk.c", i32 920, i32 2}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/printk/printk.c", i32 921, i32 2}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../kernel/printk/printk.c", i32 922, i32 2}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/printk/printk.c", i32 923, i32 2}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../kernel/printk/printk.c", i32 925, i32 2}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../kernel/printk/printk.c", i32 926, i32 2}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/printk/printk.c", i32 927, i32 2}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../kernel/printk/printk.c", i32 929, i32 2}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/printk/printk.c", i32 930, i32 2}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../kernel/printk/printk.c", i32 931, i32 2}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/printk/printk.c", i32 933, i32 2}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/printk/printk.c", i32 934, i32 2}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../kernel/printk/printk.c", i32 935, i32 2}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/printk/printk.c", i32 936, i32 2}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/printk/printk.c", i32 937, i32 2}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../kernel/printk/printk.c", i32 938, i32 2}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../kernel/printk/printk.c", i32 940, i32 2}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../kernel/printk/printk.c", i32 941, i32 2}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../kernel/printk/printk.c", i32 942, i32 2}
!92 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../kernel/printk/printk.c", i32 943, i32 2}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../kernel/printk/printk.c", i32 944, i32 2}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../kernel/printk/printk.c", i32 946, i32 2}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../kernel/printk/printk.c", i32 947, i32 2}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../kernel/printk/printk.c", i32 948, i32 2}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../kernel/printk/printk.c", i32 949, i32 2}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../kernel/printk/printk.c", i32 950, i32 2}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../kernel/printk/printk.c", i32 952, i32 2}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../kernel/printk/printk.c", i32 953, i32 2}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../kernel/printk/printk.c", i32 955, i32 2}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../kernel/printk/printk.c", i32 956, i32 2}
!115 = !{ptr @__setup_log_buf_len_setup, !116, !"__setup_log_buf_len_setup", i1 false, i1 false}
!116 = !{!"../kernel/printk/printk.c", i32 991, i32 1}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../kernel/printk/printk.c", i32 1092, i32 3}
!119 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @setup_log_buf._entry, !118, !"_entry", i1 false, i1 false}
!122 = !{ptr @setup_log_buf._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../kernel/printk/printk.c", i32 1098, i32 3}
!125 = !{ptr @setup_log_buf._entry.47, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @setup_log_buf._entry_ptr.49, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../kernel/printk/printk.c", i32 1106, i32 3}
!129 = !{ptr @setup_log_buf._entry.50, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @setup_log_buf._entry_ptr.52, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../kernel/printk/printk.c", i32 1114, i32 3}
!133 = !{ptr @setup_log_buf._entry.53, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @setup_log_buf._entry_ptr.55, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../kernel/printk/printk.c", i32 1159, i32 3}
!137 = !{ptr @setup_log_buf._entry.56, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @setup_log_buf._entry_ptr.58, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../kernel/printk/printk.c", i32 1163, i32 2}
!141 = !{ptr @setup_log_buf._entry.59, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @setup_log_buf._entry_ptr.61, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../kernel/printk/printk.c", i32 1164, i32 2}
!145 = !{ptr @setup_log_buf._entry.62, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @setup_log_buf._entry_ptr.64, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @__setup_ignore_loglevel_setup, !148, !"__setup_ignore_loglevel_setup", i1 false, i1 false}
!148 = !{!"../kernel/printk/printk.c", i32 1184, i32 1}
!149 = !{ptr @__param_ignore_loglevel, !150, !"__param_ignore_loglevel", i1 false, i1 false}
!150 = !{!"../kernel/printk/printk.c", i32 1185, i32 1}
!151 = !{ptr @__UNIQUE_ID_ignore_logleveltype266, !150, !"__UNIQUE_ID_ignore_logleveltype266", i1 false, i1 false}
!152 = !{ptr @__UNIQUE_ID_ignore_loglevel267, !153, !"__UNIQUE_ID_ignore_loglevel267", i1 false, i1 false}
!153 = !{!"../kernel/printk/printk.c", i32 1186, i32 1}
!154 = !{ptr @__setup_boot_delay_setup, !155, !"__setup_boot_delay_setup", i1 false, i1 false}
!155 = !{!"../kernel/printk/printk.c", i32 1215, i32 1}
!156 = !{ptr @__param_time, !157, !"__param_time", i1 false, i1 false}
!157 = !{!"../kernel/printk/printk.c", i32 1250, i32 1}
!158 = !{ptr @__UNIQUE_ID_timetype269, !157, !"__UNIQUE_ID_timetype269", i1 false, i1 false}
!159 = !{ptr @do_syslog.saved_console_loglevel, !160, !"saved_console_loglevel", i1 false, i1 false}
!160 = !{!"../kernel/printk/printk.c", i32 1636, i32 13}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../kernel/printk/printk.c", i32 1745, i32 1}
!163 = !{ptr @event_enter__syslog, !162, !"event_enter__syslog", i1 false, i1 false}
!164 = !{ptr @__event_enter__syslog, !162, !"__event_enter__syslog", i1 false, i1 false}
!165 = !{ptr @.str.66, !162, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @event_exit__syslog, !162, !"event_exit__syslog", i1 false, i1 false}
!167 = !{ptr @__event_exit__syslog, !162, !"__event_exit__syslog", i1 false, i1 false}
!168 = !{ptr @.str.67, !162, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @__syscall_meta__syslog, !162, !"__syscall_meta__syslog", i1 false, i1 false}
!170 = !{ptr @__p_syscall_meta__syslog, !162, !"__p_syscall_meta__syslog", i1 false, i1 false}
!171 = !{ptr @__ksymtab_vprintk_emit, !172, !"__ksymtab_vprintk_emit", i1 false, i1 false}
!172 = !{!"../kernel/printk/printk.c", i32 2252, i32 1}
!173 = !{ptr @__ksymtab_vprintk_default, !174, !"__ksymtab_vprintk_default", i1 false, i1 false}
!174 = !{!"../kernel/printk/printk.c", i32 2258, i32 1}
!175 = !{ptr @__ksymtab__printk, !176, !"__ksymtab__printk", i1 false, i1 false}
!176 = !{!"../kernel/printk/printk.c", i32 2271, i32 1}
!177 = !{ptr @__setup_console_msg_format_setup, !178, !"__setup_console_msg_format_setup", i1 false, i1 false}
!178 = !{!"../kernel/printk/printk.c", i32 2369, i32 1}
!179 = !{ptr @__setup_console_setup, !180, !"__setup_console_setup", i1 false, i1 false}
!180 = !{!"../kernel/printk/printk.c", i32 2423, i32 1}
!181 = !{ptr @console_suspend_enabled, !182, !"console_suspend_enabled", i1 false, i1 false}
!182 = !{!"../kernel/printk/printk.c", i32 2443, i32 6}
!183 = !{ptr @__ksymtab_console_suspend_enabled, !184, !"__ksymtab_console_suspend_enabled", i1 false, i1 false}
!184 = !{!"../kernel/printk/printk.c", i32 2444, i32 1}
!185 = !{ptr @__setup_console_suspend_disable, !186, !"__setup_console_suspend_disable", i1 false, i1 false}
!186 = !{!"../kernel/printk/printk.c", i32 2451, i32 1}
!187 = !{ptr @__param_console_suspend, !188, !"__param_console_suspend", i1 false, i1 false}
!188 = !{!"../kernel/printk/printk.c", i32 2452, i32 1}
!189 = !{ptr @__UNIQUE_ID_console_suspendtype276, !188, !"__UNIQUE_ID_console_suspendtype276", i1 false, i1 false}
!190 = !{ptr @__UNIQUE_ID_console_suspend277, !191, !"__UNIQUE_ID_console_suspend277", i1 false, i1 false}
!191 = !{!"../kernel/printk/printk.c", i32 2454, i32 1}
!192 = !{ptr @__ksymtab_console_verbose, !193, !"__ksymtab_console_verbose", i1 false, i1 false}
!193 = !{!"../kernel/printk/printk.c", i32 2464, i32 1}
!194 = !{ptr @__param_console_no_auto_verbose, !195, !"__param_console_no_auto_verbose", i1 false, i1 false}
!195 = !{!"../kernel/printk/printk.c", i32 2466, i32 1}
!196 = !{ptr @__UNIQUE_ID_console_no_auto_verbosetype278, !195, !"__UNIQUE_ID_console_no_auto_verbosetype278", i1 false, i1 false}
!197 = !{ptr @__UNIQUE_ID_console_no_auto_verbose279, !198, !"__UNIQUE_ID_console_no_auto_verbose279", i1 false, i1 false}
!198 = !{!"../kernel/printk/printk.c", i32 2467, i32 1}
!199 = !{ptr @.str.68, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../kernel/printk/printk.c", i32 2478, i32 2}
!201 = !{ptr @.str.69, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @suspend_console._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @suspend_console._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @__ksymtab_console_lock, !205, !"__ksymtab_console_lock", i1 false, i1 false}
!205 = !{!"../kernel/printk/printk.c", i32 2530, i32 1}
!206 = !{ptr @__ksymtab_console_trylock, !207, !"__ksymtab_console_trylock", i1 false, i1 false}
!207 = !{!"../kernel/printk/printk.c", i32 2552, i32 1}
!208 = !{ptr @__ksymtab_is_console_locked, !209, !"__ksymtab_is_console_locked", i1 false, i1 false}
!209 = !{!"../kernel/printk/printk.c", i32 2558, i32 1}
!210 = !{ptr @console_unlock.ext_text, !211, !"ext_text", i1 false, i1 false}
!211 = !{!"../kernel/printk/printk.c", i32 2604, i32 14}
!212 = !{ptr @console_unlock.text, !213, !"text", i1 false, i1 false}
!213 = !{!"../kernel/printk/printk.c", i32 2605, i32 14}
!214 = !{ptr @__ksymtab_console_unlock, !215, !"__ksymtab_console_unlock", i1 false, i1 false}
!215 = !{!"../kernel/printk/printk.c", i32 2739, i32 1}
!216 = !{ptr @__ksymtab_console_conditional_schedule, !217, !"__ksymtab_console_conditional_schedule", i1 false, i1 false}
!217 = !{!"../kernel/printk/printk.c", i32 2755, i32 1}
!218 = !{ptr @__ksymtab_console_stop, !219, !"__ksymtab_console_stop", i1 false, i1 false}
!219 = !{!"../kernel/printk/printk.c", i32 2833, i32 1}
!220 = !{ptr @__ksymtab_console_start, !221, !"__ksymtab_console_start", i1 false, i1 false}
!221 = !{!"../kernel/printk/printk.c", i32 2841, i32 1}
!222 = !{ptr @__setup_keep_bootcon_setup, !223, !"__setup_keep_bootcon_setup", i1 false, i1 false}
!223 = !{!"../kernel/printk/printk.c", i32 2853, i32 1}
!224 = !{ptr @.str.70, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../kernel/printk/printk.c", i32 2953, i32 7}
!226 = !{ptr @.str.71, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../kernel/printk/printk.c", i32 2967, i32 3}
!228 = !{ptr @.str.72, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @register_console._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @register_console._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.74, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../kernel/printk/printk.c", i32 3064, i32 2}
!233 = !{ptr @register_console._entry.73, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @register_console._entry_ptr.75, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.76, !232, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.77, !232, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @__ksymtab_register_console, !238, !"__ksymtab_register_console", i1 false, i1 false}
!238 = !{!"../kernel/printk/printk.c", i32 3078, i32 1}
!239 = !{ptr @.str.78, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../kernel/printk/printk.c", i32 3085, i32 2}
!241 = !{ptr @.str.79, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @unregister_console._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @unregister_console._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @__ksymtab_unregister_console, !245, !"__ksymtab_unregister_console", i1 false, i1 false}
!245 = !{!"../kernel/printk/printk.c", i32 3138, i32 1}
!246 = !{ptr @.str.80, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../kernel/printk/printk.c", i32 3160, i32 23}
!248 = !{ptr @__initcall__kmod_printk__281_3218_printk_late_init7, !249, !"__initcall__kmod_printk__281_3218_printk_late_init7", i1 false, i1 false}
!249 = !{!"../kernel/printk/printk.c", i32 3218, i32 1}
!250 = !{ptr @wake_up_klogd_work, !251, !"wake_up_klogd_work", i1 false, i1 false}
!251 = !{!"../kernel/printk/printk.c", i32 3243, i32 8}
!252 = distinct !{null, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../kernel/printk/printk.c", i32 3265, i32 2}
!254 = !{ptr @.str.82, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../kernel/printk/printk.c", i32 3303, i32 1}
!256 = !{ptr @printk_ratelimit_state, !255, !"printk_ratelimit_state", i1 false, i1 false}
!257 = !{ptr @__ksymtab___printk_ratelimit, !258, !"__ksymtab___printk_ratelimit", i1 false, i1 false}
!258 = !{!"../kernel/printk/printk.c", i32 3309, i32 1}
!259 = !{ptr @__ksymtab_printk_timed_ratelimit, !260, !"__ksymtab_printk_timed_ratelimit", i1 false, i1 false}
!260 = !{!"../kernel/printk/printk.c", i32 3331, i32 1}
!261 = !{ptr @__ksymtab_kmsg_dump_register, !262, !"__ksymtab_kmsg_dump_register", i1 false, i1 false}
!262 = !{!"../kernel/printk/printk.c", i32 3364, i32 1}
!263 = !{ptr @__ksymtab_kmsg_dump_unregister, !264, !"__ksymtab_kmsg_dump_unregister", i1 false, i1 false}
!264 = !{!"../kernel/printk/printk.c", i32 3389, i32 1}
!265 = !{ptr @__param_always_kmsg_dump, !266, !"__param_always_kmsg_dump", i1 false, i1 false}
!266 = !{!"../kernel/printk/printk.c", i32 3392, i32 1}
!267 = !{ptr @__UNIQUE_ID_always_kmsg_dumptype282, !266, !"__UNIQUE_ID_always_kmsg_dumptype282", i1 false, i1 false}
!268 = !{ptr @.str.83, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../kernel/printk/printk.c", i32 3398, i32 10}
!270 = !{ptr @.str.84, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../kernel/printk/printk.c", i32 3400, i32 10}
!272 = !{ptr @.str.85, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../kernel/printk/printk.c", i32 3402, i32 10}
!274 = !{ptr @.str.86, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../kernel/printk/printk.c", i32 3404, i32 10}
!276 = !{ptr @.str.87, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../kernel/printk/printk.c", i32 3406, i32 10}
!278 = !{ptr @__ksymtab_kmsg_dump_reason_str, !279, !"__ksymtab_kmsg_dump_reason_str", i1 false, i1 false}
!279 = !{!"../kernel/printk/printk.c", i32 3409, i32 1}
!280 = distinct !{null, !281, !"__warned", i1 false, i1 false}
!281 = !{!"../kernel/printk/printk.c", i32 3424, i32 2}
!282 = !{ptr @.str.88, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @__ksymtab_kmsg_dump_get_line, !284, !"__ksymtab_kmsg_dump_get_line", i1 false, i1 false}
!284 = !{!"../kernel/printk/printk.c", i32 3498, i32 1}
!285 = !{ptr @__ksymtab_kmsg_dump_get_buffer, !286, !"__ksymtab_kmsg_dump_get_buffer", i1 false, i1 false}
!286 = !{!"../kernel/printk/printk.c", i32 3583, i32 1}
!287 = !{ptr @__ksymtab_kmsg_dump_rewind, !288, !"__ksymtab_kmsg_dump_rewind", i1 false, i1 false}
!288 = !{!"../kernel/printk/printk.c", i32 3598, i32 1}
!289 = !{ptr @__ksymtab___printk_wait_on_cpu_lock, !290, !"__ksymtab___printk_wait_on_cpu_lock", i1 false, i1 false}
!290 = !{!"../kernel/printk/printk.c", i32 3618, i32 1}
!291 = !{ptr @__ksymtab___printk_cpu_trylock, !292, !"__ksymtab___printk_cpu_trylock", i1 false, i1 false}
!292 = !{!"../kernel/printk/printk.c", i32 3673, i32 1}
!293 = !{ptr @__ksymtab___printk_cpu_unlock, !294, !"__ksymtab___printk_cpu_unlock", i1 false, i1 false}
!294 = !{!"../kernel/printk/printk.c", i32 3715, i32 1}
!295 = !{ptr @oops_in_progress, !296, !"oops_in_progress", i1 false, i1 false}
!296 = !{!"../kernel/printk/printk.c", i32 78, i32 5}
!297 = !{ptr @console_drivers, !298, !"console_drivers", i1 false, i1 false}
!298 = !{!"../kernel/printk/printk.c", i32 87, i32 17}
!299 = !{ptr @suppress_printk, !300, !"suppress_printk", i1 false, i1 false}
!300 = !{!"../kernel/printk/printk.c", i32 94, i32 19}
!301 = !{ptr @nr_ext_console_drivers, !302, !"nr_ext_console_drivers", i1 false, i1 false}
!302 = !{!"../kernel/printk/printk.c", i32 216, i32 12}
!303 = distinct !{null, !304, !"console_locked", i1 false, i1 false}
!304 = !{!"../kernel/printk/printk.c", i32 268, i32 12}
!305 = distinct !{null, !306, !"console_suspended", i1 false, i1 false}
!306 = !{!"../kernel/printk/printk.c", i32 268, i32 28}
!307 = !{ptr @exclusive_console, !308, !"exclusive_console", i1 false, i1 false}
!308 = !{!"../kernel/printk/printk.c", i32 273, i32 24}
!309 = !{ptr @console_set_on_cmdline, !310, !"console_set_on_cmdline", i1 false, i1 false}
!310 = !{!"../kernel/printk/printk.c", i32 284, i32 5}
!311 = distinct !{null, !312, !"console_may_schedule", i1 false, i1 false}
!312 = !{!"../kernel/printk/printk.c", i32 288, i32 12}
!313 = !{ptr @syslog_seq, !314, !"syslog_seq", i1 false, i1 false}
!314 = !{!"../kernel/printk/printk.c", i32 360, i32 12}
!315 = !{ptr @syslog_partial, !316, !"syslog_partial", i1 false, i1 false}
!316 = !{!"../kernel/printk/printk.c", i32 361, i32 15}
!317 = !{ptr @syslog_time, !318, !"syslog_time", i1 false, i1 false}
!318 = !{!"../kernel/printk/printk.c", i32 362, i32 13}
!319 = !{ptr @console_seq, !320, !"console_seq", i1 false, i1 false}
!320 = !{!"../kernel/printk/printk.c", i32 366, i32 12}
!321 = !{ptr @exclusive_console_stop_seq, !322, !"exclusive_console_stop_seq", i1 false, i1 false}
!322 = !{!"../kernel/printk/printk.c", i32 367, i32 12}
!323 = !{ptr @console_dropped, !324, !"console_dropped", i1 false, i1 false}
!324 = !{!"../kernel/printk/printk.c", i32 368, i32 22}
!325 = !{ptr @__log_buf, !326, !"__log_buf", i1 false, i1 false}
!326 = !{!"../kernel/printk/printk.c", i32 405, i32 13}
!327 = !{ptr @printk_rb_dynamic, !328, !"printk_rb_dynamic", i1 false, i1 false}
!328 = !{!"../kernel/printk/printk.c", i32 422, i32 33}
!329 = distinct !{null, !330, !"__printk_percpu_data_ready", i1 false, i1 false}
!330 = !{!"../kernel/printk/printk.c", i32 431, i32 13}
!331 = !{ptr @new_log_buf_len, !332, !"new_log_buf_len", i1 false, i1 false}
!332 = !{!"../kernel/printk/printk.c", i32 961, i32 33}
!333 = !{ptr @setup_text_buf, !334, !"setup_text_buf", i1 false, i1 false}
!334 = !{!"../kernel/printk/printk.c", i32 1056, i32 13}
!335 = !{ptr @ignore_loglevel, !336, !"ignore_loglevel", i1 false, i1 false}
!336 = !{!"../kernel/printk/printk.c", i32 1174, i32 27}
!337 = !{ptr @__pcpu_unique_printk_count, !338, !"__pcpu_unique_printk_count", i1 false, i1 false}
!338 = !{!"../kernel/printk/printk.c", i32 1939, i32 8}
!339 = !{ptr @printk_count, !338, !"printk_count", i1 false, i1 false}
!340 = !{ptr @__pcpu_unique_printk_count_nmi, !341, !"__pcpu_unique_printk_count_nmi", i1 false, i1 false}
!341 = !{!"../kernel/printk/printk.c", i32 1942, i32 8}
!342 = !{ptr @printk_count_nmi, !341, !"printk_count_nmi", i1 false, i1 false}
!343 = !{ptr @printk_delay_msec, !344, !"printk_delay_msec", i1 false, i1 false}
!344 = !{!"../kernel/printk/printk.c", i32 2004, i32 5}
!345 = !{ptr @early_console, !346, !"early_console", i1 false, i1 false}
!346 = !{!"../kernel/printk/printk.c", i32 2308, i32 17}
!347 = !{ptr @printk_console_no_auto_verbose, !348, !"printk_console_no_auto_verbose", i1 false, i1 false}
!348 = !{!"../kernel/printk/printk.c", i32 2457, i32 13}
!349 = distinct !{null, !350, !"keep_bootcon", i1 false, i1 false}
!350 = !{!"../kernel/printk/printk.c", i32 2843, i32 26}
!351 = !{ptr @__pcpu_unique_printk_pending, !352, !"__pcpu_unique_printk_pending", i1 false, i1 false}
!352 = !{!"../kernel/printk/printk.c", i32 3227, i32 8}
!353 = !{ptr @printk_pending, !352, !"printk_pending", i1 false, i1 false}
!354 = !{ptr @__pcpu_unique_wake_up_klogd_work, !251, !"__pcpu_unique_wake_up_klogd_work", i1 false, i1 false}
!355 = !{ptr @always_kmsg_dump, !356, !"always_kmsg_dump", i1 false, i1 false}
!356 = !{!"../kernel/printk/printk.c", i32 3391, i32 13}
!357 = !{ptr @__tpstrtab_console, !1, !"__tpstrtab_console", i1 false, i1 false}
!358 = !{ptr @str__printk__trace_system_name, !359, !"str__printk__trace_system_name", i1 false, i1 false}
!359 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!360 = !{ptr @.str.89, !1, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @.str.90, !1, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @trace_event_fields_console, !1, !"trace_event_fields_console", i1 false, i1 false}
!363 = !{ptr @trace_event_type_funcs_console, !1, !"trace_event_type_funcs_console", i1 false, i1 false}
!364 = !{ptr @.str.91, !1, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @print_fmt_console, !1, !"print_fmt_console", i1 false, i1 false}
!366 = !{ptr @__setup_str_control_devkmsg, !21, !"__setup_str_control_devkmsg", i1 false, i1 false}
!367 = !{ptr @.str.92, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../kernel/printk/printk.c", i32 156, i32 27}
!369 = !{ptr @.str.93, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../kernel/printk/printk.c", i32 158, i32 27}
!371 = !{ptr @devkmsg_log, !372, !"devkmsg_log", i1 false, i1 false}
!372 = !{!"../kernel/printk/printk.c", i32 117, i32 35}
!373 = !{ptr @.str.94, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../kernel/printk/printk.c", i32 138, i32 28}
!375 = !{ptr @log_buf, !376, !"log_buf", i1 false, i1 false}
!376 = !{!"../kernel/printk/printk.c", i32 406, i32 14}
!377 = !{ptr @log_buf_len, !378, !"log_buf_len", i1 false, i1 false}
!378 = !{!"../kernel/printk/printk.c", i32 407, i32 12}
!379 = distinct !{null, !380, !"__already_done", i1 false, i1 false}
!380 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!381 = !{ptr @.str.95, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.96, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!384 = !{ptr @.str.97, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!386 = !{ptr @.str.98, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../kernel/printk/printk.c", i32 710, i32 32}
!388 = !{ptr @devkmsg_open.__key, !389, !"__key", i1 false, i1 false}
!389 = !{!"../kernel/printk/printk.c", i32 857, i32 2}
!390 = !{ptr @.str.99, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @ratelimit_state_init.__key, !392, !"__key", i1 false, i1 false}
!392 = !{!"../include/linux/ratelimit.h", i32 14, i32 2}
!393 = !{ptr @.str.100, !392, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @.str.101, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../include/linux/ratelimit.h", i32 31, i32 3}
!396 = !{ptr @.str.102, !395, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @.str.103, !395, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @ratelimit_state_exit._entry, !395, !"_entry", i1 false, i1 false}
!399 = !{ptr @ratelimit_state_exit._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @prb, !401, !"prb", i1 false, i1 false}
!401 = !{!"../kernel/printk/printk.c", i32 424, i32 34}
!402 = !{ptr @printk_rb_static, !403, !"printk_rb_static", i1 false, i1 false}
!403 = !{!"../kernel/printk/printk.c", i32 419, i32 1}
!404 = !{ptr @_printk_rb_static_descs, !403, !"_printk_rb_static_descs", i1 false, i1 false}
!405 = !{ptr @_printk_rb_static_infos, !403, !"_printk_rb_static_infos", i1 false, i1 false}
!406 = !{ptr @.str.105, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../kernel/printk/printk.c", i32 381, i32 12}
!408 = !{ptr @clear_seq, !409, !"clear_seq", i1 false, i1 false}
!409 = !{!"../kernel/printk/printk.c", i32 380, i32 27}
!410 = !{ptr @__setup_str_log_buf_len_setup, !116, !"__setup_str_log_buf_len_setup", i1 false, i1 false}
!411 = !{ptr @.str.106, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../kernel/printk/printk.c", i32 968, i32 3}
!413 = !{ptr @.str.107, !412, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @log_buf_len_update._entry, !412, !"_entry", i1 false, i1 false}
!415 = !{ptr @log_buf_len_update._entry_ptr, !412, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.108, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../kernel/printk/printk.c", i32 1014, i32 2}
!418 = !{ptr @.str.109, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @log_buf_add_cpu._entry, !417, !"_entry", i1 false, i1 false}
!420 = !{ptr @log_buf_add_cpu._entry_ptr, !417, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.111, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../kernel/printk/printk.c", i32 1016, i32 2}
!423 = !{ptr @log_buf_add_cpu._entry.110, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @log_buf_add_cpu._entry_ptr.112, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.114, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../kernel/printk/printk.c", i32 1018, i32 2}
!427 = !{ptr @log_buf_add_cpu._entry.113, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @log_buf_add_cpu._entry_ptr.115, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @__setup_str_ignore_loglevel_setup, !148, !"__setup_str_ignore_loglevel_setup", i1 false, i1 false}
!430 = !{ptr @.str.116, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../kernel/printk/printk.c", i32 1179, i32 2}
!432 = !{ptr @.str.117, !431, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @ignore_loglevel_setup._entry, !431, !"_entry", i1 false, i1 false}
!434 = !{ptr @ignore_loglevel_setup._entry_ptr, !431, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @__param_str_ignore_loglevel, !150, !"__param_str_ignore_loglevel", i1 false, i1 false}
!436 = !{ptr @__setup_str_boot_delay_setup, !155, !"__setup_str_boot_delay_setup", i1 false, i1 false}
!437 = !{ptr @.str.118, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../kernel/printk/printk.c", i32 1210, i32 2}
!439 = !{ptr @.str.119, !438, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @.str.120, !438, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @boot_delay_setup.__UNIQUE_ID_ddebug268, !438, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!442 = !{ptr @.str.121, !438, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @loops_per_msec, !444, !"loops_per_msec", i1 false, i1 false}
!444 = !{!"../kernel/printk/printk.c", i32 1197, i32 27}
!445 = !{ptr @boot_delay, !446, !"boot_delay", i1 false, i1 false}
!446 = !{!"../kernel/printk/printk.c", i32 1196, i32 12}
!447 = !{ptr @__param_str_time, !157, !"__param_str_time", i1 false, i1 false}
!448 = !{ptr @printk_time, !449, !"printk_time", i1 false, i1 false}
!449 = !{!"../kernel/printk/printk.c", i32 1249, i32 13}
!450 = distinct !{null, !451, !"__already_done", i1 false, i1 false}
!451 = !{!"../kernel/printk/printk.c", i32 533, i32 4}
!452 = !{ptr @.str.122, !451, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @.str.123, !451, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @check_syslog_permissions._entry, !451, !"_entry", i1 false, i1 false}
!455 = !{ptr @check_syslog_permissions._entry_ptr, !451, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.124, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../kernel/printk/printk.c", i32 354, i32 8}
!458 = !{ptr @.str.125, !457, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @syslog_lock, !457, !"syslog_lock", i1 false, i1 false}
!460 = !{ptr @.str.126, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../kernel/printk/printk.c", i32 1254, i32 22}
!462 = !{ptr @.str.127, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../kernel/printk/printk.c", i32 1261, i32 22}
!464 = !{ptr @.str.128, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../kernel/printk/printk.c", i32 1270, i32 35}
!466 = !{ptr @.str.129, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../kernel/printk/printk.c", i32 1272, i32 22}
!468 = !{ptr @.str.130, !162, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @.str.131, !162, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @types__syslog, !162, !"types__syslog", i1 false, i1 false}
!471 = !{ptr @.str.132, !162, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @.str.133, !162, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @.str.134, !162, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @args__syslog, !162, !"args__syslog", i1 false, i1 false}
!475 = !{ptr @printk_count_nmi_early, !476, !"printk_count_nmi_early", i1 false, i1 false}
!476 = !{!"../kernel/printk/printk.c", i32 1943, i32 11}
!477 = !{ptr @printk_count_early, !478, !"printk_count_early", i1 false, i1 false}
!478 = !{!"../kernel/printk/printk.c", i32 1940, i32 11}
!479 = !{ptr @trunc_msg, !480, !"trunc_msg", i1 false, i1 false}
!480 = !{!"../kernel/printk/printk.c", i32 481, i32 19}
!481 = !{ptr @.str.135, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../kernel/printk/printk.c", i32 1761, i32 8}
!483 = !{ptr @console_owner_lock, !482, !"console_owner_lock", i1 false, i1 false}
!484 = !{ptr @console_owner, !485, !"console_owner", i1 false, i1 false}
!485 = !{!"../kernel/printk/printk.c", i32 1762, i32 28}
!486 = !{ptr @console_waiter, !487, !"console_waiter", i1 false, i1 false}
!487 = !{!"../kernel/printk/printk.c", i32 1763, i32 13}
!488 = !{ptr @.str.136, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../kernel/printk/printk.c", i32 1757, i32 10}
!490 = !{ptr @console_owner_dep_map, !491, !"console_owner_dep_map", i1 false, i1 false}
!491 = !{!"../kernel/printk/printk.c", i32 1756, i32 27}
!492 = !{ptr @__setup_str_console_msg_format_setup, !178, !"__setup_str_console_msg_format_setup", i1 false, i1 false}
!493 = !{ptr @.str.137, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../kernel/printk/printk.c", i32 2363, i32 19}
!495 = !{ptr @.str.138, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../kernel/printk/printk.c", i32 2365, i32 19}
!497 = !{ptr @__setup_str_console_setup, !180, !"__setup_str_console_setup", i1 false, i1 false}
!498 = !{ptr @.str.139, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../kernel/printk/printk.c", i32 2386, i32 33}
!500 = !{ptr @.str.140, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../kernel/printk/printk.c", i32 2387, i32 27}
!502 = !{ptr @.str.141, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../kernel/printk/printk.c", i32 2398, i32 15}
!504 = !{ptr @console_cmdline, !505, !"console_cmdline", i1 false, i1 false}
!505 = !{!"../kernel/printk/printk.c", i32 281, i32 31}
!506 = !{ptr @__setup_str_console_suspend_disable, !186, !"__setup_str_console_suspend_disable", i1 false, i1 false}
!507 = !{ptr @__param_str_console_suspend, !188, !"__param_str_console_suspend", i1 false, i1 false}
!508 = !{ptr @__param_str_console_no_auto_verbose, !195, !"__param_str_console_no_auto_verbose", i1 false, i1 false}
!509 = !{ptr @.str.142, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../kernel/printk/printk.c", i32 86, i32 8}
!511 = !{ptr @console_sem, !510, !"console_sem", i1 false, i1 false}
!512 = !{ptr @.str.143, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../kernel/printk/printk.c", i32 98, i32 10}
!514 = !{ptr @console_lock_dep_map, !515, !"console_lock_dep_map", i1 false, i1 false}
!515 = !{!"../kernel/printk/printk.c", i32 97, i32 27}
!516 = distinct !{null, !517, !"__already_done", i1 false, i1 false}
!517 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!518 = !{ptr @.str.144, !517, !"<string literal>", i1 false, i1 false}
!519 = !{ptr @.str.145, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../kernel/printk/printk.c", i32 559, i32 35}
!521 = !{ptr @.str.146, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../kernel/printk/printk.c", i32 567, i32 30}
!523 = !{ptr @.str.147, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../kernel/printk/printk.c", i32 620, i32 50}
!525 = !{ptr @.str.148, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../kernel/printk/printk.c", i32 622, i32 50}
!527 = !{ptr @.str.149, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../kernel/printk/printk.c", i32 584, i32 29}
!529 = distinct !{null, !530, !"console_msg_format", i1 false, i1 false}
!530 = !{!"../kernel/printk/printk.c", i32 295, i32 12}
!531 = !{ptr @call_console_drivers.dropped_text, !532, !"dropped_text", i1 false, i1 false}
!532 = !{!"../kernel/printk/printk.c", i32 1898, i32 14}
!533 = !{ptr @.str.150, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../kernel/printk/printk.c", i32 1909, i32 12}
!535 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!536 = !{ptr @.str.151, !1, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @__setup_str_keep_bootcon_setup, !223, !"__setup_str_keep_bootcon_setup", i1 false, i1 false}
!538 = !{ptr @.str.152, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../kernel/printk/printk.c", i32 2848, i32 2}
!540 = !{ptr @.str.153, !539, !"<string literal>", i1 false, i1 false}
!541 = !{ptr @keep_bootcon_setup._entry, !539, !"_entry", i1 false, i1 false}
!542 = !{ptr @keep_bootcon_setup._entry_ptr, !539, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @preferred_console, !544, !"preferred_console", i1 false, i1 false}
!544 = !{!"../kernel/printk/printk.c", i32 283, i32 12}
!545 = distinct !{null, !546, !"__already_done", i1 false, i1 false}
!546 = !{!"../include/trace/events/initcall.h", i32 10, i32 1}
!547 = !{ptr @.str.154, !546, !"<string literal>", i1 false, i1 false}
!548 = distinct !{null, !546, !"__warned", i1 false, i1 false}
!549 = !{ptr @.str.155, !546, !"<string literal>", i1 false, i1 false}
!550 = distinct !{null, !551, !"__already_done", i1 false, i1 false}
!551 = !{!"../include/trace/events/initcall.h", i32 27, i32 1}
!552 = distinct !{null, !551, !"__warned", i1 false, i1 false}
!553 = distinct !{null, !554, !"__already_done", i1 false, i1 false}
!554 = !{!"../include/trace/events/initcall.h", i32 48, i32 1}
!555 = distinct !{null, !554, !"__warned", i1 false, i1 false}
!556 = !{ptr @.str.156, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../kernel/printk/printk.c", i32 3204, i32 4}
!558 = !{ptr @.str.157, !557, !"<string literal>", i1 false, i1 false}
!559 = !{ptr @printk_late_init._entry, !557, !"_entry", i1 false, i1 false}
!560 = !{ptr @printk_late_init._entry_ptr, !557, !"_entry_ptr", i1 false, i1 false}
!561 = !{ptr @.str.158, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../kernel/printk/printk.c", i32 3209, i32 53}
!563 = !{ptr @.str.159, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../kernel/printk/printk.c", i32 3212, i32 55}
!565 = distinct !{null, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../kernel/printk/printk.c", i32 3231, i32 16}
!567 = !{ptr @.str.161, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../kernel/printk/printk.c", i32 3333, i32 8}
!569 = !{ptr @dump_list_lock, !568, !"dump_list_lock", i1 false, i1 false}
!570 = !{ptr @dump_list, !571, !"dump_list", i1 false, i1 false}
!571 = !{!"../kernel/printk/printk.c", i32 3334, i32 8}
!572 = !{ptr @__param_str_always_kmsg_dump, !266, !"__param_str_always_kmsg_dump", i1 false, i1 false}
!573 = distinct !{null, !574, !"__warned", i1 false, i1 false}
!574 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!575 = !{ptr @.str.162, !574, !"<string literal>", i1 false, i1 false}
!576 = !{ptr @.str.163, !574, !"<string literal>", i1 false, i1 false}
!577 = distinct !{null, !578, !"__warned", i1 false, i1 false}
!578 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!579 = !{ptr @.str.164, !578, !"<string literal>", i1 false, i1 false}
!580 = !{ptr @printk_cpulock_owner, !581, !"printk_cpulock_owner", i1 false, i1 false}
!581 = !{!"../kernel/printk/printk.c", i32 3603, i32 17}
!582 = !{ptr @printk_cpulock_nested, !583, !"printk_cpulock_nested", i1 false, i1 false}
!583 = !{!"../kernel/printk/printk.c", i32 3604, i32 17}
!584 = !{!"sp"}
!585 = !{i32 1, !"wchar_size", i32 2}
!586 = !{i32 1, !"min_enum_size", i32 4}
!587 = !{i32 8, !"branch-target-enforcement", i32 0}
!588 = !{i32 8, !"sign-return-address", i32 0}
!589 = !{i32 8, !"sign-return-address-all", i32 0}
!590 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!591 = !{i32 7, !"uwtable", i32 1}
!592 = !{i32 7, !"frame-pointer", i32 2}
!593 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!594 = !{!"branch_weights", i32 2000, i32 1}
!595 = !{!"branch_weights", i32 1, i32 2000}
!596 = !{!"auto-init"}
!597 = !{i64 2149937727}
!598 = !{i64 1209351, i64 1209378, i64 1209400, i64 1209428}
!599 = !{i64 1209759, i64 1209786, i64 1209819, i64 1209840, i64 1209867, i64 1209893}
!600 = !{i64 2152820777, i64 2152820802}
!601 = !{i32 0, i32 33}
!602 = !{i64 696842, i64 696903}
!603 = !{i64 699574}
!604 = !{i64 699859}
!605 = !{i64 2148786176, i64 2148786181, i64 2148786194, i64 2148786238, i64 2148786272, i64 2148786293}
!606 = !{i64 2155793884, i64 2155793909}
!607 = !{i64 2155794649, i64 2155794674}
!608 = !{i64 2149944866}
!609 = !{i64 2149945022}
!610 = !{i8 0, i8 2}
!611 = !{i64 2155781206}
!612 = !{i64 2155781048}
!613 = !{i64 2155843126}
!614 = !{i64 2155843223}
!615 = !{i64 2155911187}
!616 = !{i64 2155920834}
!617 = !{i64 2155831415}
!618 = !{i64 2155831257}
!619 = !{i64 2155284879}
!620 = !{i64 2155285080}
!621 = !{i64 2150103758}
!622 = !{i64 2150104794}
!623 = !{i64 2155300745}
!624 = !{i64 2155300944}
!625 = !{i64 2155316808}
!626 = !{i64 2155317019}
!627 = !{i64 2155921027}
!628 = !{i64 2155927280}
!629 = !{i64 2151578931}
!630 = !{i64 2150095199}
!631 = !{i64 2150095465}
!632 = !{i64 2155986292}
!633 = !{i64 2155986134}
!634 = !{i64 788097, i64 788121, i64 788142, i64 788159, i64 788176}
!635 = !{i64 2148405334}
!636 = !{i64 2148304361, i64 2148304387, i64 2148304416, i64 2148304450, i64 2148304481, i64 2148304504}
!637 = !{i64 2148306826, i64 2148306852, i64 2148306881, i64 2148306915, i64 2148306946, i64 2148306969}
!638 = !{i64 2148386328}
!639 = !{i64 2155368520}
!640 = !{i64 2155368715}
