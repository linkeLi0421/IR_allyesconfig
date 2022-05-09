; ModuleID = '/llk/IR_all_yes/drivers/ata/libahci.c_pt.bc'
source_filename = "../drivers/ata/libahci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ahci_ignore_sss\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_ignore_sss\09\09\09\09"
module asm "\09.long\09__crc_ahci_ignore_sss\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_ignore_sss:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_ignore_sss\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_ignore_sss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_shost_groups\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_shost_groups\09\09\09\09"
module asm "\09.long\09__crc_ahci_shost_groups\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_shost_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_shost_groups\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_shost_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_sdev_groups\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_sdev_groups\09\09\09\09"
module asm "\09.long\09__crc_ahci_sdev_groups\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_sdev_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_sdev_groups\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_sdev_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_ops\09\09\09\09"
module asm "\09.long\09__crc_ahci_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_pmp_retry_srst_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_pmp_retry_srst_ops\09\09\09\09"
module asm "\09.long\09__crc_ahci_pmp_retry_srst_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_pmp_retry_srst_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_pmp_retry_srst_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_pmp_retry_srst_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_save_initial_config\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_save_initial_config\09\09\09\09"
module asm "\09.long\09__crc_ahci_save_initial_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_save_initial_config:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_save_initial_config\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_save_initial_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_start_engine\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_start_engine\09\09\09\09"
module asm "\09.long\09__crc_ahci_start_engine\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_start_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_start_engine\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_start_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_stop_engine\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_stop_engine\09\09\09\09"
module asm "\09.long\09__crc_ahci_stop_engine\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_stop_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_stop_engine\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_stop_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_start_fis_rx\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_start_fis_rx\09\09\09\09"
module asm "\09.long\09__crc_ahci_start_fis_rx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_start_fis_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_start_fis_rx\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_start_fis_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_reset_controller\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_reset_controller\09\09\09\09"
module asm "\09.long\09__crc_ahci_reset_controller\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_reset_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_reset_controller\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_reset_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_reset_em\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_reset_em\09\09\09\09"
module asm "\09.long\09__crc_ahci_reset_em\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_reset_em:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_reset_em\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_reset_em:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_init_controller\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_init_controller\09\09\09\09"
module asm "\09.long\09__crc_ahci_init_controller\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_init_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_init_controller\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_init_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_dev_classify\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_dev_classify\09\09\09\09"
module asm "\09.long\09__crc_ahci_dev_classify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_dev_classify:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_dev_classify\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_dev_classify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_fill_cmd_slot\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_fill_cmd_slot\09\09\09\09"
module asm "\09.long\09__crc_ahci_fill_cmd_slot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_fill_cmd_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_fill_cmd_slot\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_fill_cmd_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_kick_engine\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_kick_engine\09\09\09\09"
module asm "\09.long\09__crc_ahci_kick_engine\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_kick_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_kick_engine\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_kick_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_check_ready\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_check_ready\09\09\09\09"
module asm "\09.long\09__crc_ahci_check_ready\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_check_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_check_ready\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_check_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_do_softreset\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_do_softreset\09\09\09\09"
module asm "\09.long\09__crc_ahci_do_softreset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_do_softreset:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_do_softreset\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_do_softreset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_do_hardreset\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_do_hardreset\09\09\09\09"
module asm "\09.long\09__crc_ahci_do_hardreset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_do_hardreset:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_do_hardreset\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_do_hardreset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_handle_port_intr\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_handle_port_intr\09\09\09\09"
module asm "\09.long\09__crc_ahci_handle_port_intr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_handle_port_intr:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_handle_port_intr\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_handle_port_intr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_qc_issue\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_qc_issue\09\09\09\09"
module asm "\09.long\09__crc_ahci_qc_issue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_qc_issue:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_qc_issue\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_qc_issue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_error_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_error_handler\09\09\09\09"
module asm "\09.long\09__crc_ahci_error_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_error_handler\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_port_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_port_resume\09\09\09\09"
module asm "\09.long\09__crc_ahci_port_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_port_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_port_resume\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_port_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_print_info\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_print_info\09\09\09\09"
module asm "\09.long\09__crc_ahci_print_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_print_info:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_print_info\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_print_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_set_em_messages\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_set_em_messages\09\09\09\09"
module asm "\09.long\09__crc_ahci_set_em_messages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_set_em_messages:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_set_em_messages\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_set_em_messages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ahci_host_activate\22, \22a\22\09"
module asm "\09.weak\09__crc_ahci_host_activate\09\09\09\09"
module asm "\09.long\09__crc_ahci_host_activate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_host_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_host_activate\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_host_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.83 }
%union.anon.83 = type { ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.92, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.92 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pm_message = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ahci_port_priv = type { ptr, ptr, i32, ptr, i32, ptr, i32, i8, %struct.spinlock, i32, i8, i8, i32, [8 x %struct.ahci_em_priv], ptr }
%struct.ahci_em_priv = type { i32, %struct.timer_list, i32, i32, i32, ptr }
%struct.ahci_sg = type { i32, i32, i32, i32 }
%struct.ahci_cmd_hdr = type { i32, i32, i32, i32, [4 x i32] }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }

@ahci_ignore_sss = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ahci_ignore_sss = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_ignore_sss = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_ignore_sss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_ignore_sss to i32), ptr @__kstrtab_ahci_ignore_sss, ptr @__kstrtabns_ahci_ignore_sss }, section "___ksymtab_gpl+ahci_ignore_sss", align 4
@__param_str_skip_host_reset = internal constant [24 x i8] c"libahci.skip_host_reset\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ahci_skip_host_reset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_skip_host_reset = internal constant %struct.kernel_param { ptr @__param_str_skip_host_reset, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.83 { ptr @ahci_skip_host_reset } }, section "__param", align 4
@__UNIQUE_ID_skip_host_resettype321 = internal constant [37 x i8] c"libahci.parmtype=skip_host_reset:int\00", section ".modinfo", align 1
@__UNIQUE_ID_skip_host_reset322 = internal constant [75 x i8] c"libahci.parm=skip_host_reset:skip global host reset (0=don't skip, 1=skip)\00", section ".modinfo", align 1
@__param_str_ignore_sss = internal constant [19 x i8] c"libahci.ignore_sss\00", align 1
@__param_ignore_sss = internal constant %struct.kernel_param { ptr @__param_str_ignore_sss, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.83 { ptr @ahci_ignore_sss } }, section "__param", align 4
@__UNIQUE_ID_ignore_ssstype323 = internal constant [32 x i8] c"libahci.parmtype=ignore_sss:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ignore_sss324 = internal constant [80 x i8] c"libahci.parm=ignore_sss:Ignore staggered spinup flag (0=don't ignore, 1=ignore)\00", section ".modinfo", align 1
@ahci_shost_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ahci_shost_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ahci_shost_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ahci_shost_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@__kstrtab_ahci_shost_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_shost_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_shost_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_shost_groups to i32), ptr @__kstrtab_ahci_shost_groups, ptr @__kstrtabns_ahci_shost_groups }, section "___ksymtab_gpl+ahci_shost_groups", align 4
@ahci_sdev_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ahci_sdev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ahci_sdev_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ahci_sdev_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@__kstrtab_ahci_sdev_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_sdev_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_sdev_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_sdev_groups to i32), ptr @__kstrtab_ahci_sdev_groups, ptr @__kstrtabns_ahci_sdev_groups }, section "___ksymtab_gpl+ahci_sdev_groups", align 4
@sata_pmp_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@ahci_ops = dso_local global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr @ahci_pmp_qc_defer, ptr null, ptr @ahci_qc_prep, ptr @ahci_qc_issue, ptr @ahci_qc_fill_rtf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_dev_config, ptr @ahci_freeze, ptr @ahci_thaw, ptr null, ptr @ahci_softreset, ptr @ahci_hardreset, ptr @ahci_postreset, ptr null, ptr @ahci_softreset, ptr null, ptr null, ptr @ahci_error_handler, ptr null, ptr @ahci_post_internal_cmd, ptr null, ptr null, ptr @ahci_scr_read, ptr @ahci_scr_write, ptr @ahci_pmp_attach, ptr @ahci_pmp_detach, ptr @ahci_set_lpm, ptr @ahci_port_suspend, ptr @ahci_port_resume, ptr @ahci_port_start, ptr @ahci_port_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_led_show, ptr @ahci_led_store, ptr @ahci_activity_show, ptr @ahci_activity_store, ptr @ahci_transmit_led_message, ptr null, ptr null, ptr @sata_pmp_port_ops }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_ahci_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_ops to i32), ptr @__kstrtab_ahci_ops, ptr @__kstrtabns_ahci_ops }, section "___ksymtab_gpl+ahci_ops", align 4
@ahci_pmp_retry_srst_ops = dso_local global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_pmp_retry_softreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_ahci_pmp_retry_srst_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_pmp_retry_srst_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_pmp_retry_srst_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_pmp_retry_srst_ops to i32), ptr @__kstrtab_ahci_pmp_retry_srst_ops, ptr @__kstrtabns_ahci_pmp_retry_srst_ops }, section "___ksymtab_gpl+ahci_pmp_retry_srst_ops", align 4
@__param_str_ahci_em_messages = internal constant [25 x i8] c"libahci.ahci_em_messages\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ahci_em_messages = internal global i8 1, section ".data..read_mostly", align 1
@__param_ahci_em_messages = internal constant %struct.kernel_param { ptr @__param_str_ahci_em_messages, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.83 { ptr @ahci_em_messages } }, section "__param", align 4
@__UNIQUE_ID_ahci_em_messagestype325 = internal constant [39 x i8] c"libahci.parmtype=ahci_em_messages:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ahci_em_messages326 = internal constant [90 x i8] c"libahci.parm=ahci_em_messages:AHCI Enclosure Management Message control (0 = off, 1 = on)\00", section ".modinfo", align 1
@__param_str_devslp_idle_timeout = internal constant [28 x i8] c"libahci.devslp_idle_timeout\00", align 1
@devslp_idle_timeout = internal global i32 1000, section ".data..read_mostly", align 4
@__param_devslp_idle_timeout = internal constant %struct.kernel_param { ptr @__param_str_devslp_idle_timeout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @devslp_idle_timeout } }, section "__param", align 4
@__UNIQUE_ID_devslp_idle_timeouttype327 = internal constant [41 x i8] c"libahci.parmtype=devslp_idle_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_devslp_idle_timeout328 = internal constant [59 x i8] c"libahci.parm=devslp_idle_timeout:device sleep idle timeout\00", section ".modinfo", align 1
@ahci_save_initial_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 468, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"controller can't do 64bit DMA, forcing 32bit\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ahci_save_initial_config\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/ata/libahci.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ahci_save_initial_config._entry_ptr = internal global ptr @ahci_save_initial_config._entry, section ".printk_index", align 4
@ahci_save_initial_config._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 473, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"controller can't do NCQ, turning off CAP_NCQ\0A\00", [50 x i8] zeroinitializer }, align 32
@ahci_save_initial_config._entry_ptr.7 = internal global ptr @ahci_save_initial_config._entry.5, section ".printk_index", align 4
@ahci_save_initial_config._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 478, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"controller can do NCQ, turning on CAP_NCQ\0A\00", [53 x i8] zeroinitializer }, align 32
@ahci_save_initial_config._entry_ptr.10 = internal global ptr @ahci_save_initial_config._entry.8, section ".printk_index", align 4
@ahci_save_initial_config._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 483, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"controller can't do PMP, turning off CAP_PMP\0A\00", [50 x i8] zeroinitializer }, align 32
@ahci_save_initial_config._entry_ptr.13 = internal global ptr @ahci_save_initial_config._entry.11, section ".printk_index", align 4
@ahci_save_initial_config._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 489, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"controller can't do SNTF, turning off CAP_SNTF\0A\00", [48 x i8] zeroinitializer }, align 32
@ahci_save_initial_config._entry_ptr.16 = internal global ptr @ahci_save_initial_config._entry.14, section ".printk_index", align 4
@ahci_save_initial_config._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 495, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"controller can't do DEVSLP, turning off\0A\00", [55 x i8] zeroinitializer }, align 32
@ahci_save_initial_config._entry_ptr.19 = internal global ptr @ahci_save_initial_config._entry.17, section ".printk_index", align 4
@ahci_save_initial_config._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 501, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"controller can do FBS, turning on CAP_FBS\0A\00", [53 x i8] zeroinitializer }, align 32
@ahci_save_initial_config._entry_ptr.22 = internal global ptr @ahci_save_initial_config._entry.20, section ".printk_index", align 4
@ahci_save_initial_config._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 506, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"controller can't do FBS, turning off CAP_FBS\0A\00", [50 x i8] zeroinitializer }, align 32
@ahci_save_initial_config._entry_ptr.25 = internal global ptr @ahci_save_initial_config._entry.23, section ".printk_index", align 4
@ahci_save_initial_config._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 511, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"controller can do ALPM, turning on CAP_ALPM\0A\00", [51 x i8] zeroinitializer }, align 32
@ahci_save_initial_config._entry_ptr.28 = internal global ptr @ahci_save_initial_config._entry.26, section ".printk_index", align 4
@ahci_save_initial_config._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 516, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"controller does not support SXS, disabling CAP_SXS\0A\00", [44 x i8] zeroinitializer }, align 32
@ahci_save_initial_config._entry_ptr.31 = internal global ptr @ahci_save_initial_config._entry.29, section ".printk_index", align 4
@ahci_save_initial_config._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 522, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"forcing port_map 0x%x -> 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@ahci_save_initial_config._entry_ptr.34 = internal global ptr @ahci_save_initial_config._entry.32, section ".printk_index", align 4
@ahci_save_initial_config._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 530, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"masking port_map 0x%x -> 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ahci_save_initial_config._entry_ptr.38 = internal global ptr @ahci_save_initial_config._entry.35, section ".printk_index", align 4
@ahci_save_initial_config._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 548, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"implemented port map (0x%x) contains more ports than nr_ports (%u), using nr_ports\0A\00", [44 x i8] zeroinitializer }, align 32
@ahci_save_initial_config._entry_ptr.41 = internal global ptr @ahci_save_initial_config._entry.39, section ".printk_index", align 4
@ahci_save_initial_config._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 556, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"forcing PORTS_IMPL to 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@ahci_save_initial_config._entry_ptr.44 = internal global ptr @ahci_save_initial_config._entry.42, section ".printk_index", align 4
@__kstrtab_ahci_save_initial_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_save_initial_config = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_save_initial_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_save_initial_config to i32), ptr @__kstrtab_ahci_save_initial_config, ptr @__kstrtabns_ahci_save_initial_config }, section "___ksymtab_gpl+ahci_save_initial_config", align 4
@__kstrtab_ahci_start_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_start_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_start_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_start_engine to i32), ptr @__kstrtab_ahci_start_engine, ptr @__kstrtabns_ahci_start_engine }, section "___ksymtab_gpl+ahci_start_engine", align 4
@ahci_stop_engine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 669, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to wake up port before engine stop\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ahci_stop_engine\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ahci_stop_engine._entry_ptr = internal global ptr @ahci_stop_engine._entry, section ".printk_index", align 4
@ahci_stop_engine._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.46, ptr @.str.2, i32 685, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AHCI controller unavailable!\0A\00", [34 x i8] zeroinitializer }, align 32
@ahci_stop_engine._entry_ptr.50 = internal global ptr @ahci_stop_engine._entry.48, section ".printk_index", align 4
@__kstrtab_ahci_stop_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_stop_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_stop_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_stop_engine to i32), ptr @__kstrtab_ahci_stop_engine, ptr @__kstrtabns_ahci_stop_engine }, section "___ksymtab_gpl+ahci_stop_engine", align 4
@__kstrtab_ahci_start_fis_rx = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_start_fis_rx = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_start_fis_rx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_start_fis_rx to i32), ptr @__kstrtab_ahci_start_fis_rx, ptr @__kstrtabns_ahci_start_fis_rx }, section "___ksymtab_gpl+ahci_start_fis_rx", align 4
@ahci_reset_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 963, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"controller reset failed (0x%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ahci_reset_controller\00", [42 x i8] zeroinitializer }, align 32
@ahci_reset_controller._entry_ptr = internal global ptr @ahci_reset_controller._entry, section ".printk_index", align 4
@ahci_reset_controller._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 976, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"skipping global host reset\0A\00", [36 x i8] zeroinitializer }, align 32
@ahci_reset_controller._entry_ptr.55 = internal global ptr @ahci_reset_controller._entry.53, section ".printk_index", align 4
@__kstrtab_ahci_reset_controller = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_reset_controller = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_reset_controller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_reset_controller to i32), ptr @__kstrtab_ahci_reset_controller, ptr @__kstrtabns_ahci_reset_controller }, section "___ksymtab_gpl+ahci_reset_controller", align 4
@__kstrtab_ahci_reset_em = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_reset_em = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_reset_em = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_reset_em to i32), ptr @__kstrtab_ahci_reset_em, ptr @__kstrtabns_ahci_reset_em }, section "___ksymtab_gpl+ahci_reset_em", align 4
@ahci_init_controller.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 1, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"libahci\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ahci_init_controller\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HOST_CTL 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@ahci_init_controller.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 1, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__kstrtab_ahci_init_controller = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_init_controller = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_init_controller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_init_controller to i32), ptr @__kstrtab_ahci_init_controller, ptr @__kstrtabns_ahci_init_controller }, section "___ksymtab_gpl+ahci_init_controller", align 4
@__kstrtab_ahci_dev_classify = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_dev_classify = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_dev_classify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_dev_classify to i32), ptr @__kstrtab_ahci_dev_classify, ptr @__kstrtabns_ahci_dev_classify }, section "___ksymtab_gpl+ahci_dev_classify", align 4
@__kstrtab_ahci_fill_cmd_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_fill_cmd_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_fill_cmd_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_fill_cmd_slot to i32), ptr @__kstrtab_ahci_fill_cmd_slot, ptr @__kstrtabns_ahci_fill_cmd_slot }, section "___ksymtab_gpl+ahci_fill_cmd_slot", align 4
@__kstrtab_ahci_kick_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_kick_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_kick_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_kick_engine to i32), ptr @__kstrtab_ahci_kick_engine, ptr @__kstrtabns_ahci_kick_engine }, section "___ksymtab_gpl+ahci_kick_engine", align 4
@ahci_do_softreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014ata%u.%02u: failed to reset engine (errno=%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ahci_do_softreset\00", [46 x i8] zeroinitializer }, align 32
@ahci_do_softreset._entry_ptr = internal global ptr @ahci_do_softreset._entry, section ".printk_index", align 4
@ahci_do_softreset._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014ata%u: failed to reset engine (errno=%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@ahci_do_softreset._entry_ptr.63 = internal global ptr @ahci_do_softreset._entry.61, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"1st FIS failed\00", [17 x i8] zeroinitializer }, align 32
@ahci_do_softreset._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.60, ptr @.str.2, i32 1464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016ata%u.%02u: device not ready, treating as offline\0A\00", [43 x i8] zeroinitializer }, align 32
@ahci_do_softreset._entry_ptr.67 = internal global ptr @ahci_do_softreset._entry.65, section ".printk_index", align 4
@ahci_do_softreset._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.60, ptr @.str.2, i32 1464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016ata%u: device not ready, treating as offline\0A\00", [48 x i8] zeroinitializer }, align 32
@ahci_do_softreset._entry_ptr.70 = internal global ptr @ahci_do_softreset._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device not ready\00", [47 x i8] zeroinitializer }, align 32
@ahci_do_softreset._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.60, ptr @.str.2, i32 1480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ata%u.%02u: softreset failed (%s)\0A\00", [59 x i8] zeroinitializer }, align 32
@ahci_do_softreset._entry_ptr.74 = internal global ptr @ahci_do_softreset._entry.72, section ".printk_index", align 4
@ahci_do_softreset._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.60, ptr @.str.2, i32 1480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ata%u: softreset failed (%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@ahci_do_softreset._entry_ptr.77 = internal global ptr @ahci_do_softreset._entry.75, section ".printk_index", align 4
@__kstrtab_ahci_check_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_check_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_check_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_check_ready to i32), ptr @__kstrtab_ahci_check_ready, ptr @__kstrtabns_ahci_check_ready }, section "___ksymtab_gpl+ahci_check_ready", align 4
@__kstrtab_ahci_do_softreset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_do_softreset = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_do_softreset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_do_softreset to i32), ptr @__kstrtab_ahci_do_softreset, ptr @__kstrtabns_ahci_do_softreset }, section "___ksymtab_gpl+ahci_do_softreset", align 4
@__kstrtab_ahci_do_hardreset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_do_hardreset = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_do_hardreset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_do_hardreset to i32), ptr @__kstrtab_ahci_do_hardreset, ptr @__kstrtabns_ahci_do_hardreset }, section "___ksymtab_gpl+ahci_do_hardreset", align 4
@ahci_handle_port_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1940, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"interrupt on disabled port %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ahci_handle_port_intr\00", [42 x i8] zeroinitializer }, align 32
@ahci_handle_port_intr._entry_ptr = internal global ptr @ahci_handle_port_intr._entry, section ".printk_index", align 4
@__kstrtab_ahci_handle_port_intr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_handle_port_intr = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_handle_port_intr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_handle_port_intr to i32), ptr @__kstrtab_ahci_handle_port_intr, ptr @__kstrtabns_ahci_handle_port_intr }, section "___ksymtab_gpl+ahci_handle_port_intr", align 4
@__kstrtab_ahci_qc_issue = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_qc_issue = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_qc_issue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_qc_issue to i32), ptr @__kstrtab_ahci_qc_issue, ptr @__kstrtabns_ahci_qc_issue }, section "___ksymtab_gpl+ahci_qc_issue", align 4
@__kstrtab_ahci_error_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_error_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_error_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_error_handler to i32), ptr @__kstrtab_ahci_error_handler, ptr @__kstrtabns_ahci_error_handler }, section "___ksymtab_gpl+ahci_error_handler", align 4
@__kstrtab_ahci_port_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_port_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_port_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_port_resume to i32), ptr @__kstrtab_ahci_port_resume, ptr @__kstrtabns_ahci_port_resume }, section "___ksymtab_gpl+ahci_port_resume", align 4
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.5\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@ahci_print_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 2488, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"AHCI %02x%02x.%02x%02x %u slots %u ports %s Gbps 0x%x impl %s mode\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ahci_print_info\00", [16 x i8] zeroinitializer }, align 32
@ahci_print_info._entry_ptr = internal global ptr @ahci_print_info._entry, section ".printk_index", align 4
@ahci_print_info._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 2521, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"flags: %s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\0A\00", [41 x i8] zeroinitializer }, align 32
@ahci_print_info._entry_ptr.88 = internal global ptr @ahci_print_info._entry.86, section ".printk_index", align 4
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"64bit \00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ncq \00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sntf \00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ilck \00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stag \00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pm \00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"led \00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clo \00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"only \00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pmp \00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fbs \00", [27 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pio \00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slum \00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"part \00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ccc \00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ems \00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sxs \00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"deso \00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sadm \00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sds \00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apst \00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvmp \00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"boh \00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_ahci_print_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_print_info = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_print_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_print_info to i32), ptr @__kstrtab_ahci_print_info, ptr @__kstrtabns_ahci_print_info }, section "___ksymtab_gpl+ahci_print_info", align 4
@__kstrtab_ahci_set_em_messages = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_set_em_messages = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_set_em_messages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_set_em_messages to i32), ptr @__kstrtab_ahci_set_em_messages, ptr @__kstrtabns_ahci_set_em_messages }, section "___ksymtab_gpl+ahci_set_em_messages", align 4
@ahci_host_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 2605, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"both AHCI_HFLAG_MULTI_MSI flag set and custom irq handler implemented\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ahci_host_activate\00", [45 x i8] zeroinitializer }, align 32
@ahci_host_activate._entry_ptr = internal global ptr @ahci_host_activate._entry, section ".printk_index", align 4
@ahci_host_activate._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.2, i32 2608, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"AHCI_HFLAG_MULTI_MSI requires ->get_irq_vector!\0A\00", [47 x i8] zeroinitializer }, align 32
@ahci_host_activate._entry_ptr.117 = internal global ptr @ahci_host_activate._entry.115, section ".printk_index", align 4
@__kstrtab_ahci_host_activate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_host_activate = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_host_activate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_host_activate to i32), ptr @__kstrtab_ahci_host_activate, ptr @__kstrtabns_ahci_host_activate }, section "___ksymtab_gpl+ahci_host_activate", align 4
@__UNIQUE_ID_author335 = internal constant [27 x i8] c"libahci.author=Jeff Garzik\00", section ".modinfo", align 1
@__UNIQUE_ID_description336 = internal constant [56 x i8] c"libahci.description=Common AHCI SATA low-level routines\00", section ".modinfo", align 1
@__UNIQUE_ID_file337 = internal constant [33 x i8] c"libahci.file=drivers/ata/libahci\00", section ".modinfo", align 1
@__UNIQUE_ID_license338 = internal constant [20 x i8] c"libahci.license=GPL\00", section ".modinfo", align 1
@ahci_shost_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @dev_attr_link_power_management_policy, ptr @dev_attr_em_message_type, ptr @dev_attr_em_message, ptr @dev_attr_ahci_host_caps, ptr @dev_attr_ahci_host_cap2, ptr @dev_attr_ahci_host_version, ptr @dev_attr_ahci_port_cmd, ptr @dev_attr_em_buffer, ptr @dev_attr_em_message_supported, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_link_power_management_policy = external dso_local global %struct.device_attribute, align 4
@dev_attr_em_message_type = external dso_local global %struct.device_attribute, align 4
@dev_attr_em_message = external dso_local global %struct.device_attribute, align 4
@dev_attr_ahci_host_caps = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ahci_show_host_caps, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ahci_host_cap2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ahci_show_host_cap2, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ahci_host_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ahci_show_host_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ahci_port_cmd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ahci_show_port_cmd, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_em_buffer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ahci_read_em_buffer, ptr @ahci_store_em_buffer }, [36 x i8] zeroinitializer }, align 32
@dev_attr_em_message_supported = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ahci_show_em_supported, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ahci_host_caps\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ahci_host_cap2\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ahci_host_version\00", [46 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ahci_port_cmd\00", [18 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"em_buffer\00", [22 x i8] zeroinitializer }, align 32
@__func__.ahci_read_em_buffer = private unnamed_addr constant [20 x i8] c"ahci_read_em_buffer\00", align 1
@ahci_read_em_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @__func__.ahci_read_em_buffer, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014ata%u: EM read buffer size too large: buffer size %u, page size %lu\0A\00", [57 x i8] zeroinitializer }, align 32
@ahci_read_em_buffer._entry_ptr = internal global ptr @ahci_read_em_buffer._entry, section ".printk_index", align 4
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"em_message_supported\00", [43 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s%s%s%s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saf-te \00", [24 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ses-2 \00", [25 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sgpio \00", [25 x i8] zeroinitializer }, align 32
@ahci_sdev_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_sw_activity, ptr @dev_attr_unload_heads, ptr @dev_attr_ncq_prio_supported, ptr @dev_attr_ncq_prio_enable, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_sw_activity = external dso_local global %struct.device_attribute, align 4
@dev_attr_unload_heads = external dso_local global %struct.device_attribute, align 4
@dev_attr_ncq_prio_supported = external dso_local global %struct.device_attribute, align 4
@dev_attr_ncq_prio_enable = external dso_local global %struct.device_attribute, align 4
@ahci_scr_offset.offset = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 40, i32 48, i32 44, i32 52, i32 60], [44 x i8] zeroinitializer }, align 32
@ahci_set_aggressive_devslp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 2105, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"port does not support device sleep\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ahci_set_aggressive_devslp\00", [37 x i8] zeroinitializer }, align 32
@ahci_set_aggressive_devslp._entry_ptr = internal global ptr @ahci_set_aggressive_devslp._entry, section ".printk_index", align 4
@ahci_set_aggressive_devslp._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.2, i32 2118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014ata%u.%02u: failed to disable DEVSLP\0A\00", [56 x i8] zeroinitializer }, align 32
@ahci_set_aggressive_devslp._entry_ptr.134 = internal global ptr @ahci_set_aggressive_devslp._entry.132, section ".printk_index", align 4
@ahci_set_aggressive_devslp._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.131, ptr @.str.2, i32 2171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014ata%u.%02u: failed to enable DEVSLP\0A\00", [57 x i8] zeroinitializer }, align 32
@ahci_set_aggressive_devslp._entry_ptr.137 = internal global ptr @ahci_set_aggressive_devslp._entry.135, section ".printk_index", align 4
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lx\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ata_dummy_port_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_port_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.2, i32 1233, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s (%d)\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ahci_port_init\00", [17 x i8] zeroinitializer }, align 32
@ahci_port_init._entry_ptr = internal global ptr @ahci_port_init._entry, section ".printk_index", align 4
@ahci_port_init.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.141, ptr @.str.2, ptr @.str.142, i8 1, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PORT_SCR_ERR 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@ahci_port_init.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.141, ptr @.str.2, ptr @.str.143, i8 1, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PORT_IRQ_STAT 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to stop engine\00", [42 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed stop FIS RX\00", [45 x i8] zeroinitializer }, align 32
@ahci_dev_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.2, i32 1287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016ata%u.%02u: SB600 AHCI: limiting to 255 sectors per cmd\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ahci_dev_config\00", [16 x i8] zeroinitializer }, align 32
@ahci_dev_config._entry_ptr = internal global ptr @ahci_dev_config._entry, section ".printk_index", align 4
@ahci_pmp_retry_softreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 1540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014ata%u.%02u: applying PMP SRST workaround and retrying\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ahci_pmp_retry_softreset\00", [39 x i8] zeroinitializer }, align 32
@ahci_pmp_retry_softreset._entry_ptr = internal global ptr @ahci_pmp_retry_softreset._entry, section ".printk_index", align 4
@ahci_pmp_retry_softreset._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.2, i32 1540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014ata%u: applying PMP SRST workaround and retrying\0A\00", [44 x i8] zeroinitializer }, align 32
@ahci_pmp_retry_softreset._entry_ptr.152 = internal global ptr @ahci_pmp_retry_softreset._entry.150, section ".printk_index", align 4
@sata_deb_timing_hotplug = external dso_local constant [0 x i32], align 4
@sata_deb_timing_normal = external dso_local constant [0 x i32], align 4
@ahci_handle_port_interrupt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irq_stat 0x%08x\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unknown FIS %08x %08x %08x %08x\00", [32 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"incorrect PMP\00", [18 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"host bus error\00", [17 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"interface fatal error\00", [42 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"connection status changed\00", [38 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PHY RDY changed\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ahci_fbs_dec_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.2, i32 1699, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to clear device error\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ahci_fbs_dec_intr\00", [46 x i8] zeroinitializer }, align 32
@ahci_fbs_dec_intr._entry_ptr = internal global ptr @ahci_fbs_dec_intr._entry, section ".printk_index", align 4
@ahci_enable_fbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.2, i32 2199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FBS is enabled\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ahci_enable_fbs\00", [16 x i8] zeroinitializer }, align 32
@ahci_enable_fbs._entry_ptr = internal global ptr @ahci_enable_fbs._entry, section ".printk_index", align 4
@ahci_enable_fbs._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.164, ptr @.str.2, i32 2203, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to enable FBS\0A\00", [42 x i8] zeroinitializer }, align 32
@ahci_enable_fbs._entry_ptr.167 = internal global ptr @ahci_enable_fbs._entry.165, section ".printk_index", align 4
@ahci_disable_fbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.2, i32 2232, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to disable FBS\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ahci_disable_fbs\00", [47 x i8] zeroinitializer }, align 32
@ahci_disable_fbs._entry_ptr = internal global ptr @ahci_disable_fbs._entry, section ".printk_index", align 4
@ahci_disable_fbs._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.2, i32 2234, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FBS is disabled\0A\00", [47 x i8] zeroinitializer }, align 32
@ahci_disable_fbs._entry_ptr.172 = internal global ptr @ahci_disable_fbs._entry.170, section ".printk_index", align 4
@ahci_init_sw_activity.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.173 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&emp->timer)\00", [18 x i8] zeroinitializer }, align 32
@ahci_port_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.2, i32 2324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013ata%u: %s (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ahci_port_suspend\00", [46 x i8] zeroinitializer }, align 32
@ahci_port_suspend._entry_ptr = internal global ptr @ahci_port_suspend._entry, section ".printk_index", align 4
@.str.176 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@ahci_port_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.2, i32 2367, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"port %d can do FBS, forcing FBSCP\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ahci_port_start\00", [16 x i8] zeroinitializer }, align 32
@ahci_port_start._entry_ptr = internal global ptr @ahci_port_start._entry, section ".printk_index", align 4
@ahci_port_start._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.178, ptr @.str.2, i32 2371, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"port %d is not capable of FBS\0A\00", [33 x i8] zeroinitializer }, align 32
@ahci_port_start._entry_ptr.181 = internal global ptr @ahci_port_start._entry.179, section ".printk_index", align 4
@ahci_port_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.182 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pp->lock\00", [22 x i8] zeroinitializer }, align 32
@ahci_port_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.2, i32 2442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\014ata%u: %s (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ahci_port_stop\00", [17 x i8] zeroinitializer }, align 32
@ahci_port_stop._entry_ptr = internal global ptr @ahci_port_stop._entry, section ".printk_index", align 4
@.str.185 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"irq %d\00", [25 x i8] zeroinitializer }, align 32
@switch.table.ahci_print_info = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.82], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.189 = private unnamed_addr constant [16 x i8] c"ahci_ignore_sss\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 36, i32 5 }
@___asan_gen_.192 = private unnamed_addr constant [21 x i8] c"ahci_skip_host_reset\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 35, i32 12 }
@___asan_gen_.195 = private unnamed_addr constant [22 x i8] c"ahci_shost_attr_group\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 124, i32 37 }
@___asan_gen_.198 = private unnamed_addr constant [18 x i8] c"ahci_shost_groups\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 128, i32 31 }
@___asan_gen_.201 = private unnamed_addr constant [21 x i8] c"ahci_sdev_attr_group\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 142, i32 37 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"ahci_sdev_groups\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 146, i32 31 }
@___asan_gen_.207 = private unnamed_addr constant [9 x i8] c"ahci_ops\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 152, i32 28 }
@___asan_gen_.210 = private unnamed_addr constant [24 x i8] c"ahci_pmp_retry_srst_ops\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 190, i32 28 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 468, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 473, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 478, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 483, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 488, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 494, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 501, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 506, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 511, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 516, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 521, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 528, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 546, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 556, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 669, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 685, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 962, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 976, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1273, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1421, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1445, i32 12 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1464, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1468, i32 12 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1480, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1939, i32 5 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2466, i32 13 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2468, i32 13 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2470, i32 13 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2472, i32 13 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2474, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2490, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2604, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2607, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant [17 x i8] c"ahci_shost_attrs\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 111, i32 26 }
@___asan_gen_.525 = private unnamed_addr constant [24 x i8] c"dev_attr_ahci_host_caps\00", align 1
@___asan_gen_.528 = private unnamed_addr constant [24 x i8] c"dev_attr_ahci_host_cap2\00", align 1
@___asan_gen_.531 = private unnamed_addr constant [27 x i8] c"dev_attr_ahci_host_version\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [23 x i8] c"dev_attr_ahci_port_cmd\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [19 x i8] c"dev_attr_em_buffer\00", align 1
@___asan_gen_.540 = private unnamed_addr constant [30 x i8] c"dev_attr_em_message_supported\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 103, i32 8 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 264, i32 22 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 104, i32 8 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 105, i32 8 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 106, i32 8 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 107, i32 8 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 340, i32 4 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 109, i32 8 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 418, i32 22 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 420, i32 34 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 421, i32 32 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 422, i32 34 }
@___asan_gen_.582 = private unnamed_addr constant [16 x i8] c"ahci_sdev_attrs\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 134, i32 26 }
@___asan_gen_.585 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 602, i32 19 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2105, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2118, i32 5 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2171, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1142, i32 22 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1218, i32 22 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1233, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1237, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1242, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 919, i32 11 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 926, i32 11 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1286, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1538, i32 4 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1737, i32 30 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1768, i32 7 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1775, i32 33 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1781, i32 31 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1792, i32 31 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1797, i32 31 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1799, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1799, i32 34 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1699, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2199, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2203, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2232, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2234, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1049, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2324, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2356, i32 5 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2366, i32 4 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2370, i32 4 }
@___asan_gen_.756 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2422, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2442, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.772 = private constant [25 x i8] c"../drivers/ata/libahci.c\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2578, i32 33 }
@___asan_gen_.774 = private unnamed_addr constant [29 x i8] c"switch.table.ahci_print_info\00", align 1
@llvm.compiler.used = appending global [283 x ptr] [ptr @__UNIQUE_ID_ahci_em_messages326, ptr @__UNIQUE_ID_ahci_em_messagestype325, ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_description336, ptr @__UNIQUE_ID_devslp_idle_timeout328, ptr @__UNIQUE_ID_devslp_idle_timeouttype327, ptr @__UNIQUE_ID_file337, ptr @__UNIQUE_ID_ignore_sss324, ptr @__UNIQUE_ID_ignore_ssstype323, ptr @__UNIQUE_ID_license338, ptr @__UNIQUE_ID_skip_host_reset322, ptr @__UNIQUE_ID_skip_host_resettype321, ptr @__ksymtab_ahci_check_ready, ptr @__ksymtab_ahci_dev_classify, ptr @__ksymtab_ahci_do_hardreset, ptr @__ksymtab_ahci_do_softreset, ptr @__ksymtab_ahci_error_handler, ptr @__ksymtab_ahci_fill_cmd_slot, ptr @__ksymtab_ahci_handle_port_intr, ptr @__ksymtab_ahci_host_activate, ptr @__ksymtab_ahci_ignore_sss, ptr @__ksymtab_ahci_init_controller, ptr @__ksymtab_ahci_kick_engine, ptr @__ksymtab_ahci_ops, ptr @__ksymtab_ahci_pmp_retry_srst_ops, ptr @__ksymtab_ahci_port_resume, ptr @__ksymtab_ahci_print_info, ptr @__ksymtab_ahci_qc_issue, ptr @__ksymtab_ahci_reset_controller, ptr @__ksymtab_ahci_reset_em, ptr @__ksymtab_ahci_save_initial_config, ptr @__ksymtab_ahci_sdev_groups, ptr @__ksymtab_ahci_set_em_messages, ptr @__ksymtab_ahci_shost_groups, ptr @__ksymtab_ahci_start_engine, ptr @__ksymtab_ahci_start_fis_rx, ptr @__ksymtab_ahci_stop_engine, ptr @__param_ahci_em_messages, ptr @__param_devslp_idle_timeout, ptr @__param_ignore_sss, ptr @__param_skip_host_reset, ptr @ahci_dev_config._entry, ptr @ahci_dev_config._entry_ptr, ptr @ahci_disable_fbs._entry, ptr @ahci_disable_fbs._entry.170, ptr @ahci_disable_fbs._entry_ptr, ptr @ahci_disable_fbs._entry_ptr.172, ptr @ahci_do_softreset._entry, ptr @ahci_do_softreset._entry.61, ptr @ahci_do_softreset._entry.65, ptr @ahci_do_softreset._entry.68, ptr @ahci_do_softreset._entry.72, ptr @ahci_do_softreset._entry.75, ptr @ahci_do_softreset._entry_ptr, ptr @ahci_do_softreset._entry_ptr.63, ptr @ahci_do_softreset._entry_ptr.67, ptr @ahci_do_softreset._entry_ptr.70, ptr @ahci_do_softreset._entry_ptr.74, ptr @ahci_do_softreset._entry_ptr.77, ptr @ahci_enable_fbs._entry, ptr @ahci_enable_fbs._entry.165, ptr @ahci_enable_fbs._entry_ptr, ptr @ahci_enable_fbs._entry_ptr.167, ptr @ahci_fbs_dec_intr._entry, ptr @ahci_fbs_dec_intr._entry_ptr, ptr @ahci_handle_port_intr._entry, ptr @ahci_handle_port_intr._entry_ptr, ptr @ahci_host_activate._entry, ptr @ahci_host_activate._entry.115, ptr @ahci_host_activate._entry_ptr, ptr @ahci_host_activate._entry_ptr.117, ptr @ahci_pmp_retry_softreset._entry, ptr @ahci_pmp_retry_softreset._entry.150, ptr @ahci_pmp_retry_softreset._entry_ptr, ptr @ahci_pmp_retry_softreset._entry_ptr.152, ptr @ahci_port_init._entry, ptr @ahci_port_init._entry_ptr, ptr @ahci_port_start._entry, ptr @ahci_port_start._entry.179, ptr @ahci_port_start._entry_ptr, ptr @ahci_port_start._entry_ptr.181, ptr @ahci_port_stop._entry, ptr @ahci_port_stop._entry_ptr, ptr @ahci_port_suspend._entry, ptr @ahci_port_suspend._entry_ptr, ptr @ahci_print_info._entry, ptr @ahci_print_info._entry.86, ptr @ahci_print_info._entry_ptr, ptr @ahci_print_info._entry_ptr.88, ptr @ahci_read_em_buffer._entry, ptr @ahci_read_em_buffer._entry_ptr, ptr @ahci_reset_controller._entry, ptr @ahci_reset_controller._entry.53, ptr @ahci_reset_controller._entry_ptr, ptr @ahci_reset_controller._entry_ptr.55, ptr @ahci_save_initial_config._entry, ptr @ahci_save_initial_config._entry.11, ptr @ahci_save_initial_config._entry.14, ptr @ahci_save_initial_config._entry.17, ptr @ahci_save_initial_config._entry.20, ptr @ahci_save_initial_config._entry.23, ptr @ahci_save_initial_config._entry.26, ptr @ahci_save_initial_config._entry.29, ptr @ahci_save_initial_config._entry.32, ptr @ahci_save_initial_config._entry.35, ptr @ahci_save_initial_config._entry.39, ptr @ahci_save_initial_config._entry.42, ptr @ahci_save_initial_config._entry.5, ptr @ahci_save_initial_config._entry.8, ptr @ahci_save_initial_config._entry_ptr, ptr @ahci_save_initial_config._entry_ptr.10, ptr @ahci_save_initial_config._entry_ptr.13, ptr @ahci_save_initial_config._entry_ptr.16, ptr @ahci_save_initial_config._entry_ptr.19, ptr @ahci_save_initial_config._entry_ptr.22, ptr @ahci_save_initial_config._entry_ptr.25, ptr @ahci_save_initial_config._entry_ptr.28, ptr @ahci_save_initial_config._entry_ptr.31, ptr @ahci_save_initial_config._entry_ptr.34, ptr @ahci_save_initial_config._entry_ptr.38, ptr @ahci_save_initial_config._entry_ptr.41, ptr @ahci_save_initial_config._entry_ptr.44, ptr @ahci_save_initial_config._entry_ptr.7, ptr @ahci_set_aggressive_devslp._entry, ptr @ahci_set_aggressive_devslp._entry.132, ptr @ahci_set_aggressive_devslp._entry.135, ptr @ahci_set_aggressive_devslp._entry_ptr, ptr @ahci_set_aggressive_devslp._entry_ptr.134, ptr @ahci_set_aggressive_devslp._entry_ptr.137, ptr @ahci_stop_engine._entry, ptr @ahci_stop_engine._entry.48, ptr @ahci_stop_engine._entry_ptr, ptr @ahci_stop_engine._entry_ptr.50, ptr @ahci_ignore_sss, ptr @ahci_skip_host_reset, ptr @ahci_shost_attr_group, ptr @ahci_shost_groups, ptr @ahci_sdev_attr_group, ptr @ahci_sdev_groups, ptr @ahci_ops, ptr @ahci_pmp_retry_srst_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @ahci_shost_attrs, ptr @dev_attr_ahci_host_caps, ptr @dev_attr_ahci_host_cap2, ptr @dev_attr_ahci_host_version, ptr @dev_attr_ahci_port_cmd, ptr @dev_attr_em_buffer, ptr @dev_attr_em_message_supported, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @ahci_sdev_attrs, ptr @ahci_scr_offset.offset, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.166, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @ahci_init_sw_activity.__key, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.180, ptr @ahci_port_start.__key, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @switch.table.ahci_print_info], section "llvm.metadata"
@0 = internal global [196 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_ignore_sss to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_skip_host_reset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_shost_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_shost_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_sdev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_sdev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_pmp_retry_srst_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_save_initial_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_save_initial_config._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_save_initial_config._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_save_initial_config._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_save_initial_config._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_save_initial_config._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_save_initial_config._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_save_initial_config._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_save_initial_config._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_save_initial_config._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_save_initial_config._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_save_initial_config._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_save_initial_config._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_save_initial_config._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_stop_engine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_stop_engine._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_reset_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_reset_controller._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_do_softreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_do_softreset._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_do_softreset._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_do_softreset._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_do_softreset._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_do_softreset._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_handle_port_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_print_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_print_info._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_host_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_host_activate._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_shost_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ahci_host_caps to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ahci_host_cap2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ahci_host_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ahci_port_cmd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_em_buffer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_em_message_supported to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_read_em_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_sdev_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_scr_offset.offset to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_set_aggressive_devslp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_set_aggressive_devslp._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_set_aggressive_devslp._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_port_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_dev_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_pmp_retry_softreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_pmp_retry_softreset._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_fbs_dec_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_enable_fbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_enable_fbs._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_disable_fbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_disable_fbs._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_init_sw_activity.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_port_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_port_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_port_start._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_port_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_port_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ahci_print_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_pmp_qc_defer(ptr noundef %qc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %fbs_enabled = getelementptr inbounds %struct.ahci_port_priv, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %fbs_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fbs_enabled, align 1, !range !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call2 = tail call i32 @ata_std_qc_defer(ptr noundef %qc) #8
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @sata_pmp_qc_defer_cmd_switch(ptr noundef %qc) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_qc_prep(ptr noundef %qc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol, align 4
  %6 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not = icmp eq i8 %6, 0
  %cmd_tbl2 = getelementptr inbounds %struct.ahci_port_priv, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %cmd_tbl2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd_tbl2, align 4
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %9 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_tag, align 4
  %mul = mul i32 %10, 2816
  %add.ptr = getelementptr i8, ptr %8, i32 %mul
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  %pmp = getelementptr inbounds %struct.ata_link, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pmp, align 4
  %conv4 = trunc i32 %16 to i8
  tail call void @ata_tf_to_fis(ptr noundef %tf, i8 noundef zeroext %conv4, i32 noundef 1, ptr noundef %add.ptr) #8
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 64
  %17 = call ptr @memset(ptr %add.ptr5, i32 0, i32 32)
  %cdb = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 5
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %cdb_len = getelementptr inbounds %struct.ata_device, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %cdb_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cdb_len, align 32
  %22 = call ptr @memcpy(ptr %add.ptr5, ptr %cdb, i32 %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 128
  %n_elem.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %25 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_elem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp17.not.i = icmp eq i32 %26, 0
  br i1 %cmp17.not.i, label %if.then9.if.end11_crit_edge, label %for.body.preheader.i

if.then9.if.end11_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

for.body.preheader.i:                             ; preds = %if.then9
  %sg1.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %27 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sg1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %sg.019.i = phi ptr [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %28, %for.body.preheader.i ]
  %si.018.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.019.i, i32 0, i32 3
  %29 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.019.i, i32 0, i32 4
  %31 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_length.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %arrayidx.i = getelementptr %struct.ahci_sg, ptr %add.ptr.i, i32 %si.018.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx.i, align 4
  %addr_hi.i = getelementptr inbounds %struct.ahci_sg, ptr %arrayidx.i, i32 0, i32 1
  %35 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %addr_hi.i, align 4
  %sub.i = add i32 %32, -1
  %36 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #8
  %flags_size.i = getelementptr inbounds %struct.ahci_sg, ptr %arrayidx.i, i32 0, i32 3
  %37 = ptrtoint ptr %flags_size.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %flags_size.i, align 4
  %inc.i = add nuw i32 %si.018.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.019.i) #8
  %38 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_elem.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %39
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %ahci_fill_sg.exit.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ahci_fill_sg.exit.loopexit:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo49 = shl i32 %inc.i, 16
  %phi.bo = or i32 %phi.bo49, 5
  br label %if.end11

if.end11:                                         ; preds = %ahci_fill_sg.exit.loopexit, %if.then9.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %n_elem.0 = phi i32 [ 5, %if.end.if.end11_crit_edge ], [ 5, %if.then9.if.end11_crit_edge ], [ %phi.bo, %ahci_fill_sg.exit.loopexit ]
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 128
  %pmp14 = getelementptr inbounds %struct.ata_link, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %pmp14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pmp14, align 4
  %shl15 = shl i32 %45, 12
  %or16 = or i32 %shl15, %n_elem.0
  %46 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tf, align 4
  %and19 = shl i32 %47, 3
  %48 = and i32 %and19, 64
  %49 = or i32 %or16, %48
  %or26 = or i32 %49, 160
  %opts.1 = select i1 %tobool.i.not, i32 %49, i32 %or26
  %50 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hw_tag, align 4
  %cmd_tbl_dma1.i = getelementptr inbounds %struct.ahci_port_priv, ptr %3, i32 0, i32 4
  %52 = ptrtoint ptr %cmd_tbl_dma1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cmd_tbl_dma1.i, align 4
  %mul.i = mul i32 %51, 2816
  %add.i = add i32 %53, %mul.i
  %54 = tail call i32 @llvm.bswap.i32(i32 %opts.1) #8
  %cmd_slot.i = getelementptr inbounds %struct.ahci_port_priv, ptr %3, i32 0, i32 1
  %55 = ptrtoint ptr %cmd_slot.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cmd_slot.i, align 4
  %arrayidx.i48 = getelementptr %struct.ahci_cmd_hdr, ptr %56, i32 %51
  %57 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %54, ptr %arrayidx.i48, align 4
  %58 = load ptr, ptr %cmd_slot.i, align 4
  %status.i = getelementptr %struct.ahci_cmd_hdr, ptr %58, i32 %51, i32 1
  %59 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %status.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %add.i) #8
  %61 = ptrtoint ptr %cmd_slot.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cmd_slot.i, align 4
  %tbl_addr.i = getelementptr %struct.ahci_cmd_hdr, ptr %62, i32 %51, i32 2
  %63 = ptrtoint ptr %tbl_addr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %60, ptr %tbl_addr.i, align 4
  %64 = load ptr, ptr %cmd_slot.i, align 4
  %tbl_addr_hi.i = getelementptr %struct.ahci_cmd_hdr, ptr %64, i32 %51, i32 3
  %65 = ptrtoint ptr %tbl_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %tbl_addr_hi.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_qc_issue(ptr nocapture noundef readonly %qc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 256
  %mul.i.i = shl i32 %5, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %11, align 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %protocol, align 4
  %19 = and i8 %18, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.i.not = icmp eq i8 %19, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !434
  tail call void @arm_heavy_mb() #8
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %20 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_tag, align 4
  %shl = shl nuw i32 1, %21
  %22 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #8, !srcloc !435
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %fbs_enabled = getelementptr inbounds %struct.ahci_port_priv, ptr %11, i32 0, i32 11
  %23 = ptrtoint ptr %fbs_enabled to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fbs_enabled, align 1, !range !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.end.do.body22_crit_edge, label %land.lhs.true

if.end.do.body22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

land.lhs.true:                                    ; preds = %if.end
  %fbs_last_dev = getelementptr inbounds %struct.ahci_port_priv, ptr %11, i32 0, i32 12
  %25 = ptrtoint ptr %fbs_last_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fbs_last_dev, align 4
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 128
  %pmp = getelementptr inbounds %struct.ata_link, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pmp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %32)
  %cmp.not = icmp eq i32 %26, %32
  br i1 %cmp.not, label %land.lhs.true.do.body22_crit_edge, label %if.then5

land.lhs.true.do.body22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr6 = getelementptr i8, ptr %add.ptr2.i.i, i32 64
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !437
  %34 = and i32 %33, -34537473
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 128
  %pmp11 = getelementptr inbounds %struct.ata_link, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %pmp11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pmp11, align 4
  %shl12 = shl i32 %41, 8
  %or = or i32 %shl12, %35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !438
  tail call void @arm_heavy_mb() #8
  %42 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %42) #8, !srcloc !435
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 128
  %pmp19 = getelementptr inbounds %struct.ata_link, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %pmp19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pmp19, align 4
  %49 = ptrtoint ptr %fbs_last_dev to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %fbs_last_dev, align 4
  br label %do.body22

do.body22:                                        ; preds = %if.then5, %land.lhs.true.do.body22_crit_edge, %if.end.do.body22_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !439
  tail call void @arm_heavy_mb() #8
  %hw_tag25 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %50 = ptrtoint ptr %hw_tag25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hw_tag25, align 4
  %shl26 = shl nuw i32 1, %51
  %52 = tail call i32 @llvm.bswap.i32(i32 %shl26)
  %add.ptr27 = getelementptr i8, ptr %add.ptr2.i.i, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %52) #8, !srcloc !435
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 128
  %flags.i = getelementptr inbounds %struct.ata_link, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags.i, align 16
  %and.i = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body22.ahci_sw_activity.exit_crit_edge, label %if.end.i

