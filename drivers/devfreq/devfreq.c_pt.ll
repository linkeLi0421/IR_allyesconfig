; ModuleID = '/llk/IR_all_yes/drivers/devfreq/devfreq.c_pt.bc'
source_filename = "../drivers/devfreq/devfreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+devfreq_update_status\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_update_status\09\09\09\09"
module asm "\09.long\09__crc_devfreq_update_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_update_status:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_update_status\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_update_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_update_target\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_update_target\09\09\09\09"
module asm "\09.long\09__crc_devfreq_update_target\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_update_target:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_update_target\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_update_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+update_devfreq\22, \22a\22\09"
module asm "\09.weak\09__crc_update_devfreq\09\09\09\09"
module asm "\09.long\09__crc_update_devfreq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_update_devfreq:\09\09\09\09\09"
module asm "\09.asciz \09\22update_devfreq\22\09\09\09\09\09"
module asm "__kstrtabns_update_devfreq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_monitor_start\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_monitor_start\09\09\09\09"
module asm "\09.long\09__crc_devfreq_monitor_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_monitor_start:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_monitor_start\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_monitor_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_monitor_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_monitor_stop\09\09\09\09"
module asm "\09.long\09__crc_devfreq_monitor_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_monitor_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_monitor_stop\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_monitor_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_monitor_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_monitor_suspend\09\09\09\09"
module asm "\09.long\09__crc_devfreq_monitor_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_monitor_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_monitor_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_monitor_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_monitor_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_monitor_resume\09\09\09\09"
module asm "\09.long\09__crc_devfreq_monitor_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_monitor_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_monitor_resume\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_monitor_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_update_interval\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_update_interval\09\09\09\09"
module asm "\09.long\09__crc_devfreq_update_interval\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_update_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_update_interval\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_update_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_add_device\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_add_device\09\09\09\09"
module asm "\09.long\09__crc_devfreq_add_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_remove_device\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_remove_device\09\09\09\09"
module asm "\09.long\09__crc_devfreq_remove_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_remove_device\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_devfreq_add_device\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_devfreq_add_device\09\09\09\09"
module asm "\09.long\09__crc_devm_devfreq_add_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devfreq_get_devfreq_by_node\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_get_devfreq_by_node\09\09\09\09"
module asm "\09.long\09__crc_devfreq_get_devfreq_by_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_get_devfreq_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_get_devfreq_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_get_devfreq_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devfreq_get_devfreq_by_phandle\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_get_devfreq_by_phandle\09\09\09\09"
module asm "\09.long\09__crc_devfreq_get_devfreq_by_phandle\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_get_devfreq_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_get_devfreq_by_phandle\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_get_devfreq_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_devfreq_remove_device\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_devfreq_remove_device\09\09\09\09"
module asm "\09.long\09__crc_devm_devfreq_remove_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_remove_device\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_suspend_device\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_suspend_device\09\09\09\09"
module asm "\09.long\09__crc_devfreq_suspend_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_suspend_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_suspend_device\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_suspend_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_resume_device\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_resume_device\09\09\09\09"
module asm "\09.long\09__crc_devfreq_resume_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_resume_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_resume_device\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_resume_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_add_governor\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_add_governor\09\09\09\09"
module asm "\09.long\09__crc_devfreq_add_governor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_add_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_add_governor\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_add_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_devfreq_add_governor\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_devfreq_add_governor\09\09\09\09"
module asm "\09.long\09__crc_devm_devfreq_add_governor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_add_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_add_governor\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_add_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_remove_governor\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_remove_governor\09\09\09\09"
module asm "\09.long\09__crc_devfreq_remove_governor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_remove_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_remove_governor\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_remove_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_recommended_opp\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_recommended_opp\09\09\09\09"
module asm "\09.long\09__crc_devfreq_recommended_opp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_recommended_opp:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_recommended_opp\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_recommended_opp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_register_opp_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_register_opp_notifier\09\09\09\09"
module asm "\09.long\09__crc_devfreq_register_opp_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_register_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_register_opp_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_register_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_unregister_opp_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_unregister_opp_notifier\09\09\09\09"
module asm "\09.long\09__crc_devfreq_unregister_opp_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_unregister_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_unregister_opp_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_unregister_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_devfreq_register_opp_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_devfreq_register_opp_notifier\09\09\09\09"
module asm "\09.long\09__crc_devm_devfreq_register_opp_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_register_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_register_opp_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_register_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_devfreq_unregister_opp_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_devfreq_unregister_opp_notifier\09\09\09\09"
module asm "\09.long\09__crc_devm_devfreq_unregister_opp_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_unregister_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_unregister_opp_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_unregister_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_register_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_register_notifier\09\09\09\09"
module asm "\09.long\09__crc_devfreq_register_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devfreq_unregister_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_unregister_notifier\09\09\09\09"
module asm "\09.long\09__crc_devfreq_unregister_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_devfreq_register_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_devfreq_register_notifier\09\09\09\09"
module asm "\09.long\09__crc_devm_devfreq_register_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_devfreq_unregister_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_devfreq_unregister_notifier\09\09\09\09"
module asm "\09.long\09__crc_devm_devfreq_unregister_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.96 }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.98, %struct.trace_event, ptr, ptr, %union.anon.99, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.98 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.99 = type { ptr }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.devfreq = type { %struct.list_head, %struct.mutex, %struct.device, ptr, ptr, ptr, %struct.notifier_block, %struct.delayed_work, i32, %struct.devfreq_dev_status, ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i32, i32, i8, i32, i32, %struct.atomic_t, %struct.devfreq_stats, %struct.srcu_notifier_head, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.dev_pm_qos_request = type { i32, %union.anon.64, ptr }
%union.anon.64 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.devfreq_stats = type { i32, ptr, ptr, i64 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.trace_event_raw_devfreq_frequency = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_devfreq_monitor = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.devfreq_governor = type { %struct.list_head, [16 x i8], i64, i64, ptr, ptr }
%struct.devfreq_freqs = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.devfreq_notifier_devres = type { ptr, ptr, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }

@__tpstrtab_devfreq_frequency = internal constant [18 x i8] c"devfreq_frequency\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_devfreq_frequency = dso_local global %struct.static_call_key { ptr @__traceiter_devfreq_frequency }, align 4
@__tracepoint_devfreq_frequency = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_devfreq_frequency, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_devfreq_frequency, ptr null, ptr @__traceiter_devfreq_frequency, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_devfreq_frequency = internal constant ptr @__tracepoint_devfreq_frequency, section "__tracepoints_ptrs", align 4
@__tpstrtab_devfreq_monitor = internal constant [16 x i8] c"devfreq_monitor\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_devfreq_monitor = dso_local global %struct.static_call_key { ptr @__traceiter_devfreq_monitor }, align 4
@__tracepoint_devfreq_monitor = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_devfreq_monitor, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_devfreq_monitor, ptr null, ptr @__traceiter_devfreq_monitor, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_devfreq_monitor = internal constant ptr @__tracepoint_devfreq_monitor, section "__tracepoints_ptrs", align 4
@str__devfreq__trace_system_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devfreq\00", [24 x i8] zeroinitializer }, align 32
@trace_event_fields_devfreq_frequency = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.54, %union.anon.96 { %struct.anon.97 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.96 { %struct.anon.97 { ptr @.str.57, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.96 { %struct.anon.97 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.96 { %struct.anon.97 { ptr @.str.59, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.96 { %struct.anon.97 { ptr @.str.60, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_devfreq_frequency = internal global %struct.trace_event_class { ptr @str__devfreq__trace_system_name, ptr @trace_event_raw_event_devfreq_frequency, ptr @perf_trace_devfreq_frequency, ptr @trace_event_reg, ptr @trace_event_fields_devfreq_frequency, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_devfreq_frequency, i64 24), ptr getelementptr (i8, ptr @event_class_devfreq_frequency, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_devfreq_frequency = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_devfreq_frequency, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_devfreq_frequency = internal global { [174 x i8], [50 x i8] } { [174 x i8] c"\22dev_name=%-30s freq=%-12lu prev_freq=%-12lu load=%-2lu\22, __get_str(dev_name), REC->freq, REC->prev_freq, REC->total_time == 0 ? 0 : (100 * REC->busy_time) / REC->total_time\00", [50 x i8] zeroinitializer }, align 32
@event_devfreq_frequency = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_devfreq_frequency, %union.anon.98 { ptr @__tracepoint_devfreq_frequency }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_devfreq_frequency }, ptr @print_fmt_devfreq_frequency, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_devfreq_frequency = internal global ptr @event_devfreq_frequency, section "_ftrace_events", align 4
@trace_event_fields_devfreq_monitor = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.56, %union.anon.96 { %struct.anon.97 { ptr @.str.57, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.96 { %struct.anon.97 { ptr @.str.59, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.96 { %struct.anon.97 { ptr @.str.60, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.62, %union.anon.96 { %struct.anon.97 { ptr @.str.63, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.54, %union.anon.96 { %struct.anon.97 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_devfreq_monitor = internal global %struct.trace_event_class { ptr @str__devfreq__trace_system_name, ptr @trace_event_raw_event_devfreq_monitor, ptr @perf_trace_devfreq_monitor, ptr @trace_event_reg, ptr @trace_event_fields_devfreq_monitor, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_devfreq_monitor, i64 24), ptr getelementptr (i8, ptr @event_class_devfreq_monitor, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_devfreq_monitor = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_devfreq_monitor, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_devfreq_monitor = internal global { [174 x i8], [50 x i8] } { [174 x i8] c"\22dev_name=%-30s freq=%-12lu polling_ms=%-3u load=%-2lu\22, __get_str(dev_name), REC->freq, REC->polling_ms, REC->total_time == 0 ? 0 : (100 * REC->busy_time) / REC->total_time\00", [50 x i8] zeroinitializer }, align 32
@event_devfreq_monitor = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_devfreq_monitor, %union.anon.98 { ptr @__tracepoint_devfreq_monitor }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_devfreq_monitor }, ptr @print_fmt_devfreq_monitor, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_devfreq_monitor = internal global ptr @event_devfreq_monitor, section "_ftrace_events", align 4
@__bpf_trace_tp_map_devfreq_frequency = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_devfreq_frequency, ptr @__bpf_trace_devfreq_frequency, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_devfreq_monitor = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_devfreq_monitor, ptr @__bpf_trace_devfreq_monitor, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/devfreq/devfreq.c\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_devfreq_update_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_update_status = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_update_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_update_status to i32), ptr @__kstrtab_devfreq_update_status, ptr @__kstrtabns_devfreq_update_status }, section "___ksymtab+devfreq_update_status", align 4
@__kstrtab_devfreq_update_target = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_update_target = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_update_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_update_target to i32), ptr @__kstrtab_devfreq_update_target, ptr @__kstrtabns_devfreq_update_target }, section "___ksymtab+devfreq_update_target", align 4
@__kstrtab_update_devfreq = external dso_local constant [0 x i8], align 1
@__kstrtabns_update_devfreq = external dso_local constant [0 x i8], align 1
@__ksymtab_update_devfreq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @update_devfreq to i32), ptr @__kstrtab_update_devfreq, ptr @__kstrtabns_update_devfreq }, section "___ksymtab+update_devfreq", align 4
@devfreq_monitor_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&devfreq->work)->work)\00", [53 x i8] zeroinitializer }, align 32
@devfreq_monitor_start.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&devfreq->work)->timer\00", [39 x i8] zeroinitializer }, align 32
@devfreq_monitor_start.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@devfreq_monitor_start.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@devfreq_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_devfreq_monitor_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_monitor_start = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_monitor_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_monitor_start to i32), ptr @__kstrtab_devfreq_monitor_start, ptr @__kstrtabns_devfreq_monitor_start }, section "___ksymtab+devfreq_monitor_start", align 4
@__kstrtab_devfreq_monitor_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_monitor_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_monitor_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_monitor_stop to i32), ptr @__kstrtab_devfreq_monitor_stop, ptr @__kstrtabns_devfreq_monitor_stop }, section "___ksymtab+devfreq_monitor_stop", align 4
@__kstrtab_devfreq_monitor_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_monitor_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_monitor_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_monitor_suspend to i32), ptr @__kstrtab_devfreq_monitor_suspend, ptr @__kstrtabns_devfreq_monitor_suspend }, section "___ksymtab+devfreq_monitor_suspend", align 4
@__kstrtab_devfreq_monitor_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_monitor_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_monitor_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_monitor_resume to i32), ptr @__kstrtab_devfreq_monitor_resume, ptr @__kstrtabns_devfreq_monitor_resume }, section "___ksymtab+devfreq_monitor_resume", align 4
@__kstrtab_devfreq_update_interval = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_update_interval = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_update_interval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_update_interval to i32), ptr @__kstrtab_devfreq_update_interval, ptr @__kstrtabns_devfreq_update_interval }, section "___ksymtab+devfreq_update_interval", align 4
@devfreq_add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 791, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Invalid parameters.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"devfreq_add_device\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@devfreq_add_device._entry_ptr = internal global ptr @devfreq_add_device._entry, section ".printk_index", align 4
@devfreq_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.72, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devfreq_list_lock, i64 52), ptr getelementptr (i8, ptr @devfreq_list_lock, i64 52) }, ptr @devfreq_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.73, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@devfreq_add_device._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str, i32 800, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: devfreq device already exists!\0A\00", [60 x i8] zeroinitializer }, align 32
@devfreq_add_device._entry_ptr.12 = internal global ptr @devfreq_add_device._entry.10, section ".printk_index", align 4
@devfreq_add_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&devfreq->lock\00", [17 x i8] zeroinitializer }, align 32
@devfreq_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@devfreq_add_device._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str, i32 922, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Unable to find governor for the device\0A\00", [52 x i8] zeroinitializer }, align 32
@devfreq_add_device._entry_ptr.17 = internal global ptr @devfreq_add_device._entry.15, section ".printk_index", align 4
@devfreq_add_device._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str, i32 932, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Unable to start governor for the device\0A\00", [51 x i8] zeroinitializer }, align 32
@devfreq_add_device._entry_ptr.20 = internal global ptr @devfreq_add_device._entry.18, section ".printk_index", align 4
@devfreq_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @devfreq_list, ptr @devfreq_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_devfreq_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_add_device to i32), ptr @__kstrtab_devfreq_add_device, ptr @__kstrtabns_devfreq_add_device }, section "___ksymtab+devfreq_add_device", align 4
@__kstrtab_devfreq_remove_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_remove_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_remove_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_remove_device to i32), ptr @__kstrtab_devfreq_remove_device, ptr @__kstrtabns_devfreq_remove_device }, section "___ksymtab+devfreq_remove_device", align 4
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"devm_devfreq_dev_release\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_devm_devfreq_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_add_device to i32), ptr @__kstrtab_devm_devfreq_add_device, ptr @__kstrtabns_devm_devfreq_add_device }, section "___ksymtab+devm_devfreq_add_device", align 4
@__kstrtab_devfreq_get_devfreq_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_get_devfreq_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_get_devfreq_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_get_devfreq_by_node to i32), ptr @__kstrtab_devfreq_get_devfreq_by_node, ptr @__kstrtabns_devfreq_get_devfreq_by_node }, section "___ksymtab_gpl+devfreq_get_devfreq_by_node", align 4
@__kstrtab_devfreq_get_devfreq_by_phandle = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_get_devfreq_by_phandle = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_get_devfreq_by_phandle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_get_devfreq_by_phandle to i32), ptr @__kstrtab_devfreq_get_devfreq_by_phandle, ptr @__kstrtabns_devfreq_get_devfreq_by_phandle }, section "___ksymtab_gpl+devfreq_get_devfreq_by_phandle", align 4
@__kstrtab_devm_devfreq_remove_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_remove_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_remove_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_remove_device to i32), ptr @__kstrtab_devm_devfreq_remove_device, ptr @__kstrtabns_devm_devfreq_remove_device }, section "___ksymtab+devm_devfreq_remove_device", align 4
@__kstrtab_devfreq_suspend_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_suspend_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_suspend_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_suspend_device to i32), ptr @__kstrtab_devfreq_suspend_device, ptr @__kstrtabns_devfreq_suspend_device }, section "___ksymtab+devfreq_suspend_device", align 4
@__kstrtab_devfreq_resume_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_resume_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_resume_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_resume_device to i32), ptr @__kstrtab_devfreq_resume_device, ptr @__kstrtabns_devfreq_resume_device }, section "___ksymtab+devfreq_resume_device", align 4
@devfreq_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 1213, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to suspend devfreq device\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"devfreq_suspend\00", [16 x i8] zeroinitializer }, align 32
@devfreq_suspend._entry_ptr = internal global ptr @devfreq_suspend._entry, section ".printk_index", align 4
@devfreq_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str, i32 1234, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to resume devfreq device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"devfreq_resume\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@devfreq_resume._entry_ptr = internal global ptr @devfreq_resume._entry, section ".printk_index", align 4
@devfreq_add_governor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 1250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: Invalid parameters.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"devfreq_add_governor\00", [43 x i8] zeroinitializer }, align 32
@devfreq_add_governor._entry_ptr = internal global ptr @devfreq_add_governor._entry, section ".printk_index", align 4
@devfreq_add_governor._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: governor %s already registered\0A\00", [58 x i8] zeroinitializer }, align 32
@devfreq_add_governor._entry_ptr.31 = internal global ptr @devfreq_add_governor._entry.29, section ".printk_index", align 4
@devfreq_governor_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @devfreq_governor_list, ptr @devfreq_governor_list }, [24 x i8] zeroinitializer }, align 32
@devfreq_add_governor._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str, i32 1275, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Governor %s already present\0A\00", [63 x i8] zeroinitializer }, align 32
@devfreq_add_governor._entry_ptr.34 = internal global ptr @devfreq_add_governor._entry.32, section ".printk_index", align 4
@devfreq_add_governor._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str, i32 1282, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Governor %s stop = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@devfreq_add_governor._entry_ptr.37 = internal global ptr @devfreq_add_governor._entry.35, section ".printk_index", align 4
@devfreq_add_governor._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str, i32 1292, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Governor %s start=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@devfreq_add_governor._entry_ptr.40 = internal global ptr @devfreq_add_governor._entry.38, section ".printk_index", align 4
@__kstrtab_devfreq_add_governor = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_add_governor = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_add_governor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_add_governor to i32), ptr @__kstrtab_devfreq_add_governor, ptr @__kstrtabns_devfreq_add_governor }, section "___ksymtab+devfreq_add_governor", align 4
@__kstrtab_devm_devfreq_add_governor = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_add_governor = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_add_governor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_add_governor to i32), ptr @__kstrtab_devm_devfreq_add_governor, ptr @__kstrtabns_devm_devfreq_add_governor }, section "___ksymtab+devm_devfreq_add_governor", align 4
@devfreq_remove_governor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.41, ptr @.str, i32 1341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"devfreq_remove_governor\00", [40 x i8] zeroinitializer }, align 32
@devfreq_remove_governor._entry_ptr = internal global ptr @devfreq_remove_governor._entry, section ".printk_index", align 4
@devfreq_remove_governor._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: governor %s not registered\0A\00", [62 x i8] zeroinitializer }, align 32
@devfreq_remove_governor._entry_ptr.44 = internal global ptr @devfreq_remove_governor._entry.42, section ".printk_index", align 4
@devfreq_remove_governor._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str, i32 1362, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Governor %s NOT present\0A\00", [35 x i8] zeroinitializer }, align 32
@devfreq_remove_governor._entry_ptr.47 = internal global ptr @devfreq_remove_governor._entry.45, section ".printk_index", align 4
@devfreq_remove_governor._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str, i32 1371, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Governor %s stop=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@devfreq_remove_governor._entry_ptr.50 = internal global ptr @devfreq_remove_governor._entry.48, section ".printk_index", align 4
@__kstrtab_devfreq_remove_governor = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_remove_governor = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_remove_governor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_remove_governor to i32), ptr @__kstrtab_devfreq_remove_governor, ptr @__kstrtabns_devfreq_remove_governor }, section "___ksymtab+devfreq_remove_governor", align 4
@__initcall__kmod_devfreq__271_2008_devfreq_init4 = internal global ptr @devfreq_init, section ".initcall4.init", align 4
@__kstrtab_devfreq_recommended_opp = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_recommended_opp = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_recommended_opp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_recommended_opp to i32), ptr @__kstrtab_devfreq_recommended_opp, ptr @__kstrtabns_devfreq_recommended_opp }, section "___ksymtab+devfreq_recommended_opp", align 4
@__kstrtab_devfreq_register_opp_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_register_opp_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_register_opp_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_register_opp_notifier to i32), ptr @__kstrtab_devfreq_register_opp_notifier, ptr @__kstrtabns_devfreq_register_opp_notifier }, section "___ksymtab+devfreq_register_opp_notifier", align 4
@__kstrtab_devfreq_unregister_opp_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_unregister_opp_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_unregister_opp_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_unregister_opp_notifier to i32), ptr @__kstrtab_devfreq_unregister_opp_notifier, ptr @__kstrtabns_devfreq_unregister_opp_notifier }, section "___ksymtab+devfreq_unregister_opp_notifier", align 4
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"devm_devfreq_opp_release\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_devm_devfreq_register_opp_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_register_opp_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_register_opp_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_register_opp_notifier to i32), ptr @__kstrtab_devm_devfreq_register_opp_notifier, ptr @__kstrtabns_devm_devfreq_register_opp_notifier }, section "___ksymtab+devm_devfreq_register_opp_notifier", align 4
@__kstrtab_devm_devfreq_unregister_opp_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_unregister_opp_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_unregister_opp_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_unregister_opp_notifier to i32), ptr @__kstrtab_devm_devfreq_unregister_opp_notifier, ptr @__kstrtabns_devm_devfreq_unregister_opp_notifier }, section "___ksymtab+devm_devfreq_unregister_opp_notifier", align 4
@__kstrtab_devfreq_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_register_notifier to i32), ptr @__kstrtab_devfreq_register_notifier, ptr @__kstrtabns_devfreq_register_notifier }, section "___ksymtab+devfreq_register_notifier", align 4
@__kstrtab_devfreq_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_unregister_notifier to i32), ptr @__kstrtab_devfreq_unregister_notifier, ptr @__kstrtabns_devfreq_unregister_notifier }, section "___ksymtab+devfreq_unregister_notifier", align 4
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"devm_devfreq_notifier_release\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_devm_devfreq_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_register_notifier to i32), ptr @__kstrtab_devm_devfreq_register_notifier, ptr @__kstrtabns_devm_devfreq_register_notifier }, section "___ksymtab+devm_devfreq_register_notifier", align 4
@__kstrtab_devm_devfreq_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_unregister_notifier to i32), ptr @__kstrtab_devm_devfreq_unregister_notifier, ptr @__kstrtabns_devm_devfreq_unregister_notifier }, section "___ksymtab+devm_devfreq_unregister_notifier", align 4
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_name\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"freq\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"prev_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"busy_time\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"total_time\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"dev_name=%-30s freq=%-12lu prev_freq=%-12lu load=%-2lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"polling_ms\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"dev_name=%-30s freq=%-12lu polling_ms=%-3u load=%-2lu\0A\00", [41 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@devfreq_set_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str, i32 386, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Couldn't update frequency transition information.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"devfreq_set_target\00", [45 x i8] zeroinitializer }, align 32
@devfreq_set_target._entry_ptr = internal global ptr @devfreq_set_target._entry, section ".printk_index", align 4
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/devfreq.h\00", [33 x i8] zeroinitializer }, align 32
@trace_devfreq_frequency.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@devfreq_monitor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str, i32 465, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dvfs failed with (%d) error\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"devfreq_monitor\00", [16 x i8] zeroinitializer }, align 32
@devfreq_monitor._entry_ptr = internal global ptr @devfreq_monitor._entry, section ".printk_index", align 4
@trace_devfreq_monitor.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"devfreq_list_lock.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"devfreq_list_lock\00", [46 x i8] zeroinitializer }, align 32
@find_device_devfreq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013DEVFREQ: %s: Invalid parameters\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"find_device_devfreq\00", [44 x i8] zeroinitializer }, align 32
@find_device_devfreq._entry_ptr = internal global ptr @find_device_devfreq._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@devfreq_dev_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str, i32 738, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to remove max_freq notifier: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"devfreq_dev_release\00", [44 x i8] zeroinitializer }, align 32
@devfreq_dev_release._entry_ptr = internal global ptr @devfreq_dev_release._entry, section ".printk_index", align 4
@devfreq_dev_release._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str, i32 743, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to remove min_freq notifier: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@devfreq_dev_release._entry_ptr.80 = internal global ptr @devfreq_dev_release._entry.78, section ".printk_index", align 4
@devfreq_dev_release._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str, i32 749, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to remove max_freq request: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@devfreq_dev_release._entry_ptr.83 = internal global ptr @devfreq_dev_release._entry.81, section ".printk_index", align 4
@devfreq_dev_release._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.77, ptr @.str, i32 755, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to remove min_freq request: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@devfreq_dev_release._entry_ptr.86 = internal global ptr @devfreq_dev_release._entry.84, section ".printk_index", align 4
@devfreq_notifier_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str, i32 675, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to update frequency from OPP notifier (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"devfreq_notifier_call\00", [42 x i8] zeroinitializer }, align 32
@devfreq_notifier_call._entry_ptr = internal global ptr @devfreq_notifier_call._entry, section ".printk_index", align 4
@qos_notifier_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str, i32 694, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to update frequency from PM QoS (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qos_notifier_call\00", [46 x i8] zeroinitializer }, align 32
@qos_notifier_call._entry_ptr = internal global ptr @qos_notifier_call._entry, section ".printk_index", align 4
@try_then_request_governor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.91, ptr @.str, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"try_then_request_governor\00", [38 x i8] zeroinitializer }, align 32
@try_then_request_governor._entry_ptr = internal global ptr @try_then_request_governor._entry, section ".printk_index", align 4
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"simple_ondemand\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"governor_%s\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"simpleondemand\00", [17 x i8] zeroinitializer }, align 32
@find_devfreq_governor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.95, ptr @.str, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"find_devfreq_governor\00", [42 x i8] zeroinitializer }, align 32
@find_devfreq_governor._entry_ptr = internal global ptr @find_devfreq_governor._entry, section ".printk_index", align 4
@dev_attr_polling_interval = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @polling_interval_show, ptr @polling_interval_store }, [36 x i8] zeroinitializer }, align 32
@create_sysfs_files._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str, i32 1888, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to create attr(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"create_sysfs_files\00", [45 x i8] zeroinitializer }, align 32
@create_sysfs_files._entry_ptr = internal global ptr @create_sysfs_files._entry, section ".printk_index", align 4
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"##name\00", [25 x i8] zeroinitializer }, align 32
@dev_attr_timer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timer_show, ptr @timer_store }, [36 x i8] zeroinitializer }, align 32
@create_sysfs_files._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str, i32 1890, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@create_sysfs_files._entry_ptr.100 = internal global ptr @create_sysfs_files._entry.99, section ".printk_index", align 4
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"polling_interval\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@timer_name = internal constant { [2 x [16 x i8]], [32 x i8] } { [2 x [16 x i8]] [[16 x i8] c"deferrable\00\00\00\00\00\00", [16 x i8] c"delayed\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%16s\00", [27 x i8] zeroinitializer }, align 32
@timer_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str, i32 1860, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Governor %s not stopped(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timer_store\00", [20 x i8] zeroinitializer }, align 32
@timer_store._entry_ptr = internal global ptr @timer_store._entry, section ".printk_index", align 4
@timer_store._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str, i32 1867, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Governor %s not started(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@timer_store._entry_ptr.111 = internal global ptr @timer_store._entry.109, section ".printk_index", align 4
@devfreq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devfreq\00", [24 x i8] zeroinitializer }, align 32
@devfreq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str, i32 1989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: couldn't create class\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"devfreq_init\00", [19 x i8] zeroinitializer }, align 32
@devfreq_init._entry_ptr = internal global ptr @devfreq_init._entry, section ".printk_index", align 4
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"devfreq_wq\00", [21 x i8] zeroinitializer }, align 32
@devfreq_init._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.114, ptr @.str, i32 1996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: couldn't create workqueue\0A\00", [63 x i8] zeroinitializer }, align 32
@devfreq_init._entry_ptr.118 = internal global ptr @devfreq_init._entry.116, section ".printk_index", align 4
@devfreq_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @devfreq_group, ptr null], [24 x i8] zeroinitializer }, align 32
@devfreq_debugfs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"devfreq_summary\00", [16 x i8] zeroinitializer }, align 32
@devfreq_summary_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @devfreq_summary_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@devfreq_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @devfreq_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@devfreq_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @dev_attr_name, ptr @dev_attr_governor, ptr @dev_attr_available_governors, ptr @dev_attr_cur_freq, ptr @dev_attr_available_frequencies, ptr @dev_attr_target_freq, ptr @dev_attr_min_freq, ptr @dev_attr_max_freq, ptr @dev_attr_trans_stat, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_governor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @governor_show, ptr @governor_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_available_governors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @available_governors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cur_freq = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cur_freq_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_available_frequencies = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @available_frequencies_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_target_freq = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @target_freq_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_min_freq = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @min_freq_show, ptr @min_freq_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_freq = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_freq_show, ptr @max_freq_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trans_stat = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @trans_stat_show, ptr @trans_stat_store }, [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"governor\00", [23 x i8] zeroinitializer }, align 32
@governor_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.122, ptr @.str, i32 1441, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"governor_store\00", [17 x i8] zeroinitializer }, align 32
@governor_store._entry_ptr = internal global ptr @governor_store._entry, section ".printk_index", align 4
@governor_store._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.122, ptr @.str, i32 1455, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@governor_store._entry_ptr.124 = internal global ptr @governor_store._entry.123, section ".printk_index", align 4
@governor_store._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.122, ptr @.str, i32 1463, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: reverting to Governor %s failed (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@governor_store._entry_ptr.127 = internal global ptr @governor_store._entry.125, section ".printk_index", align 4
@.str.128 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"available_governors\00", [44 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cur_freq\00", [23 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"available_frequencies\00", [42 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu \00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"target_freq\00", [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"min_freq\00", [23 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%lu\00", [28 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max_freq\00", [23 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"trans_stat\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Not Supported.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"     From  :   To\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"           :\00", [19 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%10lu\00", [26 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"   time(ms)\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%10lu:\00", [25 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%10u\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%10llu\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Total transition : %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%-30s %-30s %-15s %-10s %10s %12s %12s %12s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"parent_dev\00", [21 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cur_freq_Hz\00", [20 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"min_freq_Hz\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_freq_Hz\00", [20 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%30s %30s %15s %10s %10s %12s %12s %12s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"------------------------------\00", [33 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"---------------\00", [16 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"----------\00", [21 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"------------\00", [19 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"passive\00", [24 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%-30s %-30s %-15s %-10s %10d %12ld %12ld %12ld\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"null\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.167 = private unnamed_addr constant [32 x i8] c"str__devfreq__trace_system_name\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 36, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant [37 x i8] c"trace_event_fields_devfreq_frequency\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_devfreq_frequency\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [28 x i8] c"print_fmt_devfreq_frequency\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [24 x i8] c"event_devfreq_frequency\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [35 x i8] c"trace_event_fields_devfreq_monitor\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_devfreq_monitor\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [26 x i8] c"print_fmt_devfreq_monitor\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [22 x i8] c"event_devfreq_monitor\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 224, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 490, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 493, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [11 x i8] c"devfreq_wq\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 47, i32 33 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 791, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [18 x i8] c"devfreq_list_lock\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 799, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 811, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [14 x i8] c"devfreq_class\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 39, i32 22 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 859, i32 30 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 921, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 931, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [13 x i8] c"devfreq_list\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 52, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1020, i32 8 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1212, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1233, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1250, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1257, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [22 x i8] c"devfreq_governor_list\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 50, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1273, i32 5 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1279, i32 6 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1290, i32 5 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1341, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1348, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1361, i32 5 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1369, i32 5 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 2097, i32 8 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 2213, i32 8 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 39, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 385, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant [34 x i8] c"../include/trace/events/devfreq.h\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 11, i32 1 }
@___asan_gen_.411 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 108, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 465, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 53, i32 8 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 74, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 737, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 742, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 748, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 754, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 673, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 692, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 303, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 311, i32 22 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 313, i32 10 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 272, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant [26 x i8] c"dev_attr_polling_interval\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1888, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant [15 x i8] c"dev_attr_timer\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1890, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1808, i32 8 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1785, i32 22 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1799, i32 20 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1871, i32 8 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1818, i32 22 }
@___asan_gen_.539 = private unnamed_addr constant [11 x i8] c"timer_name\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 55, i32 19 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1832, i32 20 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1859, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1866, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1987, i32 18 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1989, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1993, i32 15 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1996, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant [15 x i8] c"devfreq_groups\00", align 1
@___asan_gen_.587 = private unnamed_addr constant [16 x i8] c"devfreq_debugfs\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 40, i32 23 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 2002, i32 22 }
@___asan_gen_.593 = private unnamed_addr constant [21 x i8] c"devfreq_summary_fops\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1983, i32 1 }
@___asan_gen_.596 = private unnamed_addr constant [14 x i8] c"devfreq_group\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1775, i32 1 }
@___asan_gen_.599 = private unnamed_addr constant [14 x i8] c"devfreq_attrs\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1763, i32 26 }
@___asan_gen_.602 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [18 x i8] c"dev_attr_governor\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [29 x i8] c"dev_attr_available_governors\00", align 1
@___asan_gen_.611 = private unnamed_addr constant [18 x i8] c"dev_attr_cur_freq\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [31 x i8] c"dev_attr_available_frequencies\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [21 x i8] c"dev_attr_target_freq\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [18 x i8] c"dev_attr_min_freq\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [18 x i8] c"dev_attr_max_freq\00", align 1
@___asan_gen_.626 = private unnamed_addr constant [20 x i8] c"dev_attr_trans_stat\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1391, i32 8 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1482, i32 8 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1440, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1454, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1461, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1528, i32 8 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1502, i32 7 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1545, i32 8 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1541, i32 23 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1677, i32 8 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1666, i32 5 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1554, i32 8 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1595, i32 8 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1570, i32 20 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1649, i32 8 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1761, i32 8 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1692, i32 23 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1702, i32 21 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1703, i32 28 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1705, i32 29 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1708, i32 28 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1717, i32 29 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1720, i32 30 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1723, i32 29 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1727, i32 28 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1922, i32 16 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1923, i32 4 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1924, i32 4 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1928, i32 4 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1929, i32 4 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1930, i32 4 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1931, i32 16 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1932, i32 4 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1934, i32 4 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1935, i32 4 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1937, i32 4 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1945, i32 41 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1968, i32 4 }
@___asan_gen_.749 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.750 = private constant [29 x i8] c"../drivers/devfreq/devfreq.c\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1970, i32 44 }
@llvm.compiler.used = appending global [269 x ptr] [ptr @__bpf_trace_tp_map_devfreq_frequency, ptr @__bpf_trace_tp_map_devfreq_monitor, ptr @__event_devfreq_frequency, ptr @__event_devfreq_monitor, ptr @__initcall__kmod_devfreq__271_2008_devfreq_init4, ptr @__ksymtab_devfreq_add_device, ptr @__ksymtab_devfreq_add_governor, ptr @__ksymtab_devfreq_get_devfreq_by_node, ptr @__ksymtab_devfreq_get_devfreq_by_phandle, ptr @__ksymtab_devfreq_monitor_resume, ptr @__ksymtab_devfreq_monitor_start, ptr @__ksymtab_devfreq_monitor_stop, ptr @__ksymtab_devfreq_monitor_suspend, ptr @__ksymtab_devfreq_recommended_opp, ptr @__ksymtab_devfreq_register_notifier, ptr @__ksymtab_devfreq_register_opp_notifier, ptr @__ksymtab_devfreq_remove_device, ptr @__ksymtab_devfreq_remove_governor, ptr @__ksymtab_devfreq_resume_device, ptr @__ksymtab_devfreq_suspend_device, ptr @__ksymtab_devfreq_unregister_notifier, ptr @__ksymtab_devfreq_unregister_opp_notifier, ptr @__ksymtab_devfreq_update_interval, ptr @__ksymtab_devfreq_update_status, ptr @__ksymtab_devfreq_update_target, ptr @__ksymtab_devm_devfreq_add_device, ptr @__ksymtab_devm_devfreq_add_governor, ptr @__ksymtab_devm_devfreq_register_notifier, ptr @__ksymtab_devm_devfreq_register_opp_notifier, ptr @__ksymtab_devm_devfreq_remove_device, ptr @__ksymtab_devm_devfreq_unregister_notifier, ptr @__ksymtab_devm_devfreq_unregister_opp_notifier, ptr @__ksymtab_update_devfreq, ptr @__tracepoint_devfreq_frequency, ptr @__tracepoint_devfreq_monitor, ptr @__tracepoint_ptr_devfreq_frequency, ptr @__tracepoint_ptr_devfreq_monitor, ptr @create_sysfs_files._entry, ptr @create_sysfs_files._entry.99, ptr @create_sysfs_files._entry_ptr, ptr @create_sysfs_files._entry_ptr.100, ptr @devfreq_add_device._entry, ptr @devfreq_add_device._entry.10, ptr @devfreq_add_device._entry.15, ptr @devfreq_add_device._entry.18, ptr @devfreq_add_device._entry_ptr, ptr @devfreq_add_device._entry_ptr.12, ptr @devfreq_add_device._entry_ptr.17, ptr @devfreq_add_device._entry_ptr.20, ptr @devfreq_add_governor._entry, ptr @devfreq_add_governor._entry.29, ptr @devfreq_add_governor._entry.32, ptr @devfreq_add_governor._entry.35, ptr @devfreq_add_governor._entry.38, ptr @devfreq_add_governor._entry_ptr, ptr @devfreq_add_governor._entry_ptr.31, ptr @devfreq_add_governor._entry_ptr.34, ptr @devfreq_add_governor._entry_ptr.37, ptr @devfreq_add_governor._entry_ptr.40, ptr @devfreq_dev_release._entry, ptr @devfreq_dev_release._entry.78, ptr @devfreq_dev_release._entry.81, ptr @devfreq_dev_release._entry.84, ptr @devfreq_dev_release._entry_ptr, ptr @devfreq_dev_release._entry_ptr.80, ptr @devfreq_dev_release._entry_ptr.83, ptr @devfreq_dev_release._entry_ptr.86, ptr @devfreq_init._entry, ptr @devfreq_init._entry.116, ptr @devfreq_init._entry_ptr, ptr @devfreq_init._entry_ptr.118, ptr @devfreq_monitor._entry, ptr @devfreq_monitor._entry_ptr, ptr @devfreq_notifier_call._entry, ptr @devfreq_notifier_call._entry_ptr, ptr @devfreq_remove_governor._entry, ptr @devfreq_remove_governor._entry.42, ptr @devfreq_remove_governor._entry.45, ptr @devfreq_remove_governor._entry.48, ptr @devfreq_remove_governor._entry_ptr, ptr @devfreq_remove_governor._entry_ptr.44, ptr @devfreq_remove_governor._entry_ptr.47, ptr @devfreq_remove_governor._entry_ptr.50, ptr @devfreq_resume._entry, ptr @devfreq_resume._entry_ptr, ptr @devfreq_set_target._entry, ptr @devfreq_set_target._entry_ptr, ptr @devfreq_suspend._entry, ptr @devfreq_suspend._entry_ptr, ptr @event_class_devfreq_frequency, ptr @event_class_devfreq_monitor, ptr @event_devfreq_frequency, ptr @event_devfreq_monitor, ptr @find_devfreq_governor._entry, ptr @find_devfreq_governor._entry_ptr, ptr @find_device_devfreq._entry, ptr @find_device_devfreq._entry_ptr, ptr @governor_store._entry, ptr @governor_store._entry.123, ptr @governor_store._entry.125, ptr @governor_store._entry_ptr, ptr @governor_store._entry_ptr.124, ptr @governor_store._entry_ptr.127, ptr @qos_notifier_call._entry, ptr @qos_notifier_call._entry_ptr, ptr @timer_store._entry, ptr @timer_store._entry.109, ptr @timer_store._entry_ptr, ptr @timer_store._entry_ptr.111, ptr @try_then_request_governor._entry, ptr @try_then_request_governor._entry_ptr, ptr @str__devfreq__trace_system_name, ptr @trace_event_fields_devfreq_frequency, ptr @trace_event_type_funcs_devfreq_frequency, ptr @print_fmt_devfreq_frequency, ptr @trace_event_fields_devfreq_monitor, ptr @trace_event_type_funcs_devfreq_monitor, ptr @print_fmt_devfreq_monitor, ptr @.str, ptr @devfreq_monitor_start.__key, ptr @.str.1, ptr @devfreq_monitor_start.__key.2, ptr @.str.3, ptr @devfreq_monitor_start.__key.4, ptr @devfreq_monitor_start.__key.5, ptr @devfreq_wq, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @devfreq_list_lock, ptr @.str.11, ptr @devfreq_add_device.__key, ptr @.str.13, ptr @devfreq_class, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @devfreq_list, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @devfreq_governor_list, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @dev_attr_polling_interval, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @dev_attr_timer, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @timer_name, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @devfreq_init.__key, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @devfreq_groups, ptr @devfreq_debugfs, ptr @.str.119, ptr @devfreq_summary_fops, ptr @devfreq_group, ptr @devfreq_attrs, ptr @dev_attr_name, ptr @dev_attr_governor, ptr @dev_attr_available_governors, ptr @dev_attr_cur_freq, ptr @dev_attr_available_frequencies, ptr @dev_attr_target_freq, ptr @dev_attr_min_freq, ptr @dev_attr_max_freq, ptr @dev_attr_trans_stat, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164], section "llvm.metadata"
@0 = internal global [195 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__devfreq__trace_system_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_devfreq_frequency to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_devfreq_frequency to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_devfreq_frequency to i32), i32 174, i32 224, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_devfreq_frequency to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_devfreq_monitor to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_devfreq_monitor to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_devfreq_monitor to i32), i32 174, i32 224, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_devfreq_monitor to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_monitor_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_monitor_start.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_monitor_start.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_monitor_start.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_add_device._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_add_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_add_device._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_add_device._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_add_governor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_add_governor._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_governor_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_add_governor._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_add_governor._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_add_governor._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_remove_governor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_remove_governor._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_remove_governor._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_remove_governor._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_set_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_monitor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_device_devfreq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_dev_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_dev_release._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_dev_release._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_dev_release._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_notifier_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qos_notifier_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_then_request_governor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_devfreq_governor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_polling_interval to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_sysfs_files._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_sysfs_files._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_store._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_init._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_debugfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_summary_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_governor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_available_governors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cur_freq to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_available_frequencies to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_target_freq to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_min_freq to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_freq to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trans_stat to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @governor_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @governor_store._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @governor_store._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_devfreq_frequency(ptr nocapture readnone %__data, ptr noundef %devfreq, i32 noundef %freq, i32 noundef %prev_freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_devfreq_frequency, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %devfreq, i32 noundef %freq, i32 noundef %prev_freq) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_devfreq_monitor(ptr nocapture readnone %__data, ptr noundef %devfreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_devfreq_monitor, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %devfreq) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_devfreq_frequency(ptr noundef %__data, ptr nocapture noundef readonly %devfreq, i32 noundef %freq, i32 noundef %prev_freq) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !427

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !428

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dev.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2
  %init_name.i.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_devfreq_frequency.exit_crit_edge

if.end.trace_event_get_offsets_devfreq_frequency.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %trace_event_get_offsets_devfreq_frequency.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %tobool.not.i35 = icmp eq ptr %6, null
  %spec.select = select i1 %tobool.not.i35, ptr @.str.53, ptr %6
  br label %trace_event_get_offsets_devfreq_frequency.exit

trace_event_get_offsets_devfreq_frequency.exit:   ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_devfreq_frequency.exit_crit_edge
  %cond.i = phi ptr [ %4, %if.end.trace_event_get_offsets_devfreq_frequency.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #18
  %add = add i32 %call4.i, 29
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_devfreq_frequency.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_devfreq_frequency.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_devfreq_frequency.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_devfreq_frequency.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65564
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %__data_loc_dev_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i36 = icmp eq ptr %9, null
  br i1 %tobool.not.i36, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i41

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end.i41:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i41, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.53, %dev_name.exit.cond.end_crit_edge ], [ %13, %if.end.i41 ], [ %9, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #19
  %freq12 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %call3, i32 0, i32 2
  %14 = ptrtoint ptr %freq12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %freq, ptr %freq12, align 4
  %prev_freq13 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %call3, i32 0, i32 3
  %15 = ptrtoint ptr %prev_freq13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %prev_freq, ptr %prev_freq13, align 4
  %last_status = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 9
  %busy_time = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %busy_time to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %busy_time, align 4
  %busy_time14 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %call3, i32 0, i32 4
  %18 = ptrtoint ptr %busy_time14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %busy_time14, align 4
  %19 = ptrtoint ptr %last_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_status, align 8
  %total_time16 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %call3, i32 0, i32 5
  %21 = ptrtoint ptr %total_time16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %total_time16, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_devfreq_frequency.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_devfreq_frequency(ptr noundef %__data, ptr nocapture noundef readonly %devfreq, i32 noundef %freq, i32 noundef %prev_freq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !429
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !429
  %dev.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2
  %init_name.i.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_devfreq_frequency.exit_crit_edge

entry.trace_event_get_offsets_devfreq_frequency.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %trace_event_get_offsets_devfreq_frequency.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.53, ptr %5
  br label %trace_event_get_offsets_devfreq_frequency.exit

trace_event_get_offsets_devfreq_frequency.exit:   ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_devfreq_frequency.exit_crit_edge
  %cond.i = phi ptr [ %3, %entry.trace_event_get_offsets_devfreq_frequency.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #18
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65564
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %6 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %perf_events, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !417) #15
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, %8
  %15 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %16 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %17, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_devfreq_frequency.exit.if.end_crit_edge

trace_event_get_offsets_devfreq_frequency.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_devfreq_frequency.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_devfreq_frequency.exit
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %15, align 4
  %tobool.not.i59.not = icmp eq ptr %19, null
  br i1 %tobool.not.i59.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_devfreq_frequency.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 40
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %20 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__regs, align 4
  %22 = call ptr @llvm.returnaddress(i32 0) #15
  %23 = ptrtoint ptr %22 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %21, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %25 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %26 = ptrtoint ptr %25 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %21, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i, align 4
  %28 = call i32 @llvm.read_register.i32(metadata !417) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %21, i32 0, i32 13
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %21, i32 0, i32 16
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %__data_loc_dev_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i60 = icmp eq ptr %33, null
  br i1 %tobool.not.i60, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %tobool20.not = icmp eq ptr %35, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i63

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end.i63:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i63, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.53, %dev_name.exit.cond.end_crit_edge ], [ %37, %if.end.i63 ], [ %33, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #19
  %freq24 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %call13, i32 0, i32 2
  %38 = ptrtoint ptr %freq24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %freq, ptr %freq24, align 4
  %prev_freq25 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %call13, i32 0, i32 3
  %39 = ptrtoint ptr %prev_freq25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %prev_freq, ptr %prev_freq25, align 4
  %last_status = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 9
  %busy_time = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %busy_time to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %busy_time, align 4
  %busy_time26 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %call13, i32 0, i32 4
  %42 = ptrtoint ptr %busy_time26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %busy_time26, align 4
  %43 = ptrtoint ptr %last_status to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %last_status, align 8
  %total_time28 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %call13, i32 0, i32 5
  %45 = ptrtoint ptr %total_time28 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %total_time28, align 4
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %15, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_devfreq_monitor(ptr noundef %__data, ptr nocapture noundef readonly %devfreq) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !427

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !428

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dev.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2
  %init_name.i.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_devfreq_monitor.exit_crit_edge

if.end.trace_event_get_offsets_devfreq_monitor.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %trace_event_get_offsets_devfreq_monitor.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %tobool.not.i34 = icmp eq ptr %6, null
  %spec.select = select i1 %tobool.not.i34, ptr @.str.53, ptr %6
  br label %trace_event_get_offsets_devfreq_monitor.exit

trace_event_get_offsets_devfreq_monitor.exit:     ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_devfreq_monitor.exit_crit_edge
  %cond.i = phi ptr [ %4, %if.end.trace_event_get_offsets_devfreq_monitor.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #18
  %add = add i32 %call4.i, 29
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_devfreq_monitor.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_devfreq_monitor.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_devfreq_monitor.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_devfreq_monitor.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65564
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %__data_loc_dev_name, align 4
  %previous_freq = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 8
  %8 = ptrtoint ptr %previous_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %previous_freq, align 4
  %freq = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %call3, i32 0, i32 1
  %10 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %freq, align 4
  %last_status = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 9
  %busy_time = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %busy_time to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %busy_time, align 4
  %busy_time6 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %call3, i32 0, i32 2
  %13 = ptrtoint ptr %busy_time6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %busy_time6, align 4
  %14 = ptrtoint ptr %last_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_status, align 8
  %total_time8 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %call3, i32 0, i32 3
  %16 = ptrtoint ptr %total_time8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %total_time8, align 4
  %profile = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 3
  %17 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %profile, align 8
  %polling_ms = getelementptr inbounds %struct.devfreq_dev_profile, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %polling_ms to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %polling_ms, align 4
  %polling_ms9 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %call3, i32 0, i32 4
  %21 = ptrtoint ptr %polling_ms9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %polling_ms9, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %22 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i35 = icmp eq ptr %23, null
  br i1 %tobool.not.i35, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %tobool12.not = icmp eq ptr %25, null
  br i1 %tobool12.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i40

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end.i40:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i40, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.53, %dev_name.exit.cond.end_crit_edge ], [ %27, %if.end.i40 ], [ %23, %if.end5.cond.end_crit_edge ]
  %call15 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #19
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_devfreq_monitor.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_devfreq_monitor(ptr noundef %__data, ptr nocapture noundef readonly %devfreq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !429
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !429
  %dev.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2
  %init_name.i.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_devfreq_monitor.exit_crit_edge

entry.trace_event_get_offsets_devfreq_monitor.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %trace_event_get_offsets_devfreq_monitor.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.53, ptr %5
  br label %trace_event_get_offsets_devfreq_monitor.exit

trace_event_get_offsets_devfreq_monitor.exit:     ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_devfreq_monitor.exit_crit_edge
  %cond.i = phi ptr [ %3, %entry.trace_event_get_offsets_devfreq_monitor.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #18
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65564
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %6 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %perf_events, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !417) #15
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, %8
  %15 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %16 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %17, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_devfreq_monitor.exit.if.end_crit_edge

trace_event_get_offsets_devfreq_monitor.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_devfreq_monitor.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_devfreq_monitor.exit
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %15, align 4
  %tobool.not.i58.not = icmp eq ptr %19, null
  br i1 %tobool.not.i58.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_devfreq_monitor.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 40
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %20 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__regs, align 4
  %22 = call ptr @llvm.returnaddress(i32 0) #15
  %23 = ptrtoint ptr %22 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %21, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %25 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %26 = ptrtoint ptr %25 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %21, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i, align 4
  %28 = call i32 @llvm.read_register.i32(metadata !417) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %21, i32 0, i32 13
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %21, i32 0, i32 16
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %__data_loc_dev_name, align 4
  %previous_freq = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 8
  %32 = ptrtoint ptr %previous_freq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %previous_freq, align 4
  %freq = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %call13, i32 0, i32 1
  %34 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %freq, align 4
  %last_status = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 9
  %busy_time = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %busy_time to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %busy_time, align 4
  %busy_time17 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %call13, i32 0, i32 2
  %37 = ptrtoint ptr %busy_time17 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %busy_time17, align 4
  %38 = ptrtoint ptr %last_status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %last_status, align 8
  %total_time19 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %call13, i32 0, i32 3
  %40 = ptrtoint ptr %total_time19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %total_time19, align 4
  %profile = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 3
  %41 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %profile, align 8
  %polling_ms = getelementptr inbounds %struct.devfreq_dev_profile, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %polling_ms to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %polling_ms, align 4
  %polling_ms20 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %call13, i32 0, i32 4
  %45 = ptrtoint ptr %polling_ms20 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %polling_ms20, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %46 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i59 = icmp eq ptr %47, null
  br i1 %tobool.not.i59, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %tobool24.not = icmp eq ptr %49, null
  br i1 %tobool24.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i62

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end.i62:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i62, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.53, %dev_name.exit.cond.end_crit_edge ], [ %51, %if.end.i62 ], [ %47, %if.end16.cond.end_crit_edge ]
  %call27 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #19
  %52 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rctx, align 4
  %54 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %53, ptr noundef %__data, i64 noundef 1, ptr noundef %55, ptr noundef %15, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_devfreq_frequency(ptr noundef %__data, ptr noundef %devfreq, i32 noundef %freq, i32 noundef %prev_freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %devfreq to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %freq to i64
  %conv8 = zext i32 %prev_freq to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_devfreq_monitor(ptr noundef %__data, ptr noundef %devfreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %devfreq to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devfreq_update_status(ptr noundef %devfreq, i32 noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 1, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !428

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 224, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call i64 @get_jiffies_64() #15
  %previous_freq = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 8
  %1 = ptrtoint ptr %previous_freq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %previous_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool25.not = icmp eq i32 %2, 0
  br i1 %tobool25.not, label %if.end.out_crit_edge, label %if.end27

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end27:                                         ; preds = %if.end
  %profile.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 3
  %3 = ptrtoint ptr %profile.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %profile.i, align 8
  %max_state.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %max_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7.not.i = icmp eq i32 %6, 0
  br i1 %cmp7.not.i, label %if.end27.out_crit_edge, label %for.body.lr.ph.i

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.body.lr.ph.i:                                 ; preds = %if.end27
  %freq_table.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %4, i32 0, i32 8
  %7 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %freq_table.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %lev.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %8, i32 %lev.08.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %2)
  %cmp2.i = icmp eq i32 %10, %2
  br i1 %cmp2.i, label %devfreq_get_freq_level.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %lev.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

devfreq_get_freq_level.exit:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lev.08.i)
  %cmp30 = icmp slt i32 %lev.08.i, 0
  br i1 %cmp30, label %devfreq_get_freq_level.exit.out_crit_edge, label %if.end32

devfreq_get_freq_level.exit.out_crit_edge:        ; preds = %devfreq_get_freq_level.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end32:                                         ; preds = %devfreq_get_freq_level.exit
  %stats = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 19
  %last_update = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 19, i32 3
  %11 = ptrtoint ptr %last_update to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %last_update, align 8
  %sub = sub i64 %call24, %12
  %time_in_state = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 19, i32 2
  %13 = ptrtoint ptr %time_in_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %time_in_state, align 8
  %arrayidx = getelementptr i64, ptr %14, i32 %lev.08.i
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx, align 8
  %add = add i64 %sub, %16
  store i64 %add, ptr %arrayidx, align 8
  %17 = ptrtoint ptr %profile.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %profile.i, align 8
  %max_state.i68 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %max_state.i68 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_state.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp7.not.i69 = icmp eq i32 %20, 0
  br i1 %cmp7.not.i69, label %if.end32.out_crit_edge, label %for.body.lr.ph.i71

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.body.lr.ph.i71:                               ; preds = %if.end32
  %freq_table.i70 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %18, i32 0, i32 8
  %21 = ptrtoint ptr %freq_table.i70 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %freq_table.i70, align 4
  br label %for.body.i75

for.body.i75:                                     ; preds = %for.inc.i78.for.body.i75_crit_edge, %for.body.lr.ph.i71
  %lev.08.i72 = phi i32 [ 0, %for.body.lr.ph.i71 ], [ %inc.i76, %for.inc.i78.for.body.i75_crit_edge ]
  %arrayidx.i73 = getelementptr i32, ptr %22, i32 %lev.08.i72
  %23 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %freq)
  %cmp2.i74 = icmp eq i32 %24, %freq
  br i1 %cmp2.i74, label %devfreq_get_freq_level.exit80, label %for.inc.i78

for.inc.i78:                                      ; preds = %for.body.i75
  %inc.i76 = add nuw i32 %lev.08.i72, 1
  %exitcond.not.i77 = icmp eq i32 %inc.i76, %20
  br i1 %exitcond.not.i77, label %for.inc.i78.out_crit_edge, label %for.inc.i78.for.body.i75_crit_edge

for.inc.i78.for.body.i75_crit_edge:               ; preds = %for.inc.i78
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i75

for.inc.i78.out_crit_edge:                        ; preds = %for.inc.i78
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

devfreq_get_freq_level.exit80:                    ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lev.08.i72)
  %cmp35 = icmp slt i32 %lev.08.i72, 0
  br i1 %cmp35, label %devfreq_get_freq_level.exit80.out_crit_edge, label %if.end37

devfreq_get_freq_level.exit80.out_crit_edge:      ; preds = %devfreq_get_freq_level.exit80
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end37:                                         ; preds = %devfreq_get_freq_level.exit80
  call void @__sanitizer_cov_trace_cmp4(i32 %lev.08.i72, i32 %lev.08.i)
  %cmp38.not = icmp eq i32 %lev.08.i72, %lev.08.i
  br i1 %cmp38.not, label %if.end37.out_crit_edge, label %if.then39

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  %trans_table = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 19, i32 1
  %25 = ptrtoint ptr %trans_table to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans_table, align 4
  %mul = mul i32 %20, %lev.08.i
  %add41 = add i32 %lev.08.i72, %mul
  %arrayidx42 = getelementptr i32, ptr %26, i32 %add41
  %27 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx42, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %arrayidx42, align 4
  %29 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stats, align 8
  %inc44 = add i32 %30, 1
  store i32 %inc44, ptr %stats, align 8
  br label %out

out:                                              ; preds = %if.then39, %if.end37.out_crit_edge, %devfreq_get_freq_level.exit80.out_crit_edge, %for.inc.i78.out_crit_edge, %if.end32.out_crit_edge, %devfreq_get_freq_level.exit.out_crit_edge, %for.inc.i.out_crit_edge, %if.end27.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then39 ], [ 0, %if.end37.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ %lev.08.i, %devfreq_get_freq_level.exit.out_crit_edge ], [ %lev.08.i72, %devfreq_get_freq_level.exit80.out_crit_edge ], [ -22, %if.end27.out_crit_edge ], [ -22, %if.end32.out_crit_edge ], [ -22, %for.inc.i78.out_crit_edge ], [ -22, %for.inc.i.out_crit_edge ]
  %last_update47 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 19, i32 3
  %31 = ptrtoint ptr %last_update47 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %call24, ptr %last_update47, align 8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devfreq_update_target(ptr noundef %devfreq, i32 noundef %freq) #0 align 64 {
entry:
  %freq.addr = alloca i32, align 4
  %min_freq = alloca i32, align 4
  %max_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %freq.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %freq, ptr %freq.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_freq) #15
  %1 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %min_freq, align 4, !annotation !429
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq) #15
  %2 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %max_freq, align 4, !annotation !429
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 1, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !428

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 412, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %governor = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 4
  %4 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %governor, align 4
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %get_target_freq = getelementptr inbounds %struct.devfreq_governor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %get_target_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_target_freq, align 8
  %call28 = call i32 %7(ptr noundef %devfreq, ptr noundef nonnull %freq.addr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  call fastcc void @get_freq_range(ptr noundef %devfreq, ptr noundef nonnull %min_freq, ptr noundef nonnull %max_freq)
  %8 = ptrtoint ptr %freq.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %freq.addr, align 4
  %10 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp32 = icmp ult i32 %9, %11
  br i1 %cmp32, label %if.then33, label %if.end31.if.end34_crit_edge

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %freq.addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %freq.addr, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31.if.end34_crit_edge
  %13 = ptrtoint ptr %freq.addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %freq.addr, align 4
  %15 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp35 = icmp ugt i32 %14, %16
  br i1 %cmp35, label %if.then36, label %if.end34.if.end37_crit_edge

if.end34.if.end37_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %freq.addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %freq.addr, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34.if.end37_crit_edge
  %flags.1 = phi i32 [ 1, %if.then36 ], [ 0, %if.end34.if.end37_crit_edge ]
  %18 = ptrtoint ptr %freq.addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %freq.addr, align 4
  %call38 = call fastcc i32 @devfreq_set_target(ptr noundef %devfreq, i32 noundef %19, i32 noundef %flags.1)
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.end37 ], [ -22, %if.end.cleanup_crit_edge ], [ %call28, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_freq_range(ptr noundef %devfreq, ptr nocapture noundef %min_freq, ptr nocapture noundef %max_freq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %profile = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 3
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %profile, align 8
  %freq_table1 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %freq_table1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %freq_table1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 1, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !428

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 129, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 4
  %7 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %profile, align 8
  %max_state = getelementptr inbounds %struct.devfreq_dev_profile, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_state, align 4
  %sub = add i32 %10, -1
  %arrayidx26 = getelementptr i32, ptr %3, i32 %sub
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %12)
  %cmp27 = icmp ult i32 %6, %12
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %6, ptr %min_freq, align 4
  %14 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %profile, align 8
  %max_state31 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %max_state31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_state31, align 4
  %sub32 = add i32 %17, -1
  %arrayidx33 = getelementptr i32, ptr %3, i32 %sub32
  br label %if.end39

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %12, ptr %min_freq, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then28
  %storemerge.in = phi ptr [ %3, %if.else ], [ %arrayidx33, %if.then28 ]
  %19 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %20 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %max_freq, align 4
  %parent = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent, align 8
  %call40 = tail call i32 @dev_pm_qos_read_value(ptr noundef %22, i32 noundef 3) #15
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 8
  %call43 = tail call i32 @dev_pm_qos_read_value(ptr noundef %24, i32 noundef 4) #15
  %25 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %min_freq, align 4
  %mul = mul i32 %call40, 1000
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 %mul)
  %28 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %min_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call43)
  %cmp46.not = icmp eq i32 %call43, 2147483647
  br i1 %cmp46.not, label %if.end39.if.end55_crit_edge, label %if.then47

if.end39.if.end55_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

if.then47:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_freq, align 4
  %mul48 = mul i32 %call43, 1000
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %mul48)
  %32 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %max_freq, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then47, %if.end39.if.end55_crit_edge
  %33 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %min_freq, align 4
  %scaling_min_freq = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 13
  %35 = ptrtoint ptr %scaling_min_freq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %scaling_min_freq, align 4
  %37 = tail call i32 @llvm.umax.i32(i32 %34, i32 %36)
  %38 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %min_freq, align 4
  %39 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_freq, align 4
  %scaling_max_freq = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 14
  %41 = ptrtoint ptr %scaling_max_freq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scaling_max_freq, align 8
  %43 = tail call i32 @llvm.umin.i32(i32 %40, i32 %42)
  %44 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %max_freq, align 4
  %45 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %min_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %43)
  %cmp68 = icmp ugt i32 %46, %43
  br i1 %cmp68, label %if.then69, label %if.end55.if.end70_crit_edge