do.body22.ahci_sw_activity.exit_crit_edge:        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_sw_activity.exit

if.end.i:                                         ; preds = %do.body22
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pmp.i, align 4
  %61 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %56, align 128
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %62, i32 0, i32 48
  %63 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %private_data.i, align 4
  %activity.i = getelementptr %struct.ahci_port_priv, ptr %64, i32 0, i32 13, i32 %60, i32 3
  %65 = ptrtoint ptr %activity.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %activity.i, align 4
  %inc.i = add i32 %66, 1
  store i32 %inc.i, ptr %activity.i, align 4
  %timer.i = getelementptr %struct.ahci_port_priv, ptr %64, i32 0, i32 13, i32 %60, i32 1
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %timer.i, i32 0, i32 1
  %67 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i.not.i, label %if.then3.i, label %if.end.i.ahci_sw_activity.exit_crit_edge

if.end.i.ahci_sw_activity.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_sw_activity.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %69, 1
  %call6.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #8
  br label %ahci_sw_activity.exit

ahci_sw_activity.exit:                            ; preds = %if.then3.i, %if.end.i.ahci_sw_activity.exit_crit_edge, %do.body22.ahci_sw_activity.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ahci_qc_fill_rtf(ptr noundef %qc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %rx_fis1 = getelementptr inbounds %struct.ahci_port_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %rx_fis1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_fis1, align 4
  %fbs_enabled = getelementptr inbounds %struct.ahci_port_priv, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %fbs_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fbs_enabled, align 1, !range !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %pmp = getelementptr inbounds %struct.ata_link, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pmp, align 4
  %mul = shl i32 %13, 8
  %add.ptr = getelementptr i8, ptr %5, i32 %mul
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_fis.0 = phi ptr [ %add.ptr, %if.then ], [ %5, %entry.if.end_crit_edge ]
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp = icmp eq i8 %15, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %dma_dir = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 11
  %16 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp3 = icmp eq i32 %17, 2
  br i1 %cmp3, label %land.lhs.true5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true5.if.else_crit_edge

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr8 = getelementptr i8, ptr %rx_fis.0, i32 32
  %result_tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 21
  tail call void @ata_tf_from_fis(ptr noundef %add.ptr8, ptr noundef %result_tf) #8
  %arrayidx = getelementptr i8, ptr %rx_fis.0, i32 47
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %command = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 21, i32 14
  %22 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %command, align 1
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %add.ptr11 = getelementptr i8, ptr %rx_fis.0, i32 64
  %result_tf12 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 21
  tail call void @ata_tf_from_fis(ptr noundef %add.ptr11, ptr noundef %result_tf12) #8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahci_dev_config(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %host = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %max_sectors = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 16
  %10 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 255, ptr %max_sectors, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 1
  %17 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devno, align 4
  %add = add i32 %18, %16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %14, i32 noundef %add) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahci_freeze(ptr nocapture noundef readonly %ap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %2 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 256
  %mul.i.i = shl i32 %3, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !440
  tail call void @arm_heavy_mb() #8
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !435
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahci_thaw(ptr nocapture noundef readonly %ap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio1, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 256
  %mul.i.i = shl i32 %7, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %private_data2 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %8 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data2, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !442
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #8, !srcloc !435
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !443
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_no.i, align 4
  %shl = shl nuw i32 1, %12
  %13 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr10 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %13) #8, !srcloc !435
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !444
  tail call void @arm_heavy_mb() #8
  %intr_mask = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 9
  %14 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %intr_mask, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %add.ptr14 = getelementptr i8, ptr %add.ptr2.i.i, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %16) #8, !srcloc !435
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_softreset(ptr noundef %link, ptr nocapture noundef writeonly %class, i32 noundef %deadline) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %flags.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %link1.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %cmp.i.i = icmp eq ptr %link1.i.i, %link
  br i1 %cmp.i.i, label %land.lhs.true.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i

land.lhs.true.i.sata_srst_pmp.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sata_srst_pmp.exit

ata_is_host_link.exit.i:                          ; preds = %land.lhs.true.i
  %slave_link.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %slave_link.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave_link.i.i, align 128
  %cmp3.i.i = icmp eq ptr %5, %link
  br i1 %cmp3.i.i, label %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i.if.end.i_crit_edge

ata_is_host_link.exit.i.if.end.i_crit_edge:       ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge: ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sata_srst_pmp.exit

if.end.i:                                         ; preds = %ata_is_host_link.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %6 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmp.i, align 4
  br label %sata_srst_pmp.exit

sata_srst_pmp.exit:                               ; preds = %if.end.i, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.end.i ], [ 15, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge ], [ 15, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge ]
  %call1 = tail call i32 @ahci_do_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %retval.0.i, i32 noundef %deadline, ptr noundef nonnull @ahci_check_ready)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_hardreset(ptr noundef %link, ptr nocapture noundef writeonly %class, i32 noundef %deadline) #0 align 64 {
entry:
  %online = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %online) #8
  %0 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %online, align 1, !annotation !445
  %call = call i32 @ahci_do_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline, ptr noundef nonnull %online)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %online) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahci_postreset(ptr noundef %link, ptr noundef %class) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 256
  %mul.i.i = shl i32 %5, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void @ata_std_postreset(ptr noundef %link, ptr noundef %class) #8
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !446
  %12 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %class, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp = icmp eq i32 %13, 3
  %and = and i32 %11, -16777217
  %masksel = select i1 %cmp, i32 16777216, i32 0
  %new_tmp.0 = or i32 %masksel, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %new_tmp.0, i32 %11)
  %cmp5.not = icmp eq i32 %new_tmp.0, %11
  br i1 %cmp5.not, label %entry.if.end14_crit_edge, label %do.body

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !447
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %new_tmp.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #8, !srcloc !435
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  br label %if.end14