if.end55.if.end70_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.then69:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %43, ptr %min_freq, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end55.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devfreq_set_target(ptr noundef %devfreq, i32 noundef %new_freq, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %new_freq.addr = alloca i32, align 4
  %freqs = alloca %struct.devfreq_freqs, align 4
  %cur_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %new_freq.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_freq, ptr %new_freq.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %freqs) #15
  %1 = getelementptr inbounds %struct.devfreq_freqs, ptr %freqs, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_freq) #15
  %2 = ptrtoint ptr %cur_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cur_freq, align 4, !annotation !429
  %profile = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 3
  %3 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %profile, align 8
  %get_cur_freq = getelementptr inbounds %struct.devfreq_dev_profile, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %get_cur_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_cur_freq, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %parent = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %call = call i32 %6(ptr noundef %8, ptr noundef nonnull %cur_freq) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %previous_freq = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 8
  %9 = ptrtoint ptr %previous_freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %previous_freq, align 4
  %11 = ptrtoint ptr %cur_freq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cur_freq, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = ptrtoint ptr %cur_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_freq, align 4
  %14 = ptrtoint ptr %freqs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %freqs, align 4
  %15 = ptrtoint ptr %new_freq.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %new_freq.addr, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %devfreq, null
  br i1 %tobool.not.i, label %if.end.devfreq_notify_transition.exit_crit_edge, label %if.end.i