if.end14:                                         ; preds = %do.body, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahci_error_handler(ptr noundef %ap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %pflags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 4
  %4 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pflags, align 16
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stop_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 26
  %6 = ptrtoint ptr %stop_engine to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stop_engine, align 4
  %call = tail call i32 %7(ptr noundef %ap) #8
  %start_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 25
  %8 = ptrtoint ptr %start_engine to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %start_engine, align 4
  tail call void %9(ptr noundef %ap) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @sata_pmp_error_handler(ptr noundef %ap) #8
  %class.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14, i32 0, i32 9
  %10 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %class.i, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.then3 [
    i32 1, label %if.end.if.end6_crit_edge
    i32 3, label %if.end.if.end6_crit_edge16
    i32 5, label %if.end.if.end6_crit_edge17
    i32 7, label %if.end.if.end6_crit_edge18
    i32 9, label %if.end.if.end6_crit_edge19
  ]

if.end.if.end6_crit_edge19:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.if.end6_crit_edge18:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.if.end6_crit_edge17:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.if.end6_crit_edge16:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %stop_engine4 = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 26
  %13 = ptrtoint ptr %stop_engine4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stop_engine4, align 4
  %call5 = tail call i32 %14(ptr noundef %ap) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge, %if.end.if.end6_crit_edge16, %if.end.if.end6_crit_edge17, %if.end.if.end6_crit_edge18, %if.end.if.end6_crit_edge19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahci_post_internal_cmd(ptr nocapture noundef readonly %qc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qc, align 4
  %call = tail call i32 @ahci_kick_engine(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_scr_read(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 256
  %mul.i.i = shl i32 %5, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sc_reg)
  %cmp.i = icmp ult i32 %sc_reg, 5
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sc_reg)
  %cmp1.not.i = icmp eq i32 %sc_reg, 4
  br i1 %cmp1.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %cap.i = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cap.i, align 4
  %and.i = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge
  %arrayidx.i = getelementptr [5 x i32], ptr @ahci_scr_offset.offset, i32 0, i32 %sc_reg
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !449
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_scr_write(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 256
  %mul.i.i = shl i32 %5, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sc_reg)
  %cmp.i = icmp ult i32 %sc_reg, 5
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sc_reg)
  %cmp1.not.i = icmp eq i32 %sc_reg, 4
  br i1 %cmp1.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.do.body_crit_edge

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %cap.i = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cap.i, align 4
  %and.i = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.do.body_crit_edge

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false.i.do.body_crit_edge, %land.lhs.true.i.do.body_crit_edge
  %arrayidx.i = getelementptr [5 x i32], ptr @ahci_scr_offset.offset, i32 0, i32 %sc_reg
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !450
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %val)
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #8, !srcloc !435
  br label %cleanup

cleanup:                                          ; preds = %do.body, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahci_pmp_attach(ptr noundef %ap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %2 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 256
  %mul.i.i = shl i32 %3, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %11 = or i32 %10, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !452
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #8, !srcloc !435
  tail call fastcc void @ahci_enable_fbs(ptr noundef %ap)
  %intr_mask = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 9
  %12 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr_mask, align 4
  %or4 = or i32 %13, 8388608
  store i32 %or4, ptr %intr_mask, align 4
  %pflags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 4
  %14 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pflags, align 16
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body5, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %intr_mask, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %add.ptr9 = getelementptr i8, ptr %add.ptr2.i.i, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %18) #8, !srcloc !435
  br label %if.end

if.end:                                           ; preds = %do.body5, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahci_pmp_detach(ptr noundef %ap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %2 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 256
  %mul.i.i = shl i32 %3, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  tail call fastcc void @ahci_disable_fbs(ptr noundef %ap)
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  %11 = and i32 %10, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !455
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #8, !srcloc !435
  %intr_mask = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 9
  %12 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr_mask, align 4
  %and4 = and i32 %13, -8388609
  store i32 %and4, ptr %intr_mask, align 4
  %pflags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 4
  %14 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pflags, align 16
  %and5 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %do.body6, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !456
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %intr_mask, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %add.ptr10 = getelementptr i8, ptr %add.ptr2.i.i, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %18) #8, !srcloc !435
  br label %if.end

if.end:                                           ; preds = %do.body6, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_set_lpm(ptr noundef %link, i32 noundef %policy, i32 noundef %hints) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %private_data2 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %6 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data2, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 256
  %mul.i.i = shl i32 %9, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %policy)
  %cmp.not = icmp eq i32 %policy, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %hints, -5
  %intr_mask = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 9
  %12 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr_mask, align 4
  %and3 = and i32 %13, -4194305
  store i32 %and3, ptr %intr_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !457
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %intr_mask, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #8, !srcloc !435
  %call5 = tail call i32 @sata_link_scr_lpm(ptr noundef %link, i32 noundef %policy, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hints.addr.0 = phi i32 [ %and, %if.then ], [ %hints, %entry.if.end_crit_edge ]
  %cap = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cap, align 4
  %and6 = and i32 %18, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end.if.end49_crit_edge, label %if.then7

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then7:                                         ; preds = %if.end
  %add.ptr8 = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !436
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !458
  %and12 = and i32 %hints.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond = or i1 %cmp.not, %tobool13.not
  br i1 %or.cond, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then7
  %and15 = and i32 %hints.addr.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %and18 = and i32 %20, -469762049
  %spec.select = select i1 %tobool16.not, i32 %and18, i32 %20
  %or = or i32 %spec.select, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !459
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %21) #8, !srcloc !435
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !460
  tail call void @ata_msleep(ptr noundef %1, i32 noundef 10) #8
  br i1 %tobool16.not, label %if.then14.if.end49_crit_edge, label %if.then14.cleanup77_crit_edge

if.then14.cleanup77_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

if.then14.if.end49_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.else:                                          ; preds = %if.then7
  %or34 = or i32 %20, 67108864
  %23 = zext i32 %policy to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %policy, label %if.else.do.body44_crit_edge [
    i32 5, label %if.then36
    i32 4, label %if.then40
  ]

if.else.do.body44_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %or37 = or i32 %20, 201326592
  br label %do.body44

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and41 = and i32 %or34, -134217729
  br label %do.body44

do.body44:                                        ; preds = %if.then40, %if.then36, %if.else.do.body44_crit_edge
  %cmd.1 = phi i32 [ %or37, %if.then36 ], [ %and41, %if.then40 ], [ %or34, %if.else.do.body44_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !461
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %cmd.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %24) #8, !srcloc !435
  br label %if.end49

if.end49:                                         ; preds = %do.body44, %if.then14.if.end49_crit_edge, %if.end.if.end49_crit_edge
  %cap2 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 5
  %25 = ptrtoint ptr %cap2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cap2, align 4
  %27 = and i32 %26, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %27)
  %.not = icmp eq i32 %27, 24
  br i1 %.not, label %land.lhs.true55, label %if.end49.if.end65_crit_edge

if.end49.if.end65_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

land.lhs.true55:                                  ; preds = %if.end49
  %flags = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14, i32 0, i32 3
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and56 = and i32 %29, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %land.lhs.true55.if.end65_crit_edge, label %if.then58

land.lhs.true55.if.end65_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then58:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  %30 = and i32 %policy, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %switch = icmp eq i32 %30, 4
  tail call fastcc void @ahci_set_aggressive_devslp(ptr noundef %1, i1 noundef zeroext %switch)
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %land.lhs.true55.if.end65_crit_edge, %if.end49.if.end65_crit_edge
  br i1 %cmp.not, label %if.then67, label %if.end65.cleanup77_crit_edge

if.end65.cleanup77_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %call68 = tail call i32 @sata_link_scr_lpm(ptr noundef %link, i32 noundef 1, i1 noundef zeroext false) #8
  %intr_mask69 = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 9
  %31 = ptrtoint ptr %intr_mask69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %intr_mask69, align 4
  %or70 = or i32 %32, 4194304
  store i32 %or70, ptr %intr_mask69, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %intr_mask69 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %intr_mask69, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %add.ptr75 = getelementptr i8, ptr %add.ptr2.i.i, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %35) #8, !srcloc !435
  br label %cleanup77

cleanup77:                                        ; preds = %if.then67, %if.end65.cleanup77_crit_edge, %if.then14.cleanup77_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_port_suspend(ptr noundef %ap, [1 x i32] %mesg.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %stop_engine.i = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %stop_engine.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_engine.i, align 4
  %call.i = tail call i32 %5(ptr noundef %ap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host.i, align 4
  %port_no.i.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i.i.i, align 4
  %private_data.i.i.i.i = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %private_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i.i.i.i, align 4
  %mmio1.i.i.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %mmio1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio1.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 256
  %mul.i.i.i.i = shl i32 %9, 7
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i.i.i.i, i32 24
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  %15 = and i32 %14, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !464
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #8, !srcloc !435
  %call6.i.i = tail call i32 @ata_wait_register(ptr noundef %ap, ptr noundef %add.ptr.i.i, i32 noundef 16384, i32 noundef 16384, i32 noundef 10, i32 noundef 1000) #8
  %and7.i.i = and i32 %call6.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool.not.i.i, label %if.then, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %if.end.i
  %16 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host.i, align 4
  %private_data.i15 = getelementptr inbounds %struct.ata_host, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %private_data.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data.i15, align 4
  %cap.i = getelementptr inbounds %struct.ahci_host_priv, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cap.i, align 4
  %and.i = and i32 %21, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i16 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i16, label %if.then.if.end_crit_edge, label %if.end.i17

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i17:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %mmio1.i.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %mmio1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 256
  %24 = ptrtoint ptr %port_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_no.i.i.i, align 4
  %mul.i.i.i = shl i32 %25, 7
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 44
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !465
  %27 = and i32 %26, -251658241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !466
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %27) #8, !srcloc !435
  %add.ptr7.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !467
  %29 = and i32 %28, -33554673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !468
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %29) #8, !srcloc !435
  br label %if.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %.str.145.sink.i = phi ptr [ @.str.144, %entry.do.end_crit_edge ], [ @.str.145, %if.end.i.do.end_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ -16, %if.end.i.do.end_crit_edge ]
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %30 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %print_id, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, i32 noundef %31, ptr noundef nonnull %.str.145.sink.i, i32 noundef %retval.0.ph.i) #11
  %call2 = tail call i32 @ata_port_freeze(ptr noundef %ap) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end.i17, %if.then.if.end_crit_edge
  %retval.0.i21 = phi i32 [ %retval.0.ph.i, %do.end ], [ 0, %if.then.if.end_crit_edge ], [ 0, %if.end.i17 ]
  %dev.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 32
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %33, i32 noundef 5) #8
  ret i32 %retval.0.i21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_port_resume(ptr noundef %ap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 32
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i.i, align 4
  %mmio1.i.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %mmio1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 256
  %mul.i.i.i = shl i32 %7, 7
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !469
  %11 = and i32 %10, -241
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %cap.i = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cap.i, align 4
  %and3.i = and i32 %14, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %entry.ahci_power_up.exit_crit_edge, label %if.then.i

entry.ahci_power_up.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_power_up.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %12, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !470
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #8, !srcloc !435
  br label %ahci_power_up.exit

ahci_power_up.exit:                               ; preds = %if.then.i, %entry.ahci_power_up.exit_crit_edge
  %cmd.0.i = phi i32 [ %or.i, %if.then.i ], [ %12, %entry.ahci_power_up.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !471
  tail call void @arm_heavy_mb() #8
  %or8.i = or i32 %cmd.0.i, 268435456
  %16 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #8, !srcloc !435
  %17 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host.i, align 4
  %private_data.i8 = getelementptr inbounds %struct.ata_host, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %private_data.i8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data.i8, align 4
  %private_data1.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %21 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data1.i, align 4
  tail call void @ahci_start_fis_rx(ptr noundef %ap) #8
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 4
  %and.i = and i32 %24, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i9 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i9, label %if.then.i10, label %ahci_power_up.exit.if.end.i_crit_edge

ahci_power_up.exit.if.end.i_crit_edge:            ; preds = %ahci_power_up.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i10:                                      ; preds = %ahci_power_up.exit
  call void @__sanitizer_cov_trace_pc() #10
  %start_engine.i = getelementptr inbounds %struct.ahci_host_priv, ptr %20, i32 0, i32 25
  %25 = ptrtoint ptr %start_engine.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %start_engine.i, align 4
  tail call void %26(ptr noundef %ap) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i10, %ahci_power_up.exit.if.end.i_crit_edge
  %flags2.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 3
  %27 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags2.i, align 4
  %and3.i11 = and i32 %28, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i11)
  %tobool4.not.i = icmp eq i32 %and3.i11, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end16.i_crit_edge, label %if.then5.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then5.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %ap, i32 noundef 0) #8
  %tobool6.not48.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not48.i, label %if.then5.i.if.end16.i_crit_edge, label %for.body.lr.ph.i

if.then5.i.if.end16.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

for.body.lr.ph.i:                                 ; preds = %if.then5.i
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc13.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %link.049.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call14.i, %for.inc13.i.for.body.i_crit_edge ]
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link.049.i, i32 0, i32 1
  %29 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pmp.i, align 4
  %led_state.i = getelementptr %struct.ahci_port_priv, ptr %22, i32 0, i32 13, i32 %30, i32 4
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %transmit_led_message.i = getelementptr inbounds %struct.ata_port_operations, ptr %32, i32 0, i32 57
  %33 = ptrtoint ptr %transmit_led_message.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %transmit_led_message.i, align 4
  %35 = ptrtoint ptr %led_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %led_state.i, align 4
  %call9.i = tail call i32 %34(ptr noundef %ap, i32 noundef %36, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call9.i)
  %cmp10.i = icmp eq i32 %call9.i, -16
  br i1 %cmp10.i, label %if.then11.i, label %for.body.i.for.inc13.i_crit_edge

for.body.i.for.inc13.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.i

if.then11.i:                                      ; preds = %for.body.i
  tail call void @msleep(i32 noundef 1) #8
  %37 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i, align 4
  %transmit_led_message.1.i = getelementptr inbounds %struct.ata_port_operations, ptr %38, i32 0, i32 57
  %39 = ptrtoint ptr %transmit_led_message.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %transmit_led_message.1.i, align 4
  %41 = ptrtoint ptr %led_state.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %led_state.i, align 4
  %call9.1.i = tail call i32 %40(ptr noundef %ap, i32 noundef %42, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call9.1.i)
  %cmp10.1.i = icmp eq i32 %call9.1.i, -16
  br i1 %cmp10.1.i, label %if.then11.1.i, label %if.then11.i.for.inc13.i_crit_edge

if.then11.i.for.inc13.i_crit_edge:                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.i

if.then11.1.i:                                    ; preds = %if.then11.i
  tail call void @msleep(i32 noundef 1) #8
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 4
  %transmit_led_message.2.i = getelementptr inbounds %struct.ata_port_operations, ptr %44, i32 0, i32 57
  %45 = ptrtoint ptr %transmit_led_message.2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %transmit_led_message.2.i, align 4
  %47 = ptrtoint ptr %led_state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %led_state.i, align 4
  %call9.2.i = tail call i32 %46(ptr noundef %ap, i32 noundef %48, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call9.2.i)
  %cmp10.2.i = icmp eq i32 %call9.2.i, -16
  br i1 %cmp10.2.i, label %if.then11.2.i, label %if.then11.1.i.for.inc13.i_crit_edge

if.then11.1.i.for.inc13.i_crit_edge:              ; preds = %if.then11.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.i

if.then11.2.i:                                    ; preds = %if.then11.1.i
  tail call void @msleep(i32 noundef 1) #8
  %49 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i, align 4
  %transmit_led_message.3.i = getelementptr inbounds %struct.ata_port_operations, ptr %50, i32 0, i32 57
  %51 = ptrtoint ptr %transmit_led_message.3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %transmit_led_message.3.i, align 4
  %53 = ptrtoint ptr %led_state.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %led_state.i, align 4
  %call9.3.i = tail call i32 %52(ptr noundef %ap, i32 noundef %54, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call9.3.i)
  %cmp10.3.i = icmp eq i32 %call9.3.i, -16
  br i1 %cmp10.3.i, label %if.then11.3.i, label %if.then11.2.i.for.inc13.i_crit_edge

if.then11.2.i.for.inc13.i_crit_edge:              ; preds = %if.then11.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.i

if.then11.3.i:                                    ; preds = %if.then11.2.i
  tail call void @msleep(i32 noundef 1) #8
  %55 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i, align 4
  %transmit_led_message.4.i = getelementptr inbounds %struct.ata_port_operations, ptr %56, i32 0, i32 57
  %57 = ptrtoint ptr %transmit_led_message.4.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %transmit_led_message.4.i, align 4
  %59 = ptrtoint ptr %led_state.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %led_state.i, align 4
  %call9.4.i = tail call i32 %58(ptr noundef %ap, i32 noundef %60, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call9.4.i)
  %cmp10.4.i = icmp eq i32 %call9.4.i, -16
  br i1 %cmp10.4.i, label %if.then11.4.i, label %if.then11.3.i.for.inc13.i_crit_edge

if.then11.3.i.for.inc13.i_crit_edge:              ; preds = %if.then11.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.i

if.then11.4.i:                                    ; preds = %if.then11.3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 1) #8
  br label %for.inc13.i

for.inc13.i:                                      ; preds = %if.then11.4.i, %if.then11.3.i.for.inc13.i_crit_edge, %if.then11.2.i.for.inc13.i_crit_edge, %if.then11.1.i.for.inc13.i_crit_edge, %if.then11.i.for.inc13.i_crit_edge, %for.body.i.for.inc13.i_crit_edge
  %call14.i = tail call ptr @ata_link_next(ptr noundef nonnull %link.049.i, ptr noundef %ap, i32 noundef 0) #8
  %tobool6.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool6.not.i, label %for.inc13.i.if.end16.i_crit_edge, label %for.inc13.i.for.body.i_crit_edge

for.inc13.i.for.body.i_crit_edge:                 ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc13.i.if.end16.i_crit_edge:                 ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %for.inc13.i.if.end16.i_crit_edge, %if.then5.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %61 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags2.i, align 4
  %and18.i = and i32 %62, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.ahci_start_port.exit_crit_edge, label %if.then20.i

if.end16.i.ahci_start_port.exit_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_start_port.exit

if.then20.i:                                      ; preds = %if.end16.i
  %call21.i = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %ap, i32 noundef 0) #8
  %tobool23.not50.i = icmp eq ptr %call21.i, null
  br i1 %tobool23.not50.i, label %if.then20.i.ahci_start_port.exit_crit_edge, label %if.then20.i.for.body24.i_crit_edge

if.then20.i.for.body24.i_crit_edge:               ; preds = %if.then20.i
  br label %for.body24.i

if.then20.i.ahci_start_port.exit_crit_edge:       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_start_port.exit

for.body24.i:                                     ; preds = %ahci_init_sw_activity.exit.i.for.body24.i_crit_edge, %if.then20.i.for.body24.i_crit_edge
  %link.151.i = phi ptr [ %call26.i, %ahci_init_sw_activity.exit.i.for.body24.i_crit_edge ], [ %call21.i, %if.then20.i.for.body24.i_crit_edge ]
  %63 = ptrtoint ptr %link.151.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %link.151.i, align 128
  %private_data.i.i = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 48
  %65 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %private_data.i.i, align 4
  %pmp.i.i = getelementptr inbounds %struct.ata_link, ptr %link.151.i, i32 0, i32 1
  %67 = ptrtoint ptr %pmp.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pmp.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ahci_port_priv, ptr %66, i32 0, i32 13, i32 %68
  %activity.i.i = getelementptr %struct.ahci_port_priv, ptr %66, i32 0, i32 13, i32 %68, i32 3
  %69 = ptrtoint ptr %activity.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %activity.i.i, align 4
  %saved_activity.i.i = getelementptr %struct.ahci_port_priv, ptr %66, i32 0, i32 13, i32 %68, i32 2
  %70 = ptrtoint ptr %saved_activity.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %saved_activity.i.i, align 4
  %link2.i.i = getelementptr %struct.ahci_port_priv, ptr %66, i32 0, i32 13, i32 %68, i32 5
  %71 = ptrtoint ptr %link2.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %link.151.i, ptr %link2.i.i, align 4
  %timer.i.i = getelementptr %struct.ahci_port_priv, ptr %66, i32 0, i32 13, i32 %68, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @ahci_sw_activity_blink, i32 noundef 0, ptr noundef nonnull @.str.173, ptr noundef nonnull @ahci_init_sw_activity.__key) #8
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i.i, label %for.body24.i.ahci_init_sw_activity.exit.i_crit_edge, label %if.then.i.i

for.body24.i.ahci_init_sw_activity.exit.i_crit_edge: ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_init_sw_activity.exit.i

if.then.i.i:                                      ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i.i = getelementptr inbounds %struct.ata_link, ptr %link.151.i, i32 0, i32 5
  %74 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i.i, align 16
  %or.i.i = or i32 %75, 128
  store i32 %or.i.i, ptr %flags.i.i, align 16
  br label %ahci_init_sw_activity.exit.i

ahci_init_sw_activity.exit.i:                     ; preds = %if.then.i.i, %for.body24.i.ahci_init_sw_activity.exit.i_crit_edge
  %call26.i = tail call ptr @ata_link_next(ptr noundef nonnull %link.151.i, ptr noundef %ap, i32 noundef 0) #8
  %tobool23.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool23.not.i, label %ahci_init_sw_activity.exit.i.ahci_start_port.exit_crit_edge, label %ahci_init_sw_activity.exit.i.for.body24.i_crit_edge

ahci_init_sw_activity.exit.i.for.body24.i_crit_edge: ; preds = %ahci_init_sw_activity.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24.i

ahci_init_sw_activity.exit.i.ahci_start_port.exit_crit_edge: ; preds = %ahci_init_sw_activity.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_start_port.exit

ahci_start_port.exit:                             ; preds = %ahci_init_sw_activity.exit.i.ahci_start_port.exit_crit_edge, %if.then20.i.ahci_start_port.exit_crit_edge, %if.end16.i.ahci_start_port.exit_crit_edge
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 27
  %76 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.i.not = icmp eq i32 %77, 0
  %78 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %host.i, align 4
  %80 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port_no.i.i, align 4
  %private_data.i.i.i24 = getelementptr inbounds %struct.ata_host, ptr %79, i32 0, i32 5
  %82 = ptrtoint ptr %private_data.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %private_data.i.i.i24, align 4
  %mmio1.i.i.i25 = getelementptr inbounds %struct.ahci_host_priv, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %mmio1.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio1.i.i.i25, align 4
  %add.ptr.i.i.i26 = getelementptr i8, ptr %85, i32 256
  %mul.i.i.i27 = shl i32 %81, 7
  %add.ptr2.i.i.i28 = getelementptr i8, ptr %add.ptr.i.i.i26, i32 %mul.i.i.i27
  %86 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %private_data1.i, align 4
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %ahci_start_port.exit
  %add.ptr.i18 = getelementptr i8, ptr %add.ptr2.i.i.i28, i32 24
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %89 = or i32 %88, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !452
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %89) #8, !srcloc !435
  tail call fastcc void @ahci_enable_fbs(ptr noundef %ap) #8
  %intr_mask.i = getelementptr inbounds %struct.ahci_port_priv, ptr %87, i32 0, i32 9
  %90 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %intr_mask.i, align 4
  %or4.i = or i32 %91, 8388608
  store i32 %or4.i, ptr %intr_mask.i, align 4
  %pflags.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 4
  %92 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pflags.i, align 16
  %and.i19 = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19)
  %tobool.not.i20 = icmp eq i32 %and.i19, 0
  br i1 %tobool.not.i20, label %do.body5.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  tail call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %intr_mask.i, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #8
  %add.ptr9.i = getelementptr i8, ptr %add.ptr2.i.i.i28, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %96) #8, !srcloc !435
  br label %if.end

if.else:                                          ; preds = %ahci_start_port.exit
  tail call fastcc void @ahci_disable_fbs(ptr noundef %ap) #8
  %add.ptr.i30 = getelementptr i8, ptr %add.ptr2.i.i.i28, i32 24
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  %98 = and i32 %97, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !455
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %98) #8, !srcloc !435
  %intr_mask.i31 = getelementptr inbounds %struct.ahci_port_priv, ptr %87, i32 0, i32 9
  %99 = ptrtoint ptr %intr_mask.i31 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %intr_mask.i31, align 4
  %and4.i = and i32 %100, -8388609
  store i32 %and4.i, ptr %intr_mask.i31, align 4
  %pflags.i32 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 4
  %101 = ptrtoint ptr %pflags.i32 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pflags.i32, align 16
  %and5.i = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i33 = icmp eq i32 %and5.i, 0
  br i1 %tobool.not.i33, label %do.body6.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body6.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !456
  tail call void @arm_heavy_mb() #8
  %103 = ptrtoint ptr %intr_mask.i31 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %intr_mask.i31, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #8
  %add.ptr10.i = getelementptr i8, ptr %add.ptr2.i.i.i28, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %105) #8, !srcloc !435
  br label %if.end

if.end:                                           ; preds = %do.body6.i, %if.else.if.end_crit_edge, %do.body5.i, %if.then.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_port_start(ptr noundef %ap) #0 align 64 {
entry:
  %mem_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev2 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_dma) #8
  %6 = ptrtoint ptr %mem_dma to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mem_dma, align 4, !annotation !445
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 636, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp ugt i32 %10, 1
  br i1 %cmp, label %if.then4, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then4:                                         ; preds = %if.end
  %call.i109 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 8, i32 noundef 3520) #8
  %irq_desc = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 14
  %11 = ptrtoint ptr %irq_desc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i109, ptr %irq_desc, align 4
  %tobool7.not = icmp eq ptr %call.i109, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @devm_kfree(ptr noundef %5, ptr noundef nonnull %call.i) #8
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call ptr @dev_driver_string(ptr noundef %5) #8
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %12 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i109, i32 noundef 8, ptr noundef nonnull @.str.176, ptr noundef %call11, i32 noundef %13)
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %if.end.if.end13_crit_edge
  %cap = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cap, align 4
  %and = and i32 %15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end13.if.end35_crit_edge, label %land.lhs.true

if.end13.if.end35_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end13
  %flags.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 3
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end35_crit_edge, label %if.then16

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then16:                                        ; preds = %land.lhs.true
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %20 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %19, i32 0, i32 5
  %22 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 256
  %mul.i.i = shl i32 %21, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !472
  %27 = and i32 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool21.not = icmp eq i32 %27, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %fbs_supported = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 10
  %28 = ptrtoint ptr %fbs_supported to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %fbs_supported, align 4
  br label %if.end35

if.else:                                          ; preds = %if.then16
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 4
  %and23 = and i32 %30, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %31 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port_no.i, align 4
  br i1 %tobool24.not, label %do.end31, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.177, i32 noundef %32) #11
  %fbs_supported27 = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 10
  %33 = ptrtoint ptr %fbs_supported27 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %fbs_supported27, align 4
  br label %if.end35

do.end31:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.180, i32 noundef %32) #11
  br label %if.end35

if.end35:                                         ; preds = %do.end31, %do.end, %if.then22, %land.lhs.true.if.end35_crit_edge, %if.end13.if.end35_crit_edge
  %fbs_supported36 = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 10
  %34 = ptrtoint ptr %fbs_supported36 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fbs_supported36, align 4, !range !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool37.not = icmp eq i8 %35, 0
  %.108 = select i1 %tobool37.not, i32 91392, i32 95232
  %call.i110 = call ptr @dmam_alloc_attrs(ptr noundef %5, i32 noundef %.108, ptr noundef nonnull %mem_dma, i32 noundef 3264, i32 noundef 0) #8
  %tobool42.not = icmp eq ptr %call.i110, null
  br i1 %tobool42.not, label %if.end35.cleanup_crit_edge, label %if.end44

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %if.end35
  %. = select i1 %tobool37.not, i32 256, i32 4096
  %cmd_slot = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %cmd_slot to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i110, ptr %cmd_slot, align 4
  %37 = ptrtoint ptr %mem_dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mem_dma, align 4
  %cmd_slot_dma = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 2
  %39 = ptrtoint ptr %cmd_slot_dma to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %cmd_slot_dma, align 4
  %add.ptr45 = getelementptr i8, ptr %call.i110, i32 1024
  %add = add i32 %38, 1024
  %rx_fis = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 5
  %40 = ptrtoint ptr %rx_fis to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr45, ptr %rx_fis, align 4
  %rx_fis_dma = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 6
  %41 = ptrtoint ptr %rx_fis_dma to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add, ptr %rx_fis_dma, align 4
  %add.ptr46 = getelementptr i8, ptr %add.ptr45, i32 %.
  %add47 = add i32 %add, %.
  store i32 %add47, ptr %mem_dma, align 4
  %cmd_tbl = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 3
  %42 = ptrtoint ptr %cmd_tbl to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr46, ptr %cmd_tbl, align 4
  %cmd_tbl_dma = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 4
  %43 = ptrtoint ptr %cmd_tbl_dma to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add47, ptr %cmd_tbl_dma, align 4
  %intr_mask = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 9
  %44 = ptrtoint ptr %intr_mask to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2025848959, ptr %intr_mask, align 4
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %3, align 4
  %and49 = and i32 %46, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end44.if.end58_crit_edge, label %do.body52

if.end44.if.end58_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

do.body52:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 8
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.182, ptr noundef nonnull @ahci_port_start.__key, i16 noundef signext 3) #8
  %lock57 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 2
  %47 = ptrtoint ptr %lock57 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %lock, ptr %lock57, align 8
  br label %if.end58

if.end58:                                         ; preds = %do.body52, %if.end44.if.end58_crit_edge
  %private_data59 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %48 = ptrtoint ptr %private_data59 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %private_data59, align 4
  %call60 = call i32 @ahci_port_resume(ptr noundef %ap)
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end35.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end58 ], [ -12, %if.then8 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_dma) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahci_port_stop(ptr noundef %ap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mmio = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %stop_engine.i = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 26
  %6 = ptrtoint ptr %stop_engine.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stop_engine.i, align 4
  %call.i = tail call i32 %7(ptr noundef %ap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %port_no.i.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %10 = ptrtoint ptr %port_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no.i.i.i, align 4
  %private_data.i.i.i.i = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %private_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i.i.i.i, align 4
  %mmio1.i.i.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %mmio1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio1.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %15, i32 256
  %mul.i.i.i.i = shl i32 %11, 7
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i.i.i.i, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  %17 = and i32 %16, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !464
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %17) #8, !srcloc !435
  %call6.i.i = tail call i32 @ata_wait_register(ptr noundef %ap, ptr noundef %add.ptr.i.i, i32 noundef 16384, i32 noundef 16384, i32 noundef 10, i32 noundef 1000) #8
  %and7.i.i = and i32 %call6.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.do.body2_crit_edge, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i.do.body2_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %.str.145.sink.i = phi ptr [ @.str.144, %entry.do.end_crit_edge ], [ @.str.145, %if.end.i.do.end_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ -16, %if.end.i.do.end_crit_edge ]
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %18 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %print_id, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, i32 noundef %19, ptr noundef nonnull %.str.145.sink.i, i32 noundef %retval.0.ph.i) #11
  br label %do.body2

do.body2:                                         ; preds = %do.end, %if.end.i.do.body2_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !473
  tail call void @arm_heavy_mb() #8
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %20 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port_no, align 4
  %shl = shl nuw i32 1, %21
  %22 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #8, !srcloc !435
  %dev.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 32
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %24, i32 noundef 5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_led_show(ptr noundef %ap, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %ap, i32 noundef 0) #8
  %tobool.not8 = icmp eq ptr %call, null
  br i1 %tobool.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %rc.010 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %link.09 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link.09, i32 0, i32 1
  %2 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pmp, align 4
  %led_state = getelementptr %struct.ahci_port_priv, ptr %1, i32 0, i32 13, i32 %3, i32 4
  %4 = ptrtoint ptr %led_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %led_state, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.138, i32 noundef %5)
  %add = add i32 %call1, %rc.010
  %call2 = tail call ptr @ata_link_next(ptr noundef nonnull %link.09, ptr noundef %ap, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rc.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  ret i32 %rc.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_led_store(ptr noundef %ap, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !445
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %and = lshr i32 %4, 8
  %shr = and i32 %and, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr)
  %cmp1 = icmp ult i32 %shr, 8
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %5 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %shr, i32 8) #8, !srcloc !474
  %and7 = and i32 %5, %shr
  %arrayidx = getelementptr %struct.ahci_port_priv, ptr %2, i32 0, i32 13, i32 %and7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then2.if.end11_crit_edge, label %if.then9

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %and10 = and i32 %9, -458753
  store i32 %and10, ptr %state, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then2.if.end11_crit_edge
  %ops = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %transmit_led_message = getelementptr inbounds %struct.ata_port_operations, ptr %11, i32 0, i32 57
  %12 = ptrtoint ptr %transmit_led_message to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transmit_led_message, align 4
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  %call12 = call i32 %13(ptr noundef %ap, i32 noundef %15, i32 noundef %size) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_activity_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %private_data = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmp, align 4
  %arrayidx = getelementptr %struct.ahci_port_priv, ptr %5, i32 0, i32 13, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.139, i32 noundef %9)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_activity_store(ptr nocapture noundef readonly %dev, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %private_data = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmp, align 4
  %led_state = getelementptr %struct.ahci_port_priv, ptr %5, i32 0, i32 13, i32 %7, i32 4
  %8 = ptrtoint ptr %led_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %led_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp eq i32 %val, 0
  %flags = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %11, -129
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %flags, align 16
  %and3 = and i32 %9, -524288
  %port_no = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_no, align 4
  %shl = shl i32 %7, 8
  %or = or i32 %and3, %shl
  %or5 = or i32 %or, %14
  br label %if.end20.sink.split

if.else:                                          ; preds = %entry
  %or7 = or i32 %11, 128
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or7, ptr %flags, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %cmp8 = icmp eq i32 %val, 2
  br i1 %cmp8, label %if.then9, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and10 = and i32 %9, -524288
  %port_no11 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %port_no11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_no11, align 4
  %shl13 = shl i32 %7, 8
  %or14 = or i32 %shl13, %and10
  %or15 = or i32 %or14, %17
  %or16 = or i32 %or15, 65536
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.then9, %if.then
  %or16.sink = phi i32 [ %or16, %if.then9 ], [ %or5, %if.then ]
  %ops17 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %ops17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops17, align 4
  %transmit_led_message18 = getelementptr inbounds %struct.ata_port_operations, ptr %19, i32 0, i32 57
  %20 = ptrtoint ptr %transmit_led_message18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transmit_led_message18, align 4
  %call19 = tail call i32 %21(ptr noundef %3, i32 noundef %or16.sink, i32 noundef 4) #8
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else.if.end20_crit_edge
  %arrayidx = getelementptr %struct.ahci_port_priv, ptr %5, i32 0, i32 13, i32 %7
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %val, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_transmit_led_message(ptr nocapture noundef readonly %ap, i32 noundef %state, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mmio2 = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mmio2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio2, align 4
  %and = lshr i32 %state, 8
  %shr = and i32 %and, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr)
  %cmp = icmp ult i32 %shr, 8
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %private_data1 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %6 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data1, align 4
  %dev.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 32
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #8
  %lock = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 2
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #8
  %add.ptr = getelementptr i8, ptr %5, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !475
  %and12 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.end15, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.then
  %em_msg_type = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 13
  %14 = ptrtoint ptr %em_msg_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %em_msg_type, align 4
  %and16 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end40_crit_edge, label %if.then18

if.end15.if.end40_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %and20 = and i32 %state, -16
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %16 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_no, align 4
  %or21 = or i32 %17, %and20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !476
  tail call void @arm_heavy_mb() #8
  %em_loc = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %em_loc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %em_loc, align 4
  %add.ptr27 = getelementptr i8, ptr %5, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 262144) #8, !srcloc !435
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !477
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %21 = ptrtoint ptr %em_loc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %em_loc, align 4
  %add.ptr33 = getelementptr i8, ptr %5, i32 %22
  %add.ptr34 = getelementptr i8, ptr %add.ptr33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %20) #8, !srcloc !435
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !478
  tail call void @arm_heavy_mb() #8
  %or38 = or i32 %13, 256
  %23 = tail call i32 @llvm.bswap.i32(i32 %or38)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #8, !srcloc !435
  br label %if.end40

if.end40:                                         ; preds = %if.then18, %if.end15.if.end40_crit_edge
  %led_state = getelementptr %struct.ahci_port_priv, ptr %7, i32 0, i32 13, i32 %shr, i32 4
  %24 = ptrtoint ptr %led_state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %state, ptr %led_state, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end40, %if.then.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %size, %if.end40 ], [ -16, %if.then.cleanup.sink.split_crit_edge ]
  %25 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %call6) #8
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 32
  %call.i.i73 = tail call i32 @__pm_runtime_idle(ptr noundef %28, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_pmp_retry_softreset(ptr noundef %link, ptr nocapture noundef writeonly %class, i32 noundef %deadline) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 256
  %mul.i.i = shl i32 %5, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %flags.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %11, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %link1.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %cmp.i.i = icmp eq ptr %link1.i.i, %link
  br i1 %cmp.i.i, label %land.lhs.true.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i

land.lhs.true.i.sata_srst_pmp.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sata_srst_pmp.exit

ata_is_host_link.exit.i:                          ; preds = %land.lhs.true.i
  %slave_link.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %slave_link.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slave_link.i.i, align 128
  %cmp3.i.i = icmp eq ptr %13, %link
  br i1 %cmp3.i.i, label %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i.if.end.i_crit_edge

ata_is_host_link.exit.i.if.end.i_crit_edge:       ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge: ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sata_srst_pmp.exit

if.end.i:                                         ; preds = %ata_is_host_link.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %14 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pmp.i, align 4
  br label %sata_srst_pmp.exit

sata_srst_pmp.exit:                               ; preds = %if.end.i, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge
  %retval.0.i = phi i32 [ %15, %if.end.i ], [ 15, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge ], [ 15, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge ]
  %call3 = tail call i32 @ahci_do_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %retval.0.i, i32 noundef %deadline, ptr noundef nonnull @ahci_bad_pmp_check_ready)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call3)
  %cmp = icmp eq i32 %call3, -5
  br i1 %cmp, label %if.then, label %sata_srst_pmp.exit.if.end28_crit_edge

sata_srst_pmp.exit.if.end28_crit_edge:            ; preds = %sata_srst_pmp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then:                                          ; preds = %sata_srst_pmp.exit
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !479
  %17 = and i32 %16, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.then.if.end28_crit_edge, label %do.body

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.body:                                          ; preds = %if.then
  %18 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link, align 128
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.not = icmp eq i32 %21, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 26
  %22 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slave_link, align 128
  %tobool10.not = icmp eq ptr %23, null
  br i1 %tobool10.not, label %do.end19, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  %print_id = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 5
  %24 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %print_id, align 4
  %pmp15 = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %26 = ptrtoint ptr %pmp15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pmp15, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %25, i32 noundef %27) #11
  br label %do.end25

do.end19:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %print_id22 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 5
  %28 = ptrtoint ptr %print_id22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %print_id22, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, i32 noundef %29) #11
  br label %do.end25

do.end25:                                         ; preds = %do.end19, %do.end
  %call26 = tail call i32 @ahci_do_softreset(ptr noundef %link, ptr noundef %class, i32 noundef 0, i32 noundef %deadline, ptr noundef nonnull @ahci_check_ready)
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %if.then.if.end28_crit_edge, %sata_srst_pmp.exit.if.end28_crit_edge
  %rc.0 = phi i32 [ %call26, %do.end25 ], [ -5, %if.then.if.end28_crit_edge ], [ %call3, %sata_srst_pmp.exit.if.end28_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahci_save_initial_config(ptr noundef %dev, ptr noundef %hpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 3
  %0 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio1, align 4
  tail call fastcc void @ahci_enable_ahci(ptr noundef %1)
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !436
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !480
  %saved_cap = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 8
  %4 = ptrtoint ptr %saved_cap to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %saved_cap, align 4
  %add.ptr5 = getelementptr i8, ptr %1, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !436
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !481
  %saved_port_map = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 10
  %7 = ptrtoint ptr %saved_port_map to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %saved_port_map, align 4
  %add.ptr11 = getelementptr i8, ptr %1, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !436
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !482
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %9)
  %cmp = icmp ugt i32 %9, 131071
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %shr.mask = and i32 %9, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shr.mask)
  %cmp16 = icmp ne i32 %shr.mask, 65536
  %and = and i32 %9, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp17.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp16, %cmp17.not
  br i1 %or.cond, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %add.ptr20 = getelementptr i8, ptr %1, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8, !srcloc !436
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !483
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %.sink = phi i32 [ %11, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  %saved_cap224 = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 9
  %12 = ptrtoint ptr %saved_cap224 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %saved_cap224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %if.end.if.end31_crit_edge, label %land.lhs.true26

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true26:                                  ; preds = %if.end
  %13 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hpriv, align 4
  %and27 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %land.lhs.true26.if.end31_crit_edge, label %do.end

land.lhs.true26.if.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end:                                           ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str) #11
  %and30 = and i32 %3, 2147483647
  br label %if.end31

if.end31:                                         ; preds = %do.end, %land.lhs.true26.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %cap.0 = phi i32 [ %and30, %do.end ], [ %3, %land.lhs.true26.if.end31_crit_edge ], [ %3, %if.end.if.end31_crit_edge ]
  %and32 = and i32 %cap.0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end43_crit_edge, label %land.lhs.true34

if.end31.if.end43_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.lhs.true34:                                  ; preds = %if.end31
  %15 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hpriv, align 4
  %and36 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %land.lhs.true34.if.end43_crit_edge, label %do.end41

land.lhs.true34.if.end43_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

do.end41:                                         ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6) #11
  %and42 = and i32 %cap.0, -1073741825
  br label %if.end43

if.end43:                                         ; preds = %do.end41, %land.lhs.true34.if.end43_crit_edge, %if.end31.if.end43_crit_edge
  %cap.1 = phi i32 [ %and42, %do.end41 ], [ %cap.0, %land.lhs.true34.if.end43_crit_edge ], [ %cap.0, %if.end31.if.end43_crit_edge ]
  %and44 = and i32 %cap.1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %land.lhs.true46, label %if.end43.if.end54_crit_edge

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

land.lhs.true46:                                  ; preds = %if.end43
  %17 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hpriv, align 4
  %and48 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %land.lhs.true46.if.end54_crit_edge, label %do.end53

land.lhs.true46.if.end54_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

do.end53:                                         ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  %or = or i32 %cap.1, 1073741824
  br label %if.end54

if.end54:                                         ; preds = %do.end53, %land.lhs.true46.if.end54_crit_edge, %if.end43.if.end54_crit_edge
  %cap.2 = phi i32 [ %cap.1, %if.end43.if.end54_crit_edge ], [ %or, %do.end53 ], [ %cap.1, %land.lhs.true46.if.end54_crit_edge ]
  %and55 = and i32 %cap.2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end66_crit_edge, label %land.lhs.true57

if.end54.if.end66_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

land.lhs.true57:                                  ; preds = %if.end54
  %19 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hpriv, align 4
  %and59 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %land.lhs.true57.if.end66_crit_edge, label %do.end64

land.lhs.true57.if.end66_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

do.end64:                                         ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  %and65 = and i32 %cap.2, -131073
  br label %if.end66

if.end66:                                         ; preds = %do.end64, %land.lhs.true57.if.end66_crit_edge, %if.end54.if.end66_crit_edge
  %cap.3 = phi i32 [ %and65, %do.end64 ], [ %cap.2, %land.lhs.true57.if.end66_crit_edge ], [ %cap.2, %if.end54.if.end66_crit_edge ]
  %and67 = and i32 %cap.3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end78_crit_edge, label %land.lhs.true69

if.end66.if.end78_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

land.lhs.true69:                                  ; preds = %if.end66
  %21 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hpriv, align 4
  %and71 = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %land.lhs.true69.if.end78_crit_edge, label %do.end76

land.lhs.true69.if.end78_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

do.end76:                                         ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15) #11
  %and77 = and i32 %cap.3, -536870913
  br label %if.end78

if.end78:                                         ; preds = %do.end76, %land.lhs.true69.if.end78_crit_edge, %if.end66.if.end78_crit_edge
  %cap.4 = phi i32 [ %and77, %do.end76 ], [ %cap.3, %land.lhs.true69.if.end78_crit_edge ], [ %cap.3, %if.end66.if.end78_crit_edge ]
  %and79 = and i32 %.sink, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end91_crit_edge, label %land.lhs.true81

if.end78.if.end91_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

land.lhs.true81:                                  ; preds = %if.end78
  %23 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hpriv, align 4
  %and83 = and i32 %24, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %land.lhs.true81.if.end91_crit_edge, label %do.end88

land.lhs.true81.if.end91_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

do.end88:                                         ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  %and90 = and i32 %.sink, -25
  br label %if.end91

if.end91:                                         ; preds = %do.end88, %land.lhs.true81.if.end91_crit_edge, %if.end78.if.end91_crit_edge
  %cap2.1 = phi i32 [ %and90, %do.end88 ], [ %.sink, %land.lhs.true81.if.end91_crit_edge ], [ %.sink, %if.end78.if.end91_crit_edge ]
  %and92 = and i32 %cap.4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %land.lhs.true94, label %if.end91.land.lhs.true106_crit_edge

if.end91.land.lhs.true106_crit_edge:              ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true106

land.lhs.true94:                                  ; preds = %if.end91
  %25 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hpriv, align 4
  %and96 = and i32 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %land.lhs.true94.if.end115_crit_edge, label %do.end101

land.lhs.true94.if.end115_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

do.end101:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  %or102 = or i32 %cap.4, 65536
  br label %land.lhs.true106

land.lhs.true106:                                 ; preds = %do.end101, %if.end91.land.lhs.true106_crit_edge
  %cap.5.ph = phi i32 [ %cap.4, %if.end91.land.lhs.true106_crit_edge ], [ %or102, %do.end101 ]
  %27 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hpriv, align 4
  %and108 = and i32 %28, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %land.lhs.true106.if.end115_crit_edge, label %do.end113

land.lhs.true106.if.end115_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

do.end113:                                        ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.24) #11
  %and114 = and i32 %cap.5.ph, -65537
  br label %if.end115

if.end115:                                        ; preds = %do.end113, %land.lhs.true106.if.end115_crit_edge, %land.lhs.true94.if.end115_crit_edge
  %cap.6 = phi i32 [ %and114, %do.end113 ], [ %cap.5.ph, %land.lhs.true106.if.end115_crit_edge ], [ %cap.4, %land.lhs.true94.if.end115_crit_edge ]
  %and116 = and i32 %cap.6, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %land.lhs.true118, label %if.end115.if.end127_crit_edge

if.end115.if.end127_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

land.lhs.true118:                                 ; preds = %if.end115
  %29 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hpriv, align 4
  %and120 = and i32 %30, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %land.lhs.true118.if.end127_crit_edge, label %do.end125

land.lhs.true118.if.end127_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

do.end125:                                        ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  %or126 = or i32 %cap.6, 67108864
  br label %if.end127

if.end127:                                        ; preds = %do.end125, %land.lhs.true118.if.end127_crit_edge, %if.end115.if.end127_crit_edge
  %cap.7 = phi i32 [ %cap.6, %if.end115.if.end127_crit_edge ], [ %or126, %do.end125 ], [ %cap.6, %land.lhs.true118.if.end127_crit_edge ]
  %and128 = and i32 %cap.7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end127.if.end139_crit_edge, label %land.lhs.true130

if.end127.if.end139_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

land.lhs.true130:                                 ; preds = %if.end127
  %31 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hpriv, align 4
  %and132 = and i32 %32, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %land.lhs.true130.if.end139_crit_edge, label %do.end137

land.lhs.true130.if.end139_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

do.end137:                                        ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  %and138 = and i32 %cap.7, -33
  br label %if.end139

if.end139:                                        ; preds = %do.end137, %land.lhs.true130.if.end139_crit_edge, %if.end127.if.end139_crit_edge
  %cap.8 = phi i32 [ %and138, %do.end137 ], [ %cap.7, %land.lhs.true130.if.end139_crit_edge ], [ %cap.7, %if.end127.if.end139_crit_edge ]
  %force_port_map = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 1
  %33 = ptrtoint ptr %force_port_map to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %force_port_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool140.not = icmp eq i32 %34, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %34)
  %cmp143.not = icmp eq i32 %6, %34
  %or.cond306 = select i1 %tobool140.not, i1 true, i1 %cmp143.not
  br i1 %or.cond306, label %if.end139.if.end151_crit_edge, label %do.end147

if.end139.if.end151_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

do.end147:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %6, i32 noundef %34) #11
  %35 = ptrtoint ptr %force_port_map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %force_port_map, align 4
  %37 = ptrtoint ptr %saved_port_map to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %saved_port_map, align 4
  br label %if.end151

if.end151:                                        ; preds = %do.end147, %if.end139.if.end151_crit_edge
  %port_map.0 = phi i32 [ %36, %do.end147 ], [ %6, %if.end139.if.end151_crit_edge ]
  %mask_port_map = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 2
  %38 = ptrtoint ptr %mask_port_map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mask_port_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool152.not = icmp eq i32 %39, 0
  br i1 %tobool152.not, label %if.end151.if.end161_crit_edge, label %do.end156

if.end151.if.end161_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

do.end156:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  %and158 = and i32 %39, %port_map.0
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %port_map.0, i32 noundef %and158) #11
  %40 = ptrtoint ptr %mask_port_map to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mask_port_map, align 4
  %and160 = and i32 %41, %port_map.0
  br label %if.end161

if.end161:                                        ; preds = %do.end156, %if.end151.if.end161_crit_edge
  %port_map.1 = phi i32 [ %and160, %do.end156 ], [ %port_map.0, %if.end151.if.end161_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port_map.1)
  %tobool162.not = icmp eq i32 %port_map.1, 0
  br i1 %tobool162.not, label %if.end161.land.lhs.true180_crit_edge, label %for.body.preheader

if.end161.land.lhs.true180_crit_edge:             ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true180

for.body.preheader:                               ; preds = %if.end161
  %42 = and i32 %port_map.1, 1
  %43 = lshr i32 %port_map.1, 1
  %44 = and i32 %43, 1
  %spec.select.1 = add nuw nsw i32 %44, %42
  %45 = lshr i32 %port_map.1, 2
  %46 = and i32 %45, 1
  %spec.select.2 = add nuw nsw i32 %46, %spec.select.1
  %47 = lshr i32 %port_map.1, 3
  %48 = and i32 %47, 1
  %spec.select.3 = add nuw nsw i32 %48, %spec.select.2
  %49 = lshr i32 %port_map.1, 4
  %50 = and i32 %49, 1
  %spec.select.4 = add nuw nsw i32 %50, %spec.select.3
  %51 = lshr i32 %port_map.1, 5
  %52 = and i32 %51, 1
  %spec.select.5 = add nuw nsw i32 %52, %spec.select.4
  %53 = lshr i32 %port_map.1, 6
  %54 = and i32 %53, 1
  %spec.select.6 = add nuw nsw i32 %54, %spec.select.5
  %55 = lshr i32 %port_map.1, 7
  %56 = and i32 %55, 1
  %spec.select.7 = add nuw nsw i32 %56, %spec.select.6
  %57 = lshr i32 %port_map.1, 8
  %58 = and i32 %57, 1
  %spec.select.8 = add nuw nsw i32 %58, %spec.select.7
  %59 = lshr i32 %port_map.1, 9
  %60 = and i32 %59, 1
  %spec.select.9 = add nuw nsw i32 %60, %spec.select.8
  %61 = lshr i32 %port_map.1, 10
  %62 = and i32 %61, 1
  %spec.select.10 = add nuw nsw i32 %62, %spec.select.9
  %63 = lshr i32 %port_map.1, 11
  %64 = and i32 %63, 1
  %spec.select.11 = add nuw nsw i32 %64, %spec.select.10
  %65 = lshr i32 %port_map.1, 12
  %66 = and i32 %65, 1
  %spec.select.12 = add nuw nsw i32 %66, %spec.select.11
  %67 = lshr i32 %port_map.1, 13
  %68 = and i32 %67, 1
  %spec.select.13 = add nuw nsw i32 %68, %spec.select.12
  %69 = lshr i32 %port_map.1, 14
  %70 = and i32 %69, 1
  %spec.select.14 = add nuw nsw i32 %70, %spec.select.13
  %71 = lshr i32 %port_map.1, 15
  %72 = and i32 %71, 1
  %spec.select.15 = add nuw nsw i32 %72, %spec.select.14
  %73 = lshr i32 %port_map.1, 16
  %74 = and i32 %73, 1
  %spec.select.16 = add nuw nsw i32 %74, %spec.select.15
  %75 = lshr i32 %port_map.1, 17
  %76 = and i32 %75, 1
  %spec.select.17 = add nuw nsw i32 %76, %spec.select.16
  %77 = lshr i32 %port_map.1, 18
  %78 = and i32 %77, 1
  %spec.select.18 = add nuw nsw i32 %78, %spec.select.17
  %79 = lshr i32 %port_map.1, 19
  %80 = and i32 %79, 1
  %spec.select.19 = add nuw nsw i32 %80, %spec.select.18
  %81 = lshr i32 %port_map.1, 20
  %82 = and i32 %81, 1
  %spec.select.20 = add nuw nsw i32 %82, %spec.select.19
  %83 = lshr i32 %port_map.1, 21
  %84 = and i32 %83, 1
  %spec.select.21 = add nuw nsw i32 %84, %spec.select.20
  %85 = lshr i32 %port_map.1, 22
  %86 = and i32 %85, 1
  %spec.select.22 = add nuw nsw i32 %86, %spec.select.21
  %87 = lshr i32 %port_map.1, 23
  %88 = and i32 %87, 1
  %spec.select.23 = add nuw nsw i32 %88, %spec.select.22
  %89 = lshr i32 %port_map.1, 24
  %90 = and i32 %89, 1
  %spec.select.24 = add nuw nsw i32 %90, %spec.select.23
  %91 = lshr i32 %port_map.1, 25
  %92 = and i32 %91, 1
  %spec.select.25 = add nuw nsw i32 %92, %spec.select.24
  %93 = lshr i32 %port_map.1, 26
  %94 = and i32 %93, 1
  %spec.select.26 = add nuw nsw i32 %94, %spec.select.25
  %95 = lshr i32 %port_map.1, 27
  %96 = and i32 %95, 1
  %spec.select.27 = add nuw nsw i32 %96, %spec.select.26
  %97 = lshr i32 %port_map.1, 28
  %98 = and i32 %97, 1
  %spec.select.28 = add nuw nsw i32 %98, %spec.select.27
  %99 = lshr i32 %port_map.1, 29
  %100 = and i32 %99, 1
  %spec.select.29 = add nuw nsw i32 %100, %spec.select.28
  %101 = lshr i32 %port_map.1, 30
  %102 = and i32 %101, 1
  %spec.select.30 = add nuw nsw i32 %102, %spec.select.29
  %103 = lshr i32 %port_map.1, 31
  %spec.select.31 = add nuw nsw i32 %103, %spec.select.30
  %and.i = and i32 %cap.8, 31
  %add.i = add nuw nsw i32 %and.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.31, i32 %add.i)
  %cmp171 = icmp ugt i32 %spec.select.31, %add.i
  br i1 %cmp171, label %do.end175, label %for.body.preheader.if.end189_crit_edge

for.body.preheader.if.end189_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

do.end175:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %port_map.1, i32 noundef %add.i) #11
  br label %land.lhs.true180

land.lhs.true180:                                 ; preds = %do.end175, %if.end161.land.lhs.true180_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 66304, i32 %9)
  %cmp181 = icmp ult i32 %9, 66304
  br i1 %cmp181, label %if.then182, label %land.lhs.true180.if.end189_crit_edge

land.lhs.true180.if.end189_crit_edge:             ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.then182:                                       ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #10
  %and.i309 = and i32 %cap.8, 31
  %notmask = shl i32 -2, %and.i309
  %sub = xor i32 %notmask, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %sub) #11
  %104 = ptrtoint ptr %saved_port_map to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub, ptr %saved_port_map, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.then182, %land.lhs.true180.if.end189_crit_edge, %for.body.preheader.if.end189_crit_edge
  %port_map.4 = phi i32 [ %sub, %if.then182 ], [ 0, %land.lhs.true180.if.end189_crit_edge ], [ %port_map.1, %for.body.preheader.if.end189_crit_edge ]
  %cap190 = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 4
  %105 = ptrtoint ptr %cap190 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %cap.8, ptr %cap190, align 4
  %cap2191 = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 5
  %106 = ptrtoint ptr %cap2191 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %cap2.1, ptr %cap2191, align 4
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !436
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !484
  %version = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 6
  %109 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %version, align 4
  %port_map198 = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 7
  %110 = ptrtoint ptr %port_map198 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %port_map.4, ptr %port_map198, align 4
  %start_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 25
  %111 = ptrtoint ptr %start_engine to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %start_engine, align 4
  %tobool199.not = icmp eq ptr %112, null
  br i1 %tobool199.not, label %if.then200, label %if.end189.if.end202_crit_edge

if.end189.if.end202_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end202

if.then200:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %start_engine to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @ahci_start_engine, ptr %start_engine, align 4
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %if.end189.if.end202_crit_edge
  %stop_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 26
  %114 = ptrtoint ptr %stop_engine to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %stop_engine, align 4
  %tobool203.not = icmp eq ptr %115, null
  br i1 %tobool203.not, label %if.then204, label %if.end202.if.end206_crit_edge

if.end202.if.end206_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

if.then204:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %stop_engine to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @ahci_stop_engine, ptr %stop_engine, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.then204, %if.end202.if.end206_crit_edge
  %irq_handler = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 27
  %117 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %irq_handler, align 4
  %tobool207.not = icmp eq ptr %118, null
  br i1 %tobool207.not, label %if.then208, label %if.end206.if.end210_crit_edge

if.end206.if.end210_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

if.then208:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %irq_handler to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @ahci_single_level_irq_intr, ptr %irq_handler, align 4
  br label %if.end210

if.end210:                                        ; preds = %if.then208, %if.end206.if.end210_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahci_enable_ahci(ptr noundef %mmio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mmio, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !485
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %or = or i32 %1, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !486
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !435
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !487
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool11.not = icmp sgt i32 %4, -1
  br i1 %tobool11.not, label %if.end13, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %for.body.preheader
  tail call void @msleep(i32 noundef 10) #8
  %or.1 = or i32 %4, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !486
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #8, !srcloc !435
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !487
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool11.not.1 = icmp sgt i32 %7, -1
  br i1 %tobool11.not.1, label %if.end13.1, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.1:                                       ; preds = %if.end13
  tail call void @msleep(i32 noundef 10) #8
  %or.2 = or i32 %7, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !486
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.2)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #8, !srcloc !435
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !487
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool11.not.2 = icmp sgt i32 %10, -1
  br i1 %tobool11.not.2, label %if.end13.2, label %if.end13.1.cleanup_crit_edge