if.end.devfreq_notify_transition.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %devfreq_notify_transition.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %transition_notifier_list.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 20
  %call.i = call i32 @srcu_notifier_call_chain(ptr noundef %transition_notifier_list.i, i32 noundef 0, ptr noundef nonnull %freqs) #15
  br label %devfreq_notify_transition.exit

devfreq_notify_transition.exit:                   ; preds = %if.end.i, %if.end.devfreq_notify_transition.exit_crit_edge
  %18 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %profile, align 8
  %target = getelementptr inbounds %struct.devfreq_dev_profile, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %target, align 4
  %dev5 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2
  %parent6 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %parent6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent6, align 8
  %call7 = call i32 %21(ptr noundef %23, ptr noundef nonnull %new_freq.addr, i32 noundef %flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %devfreq_notify_transition.exit
  %24 = ptrtoint ptr %cur_freq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cur_freq, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %1, align 4
  br i1 %tobool.not.i, label %if.then9.cleanup_crit_edge, label %if.end.i48

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i48:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  %transition_notifier_list.i49 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 20
  %call.i50 = call i32 @srcu_notifier_call_chain(ptr noundef %transition_notifier_list.i49, i32 noundef 1, ptr noundef nonnull %freqs) #15
  br label %cleanup

if.end12:                                         ; preds = %devfreq_notify_transition.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_devfreq_frequency, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@devfreq_set_target, %land.lhs.true)) #15
          to label %if.end15 [label %land.lhs.true], !srcloc !430

land.lhs.true:                                    ; preds = %if.end12
  %27 = ptrtoint ptr %new_freq.addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %new_freq.addr, align 4
  %29 = ptrtoint ptr %cur_freq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.not = icmp eq i32 %28, %30
  br i1 %cmp.not, label %land.lhs.true.if.end15_crit_edge, label %if.then14

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @trace_devfreq_frequency(ptr noundef %devfreq, i32 noundef %28, i32 noundef %30)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true.if.end15_crit_edge, %if.end12
  %31 = ptrtoint ptr %new_freq.addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %new_freq.addr, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %1, align 4
  br i1 %tobool.not.i, label %if.end15.devfreq_notify_transition.exit56_crit_edge, label %if.end.i53

if.end15.devfreq_notify_transition.exit56_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %devfreq_notify_transition.exit56

if.end.i53:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %transition_notifier_list.i54 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 20
  %call.i55 = call i32 @srcu_notifier_call_chain(ptr noundef %transition_notifier_list.i54, i32 noundef 1, ptr noundef nonnull %freqs) #15
  br label %devfreq_notify_transition.exit56

devfreq_notify_transition.exit56:                 ; preds = %if.end.i53, %if.end15.devfreq_notify_transition.exit56_crit_edge
  %34 = ptrtoint ptr %new_freq.addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %new_freq.addr, align 4
  %call18 = call i32 @devfreq_update_status(ptr noundef %devfreq, i32 noundef %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %devfreq_notify_transition.exit56.if.end22_crit_edge, label %do.end

devfreq_notify_transition.exit56.if.end22_crit_edge: ; preds = %devfreq_notify_transition.exit56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

do.end:                                           ; preds = %devfreq_notify_transition.exit56
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.65) #20
  br label %if.end22

if.end22:                                         ; preds = %do.end, %devfreq_notify_transition.exit56.if.end22_crit_edge
  %36 = ptrtoint ptr %new_freq.addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %new_freq.addr, align 4
  %previous_freq23 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 8
  %38 = ptrtoint ptr %previous_freq23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %previous_freq23, align 4
  %suspend_freq = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 16
  %39 = ptrtoint ptr %suspend_freq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %suspend_freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool24.not = icmp eq i32 %40, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.then25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %resume_freq = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 17
  %41 = ptrtoint ptr %resume_freq to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %37, ptr %resume_freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end22.cleanup_crit_edge, %if.end.i48, %if.then9.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_freq) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %freqs) #15
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @update_devfreq(ptr noundef %devfreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devfreq_update_target(ptr noundef %devfreq, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devfreq_monitor_start(ptr noundef %devfreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %governor = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 4
  %0 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor, align 4
  %flags = getelementptr inbounds %struct.devfreq_governor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags, align 8
  %and = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end49_crit_edge

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

if.end:                                           ; preds = %entry
  %profile = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 3
  %4 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %profile, align 8
  %timer = getelementptr inbounds %struct.devfreq_dev_profile, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timer, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.if.end49_crit_edge [
    i32 0, label %do.body1
    i32 1, label %do.body19
  ]

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

do.body1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %work = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #15
  %9 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @devfreq_monitor_start.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry9 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7, i32 0, i32 1
  %10 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7, i32 0, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @devfreq_monitor, ptr %func, align 4
  %timer14 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer14, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.3, ptr noundef nonnull @devfreq_monitor_start.__key.2) #15
  br label %sw.epilog

do.body19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %work20 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7
  tail call void @__init_work(ptr noundef %work20, i32 noundef 0) #15
  %13 = ptrtoint ptr %work20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %work20, align 8
  %lockdep_map29 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map29, ptr noundef nonnull @.str.1, ptr noundef nonnull @devfreq_monitor_start.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry32 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7, i32 0, i32 1
  %14 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i66 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry32, ptr %prev.i66, align 4
  %func35 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7, i32 0, i32 2
  %16 = ptrtoint ptr %func35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @devfreq_monitor, ptr %func35, align 4
  %timer39 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer39, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @devfreq_monitor_start.__key.5) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body19, %do.body1
  %17 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %profile, align 8
  %polling_ms = getelementptr inbounds %struct.devfreq_dev_profile, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %polling_ms to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %polling_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool43.not = icmp eq i32 %20, 0
  br i1 %tobool43.not, label %sw.epilog.if.end49_crit_edge, label %if.then44

sw.epilog.if.end49_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

if.then44:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %21 = load ptr, ptr @devfreq_wq, align 4
  %work45 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %20) #15
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %work45, i32 noundef %call2.i) #15
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %sw.epilog.if.end49_crit_edge, %if.end.if.end49_crit_edge, %entry.if.end49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devfreq_monitor(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1056
  %lock = getelementptr i8, ptr %work, i32 -1048
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %call.i = tail call i32 @devfreq_update_target(ptr noundef %add.ptr, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr i8, ptr %work, i32 -952
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70, i32 noundef %call.i) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = load ptr, ptr @devfreq_wq, align 4
  %profile = getelementptr i8, ptr %work, i32 -24
  %1 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %profile, align 8
  %polling_ms = getelementptr inbounds %struct.devfreq_dev_profile, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %polling_ms to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %polling_ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %4) #15
  %call.i12 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef %call2.i) #15
  tail call void @mutex_unlock(ptr noundef %lock) #15
  tail call fastcc void @trace_devfreq_monitor(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devfreq_monitor_stop(ptr noundef %devfreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %governor = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 4
  %0 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor, align 4
  %flags = getelementptr inbounds %struct.devfreq_governor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags, align 8
  %and = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %work = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #15
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devfreq_monitor_suspend(ptr noundef %devfreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %stop_polling = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 15
  %0 = ptrtoint ptr %stop_polling to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stop_polling, align 4, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %lock) #15
  br label %return

if.end:                                           ; preds = %entry
  %previous_freq = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 8
  %2 = ptrtoint ptr %previous_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %previous_freq, align 4
  %call = tail call i32 @devfreq_update_status(ptr noundef %devfreq, i32 noundef %3)
  %4 = ptrtoint ptr %stop_polling to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %stop_polling, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #15
  %governor = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 4
  %5 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %governor, align 4
  %flags = getelementptr inbounds %struct.devfreq_governor, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %flags, align 8
  %and = and i64 %8, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %work = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7
  %call7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #15
  br label %return

return:                                           ; preds = %if.end6, %if.end.return_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devfreq_monitor_resume(ptr noundef %devfreq) #0 align 64 {
entry:
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #15
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %freq, align 4, !annotation !429
  %lock = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %governor = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 4
  %1 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %governor, align 4
  %flags = getelementptr inbounds %struct.devfreq_governor, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %flags, align 8
  %and = and i64 %4, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out_update_crit_edge

entry.out_update_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_update

if.end:                                           ; preds = %entry
  %stop_polling = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 15
  %5 = ptrtoint ptr %stop_polling to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stop_polling, align 4, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end3:                                          ; preds = %if.end
  %work = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7
  %7 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %work, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end3.out_update_crit_edge

if.end3.out_update_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_update

land.lhs.true:                                    ; preds = %if.end3
  %profile = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 3
  %9 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %profile, align 8
  %polling_ms = getelementptr inbounds %struct.devfreq_dev_profile, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %polling_ms to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %polling_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %land.lhs.true.out_update_crit_edge, label %if.then7

land.lhs.true.out_update_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_update

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %13 = load ptr, ptr @devfreq_wq, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %12) #15
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %work, i32 noundef %call2.i) #15
  br label %out_update

out_update:                                       ; preds = %if.then7, %land.lhs.true.out_update_crit_edge, %if.end3.out_update_crit_edge, %entry.out_update_crit_edge
  %call14 = tail call i64 @get_jiffies_64() #15
  %last_update = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 19, i32 3
  %14 = ptrtoint ptr %last_update to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call14, ptr %last_update, align 8
  %stop_polling15 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 15
  %15 = ptrtoint ptr %stop_polling15 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %stop_polling15, align 4
  %profile16 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 3
  %16 = ptrtoint ptr %profile16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %profile16, align 8
  %get_cur_freq = getelementptr inbounds %struct.devfreq_dev_profile, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %get_cur_freq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_cur_freq, align 4
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %out_update.out_crit_edge, label %land.lhs.true18

out_update.out_crit_edge:                         ; preds = %out_update
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true18:                                  ; preds = %out_update
  %parent = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 8
  %call21 = call i32 %19(ptr noundef %21, ptr noundef nonnull %freq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true18.out_crit_edge

land.lhs.true18.out_crit_edge:                    ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then23:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %freq, align 4
  %previous_freq = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 8
  %24 = ptrtoint ptr %previous_freq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %previous_freq, align 4
  br label %out

out:                                              ; preds = %if.then23, %land.lhs.true18.out_crit_edge, %out_update.out_crit_edge, %if.end.out_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devfreq_update_interval(ptr noundef %devfreq, ptr nocapture noundef readonly %delay) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %profile = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 3
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %profile, align 8
  %polling_ms = getelementptr inbounds %struct.devfreq_dev_profile, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %polling_ms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polling_ms, align 4
  %4 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delay, align 4
  %lock = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %6 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %profile, align 8
  %polling_ms2 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %polling_ms2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %polling_ms2, align 4
  %governor = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 4
  %9 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %governor, align 4
  %flags = getelementptr inbounds %struct.devfreq_governor, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %flags, align 8
  %and = and i64 %12, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %stop_polling = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 15
  %13 = ptrtoint ptr %stop_polling to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %stop_polling, align 4, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not = icmp eq i8 %14, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %lock) #15
  %work = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %15 = load ptr, ptr @devfreq_wq, align 4
  %work12 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7
  %16 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %profile, align 8
  %polling_ms14 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %polling_ms14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %polling_ms14, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %19) #15
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work12, i32 noundef %call2.i) #15
  br label %out

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %if.then18, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then18:                                        ; preds = %if.end17
  tail call void @mutex_unlock(ptr noundef %lock) #15
  %work20 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 7
  %call21 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work20) #15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %20 = ptrtoint ptr %stop_polling to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %stop_polling, align 4, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool24.not = icmp eq i8 %21, 0
  br i1 %tobool24.not, label %if.then25, label %if.then18.out_crit_edge

if.then18.out_crit_edge:                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then25:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  %22 = load ptr, ptr @devfreq_wq, align 4
  %23 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %profile, align 8
  %polling_ms28 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %polling_ms28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %polling_ms28, align 4
  %call2.i59 = tail call i32 @__msecs_to_jiffies(i32 noundef %26) #15
  %call.i63 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work20, i32 noundef %call2.i59) #15
  br label %out

out:                                              ; preds = %if.then25, %if.then18.out_crit_edge, %if.end17.out_crit_edge, %if.then11, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devfreq_add_device(ptr noundef %dev, ptr noundef %profile, ptr noundef %governor_name, ptr noundef %data) #0 align 64 {
entry:
  %max_freq.i = alloca i32, align 4
  %min_freq.i = alloca i32, align 4
  %freq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  %tobool1.not = icmp eq ptr %profile, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %governor_name, null
  %or.cond254 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond254, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @devfreq_list_lock, i32 noundef 0) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %call.i.i255 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @devfreq_list_lock, i32 0, i32 5), i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i255)
  %cmp.not.i = icmp eq i32 %call.i.i255, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !428

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %cmp.i.i = icmp ugt ptr %dev, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end28.i, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  br label %for.cond.i

do.end28.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #20
  br label %find_device_devfreq.exit.thread

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i.for.cond.i_crit_edge
  %tmp_devfreq.0.in.i = phi ptr [ %tmp_devfreq.0.i, %for.body.i.for.cond.i_crit_edge ], [ @devfreq_list, %if.end.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %tmp_devfreq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp_devfreq.0.i = load ptr, ptr %tmp_devfreq.0.in.i, align 4
  %cmp34.not.i = icmp eq ptr %tmp_devfreq.0.i, @devfreq_list
  br i1 %cmp34.not.i, label %for.cond.i.find_device_devfreq.exit.thread_crit_edge, label %for.body.i

for.cond.i.find_device_devfreq.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_device_devfreq.exit.thread

for.body.i:                                       ; preds = %for.cond.i
  %parent.i = getelementptr inbounds %struct.devfreq, ptr %tmp_devfreq.0.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %cmp38.i = icmp eq ptr %3, %dev
  br i1 %cmp38.i, label %find_device_devfreq.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

find_device_devfreq.exit.thread:                  ; preds = %for.cond.i.find_device_devfreq.exit.thread_crit_edge, %do.end28.i
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  br label %if.end10

find_device_devfreq.exit:                         ; preds = %for.body.i
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  %cmp.i = icmp ugt ptr %tmp_devfreq.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %find_device_devfreq.exit.if.end10_crit_edge, label %do.end9

find_device_devfreq.exit.if.end10_crit_edge:      ; preds = %find_device_devfreq.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

do.end9:                                          ; preds = %find_device_devfreq.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.7) #20
  br label %err_out

if.end10:                                         ; preds = %find_device_devfreq.exit.if.end10_crit_edge, %find_device_devfreq.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2256) #21
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.err_out_crit_edge, label %do.body15

if.end10.err_out_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out

do.body15:                                        ; preds = %if.end10
  %lock = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @devfreq_add_device.__key) #15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %dev19 = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 2
  %parent = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %parent, align 8
  %6 = load ptr, ptr @devfreq_class, align 4
  %class = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 2, i32 33
  %7 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %class, align 4
  %release = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 2, i32 35
  %8 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @devfreq_dev_release, ptr %release, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %profile22 = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %profile22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %profile, ptr %profile22, align 8
  %12 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %profile, align 4
  %previous_freq = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %previous_freq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %previous_freq, align 4
  %current_frequency = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 9, i32 2
  %15 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %current_frequency, align 8
  %data24 = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %data24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %data, ptr %data24, align 8
  %nb = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @devfreq_notifier_call, ptr %nb, align 4
  %timer = getelementptr inbounds %struct.devfreq_dev_profile, ptr %profile, i32 0, i32 2
  %18 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp29 = icmp ugt i32 %19, 1
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %lock) #15
  br label %err_dev

if.end32:                                         ; preds = %do.body15
  %max_state = getelementptr inbounds %struct.devfreq_dev_profile, ptr %profile, i32 0, i32 9
  %20 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool34.not = icmp eq i32 %21, 0
  br i1 %tobool34.not, label %if.end32.if.then38_crit_edge, label %lor.lhs.false35

if.end32.if.then38_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then38

lor.lhs.false35:                                  ; preds = %if.end32
  %freq_table = getelementptr inbounds %struct.devfreq_dev_profile, ptr %profile, i32 0, i32 8
  %22 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %freq_table, align 4
  %tobool37.not = icmp eq ptr %23, null
  br i1 %tobool37.not, label %lor.lhs.false35.if.then38_crit_edge, label %lor.lhs.false35.if.end45_crit_edge

lor.lhs.false35.if.end45_crit_edge:               ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

lor.lhs.false35.if.then38_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then38

if.then38:                                        ; preds = %lor.lhs.false35.if.then38_crit_edge, %if.end32.if.then38_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #15
  %24 = ptrtoint ptr %profile22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %profile22, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.i) #15
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef %27) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i257 = icmp slt i32 %call.i, 1
  br i1 %cmp.i257, label %if.then38.set_freq_table.exit.thread_crit_edge, label %if.end.i258

if.then38.set_freq_table.exit.thread_crit_edge:   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_freq_table.exit.thread

if.end.i258:                                      ; preds = %if.then38
  %max_state.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %25, i32 0, i32 9
  %28 = ptrtoint ptr %max_state.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call.i, ptr %max_state.i, align 4
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 4) #15
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !428

devm_kcalloc.exit.thread.i:                       ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #17
  %freq_table47.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %25, i32 0, i32 8
  %31 = ptrtoint ptr %freq_table47.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %freq_table47.i, align 4
  br label %if.then7.i

devm_kcalloc.exit.i:                              ; preds = %if.end.i258
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent, align 8
  %34 = extractvalue { i32, i1 } %29, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %33, i32 noundef %34, i32 noundef 3520) #15
  %freq_table.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %25, i32 0, i32 8
  %35 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call5.i.i.i, ptr %freq_table.i, align 4
  %tobool.not.i259 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i259, label %devm_kcalloc.exit.i.if.then7.i_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.if.then7.i_crit_edge:         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7.i

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  %36 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %freq.i, align 4
  %37 = ptrtoint ptr %max_state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp1149.not.i = icmp eq i32 %38, 0
  br i1 %cmp1149.not.i, label %for.cond.preheader.i.set_freq_table.exit.thread295_crit_edge, label %for.cond.preheader.i.for.body.i261_crit_edge

for.cond.preheader.i.for.body.i261_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i261

for.cond.preheader.i.set_freq_table.exit.thread295_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_freq_table.exit.thread295

if.then7.i:                                       ; preds = %devm_kcalloc.exit.i.if.then7.i_crit_edge, %devm_kcalloc.exit.thread.i
  %39 = ptrtoint ptr %max_state.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %max_state.i, align 4
  br label %set_freq_table.exit.thread

for.body.i261:                                    ; preds = %if.end22.i.for.body.i261_crit_edge, %for.cond.preheader.i.for.body.i261_crit_edge
  %i.050.i = phi i32 [ %inc.i, %if.end22.i.for.body.i261_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i261_crit_edge ]
  %40 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent, align 8
  %call14.i = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %41, ptr noundef nonnull %freq.i) #15
  %cmp.i.i260 = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i260, label %set_freq_table.exit, label %if.end22.i

if.end22.i:                                       ; preds = %for.body.i261
  call void @dev_pm_opp_put(ptr noundef %call14.i) #15
  %42 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %freq.i, align 4
  %44 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %freq_table.i, align 4
  %arrayidx.i = getelementptr i32, ptr %45, i32 %i.050.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.050.i, 1
  %47 = load i32, ptr %freq.i, align 4
  %inc24.i = add i32 %47, 1
  store i32 %inc24.i, ptr %freq.i, align 4
  %48 = ptrtoint ptr %max_state.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_state.i, align 4
  %cmp11.i = icmp ult i32 %inc.i, %49
  br i1 %cmp11.i, label %if.end22.i.for.body.i261_crit_edge, label %if.end22.i.set_freq_table.exit.thread295_crit_edge

if.end22.i.set_freq_table.exit.thread295_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_freq_table.exit.thread295

if.end22.i.for.body.i261_crit_edge:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i261

set_freq_table.exit.thread:                       ; preds = %if.then7.i, %if.then38.set_freq_table.exit.thread_crit_edge
  %retval.0.i262.ph = phi i32 [ -22, %if.then38.set_freq_table.exit.thread_crit_edge ], [ -12, %if.then7.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #15
  br label %err_dev

set_freq_table.exit.thread295:                    ; preds = %if.end22.i.set_freq_table.exit.thread295_crit_edge, %for.cond.preheader.i.set_freq_table.exit.thread295_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #15
  br label %if.end43

set_freq_table.exit:                              ; preds = %for.body.i261
  %50 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parent, align 8
  %52 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %freq_table.i, align 4
  call void @devm_kfree(ptr noundef %51, ptr noundef %53) #15
  %54 = ptrtoint ptr %max_state.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %max_state.i, align 4
  %55 = ptrtoint ptr %call14.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #15
  %cmp41 = icmp slt ptr %call14.i, null
  br i1 %cmp41, label %set_freq_table.exit.err_dev_crit_edge, label %set_freq_table.exit.if.end43_crit_edge

set_freq_table.exit.if.end43_crit_edge:           ; preds = %set_freq_table.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

set_freq_table.exit.err_dev_crit_edge:            ; preds = %set_freq_table.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_dev

if.end43:                                         ; preds = %set_freq_table.exit.if.end43_crit_edge, %set_freq_table.exit.thread295
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %lor.lhs.false35.if.end45_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_freq.i) #15
  %56 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %min_freq.i, align 4
  %57 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %parent, align 8
  %call.i264 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %58, ptr noundef nonnull %min_freq.i) #15
  %cmp.i.i265 = icmp ugt ptr %call.i264, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i265, label %find_available_min_freq.exit.thread, label %find_available_min_freq.exit

find_available_min_freq.exit.thread:              ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq.i) #15
  %scaling_min_freq298 = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 13
  %59 = ptrtoint ptr %scaling_min_freq298 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %scaling_min_freq298, align 4
  br label %if.then49

find_available_min_freq.exit:                     ; preds = %if.end45
  call void @dev_pm_opp_put(ptr noundef %call.i264) #15
  %60 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr = load i32, ptr %min_freq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq.i) #15
  %scaling_min_freq = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 13
  %61 = ptrtoint ptr %scaling_min_freq to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.pr, ptr %scaling_min_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool48.not = icmp eq i32 %.pr, 0
  br i1 %tobool48.not, label %find_available_min_freq.exit.if.then49_crit_edge, label %if.end51

find_available_min_freq.exit.if.then49_crit_edge: ; preds = %find_available_min_freq.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

if.then49:                                        ; preds = %find_available_min_freq.exit.if.then49_crit_edge, %find_available_min_freq.exit.thread
  call void @mutex_unlock(ptr noundef %lock) #15
  br label %err_dev

if.end51:                                         ; preds = %find_available_min_freq.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq.i) #15
  %62 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %max_freq.i, align 4
  %63 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parent, align 8
  %call.i268 = call ptr @dev_pm_opp_find_freq_floor(ptr noundef %64, ptr noundef nonnull %max_freq.i) #15
  %cmp.i.i269 = icmp ugt ptr %call.i268, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i269, label %find_available_max_freq.exit.thread, label %find_available_max_freq.exit

find_available_max_freq.exit.thread:              ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq.i) #15
  %scaling_max_freq301 = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 14
  %65 = ptrtoint ptr %scaling_max_freq301 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %scaling_max_freq301, align 8
  br label %if.then55

find_available_max_freq.exit:                     ; preds = %if.end51
  call void @dev_pm_opp_put(ptr noundef %call.i268) #15
  %66 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr300 = load i32, ptr %max_freq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq.i) #15
  %scaling_max_freq = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 14
  %67 = ptrtoint ptr %scaling_max_freq to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %.pr300, ptr %scaling_max_freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr300)
  %tobool54.not = icmp eq i32 %.pr300, 0
  br i1 %tobool54.not, label %find_available_max_freq.exit.if.then55_crit_edge, label %if.end57

find_available_max_freq.exit.if.then55_crit_edge: ; preds = %find_available_max_freq.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then55

if.then55:                                        ; preds = %find_available_max_freq.exit.if.then55_crit_edge, %find_available_max_freq.exit.thread
  call void @mutex_unlock(ptr noundef %lock) #15
  br label %err_dev

if.end57:                                         ; preds = %find_available_max_freq.exit
  %call58 = call i32 @dev_pm_opp_get_suspend_opp_freq(ptr noundef nonnull %dev) #15
  %suspend_freq = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 16
  %68 = ptrtoint ptr %suspend_freq to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call58, ptr %suspend_freq, align 8
  %call59 = call ptr @dev_pm_opp_get_opp_table(ptr noundef nonnull %dev) #15
  %opp_table = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 5
  %cmp.i273 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i273, ptr null, ptr %call59
  %69 = ptrtoint ptr %opp_table to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %spec.store.select, ptr %opp_table, align 8
  %suspend_count = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 18
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %suspend_count, i32 noundef 4) #15
  %70 = ptrtoint ptr %suspend_count to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 0, ptr %suspend_count, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %71 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i274 = icmp eq ptr %72, null
  br i1 %tobool.not.i274, label %if.end.i275, label %if.end57.dev_name.exit_crit_edge

if.end57.dev_name.exit_crit_edge:                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i275:                                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i275, %if.end57.dev_name.exit_crit_edge
  %retval.0.i276 = phi ptr [ %74, %if.end.i275 ], [ %72, %if.end57.dev_name.exit_crit_edge ]
  %call67 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev19, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i276) #15
  %call69 = call i32 @device_register(ptr noundef %dev19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end74, label %if.then71

if.then71:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @mutex_unlock(ptr noundef %lock) #15
  call void @put_device(ptr noundef %dev19) #15
  br label %err_out

if.end74:                                         ; preds = %dev_name.exit
  %75 = ptrtoint ptr %profile22 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %profile22, align 8
  %max_state77 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %max_state77 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_state77, align 4
  %79 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %78, i32 4) #15
  %80 = extractvalue { i32, i1 } %79, 1
  br i1 %80, label %if.end74.array3_size.exit_crit_edge, label %if.end.i277

if.end74.array3_size.exit_crit_edge:              ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  br label %array3_size.exit

if.end.i277:                                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  %81 = extractvalue { i32, i1 } %79, 0
  %82 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %81, i32 %78) #15
  %83 = extractvalue { i32, i1 } %82, 1
  %84 = extractvalue { i32, i1 } %82, 0
  %spec.select.i = select i1 %83, i32 -1, i32 %84
  br label %array3_size.exit

array3_size.exit:                                 ; preds = %if.end.i277, %if.end74.array3_size.exit_crit_edge
  %retval.0.i278 = phi i32 [ -1, %if.end74.array3_size.exit_crit_edge ], [ %spec.select.i, %if.end.i277 ]
  %call.i279 = call noalias ptr @devm_kmalloc(ptr noundef %dev19, i32 noundef %retval.0.i278, i32 noundef 3520) #15
  %stats = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 19
  %trans_table = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 19, i32 1
  %85 = ptrtoint ptr %trans_table to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i279, ptr %trans_table, align 4
  %tobool84.not = icmp eq ptr %call.i279, null
  br i1 %tobool84.not, label %if.then85, label %if.end87

if.then85:                                        ; preds = %array3_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @mutex_unlock(ptr noundef %lock) #15
  br label %if.end.i285

if.end87:                                         ; preds = %array3_size.exit
  %86 = ptrtoint ptr %profile22 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %profile22, align 8
  %max_state90 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %87, i32 0, i32 9
  %88 = ptrtoint ptr %max_state90 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max_state90, align 4
  %90 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %89, i32 8) #15
  %91 = extractvalue { i32, i1 } %90, 1
  br i1 %91, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !428

devm_kcalloc.exit.thread:                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  %time_in_state304 = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 19, i32 2
  %92 = ptrtoint ptr %time_in_state304 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %time_in_state304, align 8
  br label %if.then96

devm_kcalloc.exit:                                ; preds = %if.end87
  %93 = extractvalue { i32, i1 } %90, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev19, i32 noundef %93, i32 noundef 3520) #15
  %time_in_state = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 19, i32 2
  %94 = ptrtoint ptr %time_in_state to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call5.i.i, ptr %time_in_state, align 8
  %tobool95.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool95.not, label %devm_kcalloc.exit.if.then96_crit_edge, label %if.end98

devm_kcalloc.exit.if.then96_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then96

if.then96:                                        ; preds = %devm_kcalloc.exit.if.then96_crit_edge, %devm_kcalloc.exit.thread
  call void @mutex_unlock(ptr noundef %lock) #15
  br label %if.end.i285

if.end98:                                         ; preds = %devm_kcalloc.exit
  %95 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %stats, align 8
  %call100 = call i64 @get_jiffies_64() #15
  %last_update = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 19, i32 3
  %96 = ptrtoint ptr %last_update to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %call100, ptr %last_update, align 8
  %transition_notifier_list = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 20
  call void @srcu_init_notifier_head(ptr noundef %transition_notifier_list) #15
  call void @mutex_unlock(ptr noundef %lock) #15
  %user_min_freq_req = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 11
  %call103 = call i32 @dev_pm_qos_add_request(ptr noundef nonnull %dev, ptr noundef %user_min_freq_req, i32 noundef 3, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.end98.if.end.i285_crit_edge, label %if.end106

if.end98.if.end.i285_crit_edge:                   ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i285

if.end106:                                        ; preds = %if.end98
  %user_max_freq_req = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 12
  %call107 = call i32 @dev_pm_qos_add_request(ptr noundef nonnull %dev, ptr noundef %user_max_freq_req, i32 noundef 4, i32 noundef 2147483647) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %if.end106.if.end.i285_crit_edge, label %if.end110

if.end106.if.end.i285_crit_edge:                  ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i285

if.end110:                                        ; preds = %if.end106
  %nb_min = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 22
  %97 = ptrtoint ptr %nb_min to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @qos_min_notifier_call, ptr %nb_min, align 4
  %call113 = call i32 @dev_pm_qos_add_notifier(ptr noundef nonnull %dev, ptr noundef %nb_min, i32 noundef 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.end110.if.end.i285_crit_edge

if.end110.if.end.i285_crit_edge:                  ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i285

if.end116:                                        ; preds = %if.end110
  %nb_max = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 23
  %98 = ptrtoint ptr %nb_max to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @qos_max_notifier_call, ptr %nb_max, align 8
  %call119 = call i32 @dev_pm_qos_add_notifier(ptr noundef nonnull %dev, ptr noundef %nb_max, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.end116.if.end.i285_crit_edge

if.end116.if.end.i285_crit_edge:                  ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i285

if.end122:                                        ; preds = %if.end116
  call void @mutex_lock_nested(ptr noundef nonnull @devfreq_list_lock, i32 noundef 0) #15
  %call123 = call fastcc ptr @try_then_request_governor(ptr noundef nonnull %governor_name)
  %cmp.i280 = icmp ugt ptr %call123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i280, label %do.end128, label %if.end130

do.end128:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7) #20
  %99 = ptrtoint ptr %call123 to i32
  br label %err_init

if.end130:                                        ; preds = %if.end122
  %governor131 = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 4
  %100 = ptrtoint ptr %governor131 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call123, ptr %governor131, align 4
  %event_handler = getelementptr inbounds %struct.devfreq_governor, ptr %call123, i32 0, i32 5
  %101 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %event_handler, align 4
  %call133 = call i32 %102(ptr noundef nonnull %call7.i.i, i32 noundef 1, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end139, label %do.end138

do.end138:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.7) #20
  br label %err_init

if.end139:                                        ; preds = %if.end130
  %103 = ptrtoint ptr %governor131 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %governor131, align 4
  call fastcc void @create_sysfs_files(ptr noundef nonnull %call7.i.i, ptr noundef %104)
  %105 = load ptr, ptr @devfreq_list, align 4
  %call.i.i281 = call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i, ptr noundef nonnull @devfreq_list, ptr noundef %105) #15
  br i1 %call.i.i281, label %if.end.i.i282, label %if.end139.list_add.exit_crit_edge

if.end139.list_add.exit_crit_edge:                ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i282:                                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %107 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %105, ptr %call7.i.i, align 8
  %108 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @devfreq_list, ptr %prev.i, align 4
  store volatile ptr %call7.i.i, ptr @devfreq_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i282, %if.end139.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  %109 = ptrtoint ptr %profile22 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %profile22, align 8
  %is_cooling_device = getelementptr inbounds %struct.devfreq_dev_profile, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %is_cooling_device to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %is_cooling_device, align 4, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool143.not = icmp eq i8 %112, 0
  br i1 %tobool143.not, label %list_add.exit.cleanup_crit_edge, label %if.then144

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then144:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call145 = call ptr @devfreq_cooling_em_register(ptr noundef nonnull %call7.i.i, ptr noundef null) #15
  %cdev = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 21
  %cmp.i283 = icmp ugt ptr %call145, inttoptr (i32 -4096 to ptr)
  %spec.store.select306 = select i1 %cmp.i283, ptr null, ptr %call145
  %113 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %spec.store.select306, ptr %cdev, align 8
  br label %cleanup

err_init:                                         ; preds = %do.end138, %do.end128
  %err.0 = phi i32 [ %99, %do.end128 ], [ %call133, %do.end138 ]
  call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  br label %if.end.i285

if.end.i285:                                      ; preds = %err_init, %if.end116.if.end.i285_crit_edge, %if.end110.if.end.i285_crit_edge, %if.end106.if.end.i285_crit_edge, %if.end98.if.end.i285_crit_edge, %if.then96, %if.then85
  %err.1 = phi i32 [ %call103, %if.end98.if.end.i285_crit_edge ], [ %call107, %if.end106.if.end.i285_crit_edge ], [ %call113, %if.end110.if.end.i285_crit_edge ], [ %call119, %if.end116.if.end.i285_crit_edge ], [ %err.0, %err_init ], [ -12, %if.then96 ], [ -12, %if.then85 ]
  %cdev.i = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 21
  %114 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cdev.i, align 8
  call void @devfreq_cooling_unregister(ptr noundef %115) #15
  %governor.i = getelementptr inbounds %struct.devfreq, ptr %call7.i.i, i32 0, i32 4
  %116 = ptrtoint ptr %governor.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %governor.i, align 4
  %tobool1.not.i = icmp eq ptr %117, null
  br i1 %tobool1.not.i, label %if.end.i285.devfreq_remove_device.exit_crit_edge, label %if.then2.i

if.end.i285.devfreq_remove_device.exit_crit_edge: ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #17
  br label %devfreq_remove_device.exit

if.then2.i:                                       ; preds = %if.end.i285
  %event_handler.i = getelementptr inbounds %struct.devfreq_governor, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %event_handler.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %event_handler.i, align 4
  %call.i286 = call i32 %119(ptr noundef nonnull %call7.i.i, i32 noundef 2, ptr noundef null) #15
  %120 = ptrtoint ptr %governor.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %governor.i, align 4
  %attrs.i.i = getelementptr inbounds %struct.devfreq_governor, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %attrs.i.i, align 8
  %and.i.i = and i64 %123, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i287 = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i287, label %if.then2.i.if.end.i.i288_crit_edge, label %if.then.i.i

if.then2.i.if.end.i.i288_crit_edge:               ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i288

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @sysfs_remove_file_ns(ptr noundef %dev19, ptr noundef nonnull @dev_attr_polling_interval, ptr noundef null) #15
  br label %if.end.i.i288

if.end.i.i288:                                    ; preds = %if.then.i.i, %if.then2.i.if.end.i.i288_crit_edge
  %124 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %attrs.i.i, align 8
  %and2.i.i = and i64 %125, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool3.not.i.i = icmp eq i64 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i288.devfreq_remove_device.exit_crit_edge, label %if.then6.i.i

if.end.i.i288.devfreq_remove_device.exit_crit_edge: ; preds = %if.end.i.i288
  call void @__sanitizer_cov_trace_pc() #17
  br label %devfreq_remove_device.exit

if.then6.i.i:                                     ; preds = %if.end.i.i288
  call void @__sanitizer_cov_trace_pc() #17
  call void @sysfs_remove_file_ns(ptr noundef %dev19, ptr noundef nonnull @dev_attr_timer, ptr noundef null) #15
  br label %devfreq_remove_device.exit

devfreq_remove_device.exit:                       ; preds = %if.then6.i.i, %if.end.i.i288.devfreq_remove_device.exit_crit_edge, %if.end.i285.devfreq_remove_device.exit_crit_edge
  call void @device_unregister(ptr noundef %dev19) #15
  br label %err_dev

err_dev:                                          ; preds = %devfreq_remove_device.exit, %if.then55, %if.then49, %set_freq_table.exit.err_dev_crit_edge, %set_freq_table.exit.thread, %if.then30
  %devfreq.0 = phi ptr [ %call7.i.i, %if.then30 ], [ null, %devfreq_remove_device.exit ], [ %call7.i.i, %if.then55 ], [ %call7.i.i, %if.then49 ], [ %call7.i.i, %set_freq_table.exit.err_dev_crit_edge ], [ %call7.i.i, %set_freq_table.exit.thread ]
  %err.2 = phi i32 [ -22, %if.then30 ], [ %err.1, %devfreq_remove_device.exit ], [ -22, %if.then55 ], [ -22, %if.then49 ], [ %55, %set_freq_table.exit.err_dev_crit_edge ], [ %retval.0.i262.ph, %set_freq_table.exit.thread ]
  call void @kfree(ptr noundef %devfreq.0) #15
  br label %err_out

err_out:                                          ; preds = %err_dev, %if.then71, %if.end10.err_out_crit_edge, %do.end9
  %err.3 = phi i32 [ %err.2, %err_dev ], [ %call69, %if.then71 ], [ -22, %do.end9 ], [ -12, %if.end10.err_out_crit_edge ]
  %126 = inttoptr i32 %err.3 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.then144, %list_add.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %126, %err_out ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %call7.i.i, %list_add.exit.cleanup_crit_edge ], [ %call7.i.i, %if.then144 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devfreq_dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -104
  tail call void @mutex_lock_nested(ptr noundef nonnull @devfreq_list_lock, i32 noundef 0) #15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr i8, ptr %dev, i32 -100
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 -100
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %nb_max = getelementptr i8, ptr %dev, i32 2136
  %call = tail call i32 @dev_pm_qos_remove_notifier(ptr noundef %9, ptr noundef %nb_max, i32 noundef 4) #15
  %10 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %call, label %do.end [
    i32 0, label %list_del.exit.if.end_crit_edge
    i32 -2, label %list_del.exit.if.end_crit_edge84
  ]

list_del.exit.if.end_crit_edge84:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.76, i32 noundef %call) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %list_del.exit.if.end_crit_edge, %list_del.exit.if.end_crit_edge84
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %nb_min = getelementptr i8, ptr %dev, i32 2124
  %call5 = tail call i32 @dev_pm_qos_remove_notifier(ptr noundef %14, ptr noundef %nb_min, i32 noundef 3) #15
  %15 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %call5, label %do.end12 [
    i32 0, label %if.end.if.end14_crit_edge
    i32 -2, label %if.end.if.end14_crit_edge85
  ]

if.end.if.end14_crit_edge85:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.79, i32 noundef %call5) #20
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %if.end.if.end14_crit_edge, %if.end.if.end14_crit_edge85
  %dev.i = getelementptr i8, ptr %dev, i32 1144
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %cmp.i.not = icmp eq ptr %19, null
  br i1 %cmp.i.not, label %if.end14.if.end27_crit_edge, label %if.then17

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then17:                                        ; preds = %if.end14
  %user_max_freq_req = getelementptr i8, ptr %dev, i32 1112
  %call19 = tail call i32 @dev_pm_qos_remove_request(ptr noundef %user_max_freq_req) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.then17.if.end27_crit_edge

if.then17.if.end27_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

do.end24:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.82, i32 noundef %call19) #20
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.then17.if.end27_crit_edge, %if.end14.if.end27_crit_edge
  %dev.i81 = getelementptr i8, ptr %dev, i32 1108
  %22 = ptrtoint ptr %dev.i81 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i81, align 4
  %cmp.i82.not = icmp eq ptr %23, null
  br i1 %cmp.i82.not, label %if.end27.if.end40_crit_edge, label %if.then30