if.end13.1.cleanup_crit_edge:                     ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.2:                                       ; preds = %if.end13.1
  tail call void @msleep(i32 noundef 10) #8
  %or.3 = or i32 %10, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !486
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.3)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #8, !srcloc !435
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !487
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool11.not.3 = icmp sgt i32 %13, -1
  br i1 %tobool11.not.3, label %if.end13.3, label %if.end13.2.cleanup_crit_edge

if.end13.2.cleanup_crit_edge:                     ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.3:                                       ; preds = %if.end13.2
  tail call void @msleep(i32 noundef 10) #8
  %or.4 = or i32 %13, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !486
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.4)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #8, !srcloc !435
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !487
  %.mask = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool11.not.4 = icmp eq i32 %.mask, 0
  br i1 %tobool11.not.4, label %if.end13.4, label %if.end13.3.cleanup_crit_edge

if.end13.3.cleanup_crit_edge:                     ; preds = %if.end13.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13.4:                                       ; preds = %if.end13.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 10) #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 229, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13.4, %if.end13.3.cleanup_crit_edge, %if.end13.2.cleanup_crit_edge, %if.end13.1.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahci_start_engine(ptr nocapture noundef readonly %ap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %2 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 256
  %mul.i.i = shl i32 %3, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !488
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !489
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #8, !srcloc !435
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !490
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_stop_engine(ptr noundef %ap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %2 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 256
  %mul.i.i = shl i32 %3, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %and = and i32 %9, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %lpm_policy = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 10
  %10 = ptrtoint ptr %lpm_policy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lpm_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp ugt i32 %11, 1
  br i1 %cmp, label %land.lhs.true1, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %call3 = tail call i32 @ahci_set_lpm(ptr noundef %link, i32 noundef 1, i32 noundef 4)
  br label %if.end

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !491
  %and9 = and i32 %13, 32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp13 = icmp eq i32 %12, -1
  br i1 %cmp13, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host.i, align 4
  %dev19 = getelementptr inbounds %struct.ata_host, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.49) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %and21 = and i32 %13, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !492
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %and21)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #8, !srcloc !435
  %call27 = tail call i32 @ata_wait_register(ptr noundef %ap, ptr noundef %add.ptr, i32 noundef 32768, i32 noundef 32768, i32 noundef 1, i32 noundef 500) #8
  %and28 = and i32 %call27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %. = select i1 %tobool29.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end17, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end17 ], [ 0, %if.end.cleanup_crit_edge ], [ %., %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_single_level_irq_intr(i32 noundef %irq, ptr noundef %dev_instance) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !493
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %port_map = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %port_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_map, align 4
  %and = and i32 %7, %5
  tail call void @_raw_spin_lock(ptr noundef %dev_instance) #8
  %call3 = tail call i32 @ahci_handle_port_intr(ptr noundef %dev_instance, i32 noundef %and)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !494
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !435
  tail call void @_raw_spin_unlock(ptr noundef %dev_instance) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool6.not = icmp ne i32 %call3, 0
  %cond = zext i1 %tobool6.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_wait_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahci_start_fis_rx(ptr nocapture noundef readonly %ap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %2 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 256
  %mul.i.i = shl i32 %3, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %private_data1 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %8 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data1, align 4
  %cap = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool.not = icmp sgt i32 %11, -1
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %do.body

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !495
  tail call void @arm_heavy_mb() #8
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !435
  br label %do.body3

do.body3:                                         ; preds = %do.body, %entry.do.body3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !496
  tail call void @arm_heavy_mb() #8
  %cmd_slot_dma6 = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %cmd_slot_dma6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd_slot_dma6, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %14) #8, !srcloc !435
  %15 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool11.not = icmp sgt i32 %16, -1
  br i1 %tobool11.not, label %do.body3.do.body20_crit_edge, label %do.body13

do.body3.do.body20_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

do.body13:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !497
  tail call void @arm_heavy_mb() #8
  %add.ptr18 = getelementptr i8, ptr %add.ptr2.i.i, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #8, !srcloc !435
  br label %do.body20

do.body20:                                        ; preds = %do.body13, %do.body3.do.body20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !498
  tail call void @arm_heavy_mb() #8
  %rx_fis_dma23 = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 6
  %17 = ptrtoint ptr %rx_fis_dma23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_fis_dma23, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %add.ptr25 = getelementptr i8, ptr %add.ptr2.i.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %19) #8, !srcloc !435
  %add.ptr26 = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !499
  %21 = or i32 %20, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !500
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %21) #8, !srcloc !435
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !501
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_reset_controller(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio1, align 4
  tail call fastcc void @ahci_enable_ahci(ptr noundef %3)
  %4 = load i32, ptr @ahci_skip_host_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %do.end27

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !502
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !503
  tail call void @arm_heavy_mb() #8
  %or = or i32 %6, 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #8, !srcloc !435
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !504
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then.if.end_crit_edge
  %call13 = tail call i32 @ata_wait_register(ptr noundef null, ptr noundef %add.ptr, i32 noundef 1, i32 noundef 1, i32 noundef 10, i32 noundef 1000) #8
  %and14 = and i32 %call13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end20, label %do.end19

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.51, i32 noundef %call13) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end
  tail call fastcc void @ahci_enable_ahci(ptr noundef %3)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %and21 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 4
  %mmio1.i = getelementptr inbounds %struct.ahci_host_priv, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %mmio1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !505
  tail call void @arm_heavy_mb() #8
  %saved_cap.i = getelementptr inbounds %struct.ahci_host_priv, ptr %14, i32 0, i32 8
  %17 = ptrtoint ptr %saved_cap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %saved_cap.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %19) #8, !srcloc !435
  %saved_cap2.i = getelementptr inbounds %struct.ahci_host_priv, ptr %14, i32 0, i32 9
  %20 = ptrtoint ptr %saved_cap2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saved_cap2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then23.ahci_restore_initial_config.exit_crit_edge, label %do.body2.i

if.then23.ahci_restore_initial_config.exit_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %ahci_restore_initial_config.exit

do.body2.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !506
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %saved_cap2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %saved_cap2.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  %add.ptr6.i = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %24) #8, !srcloc !435
  br label %ahci_restore_initial_config.exit

ahci_restore_initial_config.exit:                 ; preds = %do.body2.i, %if.then23.ahci_restore_initial_config.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !507
  tail call void @arm_heavy_mb() #8
  %saved_port_map.i = getelementptr inbounds %struct.ahci_host_priv, ptr %14, i32 0, i32 10
  %25 = ptrtoint ptr %saved_port_map.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %saved_port_map.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %add.ptr10.i = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %27) #8, !srcloc !435
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !508
  br label %cleanup

do.end27:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %29 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.54) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %ahci_restore_initial_config.exit, %if.end20.cleanup_crit_edge, %do.end19
  %retval.0 = phi i32 [ -5, %do.end19 ], [ 0, %if.end20.cleanup_crit_edge ], [ 0, %ahci_restore_initial_config.exit ], [ 0, %do.end27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_reset_em(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !509
  %6 = and i32 %5, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !510
  tail call void @arm_heavy_mb() #8
  %or = or i32 %5, 512
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #8, !srcloc !435
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahci_init_controller(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio1, align 4
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 3
  %4 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp61.not = icmp eq i32 %5, 0
  br i1 %cmp61.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ata_host, ptr %host, i32 0, i32 12, i32 %i.062
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %cmp.i.not = icmp eq ptr %9, @ata_dummy_port_ops
  br i1 %cmp.i.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %host.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 31
  %10 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 256
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 7
  %16 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_no.i, align 4
  %mul.i.i = shl i32 %17, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call fastcc void @ahci_port_init(ptr noundef %19, ptr noundef %7, i32 noundef %i.062, ptr noundef %3, ptr noundef %add.ptr2.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.062, 1
  %20 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_ports, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !511
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahci_init_controller.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ahci_init_controller, %if.then11)) #8
          to label %do.body14 [label %if.then11], !srcloc !512

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %24 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ahci_init_controller.__UNIQUE_ID_ddebug333, ptr noundef %25, ptr noundef nonnull @.str.58, i32 noundef %23) #8
  br label %do.body14

do.body14:                                        ; preds = %if.then11, %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !513
  tail call void @arm_heavy_mb() #8
  %or = or i32 %23, 2
  %26 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %26) #8, !srcloc !435
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !514
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahci_init_controller.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ahci_init_controller, %if.then36)) #8
          to label %do.end40 [label %if.then36], !srcloc !512

if.then36:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %dev37 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %29 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ahci_init_controller.__UNIQUE_ID_ddebug334, ptr noundef %30, ptr noundef nonnull @.str.58, i32 noundef %28) #8
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %do.body14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahci_port_init(ptr noundef %dev, ptr noundef %ap, i32 noundef %port_no, ptr noundef %mmio, ptr noundef %port_mmio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %stop_engine.i = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %stop_engine.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_engine.i, align 4
  %call.i = tail call i32 %5(ptr noundef %ap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %port_no.i.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i.i.i, align 4
  %private_data.i.i.i.i = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %private_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i.i.i.i, align 4
  %mmio1.i.i.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %mmio1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio1.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 256
  %mul.i.i.i.i = shl i32 %9, 7
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i.i.i.i, i32 24
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  %15 = and i32 %14, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !464
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #8, !srcloc !435
  %call6.i.i = tail call i32 @ata_wait_register(ptr noundef %ap, ptr noundef %add.ptr.i.i, i32 noundef 16384, i32 noundef 16384, i32 noundef 10, i32 noundef 1000) #8
  %and7.i.i = and i32 %call6.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end_crit_edge, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %.str.145.sink.i = phi ptr [ @.str.144, %entry.do.end_crit_edge ], [ @.str.145, %if.end.i.do.end_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ -16, %if.end.i.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.140, ptr noundef nonnull %.str.145.sink.i, i32 noundef %retval.0.ph.i) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end.i.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %port_mmio, i32 48
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !515
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahci_port_init.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ahci_port_init, %if.then10)) #8
          to label %do.body14 [label %if.then10], !srcloc !512

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ahci_port_init.__UNIQUE_ID_ddebug331, ptr noundef %dev, ptr noundef nonnull @.str.142, i32 noundef %17) #8
  br label %do.body14

do.body14:                                        ; preds = %if.then10, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !516
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #8, !srcloc !435
  %add.ptr20 = getelementptr i8, ptr %port_mmio, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !517
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ahci_port_init.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ahci_port_init, %if.then36)) #8
          to label %do.end39 [label %if.then36], !srcloc !512

if.then36:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ahci_port_init.__UNIQUE_ID_ddebug332, ptr noundef %dev, ptr noundef nonnull @.str.143, i32 noundef %19) #8
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool40.not = icmp eq i32 %18, 0
  br i1 %tobool40.not, label %do.end39.do.body47_crit_edge, label %do.body42

do.end39.do.body47_crit_edge:                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

do.body42:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !518
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %18) #8, !srcloc !435
  br label %do.body47

do.body47:                                        ; preds = %do.body42, %do.end39.do.body47_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !519
  tail call void @arm_heavy_mb() #8
  %shl = shl nuw i32 1, %port_no
  %20 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr50 = getelementptr i8, ptr %mmio, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %20) #8, !srcloc !435
  %add.ptr53 = getelementptr i8, ptr %port_mmio, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !520
  %22 = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool57.not = icmp eq i32 %22, 0
  br i1 %tobool57.not, label %do.body47.if.end61_crit_edge, label %land.lhs.true

do.body47.if.end61_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

land.lhs.true:                                    ; preds = %do.body47
  %cap = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cap, align 4
  %and58 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %land.lhs.true.if.end61_crit_edge, label %if.then60

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then60:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %pflags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 4
  %25 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pflags, align 16
  %or = or i32 %26, 4194304
  store i32 %or, ptr %pflags, align 16
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %land.lhs.true.if.end61_crit_edge, %do.body47.if.end61_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_dev_classify(ptr noundef %ap) #0 align 64 {
entry:
  %tf = alloca %struct.ata_taskfile, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %2 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 256
  %mul.i.i = shl i32 %3, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf) #8
  %8 = call ptr @memset(ptr %tf, i32 255, i32 24)
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !521
  %shr = lshr i32 %10, 24
  %conv = trunc i32 %shr to i8
  %lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 12
  %11 = ptrtoint ptr %lbah to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %lbah, align 1
  %shr4 = lshr i32 %10, 16
  %conv6 = trunc i32 %shr4 to i8
  %lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 11
  %12 = ptrtoint ptr %lbam to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6, ptr %lbam, align 2
  %shr7 = lshr i32 %10, 8
  %conv9 = trunc i32 %shr7 to i8
  %lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 10
  %13 = ptrtoint ptr %lbal to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv9, ptr %lbal, align 1
  %conv11 = trunc i32 %10 to i8
  %nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 9
  %14 = ptrtoint ptr %nsect to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv11, ptr %nsect, align 4
  %call12 = call i32 @ata_port_classify(ptr noundef %ap, ptr noundef nonnull %tf) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf) #8
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_classify(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ahci_fill_cmd_slot(ptr nocapture noundef readonly %pp, i32 noundef %tag, i32 noundef %opts) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_tbl_dma1 = getelementptr inbounds %struct.ahci_port_priv, ptr %pp, i32 0, i32 4
  %0 = ptrtoint ptr %cmd_tbl_dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_tbl_dma1, align 4
  %mul = mul i32 %tag, 2816
  %add = add i32 %1, %mul
  %2 = tail call i32 @llvm.bswap.i32(i32 %opts)
  %cmd_slot = getelementptr inbounds %struct.ahci_port_priv, ptr %pp, i32 0, i32 1
  %3 = ptrtoint ptr %cmd_slot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_slot, align 4
  %arrayidx = getelementptr %struct.ahci_cmd_hdr, ptr %4, i32 %tag
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %arrayidx, align 4
  %6 = load ptr, ptr %cmd_slot, align 4
  %status = getelementptr %struct.ahci_cmd_hdr, ptr %6, i32 %tag, i32 1
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %status, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %add)
  %9 = ptrtoint ptr %cmd_slot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd_slot, align 4
  %tbl_addr = getelementptr %struct.ahci_cmd_hdr, ptr %10, i32 %tag, i32 2
  %11 = ptrtoint ptr %tbl_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %tbl_addr, align 4
  %12 = load ptr, ptr %cmd_slot, align 4
  %tbl_addr_hi = getelementptr %struct.ahci_cmd_hdr, ptr %12, i32 %tag, i32 3
  %13 = ptrtoint ptr %tbl_addr_hi to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tbl_addr_hi, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_kick_engine(ptr noundef %ap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %2 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 256
  %mul.i.i = shl i32 %3, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !522
  %stop_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 26
  %9 = ptrtoint ptr %stop_engine to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stop_engine, align 4
  %call4 = tail call i32 %10(ptr noundef %ap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.out_restart_crit_edge

entry.out_restart_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_restart

if.end:                                           ; preds = %entry
  %11 = and i32 %8, -2013265920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 27
  %12 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not = icmp eq i32 %13, 0
  br i1 %cmp.i.not, label %land.lhs.true.out_restart_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true.out_restart_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_restart

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %cap = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cap, align 4
  %and11 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.out_restart_crit_edge, label %if.end14

if.end10.out_restart_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_restart

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr17 = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !523
  %17 = or i32 %16, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !524
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %17) #8, !srcloc !435
  %call23 = tail call i32 @ata_wait_register(ptr noundef %ap, ptr noundef %add.ptr17, i32 noundef 8, i32 noundef 8, i32 noundef 1, i32 noundef 500) #8
  %and24 = and i32 %call23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %spec.select = select i1 %tobool25.not, i32 0, i32 -5
  br label %out_restart

out_restart:                                      ; preds = %if.end14, %if.end10.out_restart_crit_edge, %land.lhs.true.out_restart_crit_edge, %entry.out_restart_crit_edge
  %rc.0 = phi i32 [ %call4, %entry.out_restart_crit_edge ], [ 0, %land.lhs.true.out_restart_crit_edge ], [ -95, %if.end10.out_restart_crit_edge ], [ %spec.select, %if.end14 ]
  %start_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 25
  %18 = ptrtoint ptr %start_engine to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %start_engine, align 4
  tail call void %19(ptr noundef %ap) #8
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_do_softreset(ptr noundef %link, ptr nocapture noundef writeonly %class, i32 noundef %pmp, i32 noundef %deadline, ptr noundef %check_ready) #0 align 64 {
entry:
  %tf.i = alloca %struct.ata_taskfile, align 4
  %tf = alloca %struct.ata_taskfile, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %private_data2 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %6 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data2, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf) #8
  %call = tail call i32 @ahci_kick_engine(ptr noundef %1)
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %call, label %do.body [
    i32 0, label %entry.if.end21_crit_edge
    i32 -95, label %entry.if.end21_crit_edge166
  ]

entry.if.end21_crit_edge166:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.body:                                          ; preds = %entry
  %9 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link, align 128
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.not = icmp eq i32 %12, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 26
  %13 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slave_link, align 128
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %do.end14, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  %print_id = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 5
  %15 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %print_id, align 4
  %pmp10 = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %17 = ptrtoint ptr %pmp10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pmp10, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %16, i32 noundef %18, i32 noundef %call) #11
  br label %if.end21

do.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %print_id17 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 5
  %19 = ptrtoint ptr %print_id17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %print_id17, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %20, i32 noundef %call) #11
  br label %if.end21

if.end21:                                         ; preds = %do.end14, %do.end, %entry.if.end21_crit_edge, %entry.if.end21_crit_edge166
  %21 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link, align 128
  %link1.i = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 25
  %cmp.i160 = icmp eq ptr %link1.i, %link
  br i1 %cmp.i160, label %if.end21.if.end26_crit_edge, label %ata_is_host_link.exit

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

ata_is_host_link.exit:                            ; preds = %if.end21
  %slave_link.i = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 26
  %23 = ptrtoint ptr %slave_link.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slave_link.i, align 128
  %cmp3.i = icmp eq ptr %24, %link
  br i1 %cmp3.i, label %ata_is_host_link.exit.if.end26_crit_edge, label %land.lhs.true23

ata_is_host_link.exit.if.end26_crit_edge:         ; preds = %ata_is_host_link.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true23:                                  ; preds = %ata_is_host_link.exit
  %fbs_enabled = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 11
  %25 = ptrtoint ptr %fbs_enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fbs_enabled, align 1, !range !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool24.not = icmp eq i8 %26, 0
  br i1 %tobool24.not, label %land.lhs.true23.if.end26_crit_edge, label %if.then25

land.lhs.true23.if.end26_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ahci_disable_fbs(ptr noundef %1)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %land.lhs.true23.if.end26_crit_edge, %ata_is_host_link.exit.if.end26_crit_edge, %if.end21.if.end26_crit_edge
  %fbs_disabled.0.off0 = phi i1 [ false, %ata_is_host_link.exit.if.end26_crit_edge ], [ true, %if.then25 ], [ false, %land.lhs.true23.if.end26_crit_edge ], [ false, %if.end21.if.end26_crit_edge ]
  %device = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14
  %27 = call ptr @memset(ptr %tf, i32 0, i32 24)
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 128
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 128
  %ctl.i = getelementptr inbounds %struct.ata_port, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ctl.i, align 4
  %ctl1.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 2
  %34 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %ctl1.i, align 1
  %devno.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14, i32 0, i32 1
  %35 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i161 = icmp eq i32 %36, 0
  %spec.select.i = select i1 %cmp.i161, i8 -96, i8 -80
  %37 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %spec.select.i, ptr %37, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %39, %deadline
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp27 = icmp slt i32 %sub, 0
  br i1 %cmp27, label %if.then28, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %sub29 = sub i32 %deadline, %39
  %call30 = tail call i32 @jiffies_to_msecs(i32 noundef %sub29) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end26.if.end31_crit_edge
  %msecs.0 = phi i32 [ %call30, %if.then28 ], [ 0, %if.end26.if.end31_crit_edge ]
  %40 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ctl1.i, align 1
  %42 = or i8 %41, 4
  store i8 %42, ptr %ctl1.i, align 1
  %call33 = call fastcc i32 @ahci_exec_polled_cmd(ptr noundef %1, i32 noundef %pmp, ptr noundef nonnull %tf, i16 noundef zeroext 1280, i32 noundef %msecs.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.do.body86_crit_edge

if.end31.do.body86_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body86

if.end36:                                         ; preds = %if.end31
  call void @ata_msleep(ptr noundef %1, i32 noundef 1) #8
  %43 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ctl1.i, align 1
  %45 = and i8 %44, -5
  store i8 %45, ptr %ctl1.i, align 1
  %46 = call fastcc i32 @ahci_exec_polled_cmd(ptr noundef %1, i32 noundef %pmp, ptr noundef nonnull %tf, i16 noundef zeroext 0, i32 noundef 0)
  %call41 = call i32 @ata_wait_after_reset(ptr noundef %link, i32 noundef %deadline, ptr noundef %check_ready) #8
  %47 = zext i32 %call41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %call41, label %if.end36.do.body86_crit_edge [
    i32 -16, label %land.lhs.true44
    i32 0, label %if.else79
  ]

if.end36.do.body86_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body86

land.lhs.true44:                                  ; preds = %if.end36
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %5, align 4
  %and45 = and i32 %49, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %land.lhs.true44.do.body86_crit_edge, label %do.body48

land.lhs.true44.do.body86_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body86

do.body48:                                        ; preds = %land.lhs.true44
  %50 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %link, align 128
  %nr_pmp_links.i162 = getelementptr inbounds %struct.ata_port, ptr %51, i32 0, i32 27
  %52 = ptrtoint ptr %nr_pmp_links.i162 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_pmp_links.i162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i163.not = icmp eq i32 %53, 0
  br i1 %cmp.i163.not, label %lor.lhs.false52, label %do.body48.do.end59_crit_edge

do.body48.do.end59_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

lor.lhs.false52:                                  ; preds = %do.body48
  %slave_link54 = getelementptr inbounds %struct.ata_port, ptr %51, i32 0, i32 26
  %54 = ptrtoint ptr %slave_link54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %slave_link54, align 128
  %tobool55.not = icmp eq ptr %55, null
  br i1 %tobool55.not, label %do.end68, label %lor.lhs.false52.do.end59_crit_edge

lor.lhs.false52.do.end59_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

do.end59:                                         ; preds = %lor.lhs.false52.do.end59_crit_edge, %do.body48.do.end59_crit_edge
  %print_id62 = getelementptr inbounds %struct.ata_port, ptr %51, i32 0, i32 5
  %56 = ptrtoint ptr %print_id62 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %print_id62, align 4
  %pmp63 = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %58 = ptrtoint ptr %pmp63 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pmp63, align 4
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %57, i32 noundef %59) #11
  br label %if.end82

do.end68:                                         ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #10
  %print_id71 = getelementptr inbounds %struct.ata_port, ptr %51, i32 0, i32 5
  %60 = ptrtoint ptr %print_id71 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %print_id71, align 4
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %61) #11
  br label %if.end82

if.else79:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %host, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %64 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port_no.i.i, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %63, i32 0, i32 5
  %66 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %private_data.i.i.i, align 4
  %mmio1.i.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %mmio1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %69, i32 256
  %mul.i.i.i = shl i32 %65, 7
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf.i) #8
  %70 = call ptr @memset(ptr %tf.i, i32 255, i32 24)
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 36
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !436
  %72 = call i32 @llvm.bswap.i32(i32 %71) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !521
  %shr.i = lshr i32 %72, 24
  %conv.i = trunc i32 %shr.i to i8
  %lbah.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 12
  %73 = ptrtoint ptr %lbah.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv.i, ptr %lbah.i, align 1
  %shr4.i = lshr i32 %72, 16
  %conv6.i = trunc i32 %shr4.i to i8
  %lbam.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 11
  %74 = ptrtoint ptr %lbam.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv6.i, ptr %lbam.i, align 2
  %shr7.i = lshr i32 %72, 8
  %conv9.i = trunc i32 %shr7.i to i8
  %lbal.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 10
  %75 = ptrtoint ptr %lbal.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv9.i, ptr %lbal.i, align 1
  %conv11.i = trunc i32 %72 to i8
  %nsect.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 9
  %76 = ptrtoint ptr %nsect.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv11.i, ptr %nsect.i, align 4
  %call12.i = call i32 @ata_port_classify(ptr noundef %1, ptr noundef nonnull %tf.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i) #8
  br label %if.end82

if.end82:                                         ; preds = %if.else79, %do.end68, %do.end59
  %storemerge = phi i32 [ %call12.i, %if.else79 ], [ 11, %do.end68 ], [ 11, %do.end59 ]
  %77 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %storemerge, ptr %class, align 4
  br i1 %fbs_disabled.0.off0, label %if.then84, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ahci_enable_fbs(ptr noundef %1)
  br label %cleanup

do.body86:                                        ; preds = %land.lhs.true44.do.body86_crit_edge, %if.end36.do.body86_crit_edge, %if.end31.do.body86_crit_edge
  %rc.0 = phi i32 [ -5, %if.end31.do.body86_crit_edge ], [ %call41, %if.end36.do.body86_crit_edge ], [ -16, %land.lhs.true44.do.body86_crit_edge ]
  %reason.0 = phi ptr [ @.str.64, %if.end31.do.body86_crit_edge ], [ @.str.71, %if.end36.do.body86_crit_edge ], [ @.str.71, %land.lhs.true44.do.body86_crit_edge ]
  %78 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %link, align 128
  %nr_pmp_links.i164 = getelementptr inbounds %struct.ata_port, ptr %79, i32 0, i32 27
  %80 = ptrtoint ptr %nr_pmp_links.i164 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_pmp_links.i164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i165.not = icmp eq i32 %81, 0
  br i1 %cmp.i165.not, label %lor.lhs.false90, label %do.body86.do.end97_crit_edge

do.body86.do.end97_crit_edge:                     ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end97

lor.lhs.false90:                                  ; preds = %do.body86
  %slave_link92 = getelementptr inbounds %struct.ata_port, ptr %79, i32 0, i32 26
  %82 = ptrtoint ptr %slave_link92 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %slave_link92, align 128
  %tobool93.not = icmp eq ptr %83, null
  br i1 %tobool93.not, label %do.end106, label %lor.lhs.false90.do.end97_crit_edge

lor.lhs.false90.do.end97_crit_edge:               ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end97

do.end97:                                         ; preds = %lor.lhs.false90.do.end97_crit_edge, %do.body86.do.end97_crit_edge
  %print_id100 = getelementptr inbounds %struct.ata_port, ptr %79, i32 0, i32 5
  %84 = ptrtoint ptr %print_id100 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %print_id100, align 4
  %pmp101 = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %86 = ptrtoint ptr %pmp101 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pmp101, align 4
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %85, i32 noundef %87, ptr noundef nonnull %reason.0) #11
  br label %cleanup

do.end106:                                        ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #10
  %print_id109 = getelementptr inbounds %struct.ata_port, ptr %79, i32 0, i32 5
  %88 = ptrtoint ptr %print_id109 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %print_id109, align 4
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %89, ptr noundef nonnull %reason.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %do.end97, %if.then84, %if.end82.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then84 ], [ 0, %if.end82.cleanup_crit_edge ], [ %rc.0, %do.end106 ], [ %rc.0, %do.end97 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahci_disable_fbs(ptr noundef %ap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 4
  %fbs_supported = getelementptr inbounds %struct.ahci_port_priv, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %fbs_supported to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fbs_supported, align 4, !range !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 256
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %10 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no.i, align 4
  %mul.i.i = shl i32 %11, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 64
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !525
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %fbs_enabled = getelementptr inbounds %struct.ahci_port_priv, ptr %5, i32 0, i32 11
  %14 = ptrtoint ptr %fbs_enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %fbs_enabled, align 1
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %stop_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 26
  %15 = ptrtoint ptr %stop_engine to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stop_engine, align 4
  %call6 = tail call i32 %16(ptr noundef %ap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !526
  tail call void @arm_heavy_mb() #8
  %and10 = and i32 %13, -2
  %17 = tail call i32 @llvm.bswap.i32(i32 %and10)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #8, !srcloc !435
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !527
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool19.not = icmp eq i32 %19, 0
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %dev29 = getelementptr inbounds %struct.ata_host, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev29, align 4
  br i1 %tobool19.not, label %do.end27, label %do.end23

do.end23:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.168) #11
  br label %if.end31

do.end27:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.171) #11
  %fbs_enabled30 = getelementptr inbounds %struct.ahci_port_priv, ptr %5, i32 0, i32 11
  %24 = ptrtoint ptr %fbs_enabled30 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %fbs_enabled30, align 1
  br label %if.end31

if.end31:                                         ; preds = %do.end27, %do.end23
  %start_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 25
  %25 = ptrtoint ptr %start_engine to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %start_engine, align 4
  tail call void %26(ptr noundef %ap) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end5.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ahci_exec_polled_cmd(ptr noundef %ap, i32 noundef %pmp, ptr noundef %tf, i16 noundef zeroext %flags, i32 noundef %timeout_msec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 256
  %mul.i.i = shl i32 %5, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %cmd_tbl = getelementptr inbounds %struct.ahci_port_priv, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %cmd_tbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd_tbl, align 4
  %conv = trunc i32 %pmp to i8
  tail call void @ata_tf_to_fis(ptr noundef %tf, i8 noundef zeroext %conv, i32 noundef 0, ptr noundef %11) #8
  %12 = or i16 %flags, 5
  %or = zext i16 %12 to i32
  %shl = shl i32 %pmp, 12
  %or2 = or i32 %shl, %or
  %cmd_tbl_dma1.i = getelementptr inbounds %struct.ahci_port_priv, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %cmd_tbl_dma1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmd_tbl_dma1.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %or2) #8
  %cmd_slot.i = getelementptr inbounds %struct.ahci_port_priv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %cmd_slot.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd_slot.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %17, align 4
  %19 = load ptr, ptr %cmd_slot.i, align 4
  %status.i = getelementptr %struct.ahci_cmd_hdr, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %status.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %22 = ptrtoint ptr %cmd_slot.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd_slot.i, align 4
  %tbl_addr.i = getelementptr %struct.ahci_cmd_hdr, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %tbl_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %tbl_addr.i, align 4
  %25 = load ptr, ptr %cmd_slot.i, align 4
  %tbl_addr_hi.i = getelementptr %struct.ahci_cmd_hdr, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %tbl_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %tbl_addr_hi.i, align 4
  %fbs_enabled = getelementptr inbounds %struct.ahci_port_priv, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %fbs_enabled to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fbs_enabled, align 1, !range !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %land.lhs.true

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

land.lhs.true:                                    ; preds = %entry
  %fbs_last_dev = getelementptr inbounds %struct.ahci_port_priv, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %fbs_last_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fbs_last_dev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %pmp)
  %cmp.not = icmp eq i32 %30, %pmp
  br i1 %cmp.not, label %land.lhs.true.do.body12_crit_edge, label %if.then