if.end27.if.end40_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then30:                                        ; preds = %if.end27
  %user_min_freq_req = getelementptr i8, ptr %dev, i32 1076
  %call32 = tail call i32 @dev_pm_qos_remove_request(ptr noundef %user_min_freq_req) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end37, label %if.then30.if.end40_crit_edge

if.then30.if.end40_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

do.end37:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.85, i32 noundef %call32) #20
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %if.then30.if.end40_crit_edge, %if.end27.if.end40_crit_edge
  %profile = getelementptr i8, ptr %dev, i32 928
  %26 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %profile, align 8
  %exit = getelementptr inbounds %struct.devfreq_dev_profile, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %exit, align 4
  %tobool41.not = icmp eq ptr %29, null
  br i1 %tobool41.not, label %if.end40.if.end47_crit_edge, label %if.then42

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent, align 8
  tail call void %29(ptr noundef %31) #15
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end40.if.end47_crit_edge
  %opp_table = getelementptr i8, ptr %dev, i32 936
  %32 = ptrtoint ptr %opp_table to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %opp_table, align 8
  %tobool48.not = icmp eq ptr %33, null
  br i1 %tobool48.not, label %if.end47.if.end51_crit_edge, label %if.then49

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dev_pm_opp_put_opp_table(ptr noundef nonnull %33) #15
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47.if.end51_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 -96
  tail call void @mutex_destroy(ptr noundef %lock) #15
  tail call void @kfree(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devfreq_notifier_call(ptr noundef %nb, i32 noundef %type, ptr nocapture noundef readnone %devp) #0 align 64 {
entry:
  %max_freq.i = alloca i32, align 4
  %min_freq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -1044
  %lock = getelementptr i8, ptr %nb, i32 -1036
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_freq.i) #15
  %0 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %min_freq.i, align 4
  %parent.i = getelementptr i8, ptr %nb, i32 -804
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %call.i = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %2, ptr noundef nonnull %min_freq.i) #15
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %find_available_min_freq.exit.thread, label %find_available_min_freq.exit

find_available_min_freq.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq.i) #15
  %scaling_min_freq30 = getelementptr i8, ptr %nb, i32 208
  %3 = ptrtoint ptr %scaling_min_freq30 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %scaling_min_freq30, align 4
  br label %out.thread

find_available_min_freq.exit:                     ; preds = %entry
  call void @dev_pm_opp_put(ptr noundef %call.i) #15
  %4 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %min_freq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq.i) #15
  %scaling_min_freq = getelementptr i8, ptr %nb, i32 208
  %5 = ptrtoint ptr %scaling_min_freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.pr, ptr %scaling_min_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %find_available_min_freq.exit.out.thread_crit_edge, label %if.end

find_available_min_freq.exit.out.thread_crit_edge: ; preds = %find_available_min_freq.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end:                                           ; preds = %find_available_min_freq.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq.i) #15
  %6 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %max_freq.i, align 4
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %call.i25 = call ptr @dev_pm_opp_find_freq_floor(ptr noundef %8, ptr noundef nonnull %max_freq.i) #15
  %cmp.i.i26 = icmp ugt ptr %call.i25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i26, label %find_available_max_freq.exit.thread, label %find_available_max_freq.exit

find_available_max_freq.exit.thread:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq.i) #15
  %scaling_max_freq33 = getelementptr i8, ptr %nb, i32 212
  br label %if.then5

find_available_max_freq.exit:                     ; preds = %if.end
  call void @dev_pm_opp_put(ptr noundef %call.i25) #15
  %9 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr32 = load i32, ptr %max_freq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq.i) #15
  %scaling_max_freq = getelementptr i8, ptr %nb, i32 212
  %10 = ptrtoint ptr %scaling_max_freq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.pr32, ptr %scaling_max_freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr32)
  %tobool4.not = icmp eq i32 %.pr32, 0
  br i1 %tobool4.not, label %find_available_max_freq.exit.if.then5_crit_edge, label %out

find_available_max_freq.exit.if.then5_crit_edge:  ; preds = %find_available_max_freq.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5

if.then5:                                         ; preds = %find_available_max_freq.exit.if.then5_crit_edge, %find_available_max_freq.exit.thread
  %scaling_max_freq35 = phi ptr [ %scaling_max_freq33, %find_available_max_freq.exit.thread ], [ %scaling_max_freq, %find_available_max_freq.exit.if.then5_crit_edge ]
  %11 = ptrtoint ptr %scaling_max_freq35 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %scaling_max_freq35, align 8
  br label %out.thread

out.thread:                                       ; preds = %if.then5, %find_available_min_freq.exit.out.thread_crit_edge, %find_available_min_freq.exit.thread
  call void @mutex_unlock(ptr noundef %lock) #15
  br label %do.end

out:                                              ; preds = %find_available_max_freq.exit
  %call.i29 = call i32 @devfreq_update_target(ptr noundef %add.ptr, i32 noundef 0) #15
  call void @mutex_unlock(ptr noundef %lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool10.not = icmp eq i32 %call.i29, 0
  br i1 %tobool10.not, label %out.if.end12_crit_edge, label %out.do.end_crit_edge

out.do.end_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

out.if.end12_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

do.end:                                           ; preds = %out.do.end_crit_edge, %out.thread
  %err.038 = phi i32 [ -22, %out.thread ], [ %call.i29, %out.do.end_crit_edge ]
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.87, i32 noundef %err.038) #20
  br label %if.end12

if.end12:                                         ; preds = %do.end, %out.if.end12_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_suspend_opp_freq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_get_opp_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @srcu_init_notifier_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qos_min_notifier_call(ptr noundef %nb, i32 noundef %val, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -2228
  %lock.i = getelementptr i8, ptr %nb, i32 -2220
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #15
  %call.i.i = tail call i32 @devfreq_update_target(ptr noundef %add.ptr, i32 noundef 0) #15
  tail call void @mutex_unlock(ptr noundef %lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %entry.qos_notifier_call.exit_crit_edge, label %do.end.i

entry.qos_notifier_call.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %qos_notifier_call.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %parent.i = getelementptr i8, ptr %nb, i32 -1988
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.89, i32 noundef %call.i.i) #20
  br label %qos_notifier_call.exit

qos_notifier_call.exit:                           ; preds = %do.end.i, %entry.qos_notifier_call.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_add_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qos_max_notifier_call(ptr noundef %nb, i32 noundef %val, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -2240
  %lock.i = getelementptr i8, ptr %nb, i32 -2232
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #15
  %call.i.i = tail call i32 @devfreq_update_target(ptr noundef %add.ptr, i32 noundef 0) #15
  tail call void @mutex_unlock(ptr noundef %lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %entry.qos_notifier_call.exit_crit_edge, label %do.end.i

entry.qos_notifier_call.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %qos_notifier_call.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %parent.i = getelementptr i8, ptr %nb, i32 -2000
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.89, i32 noundef %call.i.i) #20
  br label %qos_notifier_call.exit

qos_notifier_call.exit:                           ; preds = %do.end.i, %entry.qos_notifier_call.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @try_then_request_governor(ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @devfreq_list_lock, i32 0, i32 5), i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !428

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 300, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %name, null
  %cmp.i = icmp ugt ptr %name, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end28, label %if.end32

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.91) #20
  br label %cleanup

if.end32:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i59 = icmp eq i32 %1, 0
  br i1 %tobool.not.i59, label %if.end32.for.cond.i.preheader_crit_edge, label %land.rhs.i

if.end32.for.cond.i.preheader_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.preheader

land.rhs.i:                                       ; preds = %if.end32
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @devfreq_list_lock, i32 0, i32 5), i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.for.cond.i.preheader_crit_edge, !prof !428

land.rhs.i.for.cond.i.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.preheader

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 9, ptr noundef null) #15
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %do.end.i, %land.rhs.i.for.cond.i.preheader_crit_edge, %if.end32.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %tmp_governor.0.in.i = phi ptr [ %tmp_governor.0.i, %for.body.i.for.cond.i_crit_edge ], [ @devfreq_governor_list, %for.cond.i.preheader ]
  %2 = ptrtoint ptr %tmp_governor.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp_governor.0.i = load ptr, ptr %tmp_governor.0.in.i, align 4
  %cmp34.not.i = icmp eq ptr %tmp_governor.0.i, @devfreq_governor_list
  br i1 %cmp34.not.i, label %for.cond.i.if.then35_crit_edge, label %for.body.i

for.cond.i.if.then35_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then35

for.body.i:                                       ; preds = %for.cond.i
  %name37.i = getelementptr inbounds %struct.devfreq_governor, ptr %tmp_governor.0.i, i32 0, i32 1
  %call38.i = tail call i32 @strncmp(ptr noundef %name37.i, ptr noundef %name, i32 noundef 16) #15
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %find_devfreq_governor.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

find_devfreq_governor.exit:                       ; preds = %for.body.i
  %cmp.i60 = icmp ugt ptr %tmp_governor.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60, label %find_devfreq_governor.exit.if.then35_crit_edge, label %find_devfreq_governor.exit.cleanup_crit_edge

find_devfreq_governor.exit.cleanup_crit_edge:     ; preds = %find_devfreq_governor.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

find_devfreq_governor.exit.if.then35_crit_edge:   ; preds = %find_devfreq_governor.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then35

if.then35:                                        ; preds = %find_devfreq_governor.exit.if.then35_crit_edge, %for.cond.i.if.then35_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  %call36 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(16) @.str.92, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  %call39 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #15
  br label %if.end41

if.else:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  %call40 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.93, ptr noundef %name) #15
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then38
  %err.0 = phi i32 [ %call40, %if.else ], [ %call39, %if.then38 ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @devfreq_list_lock, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool42.not = icmp eq i32 %err.0, 0
  br i1 %tobool42.not, label %if.end47, label %if.then43

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp44 = icmp slt i32 %err.0, 0
  br i1 %cmp44, label %cond.true, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cond.true:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  %3 = inttoptr i32 %err.0 to ptr
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i61 = icmp eq i32 %4, 0
  br i1 %tobool.not.i61, label %if.end47.for.cond.i75.preheader_crit_edge, label %land.rhs.i64

if.end47.for.cond.i75.preheader_crit_edge:        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i75.preheader

land.rhs.i64:                                     ; preds = %if.end47
  %call.i.i62 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @devfreq_list_lock, i32 0, i32 5), i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i62)
  %cmp.not.i63 = icmp eq i32 %call.i.i62, 0
  br i1 %cmp.not.i63, label %do.end.i65, label %land.rhs.i64.for.cond.i75.preheader_crit_edge, !prof !428

land.rhs.i64.for.cond.i75.preheader_crit_edge:    ; preds = %land.rhs.i64
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i75.preheader

do.end.i65:                                       ; preds = %land.rhs.i64
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 9, ptr noundef null) #15
  br label %for.cond.i75.preheader

for.cond.i75.preheader:                           ; preds = %do.end.i65, %land.rhs.i64.for.cond.i75.preheader_crit_edge, %if.end47.for.cond.i75.preheader_crit_edge
  br label %for.cond.i75

for.cond.i75:                                     ; preds = %for.body.i79.for.cond.i75_crit_edge, %for.cond.i75.preheader
  %tmp_governor.0.in.i72 = phi ptr [ %tmp_governor.0.i73, %for.body.i79.for.cond.i75_crit_edge ], [ @devfreq_governor_list, %for.cond.i75.preheader ]
  %5 = ptrtoint ptr %tmp_governor.0.in.i72 to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp_governor.0.i73 = load ptr, ptr %tmp_governor.0.in.i72, align 4
  %cmp34.not.i74 = icmp eq ptr %tmp_governor.0.i73, @devfreq_governor_list
  br i1 %cmp34.not.i74, label %for.cond.i75.cleanup_crit_edge, label %for.body.i79

for.cond.i75.cleanup_crit_edge:                   ; preds = %for.cond.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i79:                                     ; preds = %for.cond.i75
  %name37.i76 = getelementptr inbounds %struct.devfreq_governor, ptr %tmp_governor.0.i73, i32 0, i32 1
  %call38.i77 = tail call i32 @strncmp(ptr noundef %name37.i76, ptr noundef %name, i32 noundef 16) #15
  %tobool39.not.i78 = icmp eq i32 %call38.i77, 0
  br i1 %tobool39.not.i78, label %for.body.i79.cleanup_crit_edge, label %for.body.i79.for.cond.i75_crit_edge

for.body.i79.for.cond.i75_crit_edge:              ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i75

for.body.i79.cleanup_crit_edge:                   ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.i79.cleanup_crit_edge, %for.cond.i75.cleanup_crit_edge, %cond.true, %if.then43.cleanup_crit_edge, %find_devfreq_governor.exit.cleanup_crit_edge, %do.end28
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end28 ], [ %3, %cond.true ], [ %tmp_governor.0.i, %find_devfreq_governor.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then43.cleanup_crit_edge ], [ %tmp_governor.0.i73, %for.body.i79.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %for.cond.i75.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @create_sysfs_files(ptr noundef %devfreq, ptr nocapture noundef readonly %gov) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.devfreq_governor, ptr %gov, i32 0, i32 2
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %attrs, align 8
  %and = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2
  %call.i = tail call i32 @sysfs_create_file_ns(ptr noundef %dev, ptr noundef nonnull @dev_attr_polling_interval, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.98) #20
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %attrs, align 8
  %and5 = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.end3.if.end21_crit_edge, label %if.then9

if.end3.if.end21_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then9:                                         ; preds = %if.end3
  %dev11 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2
  %call.i26 = tail call i32 @sysfs_create_file_ns(ptr noundef %dev11, ptr noundef nonnull @dev_attr_timer, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp14 = icmp slt i32 %call.i26, 0
  br i1 %cmp14, label %do.end18, label %if.then9.if.end21_crit_edge

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

do.end18:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.98) #20
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %if.then9.if.end21_crit_edge, %if.end3.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_cooling_em_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devfreq_remove_device(ptr noundef %devfreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %devfreq, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %cdev = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 21
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 8
  tail call void @devfreq_cooling_unregister(ptr noundef %1) #15
  %governor = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 4
  %2 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %governor, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then2:                                         ; preds = %if.end
  %event_handler = getelementptr inbounds %struct.devfreq_governor, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event_handler, align 4
  %call = tail call i32 %5(ptr noundef nonnull %devfreq, i32 noundef 2, ptr noundef null) #15
  %6 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %governor, align 4
  %attrs.i = getelementptr inbounds %struct.devfreq_governor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %attrs.i, align 8
  %and.i = and i64 %9, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then2.if.end.i_crit_edge, label %if.then.i

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2
  tail call void @sysfs_remove_file_ns(ptr noundef %dev.i, ptr noundef nonnull @dev_attr_polling_interval, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then2.if.end.i_crit_edge
  %10 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %attrs.i, align 8
  %and2.i = and i64 %11, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end5_crit_edge, label %if.then6.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev7.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2
  tail call void @sysfs_remove_file_ns(ptr noundef %dev7.i, ptr noundef nonnull @dev_attr_timer, ptr noundef null) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then6.i, %if.end.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 2
  tail call void @device_unregister(ptr noundef %dev) #15
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_cooling_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_devfreq_add_device(ptr noundef %dev, ptr noundef %profile, ptr noundef %governor_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_devfreq_dev_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.21) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devfreq_add_device(ptr noundef %dev, ptr noundef %profile, ptr noundef %governor_name, ptr noundef %data)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @devres_free(ptr noundef nonnull %call) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.then4 ], [ %call2, %if.end5 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_devfreq_dev_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %call = tail call i32 @devfreq_remove_device(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devfreq_get_devfreq_by_node(ptr noundef readnone %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @devfreq_list_lock, i32 noundef 0) #15
  %devfreq.019 = load ptr, ptr @devfreq_list, align 4
  %cmp.not20 = icmp eq ptr %devfreq.019, @devfreq_list
  br i1 %cmp.not20, label %if.end.cleanup.sink.split_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %devfreq.021 = phi ptr [ %devfreq.0, %for.inc.for.body_crit_edge ], [ %devfreq.019, %if.end.for.body_crit_edge ]
  %parent = getelementptr inbounds %struct.devfreq, ptr %devfreq.021, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %cmp5 = icmp eq ptr %3, %node
  br i1 %cmp5, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %4 = ptrtoint ptr %devfreq.021 to i32
  call void @__asan_load4_noabort(i32 %4)
  %devfreq.0 = load ptr, ptr %devfreq.021, align 4
  %cmp.not = icmp eq ptr %devfreq.0, @devfreq_list
  br i1 %cmp.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ inttoptr (i32 -19 to ptr), %if.end.cleanup.sink.split_crit_edge ], [ %devfreq.021, %land.lhs.true.cleanup.sink.split_crit_edge ], [ inttoptr (i32 -19 to ptr), %for.inc.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devfreq_get_devfreq_by_phandle(ptr noundef readonly %dev, ptr noundef %phandle_name, i32 noundef %index) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  %tobool1.not = icmp eq ptr %phandle_name, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #15
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull %phandle_name, ptr noundef null, i32 noundef 0, i32 noundef %index, ptr noundef nonnull %args.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #15
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %if.end5
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #15
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end.i20

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i20:                                       ; preds = %of_parse_phandle.exit
  call void @mutex_lock_nested(ptr noundef nonnull @devfreq_list_lock, i32 noundef 0) #15
  %devfreq.019.i = load ptr, ptr @devfreq_list, align 4
  %cmp.not20.i = icmp eq ptr %devfreq.019.i, @devfreq_list
  br i1 %cmp.not20.i, label %if.end.i20.devfreq_get_devfreq_by_node.exit_crit_edge, label %if.end.i20.for.body.i_crit_edge

if.end.i20.for.body.i_crit_edge:                  ; preds = %if.end.i20
  br label %for.body.i

if.end.i20.devfreq_get_devfreq_by_node.exit_crit_edge: ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #17
  br label %devfreq_get_devfreq_by_node.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i20.for.body.i_crit_edge
  %devfreq.021.i = phi ptr [ %devfreq.0.i, %for.inc.i.for.body.i_crit_edge ], [ %devfreq.019.i, %if.end.i20.for.body.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.devfreq, ptr %devfreq.021.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 8
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %of_node.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %cmp5.i = icmp eq ptr %8, %4
  br i1 %cmp5.i, label %land.lhs.true.i.devfreq_get_devfreq_by_node.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i.devfreq_get_devfreq_by_node.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %devfreq_get_devfreq_by_node.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %devfreq.021.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %devfreq.0.i = load ptr, ptr %devfreq.021.i, align 4
  %cmp.not.i = icmp eq ptr %devfreq.0.i, @devfreq_list
  br i1 %cmp.not.i, label %for.inc.i.devfreq_get_devfreq_by_node.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.devfreq_get_devfreq_by_node.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %devfreq_get_devfreq_by_node.exit

devfreq_get_devfreq_by_node.exit:                 ; preds = %for.inc.i.devfreq_get_devfreq_by_node.exit_crit_edge, %land.lhs.true.i.devfreq_get_devfreq_by_node.exit_crit_edge, %if.end.i20.devfreq_get_devfreq_by_node.exit_crit_edge
  %retval.0.ph.i = phi ptr [ inttoptr (i32 -19 to ptr), %if.end.i20.devfreq_get_devfreq_by_node.exit_crit_edge ], [ inttoptr (i32 -19 to ptr), %for.inc.i.devfreq_get_devfreq_by_node.exit_crit_edge ], [ %devfreq.021.i, %land.lhs.true.i.devfreq_get_devfreq_by_node.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  call void @of_node_put(ptr noundef nonnull %4) #15
  br label %cleanup

cleanup:                                          ; preds = %devfreq_get_devfreq_by_node.exit, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.ph.i, %devfreq_get_devfreq_by_node.exit ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %of_parse_phandle.exit.thread ], [ inttoptr (i32 -19 to ptr), %of_parse_phandle.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devm_devfreq_remove_device(ptr noundef %dev, ptr noundef %devfreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devres_release(ptr noundef %dev, ptr noundef nonnull @devm_devfreq_dev_release, ptr noundef nonnull @devm_devfreq_dev_match, ptr noundef %devfreq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !427

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1117, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devm_devfreq_dev_match(ptr nocapture noundef readnone %dev, ptr noundef readonly %res, ptr noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %res, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end24, !prof !428

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 990, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devfreq_suspend_device(ptr noundef %devfreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %devfreq, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %suspend_count = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %suspend_count, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !432
  tail call void @llvm.prefetch.p0(ptr %suspend_count, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %suspend_count, ptr %suspend_count, i32 1, ptr elementtype(i32) %suspend_count) #15, !srcloc !433
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !434
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %governor = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 4
  %1 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %governor, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %if.end2.if.end10_crit_edge, label %if.then4

if.end2.if.end10_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then4:                                         ; preds = %if.end2
  %event_handler = getelementptr inbounds %struct.devfreq_governor, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %event_handler, align 4
  %call6 = tail call i32 %4(ptr noundef nonnull %devfreq, i32 noundef 4, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.end10_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %if.end2.if.end10_crit_edge
  %suspend_freq = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 16
  %5 = ptrtoint ptr %suspend_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %suspend_freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %if.end10.if.end19_crit_edge, label %if.then12

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then12:                                        ; preds = %if.end10
  %lock = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %7 = ptrtoint ptr %suspend_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %suspend_freq, align 8
  %call14 = tail call fastcc i32 @devfreq_set_target(ptr noundef nonnull %devfreq, i32 noundef %8, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.then12.if.end19_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.end19:                                         ; preds = %if.then12.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then12.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call6, %if.then4.cleanup_crit_edge ], [ %call14, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devfreq_resume_device(ptr noundef %devfreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %devfreq, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %suspend_count = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %suspend_count, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !435
  tail call void @llvm.prefetch.p0(ptr %suspend_count, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %suspend_count, ptr %suspend_count, i32 1, ptr elementtype(i32) %suspend_count) #15, !srcloc !436
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !437
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %resume_freq = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 17
  %1 = ptrtoint ptr %resume_freq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %resume_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not = icmp eq i32 %2, 0
  br i1 %tobool3.not, label %if.end2.if.end11_crit_edge, label %if.then4

if.end2.if.end11_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then4:                                         ; preds = %if.end2
  %lock = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %3 = ptrtoint ptr %resume_freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resume_freq, align 4
  %call6 = tail call fastcc i32 @devfreq_set_target(ptr noundef nonnull %devfreq, i32 noundef %4, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool8.not = icmp eq i32 %call6, 0
  br i1 %tobool8.not, label %if.then4.if.end11_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %if.end2.if.end11_crit_edge
  %governor = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 4
  %5 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %governor, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %if.end11.if.end19_crit_edge, label %if.then13

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then13:                                        ; preds = %if.end11
  %event_handler = getelementptr inbounds %struct.devfreq_governor, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %event_handler, align 4
  %call15 = tail call i32 %8(ptr noundef nonnull %devfreq, i32 noundef 5, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then13.if.end19_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.end19:                                         ; preds = %if.then13.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then13.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call6, %if.then4.cleanup_crit_edge ], [ %call15, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devfreq_suspend() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @devfreq_list_lock, i32 noundef 0) #15
  %devfreq.08 = load ptr, ptr @devfreq_list, align 4
  %cmp.not9 = icmp eq ptr %devfreq.08, @devfreq_list
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %devfreq.010 = phi ptr [ %devfreq.0, %for.inc.for.body_crit_edge ], [ %devfreq.08, %entry.for.body_crit_edge ]
  %call = tail call i32 @devfreq_suspend_device(ptr noundef %devfreq.010)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.devfreq, ptr %devfreq.010, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #20
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %0 = ptrtoint ptr %devfreq.010 to i32
  call void @__asan_load4_noabort(i32 %0)
  %devfreq.0 = load ptr, ptr %devfreq.010, align 4
  %cmp.not = icmp eq ptr %devfreq.0, @devfreq_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devfreq_resume() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @devfreq_list_lock, i32 noundef 0) #15
  %devfreq.08 = load ptr, ptr @devfreq_list, align 4
  %cmp.not9 = icmp eq ptr %devfreq.08, @devfreq_list
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %devfreq.010 = phi ptr [ %devfreq.0, %for.inc.for.body_crit_edge ], [ %devfreq.08, %entry.for.body_crit_edge ]
  %call = tail call i32 @devfreq_resume_device(ptr noundef %devfreq.010)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.devfreq, ptr %devfreq.010, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24) #20
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %0 = ptrtoint ptr %devfreq.010 to i32
  call void @__asan_load4_noabort(i32 %0)
  %devfreq.0 = load ptr, ptr %devfreq.010, align 4
  %cmp.not = icmp eq ptr %devfreq.0, @devfreq_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devfreq_add_governor(ptr noundef %governor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %governor, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @devfreq_list_lock, i32 noundef 0) #15
  %name = getelementptr inbounds %struct.devfreq_governor, ptr %governor, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @devfreq_list_lock, i32 0, i32 5), i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !428

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %name, null
  %cmp.i.i = icmp ugt ptr %name, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %do.end28.i, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  br label %for.cond.i

do.end28.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.95) #20
  br label %if.end11

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i.for.cond.i_crit_edge
  %tmp_governor.0.in.i = phi ptr [ %tmp_governor.0.i, %for.body.i.for.cond.i_crit_edge ], [ @devfreq_governor_list, %if.end.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %tmp_governor.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp_governor.0.i = load ptr, ptr %tmp_governor.0.in.i, align 4
  %cmp34.not.i = icmp eq ptr %tmp_governor.0.i, @devfreq_governor_list
  br i1 %cmp34.not.i, label %for.cond.i.if.end11_crit_edge, label %for.body.i

for.cond.i.if.end11_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

for.body.i:                                       ; preds = %for.cond.i
  %name37.i = getelementptr inbounds %struct.devfreq_governor, ptr %tmp_governor.0.i, i32 0, i32 1
  %call38.i = tail call i32 @strncmp(ptr noundef %name37.i, ptr noundef %name, i32 noundef 16) #15
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %find_devfreq_governor.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

find_devfreq_governor.exit:                       ; preds = %for.body.i
  %cmp.i = icmp ugt ptr %tmp_governor.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %find_devfreq_governor.exit.if.end11_crit_edge, label %do.end6

find_devfreq_governor.exit.if.end11_crit_edge:    ; preds = %find_devfreq_governor.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

do.end6:                                          ; preds = %find_devfreq_governor.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, ptr noundef %name37.i) #20
  br label %err_out

if.end11:                                         ; preds = %find_devfreq_governor.exit.if.end11_crit_edge, %for.cond.i.if.end11_crit_edge, %do.end28.i
  %2 = load ptr, ptr @devfreq_governor_list, align 4
  %call.i.i86 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %governor, ptr noundef nonnull @devfreq_governor_list, ptr noundef %2) #15
  br i1 %call.i.i86, label %if.end.i.i, label %if.end11.list_add.exit_crit_edge

if.end11.list_add.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %governor, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %governor to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %governor, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %governor, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @devfreq_governor_list, ptr %prev3.i.i, align 4
  store volatile ptr %governor, ptr @devfreq_governor_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end11.list_add.exit_crit_edge
  %devfreq.090 = load ptr, ptr @devfreq_list, align 4
  %cmp.not91 = icmp eq ptr %devfreq.090, @devfreq_list
  br i1 %cmp.not91, label %list_add.exit.err_out_crit_edge, label %for.body.lr.ph

list_add.exit.err_out_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out

for.body.lr.ph:                                   ; preds = %list_add.exit
  %event_handler46 = getelementptr inbounds %struct.devfreq_governor, ptr %governor, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end57.for.body_crit_edge, %for.body.lr.ph
  %devfreq.092 = phi ptr [ %devfreq.090, %for.body.lr.ph ], [ %devfreq.0, %if.end57.for.body_crit_edge ]
  %parent = getelementptr inbounds %struct.devfreq, ptr %devfreq.092, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %governor15 = getelementptr inbounds %struct.devfreq, ptr %devfreq.092, i32 0, i32 4
  %8 = ptrtoint ptr %governor15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %governor15, align 4
  %name16 = getelementptr inbounds %struct.devfreq_governor, ptr %9, i32 0, i32 1
  %call20 = tail call i32 @strncmp(ptr noundef %name16, ptr noundef %name, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %for.body.if.end57_crit_edge

for.body.if.end57_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.then22:                                        ; preds = %for.body
  %tobool24.not = icmp eq ptr %9, null
  br i1 %tobool24.not, label %if.then22.if.end43_crit_edge, label %do.end28

if.then22.if.end43_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

do.end28:                                         ; preds = %if.then22
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.28, ptr noundef %name16) #20
  %10 = ptrtoint ptr %governor15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %governor15, align 4
  %event_handler = getelementptr inbounds %struct.devfreq_governor, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %event_handler, align 4
  %call33 = tail call i32 %13(ptr noundef %devfreq.092, i32 noundef 2, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.end28.if.end43_crit_edge, label %do.end38

do.end28.if.end43_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

do.end38:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %governor15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %governor15, align 4
  %name40 = getelementptr inbounds %struct.devfreq_governor, ptr %15, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.28, ptr noundef %name40, i32 noundef %call33) #20
  br label %if.end43

if.end43:                                         ; preds = %do.end38, %do.end28.if.end43_crit_edge, %if.then22.if.end43_crit_edge
  %16 = ptrtoint ptr %governor15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %governor, ptr %governor15, align 4
  %17 = ptrtoint ptr %event_handler46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %event_handler46, align 4
  %call47 = tail call i32 %18(ptr noundef %devfreq.092, i32 noundef 1, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end43.if.end57_crit_edge, label %do.end52

if.end43.if.end57_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

do.end52:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %governor15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %governor15, align 4
  %name54 = getelementptr inbounds %struct.devfreq_governor, ptr %20, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.28, ptr noundef %name54, i32 noundef %call47) #20
  br label %if.end57

if.end57:                                         ; preds = %do.end52, %if.end43.if.end57_crit_edge, %for.body.if.end57_crit_edge
  %21 = ptrtoint ptr %devfreq.092 to i32
  call void @__asan_load4_noabort(i32 %21)
  %devfreq.0 = load ptr, ptr %devfreq.092, align 4
  %cmp.not = icmp eq ptr %devfreq.0, @devfreq_list
  br i1 %cmp.not, label %if.end57.err_out_crit_edge, label %if.end57.for.body_crit_edge

if.end57.for.body_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end57.err_out_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out

err_out:                                          ; preds = %if.end57.err_out_crit_edge, %list_add.exit.err_out_crit_edge, %do.end6
  %err.0 = phi i32 [ -22, %do.end6 ], [ 0, %list_add.exit.err_out_crit_edge ], [ 0, %if.end57.err_out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %err_out, %do.end
  %retval.0 = phi i32 [ %err.0, %err_out ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_devfreq_add_governor(ptr noundef %dev, ptr noundef %governor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devfreq_add_governor(ptr noundef %governor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_devfreq_remove_governor, ptr noundef %governor) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 @devfreq_remove_governor(ptr noundef %governor) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %do.end.i.i, !prof !427

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1306, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_devfreq_remove_governor(ptr noundef %governor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devfreq_remove_governor(ptr noundef %governor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !427

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1306, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devfreq_remove_governor(ptr noundef %governor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %governor, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #20
  br label %cleanup51

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @devfreq_list_lock, i32 noundef 0) #15
  %name = getelementptr inbounds %struct.devfreq_governor, ptr %governor, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @devfreq_list_lock, i32 0, i32 5), i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !428

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %name, null
  %cmp.i.i = icmp ugt ptr %name, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %do.end28.i, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  br label %for.cond.i

do.end28.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.95) #20
  br label %do.end6

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i.for.cond.i_crit_edge
  %tmp_governor.0.in.i = phi ptr [ %tmp_governor.0.i, %for.body.i.for.cond.i_crit_edge ], [ @devfreq_governor_list, %if.end.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %tmp_governor.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp_governor.0.i = load ptr, ptr %tmp_governor.0.in.i, align 4
  %cmp34.not.i = icmp eq ptr %tmp_governor.0.i, @devfreq_governor_list
  br i1 %cmp34.not.i, label %for.cond.i.do.end6_crit_edge, label %for.body.i

for.cond.i.do.end6_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end6

for.body.i:                                       ; preds = %for.cond.i
  %name37.i = getelementptr inbounds %struct.devfreq_governor, ptr %tmp_governor.0.i, i32 0, i32 1
  %call38.i = tail call i32 @strncmp(ptr noundef %name37.i, ptr noundef %name, i32 noundef 16) #15
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %find_devfreq_governor.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

find_devfreq_governor.exit:                       ; preds = %for.body.i
  %cmp.i = icmp ugt ptr %tmp_governor.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %find_devfreq_governor.exit.do.end6_crit_edge, label %for.cond.preheader

find_devfreq_governor.exit.do.end6_crit_edge:     ; preds = %find_devfreq_governor.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end6

for.cond.preheader:                               ; preds = %find_devfreq_governor.exit
  %devfreq.075 = load ptr, ptr @devfreq_list, align 4
  %cmp.not76 = icmp eq ptr %devfreq.075, @devfreq_list
  br i1 %cmp.not76, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

do.end6:                                          ; preds = %find_devfreq_governor.exit.do.end6_crit_edge, %for.cond.i.do.end6_crit_edge, %do.end28.i
  %retval.0.i73 = phi ptr [ %tmp_governor.0.i, %find_devfreq_governor.exit.do.end6_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end28.i ], [ inttoptr (i32 -19 to ptr), %for.cond.i.do.end6_crit_edge ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, ptr noundef %name) #20
  %2 = ptrtoint ptr %retval.0.i73 to i32
  br label %err_out

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %devfreq.077 = phi ptr [ %devfreq.0, %cleanup.for.body_crit_edge ], [ %devfreq.075, %for.cond.preheader.for.body_crit_edge ]
  %parent = getelementptr inbounds %struct.devfreq, ptr %devfreq.077, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %governor15 = getelementptr inbounds %struct.devfreq, ptr %devfreq.077, i32 0, i32 4
  %5 = ptrtoint ptr %governor15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %governor15, align 4
  %name16 = getelementptr inbounds %struct.devfreq_governor, ptr %6, i32 0, i32 1
  %call20 = tail call i32 @strncmp(ptr noundef %name16, ptr noundef %name, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then22:                                        ; preds = %for.body
  %tobool24.not = icmp eq ptr %6, null
  br i1 %tobool24.not, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.41, ptr noundef %name) #20
  br label %cleanup

if.end31:                                         ; preds = %if.then22
  %event_handler = getelementptr inbounds %struct.devfreq_governor, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %event_handler, align 4
  %call33 = tail call i32 %8(ptr noundef %devfreq.077, i32 noundef 2, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end31.if.end42_crit_edge, label %do.end38

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %governor15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %governor15, align 4
  %name40 = getelementptr inbounds %struct.devfreq_governor, ptr %10, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.41, ptr noundef %name40, i32 noundef %call33) #20
  br label %if.end42

if.end42:                                         ; preds = %do.end38, %if.end31.if.end42_crit_edge
  %11 = ptrtoint ptr %governor15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %governor15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end28, %for.body.cleanup_crit_edge
  %12 = ptrtoint ptr %devfreq.077 to i32
  call void @__asan_load4_noabort(i32 %12)
  %devfreq.0 = load ptr, ptr %devfreq.077, align 4
  %cmp.not = icmp eq ptr %devfreq.0, @devfreq_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call.i.i70 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %governor) #15
  br i1 %call.i.i70, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %governor, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %governor, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %19 = ptrtoint ptr %governor to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %governor, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %governor, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %err_out

err_out:                                          ; preds = %list_del.exit, %do.end6
  %err.0 = phi i32 [ %2, %do.end6 ], [ 0, %list_del.exit ]
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  br label %cleanup51

cleanup51:                                        ; preds = %err_out, %do.end
  %retval.0 = phi i32 [ %err.0, %err_out ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @devfreq_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.112, ptr noundef nonnull @devfreq_init.__key) #15
  store ptr %call, ptr @devfreq_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str) #20
  %0 = load ptr, ptr @devfreq_class, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %return

if.end:                                           ; preds = %entry
  %call5 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.14, i32 noundef 262158, i32 noundef 1, ptr noundef nonnull @.str.115) #15
  store ptr %call5, ptr @devfreq_wq, align 4
  %tobool.not = icmp eq ptr %call5, null
  %2 = load ptr, ptr @devfreq_class, align 4
  br i1 %tobool.not, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @class_destroy(ptr noundef %2) #15
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str) #20
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev_groups = getelementptr inbounds %struct.class, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %dev_groups to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @devfreq_groups, ptr %dev_groups, align 4
  %call12 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.112, ptr noundef null) #15
  store ptr %call12, ptr @devfreq_debugfs, align 4
  %call13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.119, i16 noundef zeroext 292, ptr noundef %call12, ptr noundef null, ptr noundef nonnull @devfreq_summary_fops) #15
  br label %return

return:                                           ; preds = %if.end11, %if.then6, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ 0, %if.end11 ], [ -12, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devfreq_recommended_opp(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @dev_pm_opp_find_freq_floor(ptr noundef %dev, ptr noundef %freq) #15
  %cmp = icmp eq ptr %call, inttoptr (i32 -34 to ptr)
  br i1 %cmp, label %if.then2, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %dev, ptr noundef %freq) #15
  br label %if.end10

if.else:                                          ; preds = %entry
  %call4 = tail call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %dev, ptr noundef %freq) #15
  %cmp6 = icmp eq ptr %call4, inttoptr (i32 -34 to ptr)
  br i1 %cmp6, label %if.then7, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call ptr @dev_pm_opp_find_freq_floor(ptr noundef %dev, ptr noundef %freq) #15
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.else.if.end10_crit_edge, %if.then2, %if.then.if.end10_crit_edge
  %opp.0 = phi ptr [ %call3, %if.then2 ], [ %call, %if.then.if.end10_crit_edge ], [ %call8, %if.then7 ], [ %call4, %if.else.if.end10_crit_edge ]
  ret ptr %opp.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_floor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devfreq_register_opp_notifier(ptr noundef %dev, ptr noundef %devfreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nb = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 6
  %call = tail call i32 @dev_pm_opp_register_notifier(ptr noundef %dev, ptr noundef %nb) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devfreq_unregister_opp_notifier(ptr noundef %dev, ptr noundef %devfreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nb = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 6
  %call = tail call i32 @dev_pm_opp_unregister_notifier(ptr noundef %dev, ptr noundef %nb) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_devfreq_register_opp_notifier(ptr noundef %dev, ptr noundef %devfreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_devfreq_opp_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.51) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %nb.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 6
  %call.i = tail call i32 @dev_pm_opp_register_notifier(ptr noundef %dev, ptr noundef %nb.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @devres_free(ptr noundef nonnull %call) #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %devfreq, ptr %call, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then3 ], [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_devfreq_opp_release(ptr noundef %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %nb.i = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 6
  %call.i = tail call i32 @dev_pm_opp_unregister_notifier(ptr noundef %dev, ptr noundef %nb.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devm_devfreq_unregister_opp_notifier(ptr noundef %dev, ptr noundef %devfreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devres_release(ptr noundef %dev, ptr noundef nonnull @devm_devfreq_opp_release, ptr noundef nonnull @devm_devfreq_dev_match, ptr noundef %devfreq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !427

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2124, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devfreq_register_notifier(ptr noundef %devfreq, ptr noundef %nb, i32 noundef %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %devfreq, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %list)
  %cond = icmp eq i32 %list, 0
  %or.cond = and i1 %tobool.not, %cond
  br i1 %or.cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %transition_notifier_list = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 20
  %call = tail call i32 @srcu_notifier_chain_register(ptr noundef %transition_notifier_list, ptr noundef %nb) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devfreq_unregister_notifier(ptr noundef %devfreq, ptr noundef %nb, i32 noundef %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %devfreq, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %list)
  %cond = icmp eq i32 %list, 0
  %or.cond = and i1 %tobool.not, %cond
  br i1 %or.cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %transition_notifier_list = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 20
  %call = tail call i32 @srcu_notifier_chain_unregister(ptr noundef %transition_notifier_list, ptr noundef %nb) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_devfreq_register_notifier(ptr noundef %dev, ptr noundef %devfreq, ptr noundef %nb, i32 noundef %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_devfreq_notifier_release, i32 noundef 12, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.52) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp ne ptr %devfreq, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %list)
  %cond.i = icmp eq i32 %list, 0
  %or.cond.i = and i1 %tobool.not.i, %cond.i
  br i1 %or.cond.i, label %devfreq_register_notifier.exit, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3

devfreq_register_notifier.exit:                   ; preds = %if.end
  %transition_notifier_list.i = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 20
  %call.i = tail call i32 @srcu_notifier_chain_register(ptr noundef %transition_notifier_list.i, ptr noundef %nb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %devfreq_register_notifier.exit.if.then3_crit_edge

devfreq_register_notifier.exit.if.then3_crit_edge: ; preds = %devfreq_register_notifier.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3

if.then3:                                         ; preds = %devfreq_register_notifier.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i20 = phi i32 [ %call.i, %devfreq_register_notifier.exit.if.then3_crit_edge ], [ -22, %if.end.if.then3_crit_edge ]
  tail call void @devres_free(ptr noundef nonnull %call) #15
  br label %cleanup

if.end4:                                          ; preds = %devfreq_register_notifier.exit
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %devfreq, ptr %call, align 4
  %nb6 = getelementptr inbounds %struct.devfreq_notifier_devres, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %nb6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %nb, ptr %nb6, align 4
  %list7 = getelementptr inbounds %struct.devfreq_notifier_devres, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %list7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %list7, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i20, %if.then3 ], [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_devfreq_notifier_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %list = getelementptr inbounds %struct.devfreq_notifier_devres, ptr %res, i32 0, i32 2
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %list, align 4
  %tobool.not.i = icmp ne ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cond.i = icmp eq i32 %3, 0
  %or.cond.i = and i1 %tobool.not.i, %cond.i
  br i1 %or.cond.i, label %sw.bb.i, label %entry.devfreq_unregister_notifier.exit_crit_edge

entry.devfreq_unregister_notifier.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %devfreq_unregister_notifier.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %nb = getelementptr inbounds %struct.devfreq_notifier_devres, ptr %res, i32 0, i32 1
  %4 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nb, align 4
  %transition_notifier_list.i = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 20
  %call.i = tail call i32 @srcu_notifier_chain_unregister(ptr noundef %transition_notifier_list.i, ptr noundef %5) #15
  br label %devfreq_unregister_notifier.exit

devfreq_unregister_notifier.exit:                 ; preds = %sw.bb.i, %entry.devfreq_unregister_notifier.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devm_devfreq_unregister_notifier(ptr noundef %dev, ptr noundef %devfreq, ptr nocapture readnone %nb, i32 %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devres_release(ptr noundef %dev, ptr noundef nonnull @devm_devfreq_notifier_release, ptr noundef nonnull @devm_devfreq_dev_match, ptr noundef %devfreq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !427

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2247, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_devfreq_frequency(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_dev_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %freq = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %freq, align 4
  %prev_freq = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %prev_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prev_freq, align 4
  %total_time = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %total_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1 = icmp eq i32 %9, 0
  br i1 %cmp1, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %busy_time = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %busy_time to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %busy_time, align 4
  %mul = mul i32 %11, 100
  %div = udiv i32 %mul, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.61, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %cond) #15
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_devfreq_monitor(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %__data_loc_dev_name = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %__data_loc_dev_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_dev_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %freq = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %freq, align 4
  %polling_ms = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %polling_ms to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %polling_ms, align 4
  %total_time = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %total_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1 = icmp eq i32 %9, 0
  br i1 %cmp1, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %busy_time = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %busy_time to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %busy_time, align 4
  %mul = mul i32 %11, 100
  %div = udiv i32 %mul, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.64, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %cond) #15
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_read_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_devfreq_frequency(ptr noundef %devfreq, i32 noundef %freq, i32 noundef %prev_freq) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_devfreq_frequency, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_devfreq_frequency, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !430

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !417) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !427

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !417) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !438
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_devfreq_frequency, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %devfreq, i32 noundef %freq, i32 noundef %prev_freq) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !439
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !439
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !417) #15
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !417) #15
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !427

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !417) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !440
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_devfreq_frequency, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_devfreq_frequency.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_devfreq_frequency.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 37, ptr noundef nonnull @.str.68) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !441
  %38 = tail call i32 @llvm.read_register.i32(metadata !417) #15
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_devfreq_monitor(ptr noundef %devfreq) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_devfreq_monitor, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_devfreq_monitor, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !430

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !417) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !427

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !417) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !442
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_devfreq_monitor, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %devfreq) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !443
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !443
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !417) #15
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !417) #15
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !427

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !417) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !440
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_devfreq_monitor, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_devfreq_monitor.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_devfreq_monitor.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 64, ptr noundef nonnull @.str.68) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !441
  %38 = tail call i32 @llvm.read_register.i32(metadata !417) #15
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_remove_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_remove_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_opp_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polling_interval_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %profile = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %profile, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %polling_ms = getelementptr inbounds %struct.devfreq_dev_profile, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %polling_ms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polling_ms, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @polling_interval_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #15
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !429
  %governor = getelementptr i8, ptr %dev, i32 932
  %1 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %governor, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.103, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %governor, align 4
  %event_handler = getelementptr inbounds %struct.devfreq_governor, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %event_handler, align 4
  %call4 = call i32 %6(ptr noundef %add.ptr, i32 noundef 3, ptr noundef nonnull %value) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #15
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %profile = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %profile, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %timer = getelementptr inbounds %struct.devfreq_dev_profile, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timer, align 4
  %arrayidx = getelementptr [2 x [16 x i8]], ptr @timer_name, i32 0, i32 %3
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.105, ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %str_timer = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -104
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %str_timer) #15
  %governor = getelementptr i8, ptr %dev, i32 932
  %0 = call ptr @memset(ptr %str_timer, i32 255, i32 17)
  %1 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %governor, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %profile = getelementptr i8, ptr %dev, i32 928
  %3 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %profile, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.106, ptr noundef nonnull %str_timer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %call7 = call i32 @strncmp(ptr noundef nonnull @timer_name, ptr noundef nonnull %str_timer, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.body.preheader.if.end13_crit_edge, label %for.inc

for.body.preheader.if.end13_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

for.inc:                                          ; preds = %for.body.preheader
  %call7.1 = call i32 @strncmp(ptr noundef getelementptr inbounds ([2 x [16 x i8]], ptr @timer_name, i32 0, i32 1), ptr noundef nonnull %str_timer, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1)
  %tobool8.not.1 = icmp eq i32 %call7.1, 0
  br i1 %tobool8.not.1, label %for.inc.if.end13_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.if.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.end13:                                         ; preds = %for.inc.if.end13_crit_edge, %for.body.preheader.if.end13_crit_edge
  %i.075.lcssa = phi i32 [ 0, %for.body.preheader.if.end13_crit_edge ], [ 1, %for.inc.if.end13_crit_edge ]
  %5 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %profile, align 8
  %timer15 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %timer15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timer15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %i.075.lcssa)
  %cmp16 = icmp eq i32 %8, %i.075.lcssa
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %lock = getelementptr i8, ptr %dev, i32 -96
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %9 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %profile, align 8
  %timer20 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %timer20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.075.lcssa, ptr %timer20, align 4
  call void @mutex_unlock(ptr noundef %lock) #15
  %12 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %governor, align 4
  %event_handler = getelementptr inbounds %struct.devfreq_governor, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %event_handler, align 4
  %call23 = call i32 %15(ptr noundef %add.ptr, i32 noundef 2, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  %16 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %governor, align 4
  br i1 %tobool24.not, label %if.end28, label %do.end

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.devfreq_governor, ptr %17, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, ptr noundef %name, i32 noundef %call23) #20
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %event_handler30 = getelementptr inbounds %struct.devfreq_governor, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %event_handler30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %event_handler30, align 4
  %call31 = call i32 %19(ptr noundef %add.ptr, i32 noundef 1, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end28.cleanup_crit_edge, label %do.end36

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %governor, align 4
  %name38 = getelementptr inbounds %struct.devfreq_governor, ptr %21, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.108, ptr noundef %name38, i32 noundef %call31) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end28.cleanup_crit_edge, %do.end, %if.end13.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.end28.cleanup_crit_edge ], [ %count, %if.end13.cleanup_crit_edge ], [ %call31, %do.end36 ], [ %call23, %do.end ], [ -22, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %str_timer) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.105, ptr noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @governor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %governor = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.devfreq_governor, ptr %1, i32 0, i32 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.105, ptr noundef %name)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @governor_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %str_governor = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -104
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %str_governor) #15
  %governor1 = getelementptr i8, ptr %dev, i32 932
  %0 = call ptr @memset(ptr %str_governor, i32 255, i32 17)
  %1 = ptrtoint ptr %governor1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %governor1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.106, ptr noundef nonnull %str_governor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef nonnull @devfreq_list_lock, i32 noundef 0) #15
  %call5 = call fastcc ptr @try_then_request_governor(ptr noundef nonnull %str_governor)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out, label %if.end9

if.end9:                                          ; preds = %if.end3
  %3 = ptrtoint ptr %governor1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %governor1, align 4
  %cmp11 = icmp eq ptr %4, %call5
  br i1 %cmp11, label %if.end9.cleanup.sink.split_crit_edge, label %if.else

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end9
  %flags = getelementptr inbounds %struct.devfreq_governor, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %flags, align 8
  %and = and i64 %6, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool14.not = icmp eq i64 %and, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.else
  %flags15 = getelementptr inbounds %struct.devfreq_governor, ptr %call5, i32 0, i32 3
  %7 = ptrtoint ptr %flags15 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %flags15, align 8
  %and16 = and i64 %8, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16)
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %if.end22, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end22:                                         ; preds = %lor.lhs.false
  %event_handler = getelementptr inbounds %struct.devfreq_governor, ptr %4, i32 0, i32 5
  %9 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %event_handler, align 4
  %call24 = call i32 %10(ptr noundef %add.ptr, i32 noundef 2, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  %11 = ptrtoint ptr %governor1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %governor1, align 4
  br i1 %tobool25.not, label %if.end29, label %do.end

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.devfreq_governor, ptr %12, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.122, ptr noundef %name, i32 noundef %call24) #20
  br label %cleanup.sink.split

if.end29:                                         ; preds = %if.end22
  %attrs.i = getelementptr inbounds %struct.devfreq_governor, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %attrs.i, align 8
  %and.i = and i64 %14, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end29.if.end.i_crit_edge, label %if.then.i

if.end29.if.end.i_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef nonnull @dev_attr_polling_interval, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end29.if.end.i_crit_edge
  %15 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %attrs.i, align 8
  %and2.i = and i64 %16, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.remove_sysfs_files.exit_crit_edge, label %if.then6.i

if.end.i.remove_sysfs_files.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %remove_sysfs_files.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef nonnull @dev_attr_timer, ptr noundef null) #15
  br label %remove_sysfs_files.exit

remove_sysfs_files.exit:                          ; preds = %if.then6.i, %if.end.i.remove_sysfs_files.exit_crit_edge
  %17 = ptrtoint ptr %governor1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %governor1, align 4
  store ptr %call5, ptr %governor1, align 4
  %event_handler34 = getelementptr inbounds %struct.devfreq_governor, ptr %call5, i32 0, i32 5
  %19 = ptrtoint ptr %event_handler34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %event_handler34, align 4
  %call35 = call i32 %20(ptr noundef %add.ptr, i32 noundef 1, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %remove_sysfs_files.exit.if.end57_crit_edge, label %do.end40

remove_sysfs_files.exit.if.end57_crit_edge:       ; preds = %remove_sysfs_files.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

do.end40:                                         ; preds = %remove_sysfs_files.exit
  %21 = ptrtoint ptr %governor1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %governor1, align 4
  %name42 = getelementptr inbounds %struct.devfreq_governor, ptr %22, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.122, ptr noundef %name42, i32 noundef %call35) #20
  %23 = ptrtoint ptr %governor1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %18, ptr %governor1, align 4
  %event_handler46 = getelementptr inbounds %struct.devfreq_governor, ptr %18, i32 0, i32 5
  %24 = ptrtoint ptr %event_handler46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %event_handler46, align 4
  %call47 = call i32 %25(ptr noundef %add.ptr, i32 noundef 1, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.end40.if.end57_crit_edge, label %do.end52

do.end40.if.end57_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

do.end52:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #17
  %name53 = getelementptr inbounds %struct.devfreq_governor, ptr %18, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.122, ptr noundef %name53, i32 noundef %call47) #20
  %26 = ptrtoint ptr %governor1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %governor1, align 4
  br label %cleanup.sink.split