land.lhs.true.do.body12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 64
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !528
  %32 = and i32 %31, -34537473
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %shl8 = shl i32 %pmp, 8
  %or9 = or i32 %33, %shl8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !529
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %or9)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %34) #8, !srcloc !435
  %35 = ptrtoint ptr %fbs_last_dev to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %pmp, ptr %fbs_last_dev, align 4
  br label %do.body12

do.body12:                                        ; preds = %if.then, %land.lhs.true.do.body12_crit_edge, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !530
  tail call void @arm_heavy_mb() #8
  %add.ptr15 = getelementptr i8, ptr %add.ptr2.i.i, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 16777216) #8, !srcloc !435
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout_msec)
  %tobool16.not = icmp eq i32 %timeout_msec, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %do.body12
  %call19 = tail call i32 @ata_wait_register(ptr noundef %ap, ptr noundef %add.ptr15, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef %timeout_msec) #8
  %and20 = and i32 %call19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then17.cleanup_crit_edge, label %if.then22

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 @ahci_kick_engine(ptr noundef %ap)
  br label %cleanup

if.else:                                          ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !531
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then22, %if.then17.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then22 ], [ 0, %if.then17.cleanup_crit_edge ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_msleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_wait_after_reset(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahci_enable_fbs(ptr noundef %ap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 4
  %fbs_supported = getelementptr inbounds %struct.ahci_port_priv, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %fbs_supported to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fbs_supported, align 4, !range !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 256
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %10 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no.i, align 4
  %mul.i.i = shl i32 %11, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 64
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !532
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %fbs_enabled = getelementptr inbounds %struct.ahci_port_priv, ptr %5, i32 0, i32 11
  %14 = ptrtoint ptr %fbs_enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %fbs_enabled, align 1
  %fbs_last_dev = getelementptr inbounds %struct.ahci_port_priv, ptr %5, i32 0, i32 12
  %15 = ptrtoint ptr %fbs_last_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %fbs_last_dev, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %stop_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 26
  %16 = ptrtoint ptr %stop_engine to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stop_engine, align 4
  %call7 = tail call i32 %17(ptr noundef %ap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !533
  tail call void @arm_heavy_mb() #8
  %or = or i32 %13, 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #8, !srcloc !435
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !534
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool19.not = icmp eq i32 %20, 0
  %21 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host, align 4
  %dev31 = getelementptr inbounds %struct.ata_host, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev31, align 4
  br i1 %tobool19.not, label %do.end29, label %do.end23

do.end23:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.163) #11
  %fbs_enabled25 = getelementptr inbounds %struct.ahci_port_priv, ptr %5, i32 0, i32 11
  %25 = ptrtoint ptr %fbs_enabled25 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %fbs_enabled25, align 1
  %fbs_last_dev26 = getelementptr inbounds %struct.ahci_port_priv, ptr %5, i32 0, i32 12
  %26 = ptrtoint ptr %fbs_last_dev26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %fbs_last_dev26, align 4
  br label %if.end32

do.end29:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.166) #11
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %do.end23
  %start_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 25
  %27 = ptrtoint ptr %start_engine to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %start_engine, align 4
  tail call void %28(ptr noundef %ap) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end6.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_check_ready(ptr nocapture noundef readonly %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 256
  %mul.i.i = shl i32 %5, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !535
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool.not.i = icmp sgt i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %10)
  %cmp.i = icmp ugt i32 %10, -16777217
  %..i = select i1 %cmp.i, i32 -19, i32 0
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %..i
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_do_hardreset(ptr noundef %link, ptr nocapture noundef writeonly %class, i32 noundef %deadline, ptr noundef %online) #0 align 64 {
entry:
  %tf.i = alloca %struct.ata_taskfile, align 4
  %tf = alloca %struct.ata_taskfile, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 12, i32 0, i32 5
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %sata_deb_timing_normal.sata_deb_timing_hotplug.i = select i1 %tobool.not.i, ptr @sata_deb_timing_normal, ptr @sata_deb_timing_hotplug
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 128
  %private_data = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %private_data2 = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data2, align 4
  %rx_fis = getelementptr inbounds %struct.ahci_port_priv, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %rx_fis to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_fis, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf) #8
  %stop_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 26
  %12 = ptrtoint ptr %stop_engine to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stop_engine, align 4
  %call3 = tail call i32 %13(ptr noundef %3) #8
  %device = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14
  %14 = call ptr @memset(ptr %tf, i32 0, i32 24)
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 128
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %ctl.i = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctl.i, align 4
  %ctl1.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 2
  %21 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %ctl1.i, align 1
  %devno.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14, i32 0, i32 1
  %22 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  %spec.select.i = select i1 %cmp.i, i8 -96, i8 -80
  %24 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.select.i, ptr %24, align 4
  %command = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 14
  %26 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -128, ptr %command, align 1
  call void @ata_tf_to_fis(ptr noundef nonnull %tf, i8 noundef zeroext 0, i32 noundef 0, ptr noundef %add.ptr) #8
  %call4 = call i32 @sata_link_hardreset(ptr noundef %link, ptr noundef nonnull %sata_deb_timing_normal.sata_deb_timing_hotplug.i, i32 noundef %deadline, ptr noundef %online, ptr noundef nonnull @ahci_check_ready) #8
  %start_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 25
  %27 = ptrtoint ptr %start_engine to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %start_engine, align 4
  call void %28(ptr noundef %3) #8
  %29 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %online, align 1, !range !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %host, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %33 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port_no.i.i, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %32, i32 0, i32 5
  %35 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %private_data.i.i.i, align 4
  %mmio1.i.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %mmio1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 256
  %mul.i.i.i = shl i32 %34, 7
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf.i) #8
  %39 = call ptr @memset(ptr %tf.i, i32 255, i32 24)
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 36
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !436
  %41 = call i32 @llvm.bswap.i32(i32 %40) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !521
  %shr.i = lshr i32 %41, 24
  %conv.i = trunc i32 %shr.i to i8
  %lbah.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 12
  %42 = ptrtoint ptr %lbah.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i, ptr %lbah.i, align 1
  %shr4.i = lshr i32 %41, 16
  %conv6.i = trunc i32 %shr4.i to i8
  %lbam.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 11
  %43 = ptrtoint ptr %lbam.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv6.i, ptr %lbam.i, align 2
  %shr7.i = lshr i32 %41, 8
  %conv9.i = trunc i32 %shr7.i to i8
  %lbal.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 10
  %44 = ptrtoint ptr %lbal.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv9.i, ptr %lbal.i, align 1
  %conv11.i = trunc i32 %41 to i8
  %nsect.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 9
  %45 = ptrtoint ptr %nsect.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv11.i, ptr %nsect.i, align 4
  %call12.i = call i32 @ata_port_classify(ptr noundef %3, ptr noundef nonnull %tf.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i) #8
  %46 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call12.i, ptr %class, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf) #8
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_to_fis(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_handle_port_intr(ptr nocapture noundef readonly %host, i32 noundef %irq_masked) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 3
  %0 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16.not = icmp eq i32 %1, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %handled.019 = phi i32 [ 0, %for.body.lr.ph ], [ %handled.1, %cleanup.for.body_crit_edge ]
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.017
  %and = and i32 %shl, %irq_masked
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.ata_host, ptr %host, i32 0, i32 12, i32 %i.017
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i.i, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i.i.i, align 4
  %mmio1.i.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %mmio1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 256
  %mul.i.i.i = shl i32 %7, 7
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !436
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !537
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #8, !srcloc !435
  tail call fastcc void @ahci_handle_port_interrupt(ptr noundef nonnull %3, ptr noundef %add.ptr2.i.i.i, i32 noundef %13) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call = tail call i32 @ata_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %do.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.78, i32 noundef %i.017) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else.cleanup_crit_edge, %if.then2, %for.body.cleanup_crit_edge
  %handled.1 = phi i32 [ %handled.019, %for.body.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %do.end ], [ 1, %if.then2 ]
  %inc = add nuw i32 %i.017, 1
  %16 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_ports, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %handled.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %handled.1, %cleanup.for.end_crit_edge ]
  ret i32 %handled.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_ratelimit() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sata_pmp_error_handler(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahci_print_info(ptr nocapture noundef readonly %host, ptr noundef %scc_s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %version = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  %cap1 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %cap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cap1, align 4
  %cap22 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %cap22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cap22, align 4
  %port_map = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_map, align 4
  %shr = lshr i32 %5, 20
  %and = and i32 %shr, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 3
  br i1 %10, label %switch.lookup, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.ahci_print_info, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end

do.end:                                           ; preds = %switch.lookup, %entry.do.end_crit_edge
  %speed_s.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.83, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %shr11 = lshr i32 %3, 24
  %shr13 = lshr i32 %3, 16
  %and14 = and i32 %shr13, 255
  %shr15 = lshr i32 %3, 8
  %and16 = and i32 %shr15, 255
  %and17 = and i32 %3, 255
  %shr18 = lshr i32 %5, 8
  %and19 = and i32 %shr18, 31
  %add = add nuw nsw i32 %and19, 1
  %and20 = and i32 %5, 31
  %add21 = add nuw nsw i32 %and20, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.84, i32 noundef %shr11, i32 noundef %and14, i32 noundef %and16, i32 noundef %and17, i32 noundef %add, i32 noundef %add21, ptr noundef nonnull %speed_s.0, i32 noundef %9, ptr noundef %scc_s) #11
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  %cond = select i1 %tobool.not, ptr @.str.90, ptr @.str.89
  %and27 = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %cond29 = select i1 %tobool28.not, ptr @.str.90, ptr @.str.91
  %and30 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %cond32 = select i1 %tobool31.not, ptr @.str.90, ptr @.str.92
  %and33 = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %cond35 = select i1 %tobool34.not, ptr @.str.90, ptr @.str.93
  %and36 = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %cond38 = select i1 %tobool37.not, ptr @.str.90, ptr @.str.94
  %and39 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %cond41 = select i1 %tobool40.not, ptr @.str.90, ptr @.str.95
  %and42 = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %cond44 = select i1 %tobool43.not, ptr @.str.90, ptr @.str.96
  %and45 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %cond47 = select i1 %tobool46.not, ptr @.str.90, ptr @.str.97
  %and48 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %cond50 = select i1 %tobool49.not, ptr @.str.90, ptr @.str.98
  %and51 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %cond53 = select i1 %tobool52.not, ptr @.str.90, ptr @.str.99
  %and54 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %cond56 = select i1 %tobool55.not, ptr @.str.90, ptr @.str.100
  %and57 = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %cond59 = select i1 %tobool58.not, ptr @.str.90, ptr @.str.101
  %and60 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %cond62 = select i1 %tobool61.not, ptr @.str.90, ptr @.str.102
  %and63 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %cond65 = select i1 %tobool64.not, ptr @.str.90, ptr @.str.103
  %and66 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %cond68 = select i1 %tobool67.not, ptr @.str.90, ptr @.str.104
  %and69 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %cond71 = select i1 %tobool70.not, ptr @.str.90, ptr @.str.105
  %and72 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %cond74 = select i1 %tobool73.not, ptr @.str.90, ptr @.str.106
  %and75 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %cond77 = select i1 %tobool76.not, ptr @.str.90, ptr @.str.107
  %and78 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  %cond80 = select i1 %tobool79.not, ptr @.str.90, ptr @.str.108
  %and81 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %cond83 = select i1 %tobool82.not, ptr @.str.90, ptr @.str.109
  %and84 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %cond86 = select i1 %tobool85.not, ptr @.str.90, ptr @.str.110
  %and87 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  %cond89 = select i1 %tobool88.not, ptr @.str.90, ptr @.str.111
  %and90 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  %cond92 = select i1 %tobool91.not, ptr @.str.90, ptr @.str.112
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.87, ptr noundef nonnull %cond, ptr noundef nonnull %cond29, ptr noundef nonnull %cond32, ptr noundef nonnull %cond35, ptr noundef nonnull %cond38, ptr noundef nonnull %cond41, ptr noundef nonnull %cond44, ptr noundef nonnull %cond47, ptr noundef nonnull %cond50, ptr noundef nonnull %cond53, ptr noundef nonnull %cond56, ptr noundef nonnull %cond59, ptr noundef nonnull %cond62, ptr noundef nonnull %cond65, ptr noundef nonnull %cond68, ptr noundef nonnull %cond71, ptr noundef nonnull %cond74, ptr noundef nonnull %cond77, ptr noundef nonnull %cond80, ptr noundef nonnull %cond83, ptr noundef nonnull %cond86, ptr noundef nonnull %cond89, ptr noundef nonnull %cond92) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ahci_set_em_messages(ptr nocapture noundef %hpriv, ptr nocapture noundef %pi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 3
  %0 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  %add.ptr5 = getelementptr i8, ptr %1, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !436
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !539
  %6 = load i8, ptr @ahci_em_messages, align 1, !range !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cap = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 4
  %7 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cap, align 4
  %and = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %and10 = lshr i32 %5, 16
  %9 = trunc i32 %and10 to i8
  %conv = and i8 %9, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool11.not = icmp eq i8 %conv, 0
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.then12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.end
  %10 = lshr i32 %3, 14
  %mul = and i32 %10, 262140
  %em_loc14 = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 11
  %11 = ptrtoint ptr %em_loc14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %em_loc14, align 4
  %and15 = shl i32 %3, 2
  %mul16 = and i32 %and15, 1020
  %em_buf_sz = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 12
  %12 = ptrtoint ptr %em_buf_sz to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul16, ptr %em_buf_sz, align 4
  %conv17 = zext i8 %conv to i32
  %em_msg_type = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 13
  %13 = ptrtoint ptr %em_msg_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv17, ptr %em_msg_type, align 4
  %14 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pi, align 4
  %or = or i32 %15, 2097152
  store i32 %or, ptr %pi, align 4
  %and18 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %or22 = or i32 %15, 6291456
  %16 = ptrtoint ptr %pi to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or22, ptr %pi, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahci_host_activate(ptr noundef %host, ptr noundef %sht) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %irq_handler = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_handler, align 4
  %tobool2.not = icmp eq ptr %5, null
  %cmp.not = icmp eq ptr %5, @ahci_single_level_irq_intr
  %or.cond = or i1 %tobool2.not, %cmp.not
  br i1 %or.cond, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.113) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %get_irq_vector = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %get_irq_vector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_irq_vector, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %10 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.116) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 4
  %call.i = tail call i32 @ata_host_start(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end11
  %n_ports.i = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 3
  %14 = ptrtoint ptr %n_ports.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp41.not.i = icmp eq i32 %15, 0
  br i1 %cmp41.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %get_irq_vector.i = getelementptr inbounds %struct.ahci_host_priv, ptr %13, i32 0, i32 28
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ata_host, ptr %host, i32 0, i32 12, i32 %i.042.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %private_data1.i = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 48
  %18 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data1.i, align 4
  %20 = ptrtoint ptr %get_irq_vector.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_irq_vector.i, align 4
  %call2.i = tail call i32 %21(ptr noundef %host, i32 noundef %i.042.i) #8
  %tobool3.not.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @disable_irq(i32 noundef %call2.i) #8
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.i
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %irq_desc.i = getelementptr inbounds %struct.ahci_port_priv, ptr %19, i32 0, i32 14
  %24 = ptrtoint ptr %irq_desc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_desc.i, align 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %23, i32 noundef %call2.i, ptr noundef nonnull @ahci_multi_irqs_intr_hard, ptr noundef null, i32 noundef 0, ptr noundef %25, ptr noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %29, ptr noundef nonnull @.str.185, i32 noundef %call2.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %if.then4.i
  %inc.i = add nuw i32 %i.042.i, 1
  %30 = ptrtoint ptr %n_ports.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_ports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %31
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call15.i = tail call i32 @ata_host_register(ptr noundef %host, ptr noundef %sht) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %irq1 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 24
  %32 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq1, align 4
  %irq_handler12 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 27
  %34 = ptrtoint ptr %irq_handler12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irq_handler12, align 4
  %call13 = tail call i32 @ata_host_activate(ptr noundef %host, i32 noundef %33, ptr noundef %35, i32 noundef 128, ptr noundef %sht) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %for.end.i, %if.end5.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ -5, %do.end9 ], [ %call13, %if.else ], [ %call15.i, %for.end.i ], [ %call.i, %if.end11.cleanup_crit_edge ], [ %call.i.i, %if.end5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_show_host_caps(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %cap = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cap, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.119, i32 noundef %7)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_show_host_cap2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %cap2 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cap2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cap2, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.119, i32 noundef %7)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_show_host_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %version = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.119, i32 noundef %7)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_show_port_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 256
  %mul.i.i = shl i32 %5, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %dev.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 32
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #8
  %add.ptr3 = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !436
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !540
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.119, i32 noundef %13)
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 32
  %call.i.i11 = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 5) #8
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_read_em_buffer(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1, align 4
  %em_loc = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %em_loc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %em_loc, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 %9
  %dev.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 32
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #8
  %lock = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 8
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #8
  %add.ptr10 = getelementptr i8, ptr %7, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !436
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !541
  %flags14 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags14, align 4
  %and = and i32 %17, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and15 = and i32 %15, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond = select i1 %tobool.not, i1 %tobool16.not, i1 false
  br i1 %or.cond, label %lor.lhs.false17, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false17:                                  ; preds = %entry
  %em_msg_type = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 13
  %18 = ptrtoint ptr %em_msg_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %em_msg_type, align 4
  %and18 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %lor.lhs.false17.cleanup_crit_edge, label %if.end

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false17
  %and21 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end.cleanup_crit_edge, label %if.end25

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %and26 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end25.if.end30_crit_edge

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %em_buf_sz = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 12
  %20 = ptrtoint ptr %em_buf_sz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %em_buf_sz, align 4
  %add.ptr29 = getelementptr i8, ptr %add.ptr2, i32 %21
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25.if.end30_crit_edge
  %em_mmio.0 = phi ptr [ %add.ptr2, %if.end25.if.end30_crit_edge ], [ %add.ptr29, %if.then28 ]
  %em_buf_sz31 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 12
  %22 = ptrtoint ptr %em_buf_sz31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %em_buf_sz31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %23)
  %cmp32 = icmp ugt i32 %23, 4096
  br i1 %cmp32, label %if.then34, label %if.end45

if.then34:                                        ; preds = %if.end30
  %call35 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.ahci_read_em_buffer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.for.body.preheader_crit_edge, label %do.end40

if.then34.for.body.preheader_crit_edge:           ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

do.end40:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %print_id, align 4
  %26 = ptrtoint ptr %em_buf_sz31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %em_buf_sz31, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %25, i32 noundef %27, i32 noundef 4096) #11
  br label %for.body.preheader

if.end45:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp46121.not = icmp eq i32 %23, 0
  br i1 %cmp46121.not, label %if.end45.cleanup_crit_edge, label %if.end45.for.body.preheader_crit_edge

if.end45.for.body.preheader_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end45.for.body.preheader_crit_edge, %do.end40, %if.then34.for.body.preheader_crit_edge
  %count.0125 = phi i32 [ %23, %if.end45.for.body.preheader_crit_edge ], [ 4096, %do.end40 ], [ 4096, %if.then34.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0122 = phi i32 [ %add69, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add.ptr50 = getelementptr i8, ptr %em_mmio.0, i32 %i.0122
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #8, !srcloc !436
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !542
  %conv55 = trunc i32 %29 to i8
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.0122
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv55, ptr %arrayidx, align 1
  %shr = lshr i32 %29, 8
  %conv57 = trunc i32 %shr to i8
  %add = or i32 %i.0122, 1
  %arrayidx58 = getelementptr i8, ptr %buf, i32 %add
  %31 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv57, ptr %arrayidx58, align 1
  %shr59 = lshr i32 %29, 16
  %conv61 = trunc i32 %shr59 to i8
  %add62 = or i32 %i.0122, 2
  %arrayidx63 = getelementptr i8, ptr %buf, i32 %add62
  %32 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv61, ptr %arrayidx63, align 1
  %shr64 = lshr i32 %29, 24
  %conv66 = trunc i32 %shr64 to i8
  %add67 = or i32 %i.0122, 3
  %arrayidx68 = getelementptr i8, ptr %buf, i32 %add67
  %33 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv66, ptr %arrayidx68, align 1
  %add69 = add i32 %i.0122, 4
  %cmp46 = icmp ult i32 %add69, %count.0125
  br i1 %cmp46, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false17.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ %add69, %for.body.cleanup_crit_edge ]
  %34 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %call7) #8
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 32
  %call.i.i120 = tail call i32 @__pm_runtime_idle(ptr noundef %37, i32 noundef 5) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_store_em_buffer(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1, align 4
  %em_loc = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %em_loc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %em_loc, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 %9
  %flags3 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags3, align 4
  %and = and i32 %11, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %em_msg_type = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 13
  %12 = ptrtoint ptr %em_msg_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %em_msg_type, align 4
  %and4 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp ne i32 %and4, 0
  %rem = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool7.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %tobool7.not, %tobool5.not
  br i1 %or.cond, label %lor.lhs.false8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %em_buf_sz = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 12
  %14 = ptrtoint ptr %em_buf_sz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %em_buf_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %size)
  %cmp = icmp ult i32 %15, %size
  br i1 %cmp, label %lor.lhs.false8.cleanup_crit_edge, label %if.end

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false8
  %dev.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 32
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 32
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #8
  %lock = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock, align 8
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #8
  %add.ptr17 = getelementptr i8, ptr %7, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #8, !srcloc !436
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !543
  %and21 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %for.cond.preheader, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp2691.not = icmp eq i32 %size, 0
  br i1 %cmp2691.not, label %for.cond.preheader.do.body46_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body46_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.092 = phi i32 [ %add45, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.092
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %conv28 = zext i8 %23 to i32
  %add = or i32 %i.092, 1
  %arrayidx29 = getelementptr i8, ptr %buf, i32 %add
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %25 to i32
  %shl = shl nuw nsw i32 %conv30, 8
  %or = or i32 %shl, %conv28
  %add31 = or i32 %i.092, 2
  %arrayidx32 = getelementptr i8, ptr %buf, i32 %add31
  %26 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %27 to i32
  %shl34 = shl nuw nsw i32 %conv33, 16
  %or35 = or i32 %or, %shl34
  %add36 = or i32 %i.092, 3
  %arrayidx37 = getelementptr i8, ptr %buf, i32 %add36
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %29 to i32
  %shl39 = shl nuw i32 %conv38, 24
  %or40 = or i32 %or35, %shl39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !544
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %or40)
  %add.ptr44 = getelementptr i8, ptr %add.ptr2, i32 %i.092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %30) #8, !srcloc !435
  %add45 = add i32 %i.092, 4
  %cmp26 = icmp ult i32 %add45, %size
  br i1 %cmp26, label %for.body.for.body_crit_edge, label %for.body.do.body46_crit_edge