if.end57:                                         ; preds = %do.end40.if.end57_crit_edge, %remove_sysfs_files.exit.if.end57_crit_edge
  %27 = ptrtoint ptr %governor1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %governor1, align 4
  %attrs.i100 = getelementptr inbounds %struct.devfreq_governor, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %attrs.i100 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %attrs.i100, align 8
  %and.i101 = and i64 %30, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i101)
  %tobool.not.i102 = icmp eq i64 %and.i101, 0
  br i1 %tobool.not.i102, label %if.end57.if.end3.i_crit_edge, label %if.then.i105

if.end57.if.end3.i_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i

if.then.i105:                                     ; preds = %if.end57
  %call.i.i = call i32 @sysfs_create_file_ns(ptr noundef %dev, ptr noundef nonnull @dev_attr_polling_interval, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i104 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i104, label %do.end.i, label %if.then.i105.if.end3.i_crit_edge

if.then.i105.if.end3.i_crit_edge:                 ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i

do.end.i:                                         ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.98) #20
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.end.i, %if.then.i105.if.end3.i_crit_edge, %if.end57.if.end3.i_crit_edge
  %31 = ptrtoint ptr %attrs.i100 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %attrs.i100, align 8
  %and5.i = and i64 %32, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5.i)
  %tobool6.not.i = icmp eq i64 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.cleanup.sink.split_crit_edge, label %if.then9.i

if.end3.i.cleanup.sink.split_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then9.i:                                       ; preds = %if.end3.i
  %call.i26.i = call i32 @sysfs_create_file_ns(ptr noundef %dev, ptr noundef nonnull @dev_attr_timer, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %cmp14.i = icmp slt i32 %call.i26.i, 0
  br i1 %cmp14.i, label %do.end18.i, label %if.then9.i.cleanup.sink.split_crit_edge

if.then9.i.cleanup.sink.split_crit_edge:          ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

do.end18.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.98) #20
  br label %cleanup.sink.split

out:                                              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %call5 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %do.end18.i, %if.then9.i.cleanup.sink.split_crit_edge, %if.end3.i.cleanup.sink.split_crit_edge, %do.end52, %do.end, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %if.end9.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %33, %out ], [ %count, %if.end9.cleanup.sink.split_crit_edge ], [ %count, %if.end3.i.cleanup.sink.split_crit_edge ], [ %count, %if.then9.i.cleanup.sink.split_crit_edge ], [ %count, %do.end18.i ], [ -22, %if.else.cleanup.sink.split_crit_edge ], [ -22, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ %call47, %do.end52 ], [ %call24, %do.end ]
  call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %str_governor) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @available_governors_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %governor = getelementptr i8, ptr %d, i32 932
  %0 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @devfreq_list_lock, i32 noundef 0) #15
  %2 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %governor, align 4
  %flags = getelementptr inbounds %struct.devfreq_governor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %flags, align 8
  %and = and i64 %5, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %if.then3

for.cond.preheader:                               ; preds = %if.end
  %governor5.048 = load ptr, ptr @devfreq_governor_list, align 4
  %cmp.not49 = icmp eq ptr %governor5.048, @devfreq_governor_list
  br i1 %cmp.not49, label %if.end25.thread, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.end25.thread:                                  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  br label %9

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.devfreq_governor, ptr %3, i32 0, i32 1
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull @.str.129, ptr noundef %name) #15
  br label %if.end25

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %governor5.051 = phi ptr [ %governor5.0, %for.inc.for.body_crit_edge ], [ %governor5.048, %for.cond.preheader.for.body_crit_edge ]
  %count.050 = phi i32 [ %count.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %flags9 = getelementptr inbounds %struct.devfreq_governor, ptr %governor5.051, i32 0, i32 3
  %6 = ptrtoint ptr %flags9 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flags9, align 8
  %and10 = and i64 %7, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.end15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx16 = getelementptr i8, ptr %buf, i32 %count.050
  %sub17 = sub i32 4094, %count.050
  %name18 = getelementptr inbounds %struct.devfreq_governor, ptr %governor5.051, i32 0, i32 1
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx16, i32 noundef %sub17, ptr noundef nonnull @.str.129, ptr noundef %name18) #15
  %add = add i32 %call20, %count.050
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %count.050, %for.body.for.inc_crit_edge ], [ %add, %if.end15 ]
  %8 = ptrtoint ptr %governor5.051 to i32
  call void @__asan_load4_noabort(i32 %8)
  %governor5.0 = load ptr, ptr %governor5.051, align 4
  %cmp.not = icmp eq ptr %governor5.0, @devfreq_governor_list
  br i1 %cmp.not, label %for.inc.if.end25_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.if.end25_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.end25:                                         ; preds = %for.inc.if.end25_crit_edge, %if.then3
  %count.2 = phi i32 [ %call, %if.then3 ], [ %count.1, %for.inc.if.end25_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.2)
  %tobool26.not = icmp eq i32 %count.2, 0
  %dec = add i32 %count.2, -1
  br i1 %tobool26.not, label %if.end25._crit_edge, label %if.end25._crit_edge55

if.end25._crit_edge55:                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %10

if.end25._crit_edge:                              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %9

9:                                                ; preds = %if.end25._crit_edge, %if.end25.thread
  br label %10

10:                                               ; preds = %9, %if.end25._crit_edge55
  %11 = phi i32 [ 0, %9 ], [ %dec, %if.end25._crit_edge55 ]
  %arrayidx29 = getelementptr i8, ptr %buf, i32 %11
  %12 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 2560, ptr %arrayidx29, align 1
  %add31 = add nuw i32 %11, 1
  br label %cleanup

cleanup:                                          ; preds = %10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add31, %10 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cur_freq_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #15
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %freq, align 4, !annotation !429
  %profile = getelementptr i8, ptr %dev, i32 928
  %1 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %profile, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %get_cur_freq = getelementptr inbounds %struct.devfreq_dev_profile, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %get_cur_freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_cur_freq, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call = call i32 %4(ptr noundef %6, ptr noundef nonnull %freq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %previous_freq = getelementptr i8, ptr %dev, i32 1052
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9, %land.lhs.true.cleanup.sink.split_crit_edge
  %.sink.in = phi ptr [ %previous_freq, %if.end9 ], [ %freq, %land.lhs.true.cleanup.sink.split_crit_edge ]
  %7 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.sink = load i32, ptr %.sink.in, align 4
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.132, i32 noundef %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call10, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @available_frequencies_show(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %profile = getelementptr i8, ptr %d, i32 928
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %profile, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %d, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %2 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %profile, align 8
  %max_state28 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %max_state28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_state28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp29.not = icmp eq i32 %5, 0
  br i1 %cmp29.not, label %for.end.thread, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.end.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %lock) #15
  br label %15

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %6 = phi ptr [ %12, %for.body.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %i.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %count.030 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %count.030
  %sub2 = sub i32 4094, %count.030
  %freq_table = getelementptr inbounds %struct.devfreq_dev_profile, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %freq_table, align 4
  %arrayidx4 = getelementptr i32, ptr %8, i32 %i.031
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef %sub2, ptr noundef nonnull @.str.134, i32 noundef %10) #15
  %add = add i32 %call, %count.030
  %inc = add nuw i32 %i.031, 1
  %11 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %profile, align 8
  %max_state = getelementptr inbounds %struct.devfreq_dev_profile, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_state, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void @mutex_unlock(ptr noundef %lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool6.not = icmp eq i32 %add, 0
  %dec = add i32 %add, -1
  br i1 %tobool6.not, label %for.end._crit_edge, label %for.end._crit_edge35

for.end._crit_edge35:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %16

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %15

15:                                               ; preds = %for.end._crit_edge, %for.end.thread
  br label %16

16:                                               ; preds = %15, %for.end._crit_edge35
  %17 = phi i32 [ 0, %15 ], [ %dec, %for.end._crit_edge35 ]
  %arrayidx9 = getelementptr i8, ptr %buf, i32 %17
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 2560, ptr %arrayidx9, align 1
  %add11 = add nuw i32 %17, 1
  br label %cleanup

cleanup:                                          ; preds = %16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add11, %16 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_freq_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %previous_freq = getelementptr i8, ptr %dev, i32 1052
  %0 = ptrtoint ptr %previous_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %previous_freq, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.132, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_freq_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %min_freq = alloca i32, align 4
  %max_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_freq) #15
  %0 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %min_freq, align 4, !annotation !429
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq) #15
  %1 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %max_freq, align 4, !annotation !429
  %lock = getelementptr i8, ptr %dev, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  call fastcc void @get_freq_range(ptr noundef %add.ptr, ptr noundef nonnull %min_freq, ptr noundef nonnull %max_freq)
  tail call void @mutex_unlock(ptr noundef %lock) #15
  %2 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_freq, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.132, i32 noundef %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_freq_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #15
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !429
  %user_min_freq_req = getelementptr i8, ptr %dev, i32 1076
  %dev.i = getelementptr i8, ptr %dev, i32 1108
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %cmp.i.not = icmp eq ptr %2, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.137, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %div = udiv i32 %4, 1000
  %call5 = call i32 @dev_pm_qos_update_request(ptr noundef %user_min_freq_req, i32 noundef %div) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  %call5.count = select i1 %cmp6, i32 %call5, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5.count, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_freq_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %min_freq = alloca i32, align 4
  %max_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_freq) #15
  %0 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %min_freq, align 4, !annotation !429
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq) #15
  %1 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %max_freq, align 4, !annotation !429
  %lock = getelementptr i8, ptr %dev, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  call fastcc void @get_freq_range(ptr noundef %add.ptr, ptr noundef nonnull %min_freq, ptr noundef nonnull %max_freq)
  tail call void @mutex_unlock(ptr noundef %lock) #15
  %2 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_freq, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.132, i32 noundef %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_freq_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #15
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !429
  %user_max_freq_req = getelementptr i8, ptr %dev, i32 1112
  %dev.i = getelementptr i8, ptr %dev, i32 1144
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %cmp.i.not = icmp eq ptr %2, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.137, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  %sub = add i32 %4, 999
  %div = udiv i32 %sub, 1000
  %storemerge = select i1 %tobool4.not, i32 2147483647, i32 %div
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge, ptr %value, align 4
  %call8 = call i32 @dev_pm_qos_update_request(ptr noundef %user_max_freq_req, i32 noundef %storemerge) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  %spec.select = select i1 %cmp9, i32 %call8, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trans_stat_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -104
  %profile = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %profile, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_state2 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %max_state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_state2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.140, i32 16)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr i8, ptr %dev, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %stop_polling = getelementptr i8, ptr %dev, i32 1156
  %5 = ptrtoint ptr %stop_polling to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stop_polling, align 4, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end4.for.body.preheader_crit_edge

if.end4.for.body.preheader_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.preheader

land.lhs.true:                                    ; preds = %if.end4
  %previous_freq = getelementptr i8, ptr %dev, i32 1052
  %7 = ptrtoint ptr %previous_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %previous_freq, align 4
  %call6 = tail call i32 @devfreq_update_status(ptr noundef %add.ptr, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.for.body.preheader_crit_edge, label %if.then8

land.lhs.true.for.body.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.preheader

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %lock) #15
  br label %cleanup

for.body.preheader:                               ; preds = %land.lhs.true.for.body.preheader_crit_edge, %if.end4.for.body.preheader_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #15
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.141, i32 18)
  %add.ptr13 = getelementptr i8, ptr %buf, i32 18
  %10 = call ptr @memcpy(ptr %add.ptr13, ptr @.str.142, i32 13)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0132 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %len.0131 = phi i32 [ %add19, %for.body.for.body_crit_edge ], [ 30, %for.body.preheader ]
  %add.ptr16 = getelementptr i8, ptr %buf, i32 %len.0131
  %11 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %profile, align 8
  %freq_table = getelementptr inbounds %struct.devfreq_dev_profile, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %freq_table, align 4
  %arrayidx = getelementptr i32, ptr %14, i32 %i.0132
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %call18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16, ptr noundef nonnull @.str.143, i32 noundef %16)
  %add19 = add i32 %call18, %len.0131
  %inc = add nuw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body25.lr.ph, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body25.lr.ph:                                 ; preds = %for.body
  %add.ptr20 = getelementptr i8, ptr %buf, i32 %add19
  %17 = call ptr @memcpy(ptr %add.ptr20, ptr @.str.144, i32 13)
  %previous_freq29 = getelementptr i8, ptr %dev, i32 1052
  %add22 = add i32 %add19, 12
  %trans_table = getelementptr i8, ptr %dev, i32 1180
  %time_in_state = getelementptr i8, ptr %dev, i32 1184
  %umax141 = call i32 @llvm.umax.i32(i32 %3, i32 1)
  br label %for.body25

for.body25:                                       ; preds = %for.cond45.for.end55_crit_edge.for.body25_crit_edge, %for.body25.lr.ph
  %i.1139 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc63, %for.cond45.for.end55_crit_edge.for.body25_crit_edge ]
  %len.1138 = phi i32 [ %add22, %for.body25.lr.ph ], [ %add61, %for.cond45.for.end55_crit_edge.for.body25_crit_edge ]
  %18 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %profile, align 8
  %freq_table27 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %freq_table27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %freq_table27, align 4
  %arrayidx28 = getelementptr i32, ptr %21, i32 %i.1139
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx28, align 4
  %24 = ptrtoint ptr %previous_freq29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %previous_freq29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp30 = icmp eq i32 %23, %25
  %spec.select = select i1 %cmp30, i16 10752, i16 8192
  %26 = getelementptr i8, ptr %buf, i32 %len.1138
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %spec.select, ptr %26, align 1
  %len.2 = add i32 %len.1138, 1
  %add.ptr39 = getelementptr i8, ptr %buf, i32 %len.2
  %28 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %profile, align 8
  %freq_table41 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %freq_table41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %freq_table41, align 4
  %arrayidx42 = getelementptr i32, ptr %31, i32 %i.1139
  %32 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx42, align 4
  %call43 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr39, ptr noundef nonnull @.str.147, i32 noundef %33)
  %add44 = add i32 %call43, %len.2
  %mul = mul i32 %i.1139, %3
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.body25
  %j.0135 = phi i32 [ 0, %for.body25 ], [ %inc54, %for.body47.for.body47_crit_edge ]
  %len.3134 = phi i32 [ %add44, %for.body25 ], [ %add52, %for.body47.for.body47_crit_edge ]
  %add.ptr48 = getelementptr i8, ptr %buf, i32 %len.3134
  %34 = ptrtoint ptr %trans_table to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %trans_table, align 4
  %add49 = add i32 %j.0135, %mul
  %arrayidx50 = getelementptr i32, ptr %35, i32 %add49
  %36 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx50, align 4
  %call51 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr48, ptr noundef nonnull @.str.148, i32 noundef %37)
  %add52 = add i32 %call51, %len.3134
  %inc54 = add nuw i32 %j.0135, 1
  %exitcond142.not = icmp eq i32 %inc54, %umax141
  br i1 %exitcond142.not, label %for.cond45.for.end55_crit_edge, label %for.body47.for.body47_crit_edge

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body47

for.cond45.for.end55_crit_edge:                   ; preds = %for.body47
  %add.ptr56 = getelementptr i8, ptr %buf, i32 %add52
  %38 = ptrtoint ptr %time_in_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %time_in_state, align 8
  %arrayidx58 = getelementptr i64, ptr %39, i32 %i.1139
  %40 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx58, align 8
  %call59 = tail call i64 @jiffies64_to_msecs(i64 noundef %41) #15
  %call60 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr56, ptr noundef nonnull @.str.149, i64 noundef %call59)
  %add61 = add i32 %call60, %add52
  %inc63 = add nuw i32 %i.1139, 1
  %exitcond143.not = icmp eq i32 %inc63, %umax141
  br i1 %exitcond143.not, label %for.end64, label %for.cond45.for.end55_crit_edge.for.body25_crit_edge

for.cond45.for.end55_crit_edge.for.body25_crit_edge: ; preds = %for.cond45.for.end55_crit_edge
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body25

for.end64:                                        ; preds = %for.cond45.for.end55_crit_edge
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr65 = getelementptr i8, ptr %buf, i32 %add61
  %stats66 = getelementptr i8, ptr %dev, i32 1176
  %42 = ptrtoint ptr %stats66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stats66, align 8
  %call67 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr65, ptr noundef nonnull @.str.150, i32 noundef %43)
  %add68 = add i32 %call67, %add61
  br label %cleanup

cleanup:                                          ; preds = %for.end64, %if.then8, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 15, %if.then3 ], [ %add68, %for.end64 ], [ 0, %if.then8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trans_stat_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #15
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !429
  %profile = getelementptr i8, ptr %dev, i32 928
  %1 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %profile, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_state = getelementptr inbounds %struct.devfreq_dev_profile, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.not = icmp eq i32 %6, 0
  br i1 %cmp5.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %lock = getelementptr i8, ptr %dev, i32 -96
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %stats = getelementptr i8, ptr %dev, i32 1176
  %time_in_state = getelementptr i8, ptr %dev, i32 1184
  %7 = ptrtoint ptr %time_in_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %time_in_state, align 8
  %9 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %profile, align 8
  %max_state9 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %max_state9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_state9, align 4
  %mul = shl i32 %12, 3
  %13 = call ptr @memset(ptr %8, i32 0, i32 %mul)
  %trans_table = getelementptr i8, ptr %dev, i32 1180
  %14 = ptrtoint ptr %trans_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trans_table, align 4
  %16 = load ptr, ptr %profile, align 8
  %max_state12 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %max_state12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_state12, align 4
  %19 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 4) #15
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %if.end7.array3_size.exit_crit_edge, label %if.end.i

if.end7.array3_size.exit_crit_edge:               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %array3_size.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %21 = extractvalue { i32, i1 } %19, 0
  %22 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 %18) #15
  %23 = extractvalue { i32, i1 } %22, 1
  %24 = extractvalue { i32, i1 } %22, 0
  %spec.select.i = select i1 %23, i32 -1, i32 %24
  br label %array3_size.exit

array3_size.exit:                                 ; preds = %if.end.i, %if.end7.array3_size.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %if.end7.array3_size.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  %25 = call ptr @memset(ptr %15, i32 0, i32 %retval.0.i)
  %26 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %stats, align 8
  %call17 = call i64 @get_jiffies_64() #15
  %last_update = getelementptr i8, ptr %dev, i32 1192
  %27 = ptrtoint ptr %last_update to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call17, ptr %last_update, align 8
  call void @mutex_unlock(ptr noundef %lock) #15
  br label %cleanup

cleanup:                                          ; preds = %array3_size.exit, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %array3_size.exit ], [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @jiffies64_to_msecs(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devfreq_summary_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @devfreq_summary_show, ptr noundef %1) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devfreq_summary_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %min_freq = alloca i32, align 4
  %max_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_freq) #15
  %0 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %min_freq, align 4, !annotation !429
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq) #15
  %1 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %max_freq, align 4, !annotation !429
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.161) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @devfreq_list_lock, i32 noundef 0) #15
  %devfreq.056 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @devfreq_list, i32 0, i32 1), align 4
  %cmp.not57 = icmp eq ptr %devfreq.056, @devfreq_list
  br i1 %cmp.not57, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry.for.body_crit_edge
  %devfreq.059 = phi ptr [ %devfreq.0, %cond.end.for.body_crit_edge ], [ %devfreq.056, %entry.for.body_crit_edge ]
  %p_devfreq.058 = phi ptr [ %p_devfreq.2, %cond.end.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %governor = getelementptr inbounds %struct.devfreq, ptr %devfreq.059, i32 0, i32 4
  %2 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %governor, align 4
  %name = getelementptr inbounds %struct.devfreq_governor, ptr %3, i32 0, i32 1
  %call = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.162, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end5_crit_edge

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %for.body
  %data2 = getelementptr inbounds %struct.devfreq, ptr %devfreq.059, i32 0, i32 10
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %for.body.if.end5_crit_edge
  %p_devfreq.2 = phi ptr [ %7, %if.then4 ], [ %p_devfreq.058, %if.then.if.end5_crit_edge ], [ null, %for.body.if.end5_crit_edge ]
  %lock = getelementptr inbounds %struct.devfreq, ptr %devfreq.059, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %previous_freq = getelementptr inbounds %struct.devfreq, ptr %devfreq.059, i32 0, i32 8
  %8 = ptrtoint ptr %previous_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %previous_freq, align 4
  call fastcc void @get_freq_range(ptr noundef %devfreq.059, ptr noundef nonnull %min_freq, ptr noundef nonnull %max_freq)
  %profile = getelementptr inbounds %struct.devfreq, ptr %devfreq.059, i32 0, i32 3
  %10 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %profile, align 8
  %timer6 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %timer6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timer6, align 4
  %14 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %governor, align 4
  %attrs = getelementptr inbounds %struct.devfreq_governor, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %attrs to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %attrs, align 8
  %and = and i64 %17, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool8.not = icmp eq i64 %and, 0
  br i1 %tobool8.not, label %if.end5.if.end13_crit_edge, label %if.then9

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %polling_ms11 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %polling_ms11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %polling_ms11, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end5.if.end13_crit_edge
  %polling_ms.0 = phi i32 [ %19, %if.then9 ], [ 0, %if.end5.if.end13_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #15
  %init_name.i = getelementptr inbounds %struct.devfreq, ptr %devfreq.059, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.dev_name.exit_crit_edge

if.end13.dev_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.devfreq, ptr %devfreq.059, i32 0, i32 2
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end.i ], [ %21, %if.end13.dev_name.exit_crit_edge ]
  %tobool16.not = icmp eq ptr %p_devfreq.2, null
  br i1 %tobool16.not, label %dev_name.exit.cond.end_crit_edge, label %cond.true17

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true17:                                      ; preds = %dev_name.exit
  %init_name.i51 = getelementptr inbounds %struct.devfreq, ptr %p_devfreq.2, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %init_name.i51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i51, align 8
  %tobool.not.i52 = icmp eq ptr %25, null
  br i1 %tobool.not.i52, label %if.end.i53, label %cond.true17.cond.end_crit_edge

cond.true17.cond.end_crit_edge:                   ; preds = %cond.true17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end.i53:                                       ; preds = %cond.true17
  call void @__sanitizer_cov_trace_pc() #17
  %dev18 = getelementptr inbounds %struct.devfreq, ptr %p_devfreq.2, i32 0, i32 2
  %26 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev18, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i53, %cond.true17.cond.end_crit_edge, %dev_name.exit.cond.end_crit_edge
  %cond = phi ptr [ @.str.164, %dev_name.exit.cond.end_crit_edge ], [ %27, %if.end.i53 ], [ %25, %cond.true17.cond.end_crit_edge ]
  %28 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %governor, align 4
  %name22 = getelementptr inbounds %struct.devfreq_governor, ptr %29, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %polling_ms.0)
  %tobool24.not = icmp eq i32 %polling_ms.0, 0
  %arrayidx = getelementptr [2 x [16 x i8]], ptr @timer_name, i32 0, i32 %13
  %spec.select = select i1 %tobool24.not, ptr @.str.164, ptr %arrayidx
  %30 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %min_freq, align 4
  %32 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_freq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.163, ptr noundef %retval.0.i, ptr noundef %cond, ptr noundef %name22, ptr noundef %spec.select, i32 noundef %polling_ms.0, i32 noundef %9, i32 noundef %31, i32 noundef %33) #15
  %prev = getelementptr inbounds %struct.list_head, ptr %devfreq.059, i32 0, i32 1
  %34 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %34)
  %devfreq.0 = load ptr, ptr %prev, align 4
  %cmp.not = icmp eq ptr %devfreq.0, @devfreq_list
  br i1 %cmp.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 195)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 195)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !167, !168, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !190, !191, !192, !193, !194, !195, !196, !197, !199, !200, !202, !203, !204, !205, !206, !207, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !249, !251, !252, !254, !256, !257, !258, !260, !262, !263, !264, !265, !266, !268, !269, !271, !272, !274, !276, !278, !279, !281, !283, !285, !287, !288, !289, !290, !292, !293, !294, !296, !297, !299, !300, !301, !302, !304, !306, !307, !308, !310, !312, !313, !315, !317, !318, !320, !321, !323, !324, !325, !327, !328, !330, !331, !332, !334, !335, !337, !339, !341, !342, !344, !346, !347, !349, !351, !352, !354, !355, !357, !359, !360, !362, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415}
!llvm.named.register.sp = !{!417}
!llvm.module.flags = !{!418, !419, !420, !421, !422, !423, !424, !425}
!llvm.ident = !{!426}

!0 = !{ptr @__tracepoint_devfreq_frequency, !1, !"__tracepoint_devfreq_frequency", i1 false, i1 false}
!1 = !{!"../include/trace/events/devfreq.h", i32 11, i32 1}
!2 = !{ptr @__tracepoint_ptr_devfreq_frequency, !1, !"__tracepoint_ptr_devfreq_frequency", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_devfreq_frequency, !1, !"__SCK__tp_func_devfreq_frequency", i1 false, i1 false}
!4 = !{ptr @__tracepoint_devfreq_monitor, !5, !"__tracepoint_devfreq_monitor", i1 false, i1 false}
!5 = !{!"../include/trace/events/devfreq.h", i32 39, i32 1}
!6 = !{ptr @__tracepoint_ptr_devfreq_monitor, !5, !"__tracepoint_ptr_devfreq_monitor", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_devfreq_monitor, !5, !"__SCK__tp_func_devfreq_monitor", i1 false, i1 false}
!8 = !{ptr @event_class_devfreq_frequency, !1, !"event_class_devfreq_frequency", i1 false, i1 false}
!9 = !{ptr @event_devfreq_frequency, !1, !"event_devfreq_frequency", i1 false, i1 false}
!10 = !{ptr @__event_devfreq_frequency, !1, !"__event_devfreq_frequency", i1 false, i1 false}
!11 = !{ptr @event_class_devfreq_monitor, !5, !"event_class_devfreq_monitor", i1 false, i1 false}
!12 = !{ptr @event_devfreq_monitor, !5, !"event_devfreq_monitor", i1 false, i1 false}
!13 = !{ptr @__event_devfreq_monitor, !5, !"__event_devfreq_monitor", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_devfreq_frequency, !1, !"__bpf_trace_tp_map_devfreq_frequency", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_devfreq_monitor, !5, !"__bpf_trace_tp_map_devfreq_monitor", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/devfreq/devfreq.c", i32 224, i32 2}
!18 = !{ptr @__ksymtab_devfreq_update_status, !19, !"__ksymtab_devfreq_update_status", i1 false, i1 false}
!19 = !{!"../drivers/devfreq/devfreq.c", i32 256, i32 1}
!20 = !{ptr @__ksymtab_devfreq_update_target, !21, !"__ksymtab_devfreq_update_target", i1 false, i1 false}
!21 = !{!"../drivers/devfreq/devfreq.c", i32 434, i32 1}
!22 = !{ptr @__ksymtab_update_devfreq, !23, !"__ksymtab_update_devfreq", i1 false, i1 false}
!23 = !{!"../drivers/devfreq/devfreq.c", i32 449, i32 1}
!24 = !{ptr @devfreq_monitor_start.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/devfreq/devfreq.c", i32 490, i32 3}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @devfreq_monitor_start.__key.2, !25, !"__key", i1 false, i1 false}
!28 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @devfreq_monitor_start.__key.4, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/devfreq/devfreq.c", i32 493, i32 3}
!31 = !{ptr @devfreq_monitor_start.__key.5, !30, !"__key", i1 false, i1 false}
!32 = !{ptr @__ksymtab_devfreq_monitor_start, !33, !"__ksymtab_devfreq_monitor_start", i1 false, i1 false}
!33 = !{!"../drivers/devfreq/devfreq.c", i32 503, i32 1}
!34 = !{ptr @__ksymtab_devfreq_monitor_stop, !35, !"__ksymtab_devfreq_monitor_stop", i1 false, i1 false}
!35 = !{!"../drivers/devfreq/devfreq.c", i32 520, i32 1}
!36 = !{ptr @__ksymtab_devfreq_monitor_suspend, !37, !"__ksymtab_devfreq_monitor_suspend", i1 false, i1 false}
!37 = !{!"../drivers/devfreq/devfreq.c", i32 551, i32 1}
!38 = !{ptr @__ksymtab_devfreq_monitor_resume, !39, !"__ksymtab_devfreq_monitor_resume", i1 false, i1 false}
!39 = !{!"../drivers/devfreq/devfreq.c", i32 589, i32 1}
!40 = !{ptr @__ksymtab_devfreq_update_interval, !41, !"__ksymtab_devfreq_update_interval", i1 false, i1 false}
!41 = !{!"../drivers/devfreq/devfreq.c", i32 639, i32 1}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/devfreq/devfreq.c", i32 791, i32 3}
!44 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @devfreq_add_device._entry, !43, !"_entry", i1 false, i1 false}
!48 = !{ptr @devfreq_add_device._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/devfreq/devfreq.c", i32 799, i32 3}
!51 = !{ptr @devfreq_add_device._entry.10, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @devfreq_add_device._entry_ptr.12, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @devfreq_add_device.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/devfreq/devfreq.c", i32 811, i32 2}
!55 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/devfreq/devfreq.c", i32 859, i32 30}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/devfreq/devfreq.c", i32 921, i32 3}
!60 = !{ptr @devfreq_add_device._entry.15, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @devfreq_add_device._entry_ptr.17, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/devfreq/devfreq.c", i32 931, i32 3}
!64 = !{ptr @devfreq_add_device._entry.18, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @devfreq_add_device._entry_ptr.20, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @__ksymtab_devfreq_add_device, !67, !"__ksymtab_devfreq_add_device", i1 false, i1 false}
!67 = !{!"../drivers/devfreq/devfreq.c", i32 959, i32 1}
!68 = !{ptr @__ksymtab_devfreq_remove_device, !69, !"__ksymtab_devfreq_remove_device", i1 false, i1 false}
!69 = !{!"../drivers/devfreq/devfreq.c", i32 984, i32 1}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/devfreq/devfreq.c", i32 1020, i32 8}
!72 = !{ptr @__ksymtab_devm_devfreq_add_device, !73, !"__ksymtab_devm_devfreq_add_device", i1 false, i1 false}
!73 = !{!"../drivers/devfreq/devfreq.c", i32 1035, i32 1}
!74 = !{ptr @__ksymtab_devfreq_get_devfreq_by_node, !75, !"__ksymtab_devfreq_get_devfreq_by_node", i1 false, i1 false}
!75 = !{!"../drivers/devfreq/devfreq.c", i32 1106, i32 1}
!76 = !{ptr @__ksymtab_devfreq_get_devfreq_by_phandle, !77, !"__ksymtab_devfreq_get_devfreq_by_phandle", i1 false, i1 false}
!77 = !{!"../drivers/devfreq/devfreq.c", i32 1107, i32 1}
!78 = !{ptr @__ksymtab_devm_devfreq_remove_device, !79, !"__ksymtab_devm_devfreq_remove_device", i1 false, i1 false}
!79 = !{!"../drivers/devfreq/devfreq.c", i32 1119, i32 1}
!80 = !{ptr @__ksymtab_devfreq_suspend_device, !81, !"__ksymtab_devfreq_suspend_device", i1 false, i1 false}
!81 = !{!"../drivers/devfreq/devfreq.c", i32 1156, i32 1}
!82 = !{ptr @__ksymtab_devfreq_resume_device, !83, !"__ksymtab_devfreq_resume_device", i1 false, i1 false}
!83 = !{!"../drivers/devfreq/devfreq.c", i32 1193, i32 1}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/devfreq/devfreq.c", i32 1212, i32 4}
!86 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @devfreq_suspend._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @devfreq_suspend._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.24, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/devfreq/devfreq.c", i32 1233, i32 4}
!91 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.26, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @devfreq_resume._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @devfreq_resume._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.27, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/devfreq/devfreq.c", i32 1250, i32 3}
!97 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @devfreq_add_governor._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @devfreq_add_governor._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/devfreq/devfreq.c", i32 1257, i32 3}
!102 = !{ptr @devfreq_add_governor._entry.29, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @devfreq_add_governor._entry_ptr.31, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/devfreq/devfreq.c", i32 1273, i32 5}
!106 = !{ptr @devfreq_add_governor._entry.32, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @devfreq_add_governor._entry_ptr.34, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/devfreq/devfreq.c", i32 1279, i32 6}
!110 = !{ptr @devfreq_add_governor._entry.35, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @devfreq_add_governor._entry_ptr.37, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/devfreq/devfreq.c", i32 1290, i32 5}
!114 = !{ptr @devfreq_add_governor._entry.38, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @devfreq_add_governor._entry_ptr.40, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @__ksymtab_devfreq_add_governor, !117, !"__ksymtab_devfreq_add_governor", i1 false, i1 false}
!117 = !{!"../drivers/devfreq/devfreq.c", i32 1302, i32 1}
!118 = !{ptr @__ksymtab_devm_devfreq_add_governor, !119, !"__ksymtab_devm_devfreq_add_governor", i1 false, i1 false}
!119 = !{!"../drivers/devfreq/devfreq.c", i32 1328, i32 1}
!120 = !{ptr @.str.41, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/devfreq/devfreq.c", i32 1341, i32 3}
!122 = !{ptr @devfreq_remove_governor._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @devfreq_remove_governor._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/devfreq/devfreq.c", i32 1348, i32 3}
!126 = !{ptr @devfreq_remove_governor._entry.42, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @devfreq_remove_governor._entry_ptr.44, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/devfreq/devfreq.c", i32 1361, i32 5}
!130 = !{ptr @devfreq_remove_governor._entry.45, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @devfreq_remove_governor._entry_ptr.47, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/devfreq/devfreq.c", i32 1369, i32 5}
!134 = !{ptr @devfreq_remove_governor._entry.48, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @devfreq_remove_governor._entry_ptr.50, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @__ksymtab_devfreq_remove_governor, !137, !"__ksymtab_devfreq_remove_governor", i1 false, i1 false}
!137 = !{!"../drivers/devfreq/devfreq.c", i32 1383, i32 1}
!138 = !{ptr @__initcall__kmod_devfreq__271_2008_devfreq_init4, !139, !"__initcall__kmod_devfreq__271_2008_devfreq_init4", i1 false, i1 false}
!139 = !{!"../drivers/devfreq/devfreq.c", i32 2008, i32 1}
!140 = !{ptr @__ksymtab_devfreq_recommended_opp, !141, !"__ksymtab_devfreq_recommended_opp", i1 false, i1 false}
!141 = !{!"../drivers/devfreq/devfreq.c", i32 2049, i32 1}
!142 = !{ptr @__ksymtab_devfreq_register_opp_notifier, !143, !"__ksymtab_devfreq_register_opp_notifier", i1 false, i1 false}
!143 = !{!"../drivers/devfreq/devfreq.c", i32 2062, i32 1}
!144 = !{ptr @__ksymtab_devfreq_unregister_opp_notifier, !145, !"__ksymtab_devfreq_unregister_opp_notifier", i1 false, i1 false}
!145 = !{!"../drivers/devfreq/devfreq.c", i32 2078, i32 1}
!146 = !{ptr @.str.51, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/devfreq/devfreq.c", i32 2097, i32 8}
!148 = !{ptr @__ksymtab_devm_devfreq_register_opp_notifier, !149, !"__ksymtab_devm_devfreq_register_opp_notifier", i1 false, i1 false}
!149 = !{!"../drivers/devfreq/devfreq.c", i32 2112, i32 1}
!150 = !{ptr @__ksymtab_devm_devfreq_unregister_opp_notifier, !151, !"__ksymtab_devm_devfreq_unregister_opp_notifier", i1 false, i1 false}
!151 = !{!"../drivers/devfreq/devfreq.c", i32 2126, i32 1}
!152 = !{ptr @__ksymtab_devfreq_register_notifier, !153, !"__ksymtab_devfreq_register_notifier", i1 false, i1 false}
!153 = !{!"../drivers/devfreq/devfreq.c", i32 2154, i32 1}
!154 = !{ptr @__ksymtab_devfreq_unregister_notifier, !155, !"__ksymtab_devfreq_unregister_notifier", i1 false, i1 false}
!155 = !{!"../drivers/devfreq/devfreq.c", i32 2182, i32 1}
!156 = !{ptr @.str.52, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/devfreq/devfreq.c", i32 2213, i32 8}
!158 = !{ptr @__ksymtab_devm_devfreq_register_notifier, !159, !"__ksymtab_devm_devfreq_register_notifier", i1 false, i1 false}
!159 = !{!"../drivers/devfreq/devfreq.c", i32 2231, i32 1}
!160 = !{ptr @__ksymtab_devm_devfreq_unregister_notifier, !161, !"__ksymtab_devm_devfreq_unregister_notifier", i1 false, i1 false}
!161 = !{!"../drivers/devfreq/devfreq.c", i32 2249, i32 1}
!162 = !{ptr @devfreq_class, !163, !"devfreq_class", i1 false, i1 false}
!163 = !{!"../drivers/devfreq/devfreq.c", i32 39, i32 22}
!164 = !{ptr @devfreq_wq, !165, !"devfreq_wq", i1 false, i1 false}
!165 = !{!"../drivers/devfreq/devfreq.c", i32 47, i32 33}
!166 = !{ptr @__tpstrtab_devfreq_frequency, !1, !"__tpstrtab_devfreq_frequency", i1 false, i1 false}
!167 = !{ptr @__tpstrtab_devfreq_monitor, !5, !"__tpstrtab_devfreq_monitor", i1 false, i1 false}
!168 = !{ptr @str__devfreq__trace_system_name, !169, !"str__devfreq__trace_system_name", i1 false, i1 false}
!169 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!170 = !{ptr @.str.53, !1, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.54, !1, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.55, !1, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.56, !1, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.57, !1, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.58, !1, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.59, !1, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.60, !1, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @trace_event_fields_devfreq_frequency, !1, !"trace_event_fields_devfreq_frequency", i1 false, i1 false}
!179 = !{ptr @trace_event_type_funcs_devfreq_frequency, !1, !"trace_event_type_funcs_devfreq_frequency", i1 false, i1 false}
!180 = !{ptr @.str.61, !1, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @print_fmt_devfreq_frequency, !1, !"print_fmt_devfreq_frequency", i1 false, i1 false}
!182 = !{ptr @.str.62, !5, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.63, !5, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @trace_event_fields_devfreq_monitor, !5, !"trace_event_fields_devfreq_monitor", i1 false, i1 false}
!185 = !{ptr @trace_event_type_funcs_devfreq_monitor, !5, !"trace_event_type_funcs_devfreq_monitor", i1 false, i1 false}
!186 = !{ptr @.str.64, !5, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @print_fmt_devfreq_monitor, !5, !"print_fmt_devfreq_monitor", i1 false, i1 false}
!188 = !{ptr @.str.65, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/devfreq/devfreq.c", i32 385, i32 3}
!190 = !{ptr @.str.66, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @devfreq_set_target._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @devfreq_set_target._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!194 = !{ptr @.str.67, !1, !"<string literal>", i1 false, i1 false}
!195 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!196 = !{ptr @.str.68, !1, !"<string literal>", i1 false, i1 false}
!197 = distinct !{null, !198, !"__already_done", i1 false, i1 false}
!198 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!199 = !{ptr @.str.69, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.70, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/devfreq/devfreq.c", i32 465, i32 3}
!202 = !{ptr @.str.71, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @devfreq_monitor._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @devfreq_monitor._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!206 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!207 = !{ptr @.str.72, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/devfreq/devfreq.c", i32 53, i32 8}
!209 = !{ptr @.str.73, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @devfreq_list_lock, !208, !"devfreq_list_lock", i1 false, i1 false}
!211 = !{ptr @.str.74, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/devfreq/devfreq.c", i32 74, i32 3}
!213 = !{ptr @.str.75, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @find_device_devfreq._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @find_device_devfreq._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.76, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/devfreq/devfreq.c", i32 737, i32 3}
!218 = !{ptr @.str.77, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @devfreq_dev_release._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @devfreq_dev_release._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.79, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/devfreq/devfreq.c", i32 742, i32 3}
!223 = !{ptr @devfreq_dev_release._entry.78, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @devfreq_dev_release._entry_ptr.80, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.82, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/devfreq/devfreq.c", i32 748, i32 4}
!227 = !{ptr @devfreq_dev_release._entry.81, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @devfreq_dev_release._entry_ptr.83, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.85, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/devfreq/devfreq.c", i32 754, i32 4}
!231 = !{ptr @devfreq_dev_release._entry.84, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @devfreq_dev_release._entry_ptr.86, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.87, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/devfreq/devfreq.c", i32 673, i32 3}
!235 = !{ptr @.str.88, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @devfreq_notifier_call._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @devfreq_notifier_call._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.89, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/devfreq/devfreq.c", i32 692, i32 3}
!240 = !{ptr @.str.90, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @qos_notifier_call._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @qos_notifier_call._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.91, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/devfreq/devfreq.c", i32 303, i32 3}
!245 = !{ptr @try_then_request_governor._entry, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @try_then_request_governor._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.92, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/devfreq/devfreq.c", i32 311, i32 22}
!249 = !{ptr @.str.93, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/devfreq/devfreq.c", i32 313, i32 10}
!251 = !{ptr @.str.94, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @devfreq_list, !253, !"devfreq_list", i1 false, i1 false}
!253 = !{!"../drivers/devfreq/devfreq.c", i32 52, i32 8}
!254 = !{ptr @.str.95, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/devfreq/devfreq.c", i32 272, i32 3}
!256 = !{ptr @find_devfreq_governor._entry, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @find_devfreq_governor._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @devfreq_governor_list, !259, !"devfreq_governor_list", i1 false, i1 false}
!259 = !{!"../drivers/devfreq/devfreq.c", i32 50, i32 8}
!260 = !{ptr @.str.96, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/devfreq/devfreq.c", i32 1888, i32 3}
!262 = !{ptr @.str.97, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @create_sysfs_files._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @create_sysfs_files._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.98, !261, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @create_sysfs_files._entry.99, !267, !"_entry", i1 false, i1 false}
!267 = !{!"../drivers/devfreq/devfreq.c", i32 1890, i32 3}
!268 = !{ptr @create_sysfs_files._entry_ptr.100, !267, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.101, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/devfreq/devfreq.c", i32 1808, i32 8}
!271 = !{ptr @dev_attr_polling_interval, !270, !"dev_attr_polling_interval", i1 false, i1 false}
!272 = !{ptr @.str.102, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/devfreq/devfreq.c", i32 1785, i32 22}
!274 = !{ptr @.str.103, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/devfreq/devfreq.c", i32 1799, i32 20}
!276 = !{ptr @.str.104, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/devfreq/devfreq.c", i32 1871, i32 8}
!278 = !{ptr @dev_attr_timer, !277, !"dev_attr_timer", i1 false, i1 false}
!279 = !{ptr @.str.105, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/devfreq/devfreq.c", i32 1818, i32 22}
!281 = !{ptr @timer_name, !282, !"timer_name", i1 false, i1 false}
!282 = !{!"../drivers/devfreq/devfreq.c", i32 55, i32 19}
!283 = !{ptr @.str.106, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/devfreq/devfreq.c", i32 1832, i32 20}
!285 = !{ptr @.str.107, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/devfreq/devfreq.c", i32 1859, i32 3}
!287 = !{ptr @.str.108, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @timer_store._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @timer_store._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.110, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/devfreq/devfreq.c", i32 1866, i32 3}
!292 = !{ptr @timer_store._entry.109, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @timer_store._entry_ptr.111, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @devfreq_init.__key, !295, !"__key", i1 false, i1 false}
!295 = !{!"../drivers/devfreq/devfreq.c", i32 1987, i32 18}
!296 = !{ptr @.str.112, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.113, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/devfreq/devfreq.c", i32 1989, i32 3}
!299 = !{ptr @.str.114, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @devfreq_init._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @devfreq_init._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.115, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/devfreq/devfreq.c", i32 1993, i32 15}
!304 = !{ptr @.str.117, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/devfreq/devfreq.c", i32 1996, i32 3}
!306 = !{ptr @devfreq_init._entry.116, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @devfreq_init._entry_ptr.118, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.119, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/devfreq/devfreq.c", i32 2002, i32 22}
!310 = !{ptr @devfreq_groups, !311, !"devfreq_groups", i1 false, i1 false}
!311 = !{!"../drivers/devfreq/devfreq.c", i32 1775, i32 1}
!312 = !{ptr @devfreq_group, !311, !"devfreq_group", i1 false, i1 false}
!313 = !{ptr @devfreq_attrs, !314, !"devfreq_attrs", i1 false, i1 false}
!314 = !{!"../drivers/devfreq/devfreq.c", i32 1763, i32 26}
!315 = !{ptr @.str.120, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/devfreq/devfreq.c", i32 1391, i32 8}
!317 = !{ptr @dev_attr_name, !316, !"dev_attr_name", i1 false, i1 false}
!318 = !{ptr @.str.121, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/devfreq/devfreq.c", i32 1482, i32 8}
!320 = !{ptr @dev_attr_governor, !319, !"dev_attr_governor", i1 false, i1 false}
!321 = !{ptr @.str.122, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/devfreq/devfreq.c", i32 1440, i32 3}
!323 = !{ptr @governor_store._entry, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @governor_store._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @governor_store._entry.123, !326, !"_entry", i1 false, i1 false}
!326 = !{!"../drivers/devfreq/devfreq.c", i32 1454, i32 3}
!327 = !{ptr @governor_store._entry_ptr.124, !326, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.126, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/devfreq/devfreq.c", i32 1461, i32 4}
!330 = !{ptr @governor_store._entry.125, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @governor_store._entry_ptr.127, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.128, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/devfreq/devfreq.c", i32 1528, i32 8}
!334 = !{ptr @dev_attr_available_governors, !333, !"dev_attr_available_governors", i1 false, i1 false}
!335 = !{ptr @.str.129, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/devfreq/devfreq.c", i32 1502, i32 7}
!337 = distinct !{null, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/devfreq/devfreq.c", i32 1524, i32 32}
!339 = !{ptr @.str.131, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/devfreq/devfreq.c", i32 1545, i32 8}
!341 = !{ptr @dev_attr_cur_freq, !340, !"dev_attr_cur_freq", i1 false, i1 false}
!342 = !{ptr @.str.132, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/devfreq/devfreq.c", i32 1541, i32 23}
!344 = !{ptr @.str.133, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/devfreq/devfreq.c", i32 1677, i32 8}
!346 = !{ptr @dev_attr_available_frequencies, !345, !"dev_attr_available_frequencies", i1 false, i1 false}
!347 = !{ptr @.str.134, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/devfreq/devfreq.c", i32 1666, i32 5}
!349 = !{ptr @.str.135, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/devfreq/devfreq.c", i32 1554, i32 8}
!351 = !{ptr @dev_attr_target_freq, !350, !"dev_attr_target_freq", i1 false, i1 false}
!352 = !{ptr @.str.136, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/devfreq/devfreq.c", i32 1595, i32 8}
!354 = !{ptr @dev_attr_min_freq, !353, !"dev_attr_min_freq", i1 false, i1 false}
!355 = !{ptr @.str.137, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/devfreq/devfreq.c", i32 1570, i32 20}
!357 = !{ptr @.str.138, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/devfreq/devfreq.c", i32 1649, i32 8}
!359 = !{ptr @dev_attr_max_freq, !358, !"dev_attr_max_freq", i1 false, i1 false}
!360 = !{ptr @.str.139, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/devfreq/devfreq.c", i32 1761, i32 8}
!362 = !{ptr @dev_attr_trans_stat, !361, !"dev_attr_trans_stat", i1 false, i1 false}
!363 = !{ptr @.str.140, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/devfreq/devfreq.c", i32 1692, i32 23}
!365 = !{ptr @.str.141, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/devfreq/devfreq.c", i32 1702, i32 21}
!367 = !{ptr @.str.142, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/devfreq/devfreq.c", i32 1703, i32 28}
!369 = !{ptr @.str.143, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/devfreq/devfreq.c", i32 1705, i32 29}
!371 = !{ptr @.str.144, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/devfreq/devfreq.c", i32 1708, i32 28}
!373 = distinct !{null, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/devfreq/devfreq.c", i32 1713, i32 30}
!375 = distinct !{null, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/devfreq/devfreq.c", i32 1715, i32 30}
!377 = !{ptr @.str.147, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/devfreq/devfreq.c", i32 1717, i32 29}
!379 = !{ptr @.str.148, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/devfreq/devfreq.c", i32 1720, i32 30}
!381 = !{ptr @.str.149, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/devfreq/devfreq.c", i32 1723, i32 29}
!383 = !{ptr @.str.150, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/devfreq/devfreq.c", i32 1727, i32 28}
!385 = !{ptr @devfreq_debugfs, !386, !"devfreq_debugfs", i1 false, i1 false}
!386 = !{!"../drivers/devfreq/devfreq.c", i32 40, i32 23}
!387 = !{ptr @devfreq_summary_fops, !388, !"devfreq_summary_fops", i1 false, i1 false}
!388 = !{!"../drivers/devfreq/devfreq.c", i32 1983, i32 1}
!389 = !{ptr @.str.151, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/devfreq/devfreq.c", i32 1922, i32 16}
!391 = !{ptr @.str.152, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/devfreq/devfreq.c", i32 1923, i32 4}
!393 = !{ptr @.str.153, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/devfreq/devfreq.c", i32 1924, i32 4}
!395 = !{ptr @.str.154, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/devfreq/devfreq.c", i32 1928, i32 4}
!397 = !{ptr @.str.155, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/devfreq/devfreq.c", i32 1929, i32 4}
!399 = !{ptr @.str.156, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/devfreq/devfreq.c", i32 1930, i32 4}
!401 = !{ptr @.str.157, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/devfreq/devfreq.c", i32 1931, i32 16}
!403 = !{ptr @.str.158, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/devfreq/devfreq.c", i32 1932, i32 4}
!405 = !{ptr @.str.159, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/devfreq/devfreq.c", i32 1934, i32 4}
!407 = !{ptr @.str.160, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/devfreq/devfreq.c", i32 1935, i32 4}
!409 = !{ptr @.str.161, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/devfreq/devfreq.c", i32 1937, i32 4}
!411 = !{ptr @.str.162, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/devfreq/devfreq.c", i32 1945, i32 41}
!413 = !{ptr @.str.163, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/devfreq/devfreq.c", i32 1968, i32 4}
!415 = !{ptr @.str.164, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/devfreq/devfreq.c", i32 1970, i32 44}
!417 = !{!"sp"}
!418 = !{i32 1, !"wchar_size", i32 2}
!419 = !{i32 1, !"min_enum_size", i32 4}
!420 = !{i32 8, !"branch-target-enforcement", i32 0}
!421 = !{i32 8, !"sign-return-address", i32 0}
!422 = !{i32 8, !"sign-return-address-all", i32 0}
!423 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!424 = !{i32 7, !"uwtable", i32 1}
!425 = !{i32 7, !"frame-pointer", i32 2}
!426 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!427 = !{!"branch_weights", i32 2000, i32 1}
!428 = !{!"branch_weights", i32 1, i32 2000}
!429 = !{!"auto-init"}
!430 = !{i64 2148747431, i64 2148747436, i64 2148747449, i64 2148747493, i64 2148747527, i64 2148747548}
!431 = !{i8 0, i8 2}
!432 = !{i64 2148351027}
!433 = !{i64 2148266336, i64 2148266368, i64 2148266397, i64 2148266431, i64 2148266462, i64 2148266485}
!434 = !{i64 2148351256}
!435 = !{i64 2148354068}
!436 = !{i64 2148268801, i64 2148268833, i64 2148268862, i64 2148268896, i64 2148268927, i64 2148268950}
!437 = !{i64 2148354297}
!438 = !{i64 2153740912}
!439 = !{i64 2153741157}
!440 = !{i64 2149960713}
!441 = !{i64 2149961749}
!442 = !{i64 2153757374}
!443 = !{i64 2153757581}