for.body.do.body46_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body46:                                        ; preds = %for.body.do.body46_crit_edge, %for.cond.preheader.do.body46_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !545
  tail call void @arm_heavy_mb() #8
  %or49 = or i32 %21, 256
  %31 = tail call i32 @llvm.bswap.i32(i32 %or49)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %31) #8, !srcloc !435
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body46, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %size, %do.body46 ], [ -16, %if.end.cleanup.sink.split_crit_edge ]
  %32 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %call14) #8
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 32
  %call.i.i90 = tail call i32 @__pm_runtime_idle(ptr noundef %35, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_show_em_supported(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1, align 4
  %dev.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 32
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 32
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #8
  %add.ptr3 = getelementptr i8, ptr %7, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !436
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !546
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 32
  %call.i.i23 = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 5) #8
  %and = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.90, ptr @.str.96
  %and7 = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.90, ptr @.str.127
  %and10 = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %cond12 = select i1 %tobool11.not, ptr @.str.90, ptr @.str.128
  %and13 = and i32 %11, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond15 = select i1 %tobool14.not, ptr @.str.90, ptr @.str.129
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.126, ptr noundef nonnull %cond, ptr noundef nonnull %cond9, ptr noundef nonnull %cond12, ptr noundef nonnull %cond15)
  ret i32 %call16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_scr_lpm(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahci_set_aggressive_devslp(ptr noundef %ap, i1 noundef zeroext %sleep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 256
  %mul.i.i = shl i32 %5, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %device = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 68
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !547
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %dev4 = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.130) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %sleep, label %if.end28, label %if.then6

if.then6:                                         ; preds = %if.end
  %and7 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %do.body10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body10:                                        ; preds = %if.then6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !548
  tail call void @arm_heavy_mb() #8
  %and13 = and i32 %9, -2
  %14 = tail call i32 @llvm.bswap.i32(i32 %and13)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #8, !srcloc !435
  %call15 = tail call i32 @ata_dev_set_feature(ptr noundef %device, i8 noundef zeroext -112, i8 noundef zeroext 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15)
  %switch = icmp ult i32 %call15, 2
  br i1 %switch, label %do.body10.cleanup_crit_edge, label %do.end20

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end20:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 128
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14, i32 0, i32 1
  %23 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %devno, align 4
  %add = add i32 %24, %22
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %20, i32 noundef %add) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %and29 = lshr i32 %9, 25
  %shr = and i32 %and29, 15
  %25 = load i32, ptr @devslp_idle_timeout, align 4
  %add30 = add nuw nsw i32 %shr, 1
  %div = udiv i32 %25, %add30
  %26 = tail call i32 @llvm.umin.i32(i32 %div, i32 1023)
  %and36 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp ne i32 %and36, 0
  %shr34 = lshr i32 %9, 15
  %and35 = and i32 %shr34, 1023
  call void @__sanitizer_cov_trace_cmp4(i32 %and35, i32 %26)
  %cmp39 = icmp eq i32 %and35, %26
  %or.cond = select i1 %tobool37.not, i1 %cmp39, i1 false
  br i1 %or.cond, label %if.end28.cleanup_crit_edge, label %if.end41

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %if.end28
  %stop_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 26
  %27 = ptrtoint ptr %stop_engine to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stop_engine, align 4
  %call42 = tail call i32 %28(ptr noundef %ap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %arrayidx = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14, i32 0, i32 26, i32 7
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %tobool47.not = icmp sgt i8 %30, -1
  br i1 %tobool47.not, label %if.end45.if.end62_crit_edge, label %if.then48

if.end45.if.end62_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %devslp_timing = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14, i32 0, i32 26
  %31 = ptrtoint ptr %devslp_timing to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %devslp_timing, align 128
  %33 = and i8 %32, 31
  %and52 = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool53.not = icmp eq i8 %33, 0
  %arrayidx57 = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14, i32 0, i32 26, i32 1
  %34 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool59.not = icmp eq i8 %35, 0
  %and52.op = shl nuw nsw i32 %and52, 10
  %phi.bo = select i1 %tobool53.not, i32 10240, i32 %and52.op
  %conv58.op = shl nuw nsw i32 %conv58, 2
  %phi.bo139 = select i1 %tobool59.not, i32 80, i32 %conv58.op
  %36 = or i32 %phi.bo139, %phi.bo
  br label %if.end62

if.end62:                                         ; preds = %if.then48, %if.end45.if.end62_crit_edge
  %or69 = phi i32 [ %36, %if.then48 ], [ 10320, %if.end45.if.end62_crit_edge ]
  %37 = and i32 %9, -33554430
  %shl = shl nuw nsw i32 %26, 15
  %or = or i32 %37, %shl
  %or68 = or i32 %or, 1
  %or70 = or i32 %or69, %or68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !549
  tail call void @arm_heavy_mb() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %or70)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %38) #8, !srcloc !435
  %start_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 25
  %39 = ptrtoint ptr %start_engine to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %start_engine, align 4
  tail call void %40(ptr noundef %ap) #8
  %call75 = tail call i32 @ata_dev_set_feature(ptr noundef %device, i8 noundef zeroext 16, i8 noundef zeroext 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call75)
  %switch140 = icmp ult i32 %call75, 2
  br i1 %switch140, label %if.end62.cleanup_crit_edge, label %do.end83

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end83:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device, align 128
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 128
  %print_id87 = getelementptr inbounds %struct.ata_port, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %print_id87 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %print_id87, align 4
  %pmp89 = getelementptr inbounds %struct.ata_link, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %pmp89 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pmp89, align 4
  %devno90 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14, i32 0, i32 1
  %49 = ptrtoint ptr %devno90 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %devno90, align 4
  %add91 = add i32 %50, %48
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %46, i32 noundef %add91) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end83, %if.end62.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %do.end20, %do.body10.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_dev_set_feature(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_link_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_bad_pmp_check_ready(ptr nocapture noundef readonly %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 256
  %mul.i.i = shl i32 %5, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !550
  %add.ptr5 = getelementptr i8, ptr %add.ptr2.i.i, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !551
  %12 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool.not.i = icmp sgt i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %10)
  %cmp.i = icmp ugt i32 %10, -16777217
  %..i = select i1 %cmp.i, i32 -19, i32 0
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %..i
  %retval.0 = select i1 %tobool.not, i32 %retval.0.i, i32 -5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_std_postreset(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_qc_defer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_pmp_qc_defer_cmd_switch(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahci_handle_port_interrupt(ptr noundef %ap, ptr noundef %port_mmio, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data1 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 4
  %pflags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 4
  %6 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pflags, align 16
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !552

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and9 = and i32 %status, -8388609
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.addr.0 = phi i32 [ %and9, %if.then ], [ %status, %entry.if.end_crit_edge ]
  %call = tail call zeroext i1 @sata_lpm_ignore_phy_events(ptr noundef %link) #8
  br i1 %call, label %if.then11, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and12 = and i32 %status.addr.0, -4194305
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link, align 128
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host.i.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 7
  %12 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no.i.i, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data.i.i.i, align 4
  %mmio1.i.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %mmio1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 256
  %mul.i.i.i = shl i32 %13, 7
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !450
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #8, !srcloc !435
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %status.addr.1 = phi i32 [ %and12, %if.then11 ], [ %status.addr.0, %if.end.if.end15_crit_edge ]
  %and16 = and i32 %status.addr.1, 2025848912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end25, label %if.then24, !prof !552

if.then24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ahci_error_intr(ptr noundef %ap, i32 noundef %status.addr.1)
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %and26 = and i32 %status.addr.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end83_crit_edge, label %if.then28

if.end25.if.end83_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then28:                                        ; preds = %if.end25
  %cap = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cap, align 4
  %and29 = and i32 %19, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call i32 @sata_async_notification(ptr noundef %ap) #8
  br label %if.end83

if.else:                                          ; preds = %if.then28
  %fbs_enabled = getelementptr inbounds %struct.ahci_port_priv, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %fbs_enabled to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fbs_enabled, align 1, !range !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool33.not = icmp eq i8 %21, 0
  br i1 %tobool33.not, label %if.else75, label %land.end

land.end:                                         ; preds = %if.else
  %.b171 = load i1, ptr @ahci_handle_port_interrupt.__already_done, align 1
  br i1 %.b171, label %land.end.if.end83_crit_edge, label %if.then45, !prof !552

land.end.if.end83_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then45:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ahci_handle_port_interrupt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1859, i32 noundef 9, ptr noundef null) #8
  br label %if.end83

if.else75:                                        ; preds = %if.else
  %rx_fis = getelementptr inbounds %struct.ahci_port_priv, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %rx_fis to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_fis, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 88
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr, align 4
  %26 = and i32 %25, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool77.not = icmp eq i32 %26, 0
  br i1 %tobool77.not, label %if.else75.if.end83_crit_edge, label %if.then78

if.else75.if.end83_crit_edge:                     ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then78:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #10
  %call79 = tail call i32 @sata_async_notification(ptr noundef %ap) #8
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.else75.if.end83_crit_edge, %if.then45, %land.end.if.end83_crit_edge, %if.then31, %if.end25.if.end83_crit_edge
  %fbs_enabled84 = getelementptr inbounds %struct.ahci_port_priv, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %fbs_enabled84 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fbs_enabled84, align 1, !range !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool85.not = icmp eq i8 %28, 0
  %qc_active102 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 21
  %29 = ptrtoint ptr %qc_active102 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %qc_active102, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool103.not = icmp eq i64 %30, 0
  br i1 %tobool85.not, label %if.else101, label %if.then86

if.then86:                                        ; preds = %if.end83
  br i1 %tobool103.not, label %if.then86.if.end120_crit_edge, label %if.then89

if.then86.if.end120_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then89:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr90 = getelementptr i8, ptr %port_mmio, i32 52
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !553
  %add.ptr96 = getelementptr i8, ptr %port_mmio, i32 56
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !554
  %33 = or i32 %32, %31
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  br label %if.end120

if.else101:                                       ; preds = %if.end83
  br i1 %tobool103.not, label %if.else101.if.else112_crit_edge, label %land.lhs.true

if.else101.if.else112_crit_edge:                  ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else112

land.lhs.true:                                    ; preds = %if.else101
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %sactive = getelementptr inbounds %struct.ata_link, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %sactive to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sactive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool104.not = icmp eq i32 %38, 0
  br i1 %tobool104.not, label %land.lhs.true.if.else112_crit_edge, label %if.then105

land.lhs.true.if.else112_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else112

if.then105:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr108 = getelementptr i8, ptr %port_mmio, i32 52
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108) #8, !srcloc !436
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !555
  br label %if.end120

if.else112:                                       ; preds = %land.lhs.true.if.else112_crit_edge, %if.else101.if.else112_crit_edge
  %add.ptr115 = getelementptr i8, ptr %port_mmio, i32 56
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #8, !srcloc !436
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !556
  br label %if.end120

if.end120:                                        ; preds = %if.else112, %if.then105, %if.then89, %if.then86.if.end120_crit_edge
  %qc_active.0 = phi i32 [ %34, %if.then89 ], [ 0, %if.then86.if.end120_crit_edge ], [ %40, %if.then105 ], [ %42, %if.else112 ]
  %conv = zext i32 %qc_active.0 to i64
  %call121 = tail call i32 @ata_qc_complete_multiple(ptr noundef %ap, i64 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp = icmp slt i32 %call121, 0
  %spec.select = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %spec.select, label %if.then134, label %if.end120.cleanup_crit_edge, !prof !557

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then134:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %err_mask = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %43 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %err_mask, align 4
  %or135 = or i32 %44, 2
  store i32 %or135, ptr %err_mask, align 4
  %action = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 3
  %45 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %action, align 4
  %or136 = or i32 %46, 6
  store i32 %or136, ptr %action, align 4
  %call137 = tail call i32 @ata_port_freeze(ptr noundef %ap) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then134, %if.end120.cleanup_crit_edge, %if.then24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sata_lpm_ignore_phy_events(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahci_error_intr(ptr noundef %ap, i32 noundef %irq_stat) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 4
  %link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %eh_info = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11
  %fbs_enabled = getelementptr inbounds %struct.ahci_port_priv, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %fbs_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fbs_enabled, align 1, !range !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 256
  %mul.i.i = shl i32 %9, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 64
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !558
  %shr = lshr i32 %13, 16
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then.if.end14_crit_edge, label %land.lhs.true

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %if.then
  %nr_pmp_links = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 27
  %14 = ptrtoint ptr %nr_pmp_links to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_pmp_links, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %15)
  %cmp = icmp slt i32 %shr, %15
  br i1 %cmp, label %if.then6, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %pmp_link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 28
  %16 = ptrtoint ptr %pmp_link to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pmp_link, align 8
  %arrayidx = getelementptr %struct.ata_link, ptr %17, i32 %shr
  br label %if.end14

if.else:                                          ; preds = %entry
  %call7 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %ap, i32 noundef 0) #8
  %tobool8.not191 = icmp eq ptr %call7, null
  br i1 %tobool8.not191, label %if.else.if.end14_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else.for.body_crit_edge
  %link2.1192 = phi ptr [ %call13, %for.inc.for.body_crit_edge ], [ %call7, %if.else.for.body_crit_edge ]
  %active_tag.i = getelementptr inbounds %struct.ata_link, ptr %link2.1192, i32 0, i32 3
  %18 = ptrtoint ptr %active_tag.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %active_tag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %19)
  %20 = icmp ult i32 %19, 33
  br i1 %20, label %for.body.if.end14_crit_edge, label %ata_link_active.exit

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

ata_link_active.exit:                             ; preds = %for.body
  %sactive.i = getelementptr inbounds %struct.ata_link, ptr %link2.1192, i32 0, i32 4
  %21 = ptrtoint ptr %sactive.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sactive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not = icmp eq i32 %22, 0
  br i1 %tobool.i.not, label %for.inc, label %ata_link_active.exit.if.end14_crit_edge

ata_link_active.exit.if.end14_crit_edge:          ; preds = %ata_link_active.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.inc:                                          ; preds = %ata_link_active.exit
  %call13 = tail call ptr @ata_link_next(ptr noundef nonnull %link2.1192, ptr noundef %ap, i32 noundef 0) #8
  %tobool8.not = icmp eq ptr %call13, null
  br i1 %tobool8.not, label %for.inc.if.end14_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end14_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %for.inc.if.end14_crit_edge, %ata_link_active.exit.if.end14_crit_edge, %for.body.if.end14_crit_edge, %if.else.if.end14_crit_edge, %if.then6, %land.lhs.true.if.end14_crit_edge, %if.then.if.end14_crit_edge
  %fbs_need_dec.1.off0 = phi i1 [ true, %if.then6 ], [ false, %land.lhs.true.if.end14_crit_edge ], [ false, %if.then.if.end14_crit_edge ], [ false, %if.else.if.end14_crit_edge ], [ false, %for.body.if.end14_crit_edge ], [ false, %for.inc.if.end14_crit_edge ], [ false, %ata_link_active.exit.if.end14_crit_edge ]
  %link2.2 = phi ptr [ %arrayidx, %if.then6 ], [ null, %land.lhs.true.if.end14_crit_edge ], [ null, %if.then.if.end14_crit_edge ], [ null, %if.else.if.end14_crit_edge ], [ %link2.1192, %ata_link_active.exit.if.end14_crit_edge ], [ null, %for.inc.if.end14_crit_edge ], [ %link2.1192, %for.body.if.end14_crit_edge ]
  %tobool15.not = icmp eq ptr %link2.2, null
  %spec.select = select i1 %tobool15.not, ptr %link, ptr %link2.2
  %active_tag = getelementptr inbounds %struct.ata_link, ptr %spec.select, i32 0, i32 3
  %23 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %active_tag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %24)
  %25 = icmp ugt i32 %24, 32
  %arrayidx.i.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %24
  %tobool.not11.i = icmp eq ptr %arrayidx.i.i, null
  %tobool.not.i = or i1 %25, %tobool.not11.i
  br i1 %tobool.not.i, label %if.end14.ata_qc_from_tag.exit_crit_edge, label %lor.lhs.false.i, !prof !557

if.end14.ata_qc_from_tag.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %ata_qc_from_tag.exit

lor.lhs.false.i:                                  ; preds = %if.end14
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %error_handler.i = getelementptr inbounds %struct.ata_port_operations, ptr %27, i32 0, i32 22
  %28 = ptrtoint ptr %error_handler.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %error_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %29, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.ata_qc_from_tag.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ata_qc_from_tag.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ata_qc_from_tag.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %24, i32 6
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %31, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  %call..i = select i1 %cmp.i, ptr %arrayidx.i.i, ptr null
  br label %ata_qc_from_tag.exit

ata_qc_from_tag.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.ata_qc_from_tag.exit_crit_edge, %if.end14.ata_qc_from_tag.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %lor.lhs.false.i.ata_qc_from_tag.exit_crit_edge ], [ null, %if.end14.ata_qc_from_tag.exit_crit_edge ], [ %call..i, %if.end.i ]
  %eh_info20 = getelementptr inbounds %struct.ata_link, ptr %spec.select, i32 0, i32 11
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info) #8
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.153, i32 noundef %irq_stat) #8
  %32 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %link, align 128
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %33, i32 0, i32 31
  %34 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %host.i.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %33, i32 0, i32 7
  %36 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_no.i.i, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %35, i32 0, i32 5
  %38 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %private_data.i.i.i, align 4
  %mmio1.i.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %mmio1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 256
  %mul.i.i.i = shl i32 %37, 7
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 48
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !436
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !449
  %44 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %link, align 128
  %host.i.i169 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 31
  %46 = ptrtoint ptr %host.i.i169 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host.i.i169, align 4
  %port_no.i.i170 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 7
  %48 = ptrtoint ptr %port_no.i.i170 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port_no.i.i170, align 4
  %private_data.i.i.i171 = getelementptr inbounds %struct.ata_host, ptr %47, i32 0, i32 5
  %50 = ptrtoint ptr %private_data.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %private_data.i.i.i171, align 4
  %mmio1.i.i.i172 = getelementptr inbounds %struct.ahci_host_priv, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %mmio1.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio1.i.i.i172, align 4
  %add.ptr.i.i.i173 = getelementptr i8, ptr %53, i32 256
  %mul.i.i.i174 = shl i32 %49, 7
  %add.ptr2.i.i.i175 = getelementptr i8, ptr %add.ptr.i.i.i173, i32 %mul.i.i.i174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !450
  tail call void @arm_heavy_mb() #8
  %add.ptr.i176 = getelementptr i8, ptr %add.ptr2.i.i.i175, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176, i32 %42) #8, !srcloc !435
  %serror25 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 1
  %54 = ptrtoint ptr %serror25 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %serror25, align 4
  %or = or i32 %55, %43
  store i32 %or, ptr %serror25, align 4
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %3, align 4
  %and26 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %and29 = and i32 %irq_stat, -134217729
  %irq_stat.addr.0 = select i1 %tobool27.not, i32 %irq_stat, i32 %and29
  %and31 = and i32 %irq_stat.addr.0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %ata_qc_from_tag.exit.if.end48_crit_edge, label %if.then33

ata_qc_from_tag.exit.if.end48_crit_edge:          ; preds = %ata_qc_from_tag.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then33:                                        ; preds = %ata_qc_from_tag.exit
  %tobool34.not = icmp eq ptr %retval.0.i, null
  %err_mask38 = getelementptr inbounds %struct.ata_link, ptr %spec.select, i32 0, i32 11, i32 2
  %err_mask = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i, i32 0, i32 20
  %err_mask38.sink195 = select i1 %tobool34.not, ptr %err_mask38, ptr %err_mask
  %58 = ptrtoint ptr %err_mask38.sink195 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %err_mask38.sink195, align 4
  %or39 = or i32 %59, 1
  store i32 %or39, ptr %err_mask38.sink195, align 4
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %3, align 4
  %and42 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then33.if.end48_crit_edge, label %if.then44

if.then33.if.end48_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then44:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %serror25 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %serror25, align 4
  %and46 = and i32 %63, -2049
  store i32 %and46, ptr %serror25, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.then33.if.end48_crit_edge, %ata_qc_from_tag.exit.if.end48_crit_edge
  %and49 = and i32 %irq_stat.addr.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end60_crit_edge, label %if.then51

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %rx_fis = getelementptr inbounds %struct.ahci_port_priv, ptr %5, i32 0, i32 5
  %64 = ptrtoint ptr %rx_fis to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_fis, align 4
  %add.ptr52 = getelementptr i8, ptr %65, i32 96
  %err_mask53 = getelementptr inbounds %struct.ata_link, ptr %spec.select, i32 0, i32 11, i32 2
  %66 = ptrtoint ptr %err_mask53 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %err_mask53, align 4
  %or54 = or i32 %67, 2
  store i32 %or54, ptr %err_mask53, align 4
  %action = getelementptr inbounds %struct.ata_link, ptr %spec.select, i32 0, i32 11, i32 3
  %68 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %action, align 4
  %or55 = or i32 %69, 6
  store i32 %or55, ptr %action, align 4
  %70 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr52, align 4
  %arrayidx57 = getelementptr i8, ptr %65, i32 100
  %72 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx57, align 4
  %arrayidx58 = getelementptr i8, ptr %65, i32 104
  %74 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx58, align 4
  %arrayidx59 = getelementptr i8, ptr %65, i32 108
  %76 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx59, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info20, ptr noundef nonnull @.str.154, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77) #8
  br label %if.end60

if.end60:                                         ; preds = %if.then51, %if.end48.if.end60_crit_edge
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 27
  %78 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i178.not = icmp eq i32 %79, 0
  %and63 = and i32 %irq_stat.addr.0, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %or.cond = select i1 %cmp.i178.not, i1 true, i1 %tobool64.not
  br i1 %or.cond, label %if.end60.if.end70_crit_edge, label %if.then65

if.end60.if.end70_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %err_mask66 = getelementptr inbounds %struct.ata_link, ptr %spec.select, i32 0, i32 11, i32 2
  %80 = ptrtoint ptr %err_mask66 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %err_mask66, align 4
  %or67 = or i32 %81, 2
  store i32 %or67, ptr %err_mask66, align 4
  %action68 = getelementptr inbounds %struct.ata_link, ptr %spec.select, i32 0, i32 11, i32 3
  %82 = ptrtoint ptr %action68 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %action68, align 4
  %or69 = or i32 %83, 6
  store i32 %or69, ptr %action68, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info20, ptr noundef nonnull @.str.155) #8
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %if.end60.if.end70_crit_edge
  %and71 = and i32 %irq_stat.addr.0, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.if.end78_crit_edge, label %if.then73

if.end70.if.end78_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %err_mask74 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %84 = ptrtoint ptr %err_mask74 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %err_mask74, align 4
  %or75 = or i32 %85, 32
  store i32 %or75, ptr %err_mask74, align 4
  %action76 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 3
  %86 = ptrtoint ptr %action76 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %action76, align 4
  %or77 = or i32 %87, 6
  store i32 %or77, ptr %action76, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.156) #8
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %if.end70.if.end78_crit_edge
  %and79 = and i32 %irq_stat.addr.0, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end92_crit_edge, label %if.then81

if.end78.if.end92_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then81:                                        ; preds = %if.end78
  br i1 %fbs_need_dec.1.off0, label %if.then83, label %if.else86

if.then83:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  %err_mask84 = getelementptr inbounds %struct.ata_link, ptr %spec.select, i32 0, i32 11, i32 2
  br label %if.end91

if.else86:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  %err_mask87 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %88 = ptrtoint ptr %err_mask87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %err_mask87, align 4
  %or88 = or i32 %89, 16
  store i32 %or88, ptr %err_mask87, align 4
  %action89 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 3
  br label %if.end91

if.end91:                                         ; preds = %if.else86, %if.then83
  %action89.sink197 = phi ptr [ %action89, %if.else86 ], [ %err_mask84, %if.then83 ]
  %.sink196 = phi i32 [ 6, %if.else86 ], [ 1, %if.then83 ]
  %90 = ptrtoint ptr %action89.sink197 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %action89.sink197, align 4
  %or90 = or i32 %91, %.sink196
  store i32 %or90, ptr %action89.sink197, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.157) #8
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end78.if.end92_crit_edge
  %and93 = and i32 %irq_stat.addr.0, 4194368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end92.if.end98_crit_edge, label %if.then95

if.end92.if.end98_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %probe_mask.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 6
  %92 = ptrtoint ptr %probe_mask.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %probe_mask.i, align 4
  %or.i = or i32 %93, 3
  store i32 %or.i, ptr %probe_mask.i, align 4
  %flags.i179 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 5
  %94 = ptrtoint ptr %flags.i179 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags.i179, align 4
  %or1.i = or i32 %95, 1
  store i32 %or1.i, ptr %flags.i179, align 4
  %action.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 3
  %96 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %action.i, align 4
  %or2.i = or i32 %97, 14
  store i32 %or2.i, ptr %action.i, align 4
  %err_mask.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %98 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %err_mask.i, align 4
  %or3.i = or i32 %99, 16
  store i32 %or3.i, ptr %err_mask.i, align 4
  %and96 = and i32 %irq_stat.addr.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  %cond = select i1 %tobool97.not, ptr @.str.160, ptr @.str.159
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.158, ptr noundef nonnull %cond) #8
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %if.end92.if.end98_crit_edge
  %and99 = and i32 %irq_stat.addr.0, 683671632
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.else103, label %if.then101

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %call102 = tail call i32 @ata_port_freeze(ptr noundef %ap) #8
  br label %if.end110

if.else103:                                       ; preds = %if.end98
  br i1 %fbs_need_dec.1.off0, label %if.then105, label %if.else107

if.then105:                                       ; preds = %if.else103
  %call106 = tail call i32 @ata_link_abort(ptr noundef %spec.select) #8
  %100 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %private_data1, align 4
  %102 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %host, align 4
  %port_no.i.i181 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %104 = ptrtoint ptr %port_no.i.i181 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %port_no.i.i181, align 4
  %private_data.i.i.i182 = getelementptr inbounds %struct.ata_host, ptr %103, i32 0, i32 5
  %106 = ptrtoint ptr %private_data.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %private_data.i.i.i182, align 4
  %mmio1.i.i.i183 = getelementptr inbounds %struct.ahci_host_priv, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %mmio1.i.i.i183 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio1.i.i.i183, align 4
  %add.ptr.i.i.i184 = getelementptr i8, ptr %109, i32 256
  %mul.i.i.i185 = shl i32 %105, 7
  %add.ptr2.i.i.i186 = getelementptr i8, ptr %add.ptr.i.i.i184, i32 %mul.i.i.i185
  %add.ptr.i187 = getelementptr i8, ptr %add.ptr2.i.i.i186, i32 64
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !559
  %fbs_enabled.i = getelementptr inbounds %struct.ahci_port_priv, ptr %101, i32 0, i32 11
  %111 = ptrtoint ptr %fbs_enabled.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %fbs_enabled.i, align 1, !range !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i188 = icmp eq i8 %112, 0
  br i1 %tobool.not.i188, label %do.body6.i, label %do.body12.i, !prof !557

do.body6.i:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/libahci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1686, 0\0A.popsection", ""() #8, !srcloc !560
  unreachable

do.body12.i:                                      ; preds = %if.then105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !561
  tail call void @arm_heavy_mb() #8
  %113 = or i32 %110, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187, i32 %113) #8, !srcloc !435
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !562
  %115 = and i32 %114, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool22.not45.i = icmp eq i32 %115, 0
  br i1 %tobool22.not45.i, label %do.body12.i.if.end110_crit_edge, label %while.body.i

do.body12.i.if.end110_crit_edge:                  ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

while.body.i:                                     ; preds = %do.body12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 214748) #8
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  %118 = and i32 %117, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool22.not.i = icmp eq i32 %118, 0
  br i1 %tobool22.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.1

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.1:                                   ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748) #8
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  %121 = and i32 %120, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool22.not.i.1 = icmp eq i32 %121, 0
  br i1 %tobool22.not.i.1, label %while.body.i.1.while.end.i_crit_edge, label %while.body.i.2

while.body.i.1.while.end.i_crit_edge:             ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.2:                                   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 214748) #8
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #8, !srcloc !436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !563
  %124 = and i32 %123, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool22.not.i.2 = icmp eq i32 %124, 0
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.2, %while.body.i.1.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %tobool22.not.i.lcssa = phi i1 [ %tobool22.not.i, %while.body.i.while.end.i_crit_edge ], [ %tobool22.not.i.1, %while.body.i.1.while.end.i_crit_edge ], [ %tobool22.not.i.2, %while.body.i.2 ]
  br i1 %tobool22.not.i.lcssa, label %while.end.i.if.end110_crit_edge, label %do.end35.i

while.end.i.if.end110_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

do.end35.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.161) #11
  br label %if.end110

if.else107:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #10
  %call108 = tail call i32 @ata_port_abort(ptr noundef %ap) #8
  br label %if.end110

if.end110:                                        ; preds = %if.else107, %do.end35.i, %while.end.i.if.end110_crit_edge, %do.body12.i.if.end110_crit_edge, %if.then101
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_async_notification(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_qc_complete_multiple(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_clear_desc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_link_abort(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_abort(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_from_fis(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahci_sw_activity_blink(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %link1 = getelementptr i8, ptr %t, i32 60
  %0 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %led_state = getelementptr i8, ptr %t, i32 56
  %4 = ptrtoint ptr %led_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %led_state, align 4
  %and = and i32 %5, -65536
  %port_no = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pmp, align 4
  %shl = shl i32 %9, 8
  %or = or i32 %and, %7
  %or3 = or i32 %or, %shl
  %lock = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #8
  %saved_activity = getelementptr i8, ptr %t, i32 48
  %12 = ptrtoint ptr %saved_activity to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %saved_activity, align 4
  %activity = getelementptr i8, ptr %t, i32 52
  %14 = ptrtoint ptr %activity to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %activity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp9.not = icmp eq i32 %13, %15
  br i1 %cmp9.not, label %if.else20, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %saved_activity to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %saved_activity, align 4
  %17 = and i32 %or3, -393217
  %or17 = xor i32 %17, 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %18, 10
  %call19 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  br label %if.end27

if.else20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %t, i32 -4
  %and21 = and i32 %or3, -458753
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp22 = icmp eq i32 %20, 2
  %or25 = or i32 %and21, 65536
  %spec.select = select i1 %cmp22, i32 %or25, i32 %and21
  br label %if.end27

if.end27:                                         ; preds = %if.else20, %if.then
  %led_message.0 = phi i32 [ %or17, %if.then ], [ %spec.select, %if.else20 ]
  %21 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %call6) #8
  %ops = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %transmit_led_message = getelementptr inbounds %struct.ata_port_operations, ptr %24, i32 0, i32 57
  %25 = ptrtoint ptr %transmit_led_message to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %transmit_led_message, align 4
  %call29 = tail call i32 %26(ptr noundef %3, i32 noundef %led_message.0, i32 noundef 4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_start(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_multi_irqs_intr_hard(i32 noundef %irq, ptr noundef %dev_instance) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %dev_instance, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %dev_instance, i32 0, i32 7
  %2 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 256
  %mul.i.i = shl i32 %3, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !436
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !564
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !565
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #8, !srcloc !435
  %lock = getelementptr inbounds %struct.ata_port, ptr %dev_instance, i32 0, i32 2
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_lock(ptr noundef %11) #8
  tail call fastcc void @ahci_handle_port_interrupt(ptr noundef %dev_instance, ptr noundef %add.ptr2.i.i, i32 noundef %9)
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock(ptr noundef %13) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 196)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 196)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !36, !38, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !105, !106, !107, !108, !109, !111, !112, !113, !115, !117, !119, !120, !121, !122, !124, !125, !126, !128, !130, !132, !133, !134, !135, !137, !139, !141, !143, !145, !147, !148, !149, !150, !151, !152, !153, !155, !157, !158, !159, !160, !161, !162, !164, !166, !167, !168, !169, !170, !171, !173, !175, !177, !179, !180, !181, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !201, !202, !203, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !233, !235, !237, !238, !239, !240, !242, !243, !244, !246, !248, !250, !252, !253, !255, !257, !258, !259, !261, !263, !265, !266, !268, !270, !271, !273, !274, !276, !277, !279, !280, !282, !284, !285, !286, !288, !289, !291, !293, !295, !297, !299, !301, !302, !304, !305, !307, !309, !311, !312, !313, !314, !316, !317, !318, !320, !321, !322, !324, !326, !328, !329, !330, !331, !333, !334, !336, !337, !339, !341, !343, !344, !345, !346, !348, !349, !350, !351, !352, !353, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !375, !376, !377, !379, !380, !381, !382, !384, !385, !386, !388, !389, !390, !391, !393, !394, !395, !397, !398, !400, !401, !402, !403, !405, !407, !408, !409, !410, !412, !413, !414, !416, !417, !419, !420, !421, !422}
!llvm.module.flags = !{!424, !425, !426, !427, !428, !429, !430, !431}
!llvm.ident = !{!432}

!0 = !{ptr @__ksymtab_ahci_ignore_sss, !1, !"__ksymtab_ahci_ignore_sss", i1 false, i1 false}
!1 = !{!"../drivers/ata/libahci.c", i32 37, i32 1}
!2 = !{ptr @__param_skip_host_reset, !3, !"__param_skip_host_reset", i1 false, i1 false}
!3 = !{!"../drivers/ata/libahci.c", i32 39, i32 1}
!4 = !{ptr @__UNIQUE_ID_skip_host_resettype321, !3, !"__UNIQUE_ID_skip_host_resettype321", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_skip_host_reset322, !6, !"__UNIQUE_ID_skip_host_reset322", i1 false, i1 false}
!6 = !{!"../drivers/ata/libahci.c", i32 40, i32 1}
!7 = !{ptr @__param_ignore_sss, !8, !"__param_ignore_sss", i1 false, i1 false}
!8 = !{!"../drivers/ata/libahci.c", i32 42, i32 1}
!9 = !{ptr @__UNIQUE_ID_ignore_ssstype323, !8, !"__UNIQUE_ID_ignore_ssstype323", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_ignore_sss324, !11, !"__UNIQUE_ID_ignore_sss324", i1 false, i1 false}
!11 = !{!"../drivers/ata/libahci.c", i32 43, i32 1}
!12 = !{ptr @ahci_shost_groups, !13, !"ahci_shost_groups", i1 false, i1 false}
!13 = !{!"../drivers/ata/libahci.c", i32 128, i32 31}
!14 = !{ptr @__ksymtab_ahci_shost_groups, !15, !"__ksymtab_ahci_shost_groups", i1 false, i1 false}
!15 = !{!"../drivers/ata/libahci.c", i32 132, i32 1}
!16 = !{ptr @ahci_sdev_groups, !17, !"ahci_sdev_groups", i1 false, i1 false}
!17 = !{!"../drivers/ata/libahci.c", i32 146, i32 31}
!18 = !{ptr @__ksymtab_ahci_sdev_groups, !19, !"__ksymtab_ahci_sdev_groups", i1 false, i1 false}
!19 = !{!"../drivers/ata/libahci.c", i32 150, i32 1}
!20 = !{ptr @ahci_ops, !21, !"ahci_ops", i1 false, i1 false}
!21 = !{!"../drivers/ata/libahci.c", i32 152, i32 28}
!22 = !{ptr @__ksymtab_ahci_ops, !23, !"__ksymtab_ahci_ops", i1 false, i1 false}
!23 = !{!"../drivers/ata/libahci.c", i32 188, i32 1}
!24 = !{ptr @ahci_pmp_retry_srst_ops, !25, !"ahci_pmp_retry_srst_ops", i1 false, i1 false}
!25 = !{!"../drivers/ata/libahci.c", i32 190, i32 28}
!26 = !{ptr @__ksymtab_ahci_pmp_retry_srst_ops, !27, !"__ksymtab_ahci_pmp_retry_srst_ops", i1 false, i1 false}
!27 = !{!"../drivers/ata/libahci.c", i32 194, i32 1}
!28 = !{ptr @__param_ahci_em_messages, !29, !"__param_ahci_em_messages", i1 false, i1 false}
!29 = !{!"../drivers/ata/libahci.c", i32 197, i32 1}
!30 = !{ptr @__UNIQUE_ID_ahci_em_messagestype325, !29, !"__UNIQUE_ID_ahci_em_messagestype325", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_ahci_em_messages326, !32, !"__UNIQUE_ID_ahci_em_messages326", i1 false, i1 false}
!32 = !{!"../drivers/ata/libahci.c", i32 199, i32 1}
!33 = !{ptr @__param_devslp_idle_timeout, !34, !"__param_devslp_idle_timeout", i1 false, i1 false}
!34 = !{!"../drivers/ata/libahci.c", i32 204, i32 1}
!35 = !{ptr @__UNIQUE_ID_devslp_idle_timeouttype327, !34, !"__UNIQUE_ID_devslp_idle_timeouttype327", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_devslp_idle_timeout328, !37, !"__UNIQUE_ID_devslp_idle_timeout328", i1 false, i1 false}
!37 = !{!"../drivers/ata/libahci.c", i32 205, i32 1}
!38 = !{ptr @.str, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ata/libahci.c", i32 468, i32 3}
!40 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ahci_save_initial_config._entry, !39, !"_entry", i1 false, i1 false}
!45 = !{ptr @ahci_save_initial_config._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.6, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ata/libahci.c", i32 473, i32 3}
!48 = !{ptr @ahci_save_initial_config._entry.5, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ahci_save_initial_config._entry_ptr.7, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ata/libahci.c", i32 478, i32 3}
!52 = !{ptr @ahci_save_initial_config._entry.8, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ahci_save_initial_config._entry_ptr.10, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/ata/libahci.c", i32 483, i32 3}
!56 = !{ptr @ahci_save_initial_config._entry.11, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ahci_save_initial_config._entry_ptr.13, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/ata/libahci.c", i32 488, i32 3}
!60 = !{ptr @ahci_save_initial_config._entry.14, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ahci_save_initial_config._entry_ptr.16, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/ata/libahci.c", i32 494, i32 3}
!64 = !{ptr @ahci_save_initial_config._entry.17, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ahci_save_initial_config._entry_ptr.19, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/ata/libahci.c", i32 501, i32 3}
!68 = !{ptr @ahci_save_initial_config._entry.20, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ahci_save_initial_config._entry_ptr.22, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/ata/libahci.c", i32 506, i32 3}
!72 = !{ptr @ahci_save_initial_config._entry.23, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ahci_save_initial_config._entry_ptr.25, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ata/libahci.c", i32 511, i32 3}
!76 = !{ptr @ahci_save_initial_config._entry.26, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ahci_save_initial_config._entry_ptr.28, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/ata/libahci.c", i32 516, i32 3}
!80 = !{ptr @ahci_save_initial_config._entry.29, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ahci_save_initial_config._entry_ptr.31, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/ata/libahci.c", i32 521, i32 3}
!84 = !{ptr @ahci_save_initial_config._entry.32, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ahci_save_initial_config._entry_ptr.34, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/ata/libahci.c", i32 528, i32 3}
!88 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ahci_save_initial_config._entry.35, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @ahci_save_initial_config._entry_ptr.38, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/ata/libahci.c", i32 546, i32 4}
!93 = !{ptr @ahci_save_initial_config._entry.39, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ahci_save_initial_config._entry_ptr.41, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/ata/libahci.c", i32 556, i32 3}
!97 = !{ptr @ahci_save_initial_config._entry.42, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ahci_save_initial_config._entry_ptr.44, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @__ksymtab_ahci_save_initial_config, !100, !"__ksymtab_ahci_save_initial_config", i1 false, i1 false}
!100 = !{!"../drivers/ata/libahci.c", i32 577, i32 1}
!101 = !{ptr @__ksymtab_ahci_start_engine, !102, !"__ksymtab_ahci_start_engine", i1 false, i1 false}
!102 = !{!"../drivers/ata/libahci.c", i32 652, i32 1}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/ata/libahci.c", i32 669, i32 3}
!105 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ahci_stop_engine._entry, !104, !"_entry", i1 false, i1 false}
!108 = !{ptr @ahci_stop_engine._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/ata/libahci.c", i32 685, i32 3}
!111 = !{ptr @ahci_stop_engine._entry.48, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ahci_stop_engine._entry_ptr.50, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @__ksymtab_ahci_stop_engine, !114, !"__ksymtab_ahci_stop_engine", i1 false, i1 false}
!114 = !{!"../drivers/ata/libahci.c", i32 701, i32 1}
!115 = !{ptr @__ksymtab_ahci_start_fis_rx, !116, !"__ksymtab_ahci_start_fis_rx", i1 false, i1 false}
!116 = !{!"../drivers/ata/libahci.c", i32 729, i32 1}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/ata/libahci.c", i32 962, i32 4}
!119 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ahci_reset_controller._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @ahci_reset_controller._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/ata/libahci.c", i32 976, i32 3}
!124 = !{ptr @ahci_reset_controller._entry.53, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ahci_reset_controller._entry_ptr.55, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @__ksymtab_ahci_reset_controller, !127, !"__ksymtab_ahci_reset_controller", i1 false, i1 false}
!127 = !{!"../drivers/ata/libahci.c", i32 980, i32 1}
!128 = !{ptr @__ksymtab_ahci_reset_em, !129, !"__ksymtab_ahci_reset_em", i1 false, i1 false}
!129 = !{!"../drivers/ata/libahci.c", i32 1069, i32 1}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/ata/libahci.c", i32 1273, i32 2}
!132 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ahci_init_controller.__UNIQUE_ID_ddebug333, !131, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!135 = !{ptr @ahci_init_controller.__UNIQUE_ID_ddebug334, !136, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!136 = !{!"../drivers/ata/libahci.c", i32 1276, i32 2}
!137 = !{ptr @__ksymtab_ahci_init_controller, !138, !"__ksymtab_ahci_init_controller", i1 false, i1 false}
!138 = !{!"../drivers/ata/libahci.c", i32 1278, i32 1}
!139 = !{ptr @__ksymtab_ahci_dev_classify, !140, !"__ksymtab_ahci_dev_classify", i1 false, i1 false}
!140 = !{!"../drivers/ata/libahci.c", i32 1305, i32 1}
!141 = !{ptr @__ksymtab_ahci_fill_cmd_slot, !142, !"__ksymtab_ahci_fill_cmd_slot", i1 false, i1 false}
!142 = !{!"../drivers/ata/libahci.c", i32 1319, i32 1}
!143 = !{ptr @__ksymtab_ahci_kick_engine, !144, !"__ksymtab_ahci_kick_engine", i1 false, i1 false}
!144 = !{!"../drivers/ata/libahci.c", i32 1364, i32 1}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/ata/libahci.c", i32 1421, i32 3}
!147 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @ahci_do_softreset._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @ahci_do_softreset._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @ahci_do_softreset._entry.61, !146, !"_entry", i1 false, i1 false}
!152 = !{ptr @ahci_do_softreset._entry_ptr.63, !146, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/ata/libahci.c", i32 1445, i32 12}
!155 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/ata/libahci.c", i32 1464, i32 3}
!157 = !{ptr @ahci_do_softreset._entry.65, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @ahci_do_softreset._entry_ptr.67, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @ahci_do_softreset._entry.68, !156, !"_entry", i1 false, i1 false}
!161 = !{ptr @ahci_do_softreset._entry_ptr.70, !156, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/ata/libahci.c", i32 1468, i32 12}
!164 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/ata/libahci.c", i32 1480, i32 2}
!166 = !{ptr @ahci_do_softreset._entry.72, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @ahci_do_softreset._entry_ptr.74, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @ahci_do_softreset._entry.75, !165, !"_entry", i1 false, i1 false}
!170 = !{ptr @ahci_do_softreset._entry_ptr.77, !165, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @__ksymtab_ahci_check_ready, !172, !"__ksymtab_ahci_check_ready", i1 false, i1 false}
!172 = !{!"../drivers/ata/libahci.c", i32 1491, i32 1}
!173 = !{ptr @__ksymtab_ahci_do_softreset, !174, !"__ksymtab_ahci_do_softreset", i1 false, i1 false}
!174 = !{!"../drivers/ata/libahci.c", i32 1500, i32 1}
!175 = !{ptr @__ksymtab_ahci_do_hardreset, !176, !"__ksymtab_ahci_do_hardreset", i1 false, i1 false}
!176 = !{!"../drivers/ata/libahci.c", i32 1577, i32 1}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/ata/libahci.c", i32 1939, i32 5}
!179 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @ahci_handle_port_intr._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @ahci_handle_port_intr._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @__ksymtab_ahci_handle_port_intr, !183, !"__ksymtab_ahci_handle_port_intr", i1 false, i1 false}
!183 = !{!"../drivers/ata/libahci.c", i32 1948, i32 1}
!184 = !{ptr @__ksymtab_ahci_qc_issue, !185, !"__ksymtab_ahci_qc_issue", i1 false, i1 false}
!185 = !{!"../drivers/ata/libahci.c", i32 2017, i32 1}
!186 = !{ptr @__ksymtab_ahci_error_handler, !187, !"__ksymtab_ahci_error_handler", i1 false, i1 false}
!187 = !{!"../drivers/ata/libahci.c", i32 2083, i32 1}
!188 = !{ptr @__ksymtab_ahci_port_resume, !189, !"__ksymtab_ahci_port_resume", i1 false, i1 false}
!189 = !{!"../drivers/ata/libahci.c", i32 2300, i32 1}
!190 = !{ptr @.str.80, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/ata/libahci.c", i32 2466, i32 13}
!192 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/ata/libahci.c", i32 2468, i32 13}
!194 = !{ptr @.str.82, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/ata/libahci.c", i32 2470, i32 13}
!196 = !{ptr @.str.83, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/ata/libahci.c", i32 2472, i32 13}
!198 = !{ptr @.str.84, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/ata/libahci.c", i32 2474, i32 2}
!200 = !{ptr @.str.85, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @ahci_print_info._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @ahci_print_info._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.87, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/ata/libahci.c", i32 2490, i32 2}
!205 = !{ptr @ahci_print_info._entry.86, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @ahci_print_info._entry_ptr.88, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.89, !204, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.92, !204, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.93, !204, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.97, !204, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.98, !204, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.99, !204, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.100, !204, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.103, !204, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.104, !204, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.105, !204, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.106, !204, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.107, !204, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.108, !204, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.109, !204, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.110, !204, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.111, !204, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.112, !204, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @__ksymtab_ahci_print_info, !232, !"__ksymtab_ahci_print_info", i1 false, i1 false}
!232 = !{!"../drivers/ata/libahci.c", i32 2523, i32 1}
!233 = !{ptr @__ksymtab_ahci_set_em_messages, !234, !"__ksymtab_ahci_set_em_messages", i1 false, i1 false}
!234 = !{!"../drivers/ata/libahci.c", i32 2548, i32 1}
!235 = !{ptr @.str.113, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/ata/libahci.c", i32 2604, i32 4}
!237 = !{ptr @.str.114, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @ahci_host_activate._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @ahci_host_activate._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/ata/libahci.c", i32 2607, i32 4}
!242 = !{ptr @ahci_host_activate._entry.115, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @ahci_host_activate._entry_ptr.117, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @__ksymtab_ahci_host_activate, !245, !"__ksymtab_ahci_host_activate", i1 false, i1 false}
!245 = !{!"../drivers/ata/libahci.c", i32 2621, i32 1}
!246 = !{ptr @__UNIQUE_ID_author335, !247, !"__UNIQUE_ID_author335", i1 false, i1 false}
!247 = !{!"../drivers/ata/libahci.c", i32 2623, i32 1}
!248 = !{ptr @__UNIQUE_ID_description336, !249, !"__UNIQUE_ID_description336", i1 false, i1 false}
!249 = !{!"../drivers/ata/libahci.c", i32 2624, i32 1}
!250 = !{ptr @__UNIQUE_ID_file337, !251, !"__UNIQUE_ID_file337", i1 false, i1 false}
!251 = !{!"../drivers/ata/libahci.c", i32 2625, i32 1}
!252 = !{ptr @__UNIQUE_ID_license338, !251, !"__UNIQUE_ID_license338", i1 false, i1 false}
!253 = !{ptr @ahci_skip_host_reset, !254, !"ahci_skip_host_reset", i1 false, i1 false}
!254 = !{!"../drivers/ata/libahci.c", i32 35, i32 12}
!255 = !{ptr @ahci_ignore_sss, !256, !"ahci_ignore_sss", i1 false, i1 false}
!256 = !{!"../drivers/ata/libahci.c", i32 36, i32 5}
!257 = !{ptr @__param_str_skip_host_reset, !3, !"__param_str_skip_host_reset", i1 false, i1 false}
!258 = !{ptr @__param_str_ignore_sss, !8, !"__param_str_ignore_sss", i1 false, i1 false}
!259 = !{ptr @ahci_shost_attr_group, !260, !"ahci_shost_attr_group", i1 false, i1 false}
!260 = !{!"../drivers/ata/libahci.c", i32 124, i32 37}
!261 = !{ptr @ahci_shost_attrs, !262, !"ahci_shost_attrs", i1 false, i1 false}
!262 = !{!"../drivers/ata/libahci.c", i32 111, i32 26}
!263 = !{ptr @.str.118, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/ata/libahci.c", i32 103, i32 8}
!265 = !{ptr @dev_attr_ahci_host_caps, !264, !"dev_attr_ahci_host_caps", i1 false, i1 false}
!266 = !{ptr @.str.119, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/ata/libahci.c", i32 264, i32 22}
!268 = !{ptr @.str.120, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/ata/libahci.c", i32 104, i32 8}
!270 = !{ptr @dev_attr_ahci_host_cap2, !269, !"dev_attr_ahci_host_cap2", i1 false, i1 false}
!271 = !{ptr @.str.121, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/ata/libahci.c", i32 105, i32 8}
!273 = !{ptr @dev_attr_ahci_host_version, !272, !"dev_attr_ahci_host_version", i1 false, i1 false}
!274 = !{ptr @.str.122, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/ata/libahci.c", i32 106, i32 8}
!276 = !{ptr @dev_attr_ahci_port_cmd, !275, !"dev_attr_ahci_port_cmd", i1 false, i1 false}
!277 = !{ptr @.str.123, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/ata/libahci.c", i32 107, i32 8}
!279 = !{ptr @dev_attr_em_buffer, !278, !"dev_attr_em_buffer", i1 false, i1 false}
!280 = !{ptr @__func__.ahci_read_em_buffer, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/ata/libahci.c", i32 339, i32 7}
!282 = !{ptr @.str.124, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/ata/libahci.c", i32 340, i32 4}
!284 = !{ptr @ahci_read_em_buffer._entry, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @ahci_read_em_buffer._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.125, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/ata/libahci.c", i32 109, i32 8}
!288 = !{ptr @dev_attr_em_message_supported, !287, !"dev_attr_em_message_supported", i1 false, i1 false}
!289 = !{ptr @.str.126, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/ata/libahci.c", i32 418, i32 22}
!291 = !{ptr @.str.127, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/ata/libahci.c", i32 420, i32 34}
!293 = !{ptr @.str.128, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/ata/libahci.c", i32 421, i32 32}
!295 = !{ptr @.str.129, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/ata/libahci.c", i32 422, i32 34}
!297 = !{ptr @ahci_sdev_attr_group, !298, !"ahci_sdev_attr_group", i1 false, i1 false}
!298 = !{!"../drivers/ata/libahci.c", i32 142, i32 37}
!299 = !{ptr @ahci_sdev_attrs, !300, !"ahci_sdev_attrs", i1 false, i1 false}
!300 = !{!"../drivers/ata/libahci.c", i32 134, i32 26}
!301 = !{ptr @__param_str_ahci_em_messages, !29, !"__param_str_ahci_em_messages", i1 false, i1 false}
!302 = !{ptr @ahci_em_messages, !303, !"ahci_em_messages", i1 false, i1 false}
!303 = !{!"../drivers/ata/libahci.c", i32 196, i32 13}
!304 = !{ptr @__param_str_devslp_idle_timeout, !34, !"__param_str_devslp_idle_timeout", i1 false, i1 false}
!305 = !{ptr @devslp_idle_timeout, !306, !"devslp_idle_timeout", i1 false, i1 false}
!306 = !{!"../drivers/ata/libahci.c", i32 203, i32 12}
!307 = !{ptr @ahci_scr_offset.offset, !308, !"offset", i1 false, i1 false}
!308 = !{!"../drivers/ata/libahci.c", i32 602, i32 19}
!309 = !{ptr @.str.130, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/ata/libahci.c", i32 2105, i32 3}
!311 = !{ptr @.str.131, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @ahci_set_aggressive_devslp._entry, !310, !"_entry", i1 false, i1 false}
!313 = !{ptr @ahci_set_aggressive_devslp._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.133, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/ata/libahci.c", i32 2118, i32 5}
!316 = !{ptr @ahci_set_aggressive_devslp._entry.132, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @ahci_set_aggressive_devslp._entry_ptr.134, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.136, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/ata/libahci.c", i32 2171, i32 3}
!320 = !{ptr @ahci_set_aggressive_devslp._entry.135, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @ahci_set_aggressive_devslp._entry_ptr.137, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.138, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/ata/libahci.c", i32 1142, i32 22}
!324 = !{ptr @.str.139, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/ata/libahci.c", i32 1218, i32 22}
!326 = !{ptr @.str.140, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/ata/libahci.c", i32 1233, i32 3}
!328 = !{ptr @.str.141, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @ahci_port_init._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @ahci_port_init._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.142, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/ata/libahci.c", i32 1237, i32 2}
!333 = !{ptr @ahci_port_init.__UNIQUE_ID_ddebug331, !332, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!334 = !{ptr @.str.143, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/ata/libahci.c", i32 1242, i32 2}
!336 = !{ptr @ahci_port_init.__UNIQUE_ID_ddebug332, !335, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!337 = !{ptr @.str.144, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/ata/libahci.c", i32 919, i32 11}
!339 = !{ptr @.str.145, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/ata/libahci.c", i32 926, i32 11}
!341 = !{ptr @.str.146, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/ata/libahci.c", i32 1286, i32 3}
!343 = !{ptr @.str.147, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @ahci_dev_config._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @ahci_dev_config._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.148, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/ata/libahci.c", i32 1538, i32 4}
!348 = !{ptr @.str.149, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @ahci_pmp_retry_softreset._entry, !347, !"_entry", i1 false, i1 false}
!350 = !{ptr @ahci_pmp_retry_softreset._entry_ptr, !347, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.151, !347, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @ahci_pmp_retry_softreset._entry.150, !347, !"_entry", i1 false, i1 false}
!353 = !{ptr @ahci_pmp_retry_softreset._entry_ptr.152, !347, !"_entry_ptr", i1 false, i1 false}
!354 = distinct !{null, !355, !"__already_done", i1 false, i1 false}
!355 = !{!"../drivers/ata/libahci.c", i32 1859, i32 5}
!356 = !{ptr @.str.153, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/ata/libahci.c", i32 1737, i32 30}
!358 = !{ptr @.str.154, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/ata/libahci.c", i32 1768, i32 7}
!360 = !{ptr @.str.155, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/ata/libahci.c", i32 1775, i32 33}
!362 = !{ptr @.str.156, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/ata/libahci.c", i32 1781, i32 31}
!364 = !{ptr @.str.157, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/ata/libahci.c", i32 1792, i32 31}
!366 = !{ptr @.str.158, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/ata/libahci.c", i32 1797, i32 31}
!368 = !{ptr @.str.159, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/ata/libahci.c", i32 1799, i32 4}
!370 = !{ptr @.str.160, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/ata/libahci.c", i32 1799, i32 34}
!372 = !{ptr @.str.161, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/ata/libahci.c", i32 1699, i32 3}
!374 = !{ptr @.str.162, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @ahci_fbs_dec_intr._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @ahci_fbs_dec_intr._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.163, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/ata/libahci.c", i32 2199, i32 3}
!379 = !{ptr @.str.164, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @ahci_enable_fbs._entry, !378, !"_entry", i1 false, i1 false}
!381 = !{ptr @ahci_enable_fbs._entry_ptr, !378, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.166, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/ata/libahci.c", i32 2203, i32 3}
!384 = !{ptr @ahci_enable_fbs._entry.165, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @ahci_enable_fbs._entry_ptr.167, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.168, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/ata/libahci.c", i32 2232, i32 3}
!388 = !{ptr @.str.169, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @ahci_disable_fbs._entry, !387, !"_entry", i1 false, i1 false}
!390 = !{ptr @ahci_disable_fbs._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.171, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/ata/libahci.c", i32 2234, i32 3}
!393 = !{ptr @ahci_disable_fbs._entry.170, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @ahci_disable_fbs._entry_ptr.172, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @ahci_init_sw_activity.__key, !396, !"__key", i1 false, i1 false}
!396 = !{!"../drivers/ata/libahci.c", i32 1049, i32 2}
!397 = !{ptr @.str.173, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @.str.174, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/ata/libahci.c", i32 2324, i32 3}
!400 = !{ptr @.str.175, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @ahci_port_suspend._entry, !399, !"_entry", i1 false, i1 false}
!402 = !{ptr @ahci_port_suspend._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.176, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/ata/libahci.c", i32 2356, i32 5}
!405 = !{ptr @.str.177, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/ata/libahci.c", i32 2366, i32 4}
!407 = !{ptr @.str.178, !406, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @ahci_port_start._entry, !406, !"_entry", i1 false, i1 false}
!409 = !{ptr @ahci_port_start._entry_ptr, !406, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.180, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/ata/libahci.c", i32 2370, i32 4}
!412 = !{ptr @ahci_port_start._entry.179, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @ahci_port_start._entry_ptr.181, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @ahci_port_start.__key, !415, !"__key", i1 false, i1 false}
!415 = !{!"../drivers/ata/libahci.c", i32 2422, i32 3}
!416 = !{ptr @.str.182, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @.str.183, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/ata/libahci.c", i32 2442, i32 3}
!419 = !{ptr @.str.184, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @ahci_port_stop._entry, !418, !"_entry", i1 false, i1 false}
!421 = !{ptr @ahci_port_stop._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.185, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/ata/libahci.c", i32 2578, i32 33}
!424 = !{i32 1, !"wchar_size", i32 2}
!425 = !{i32 1, !"min_enum_size", i32 4}
!426 = !{i32 8, !"branch-target-enforcement", i32 0}
!427 = !{i32 8, !"sign-return-address", i32 0}
!428 = !{i32 8, !"sign-return-address-all", i32 0}
!429 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!430 = !{i32 7, !"uwtable", i32 1}
!431 = !{i32 7, !"frame-pointer", i32 2}
!432 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!433 = !{i8 0, i8 2}
!434 = !{i64 2156696537}
!435 = !{i64 6224129}
!436 = !{i64 6224547}
!437 = !{i64 2156697253}
!438 = !{i64 2156697470}
!439 = !{i64 2156697883}
!440 = !{i64 2156699718}
!441 = !{i64 2156700413}
!442 = !{i64 2156700635}
!443 = !{i64 2156701048}
!444 = !{i64 2156701497}
!445 = !{!"auto-init"}
!446 = !{i64 2156679061}
!447 = !{i64 2156679282}
!448 = !{i64 2156679970}
!449 = !{i64 2156586837}
!450 = !{i64 2156587055}
!451 = !{i64 2156720990}
!452 = !{i64 2156721207}
!453 = !{i64 2156721617}
!454 = !{i64 2156722328}
!455 = !{i64 2156722545}
!456 = !{i64 2156722955}
!457 = !{i64 2156603335}
!458 = !{i64 2156604046}
!459 = !{i64 2156604263}
!460 = !{i64 2156604939}
!461 = !{i64 2156605156}
!462 = !{i64 2156605566}
!463 = !{i64 2156601329}
!464 = !{i64 2156601546}
!465 = !{i64 2156606293}
!466 = !{i64 2156606519}
!467 = !{i64 2156607214}
!468 = !{i64 2156607431}
!469 = !{i64 2156602225}
!470 = !{i64 2156602442}
!471 = !{i64 2156602859}
!472 = !{i64 2156727740}
!473 = !{i64 2156733453}
!474 = !{i64 725330, i64 725347}
!475 = !{i64 2156619364}
!476 = !{i64 2156619602}
!477 = !{i64 2156620027}
!478 = !{i64 2156620458}
!479 = !{i64 2156672574}
!480 = !{i64 2156555535}
!481 = !{i64 2156556041}
!482 = !{i64 2156556535}
!483 = !{i64 2156557017}
!484 = !{i64 2156582488}
!485 = !{i64 2156534415}
!486 = !{i64 2156534627}
!487 = !{i64 2156535278}
!488 = !{i64 2156587732}
!489 = !{i64 2156587949}
!490 = !{i64 2156588625}
!491 = !{i64 2156592386}
!492 = !{i64 2156594255}
!493 = !{i64 2156695855}
!494 = !{i64 2156696077}
!495 = !{i64 2156596157}
!496 = !{i64 2156596672}
!497 = !{i64 2156597183}
!498 = !{i64 2156597690}
!499 = !{i64 2156598443}
!500 = !{i64 2156598660}
!501 = !{i64 2156599336}
!502 = !{i64 2156608508}
!503 = !{i64 2156608733}
!504 = !{i64 2156609423}
!505 = !{i64 2156584383}
!506 = !{i64 2156584822}
!507 = !{i64 2156585275}
!508 = !{i64 2156586015}
!509 = !{i64 2156616659}
!510 = !{i64 2156616893}
!511 = !{i64 2156632841}
!512 = !{i64 2148759140, i64 2148759145, i64 2148759158, i64 2148759202, i64 2148759236, i64 2148759257}
!513 = !{i64 2156635251}
!514 = !{i64 2156635944}
!515 = !{i64 2156625707}
!516 = !{i64 2156628124}
!517 = !{i64 2156628824}
!518 = !{i64 2156631251}
!519 = !{i64 2156631660}
!520 = !{i64 2156632363}
!521 = !{i64 2156642547}
!522 = !{i64 2156650506}
!523 = !{i64 2156651007}
!524 = !{i64 2156651224}
!525 = !{i64 2156716416}
!526 = !{i64 2156716648}
!527 = !{i64 2156717369}
!528 = !{i64 2156653372}
!529 = !{i64 2156653589}
!530 = !{i64 2156653988}
!531 = !{i64 2156654691}
!532 = !{i64 2156711864}
!533 = !{i64 2156712095}
!534 = !{i64 2156712813}
!535 = !{i64 2156668059}
!536 = !{i64 2156690749}
!537 = !{i64 2156690974}
!538 = !{i64 2156745791}
!539 = !{i64 2156746281}
!540 = !{i64 2156545227}
!541 = !{i64 2156547291}
!542 = !{i64 2156550443}
!543 = !{i64 2156552510}
!544 = !{i64 2156552721}
!545 = !{i64 2156553120}
!546 = !{i64 2156555057}
!547 = !{i64 2156703740}
!548 = !{i64 2156705690}
!549 = !{i64 2156709022}
!550 = !{i64 2156671534}
!551 = !{i64 2156672052}
!552 = !{!"branch_weights", i32 2000, i32 1}
!553 = !{i64 2156688625}
!554 = !{i64 2156689147}
!555 = !{i64 2156689661}
!556 = !{i64 2156690183}
!557 = !{!"branch_weights", i32 1, i32 2000}
!558 = !{i64 2156686716}
!559 = !{i64 2156680972}
!560 = !{i64 2156681322, i64 2156681809, i64 2156681359, i64 2156681415, i64 2156681449, i64 2156681473, i64 2156681514, i64 2156681535, i64 2156681563, i64 2156681597}
!561 = !{i64 2156682801}
!562 = !{i64 2156683522}
!563 = !{i64 2156684556}
!564 = !{i64 2156691684}
!565 = !{i64 2156691909}
