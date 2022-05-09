; ModuleID = '/llk/IR_all_yes/drivers/scsi/scsi_lib.c_pt.bc'
source_filename = "../drivers/scsi/scsi_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__scsi_execute\22, \22a\22\09"
module asm "\09.weak\09__crc___scsi_execute\09\09\09\09"
module asm "\09.long\09__crc___scsi_execute\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_execute:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_execute\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_execute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_free_sgtables\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_free_sgtables\09\09\09\09"
module asm "\09.long\09__crc_scsi_free_sgtables\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_free_sgtables:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_free_sgtables\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_free_sgtables:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_alloc_sgtables\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_alloc_sgtables\09\09\09\09"
module asm "\09.long\09__crc_scsi_alloc_sgtables\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_alloc_sgtables:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_alloc_sgtables\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_alloc_sgtables:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_alloc_request\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_alloc_request\09\09\09\09"
module asm "\09.long\09__crc_scsi_alloc_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_alloc_request:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_alloc_request\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_alloc_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_done\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_done\09\09\09\09"
module asm "\09.long\09__crc_scsi_done\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_done:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_done\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__scsi_init_queue\22, \22a\22\09"
module asm "\09.weak\09__crc___scsi_init_queue\09\09\09\09"
module asm "\09.long\09__crc___scsi_init_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_init_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_init_queue\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_init_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_block_requests\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_block_requests\09\09\09\09"
module asm "\09.long\09__crc_scsi_block_requests\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_block_requests:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_block_requests\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_block_requests:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_unblock_requests\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_unblock_requests\09\09\09\09"
module asm "\09.long\09__crc_scsi_unblock_requests\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_unblock_requests:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_unblock_requests\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_unblock_requests:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_mode_select\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_mode_select\09\09\09\09"
module asm "\09.long\09__crc_scsi_mode_select\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_mode_select:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_mode_select\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_mode_select:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_mode_sense\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_mode_sense\09\09\09\09"
module asm "\09.long\09__crc_scsi_mode_sense\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_mode_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_mode_sense\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_mode_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_test_unit_ready\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_test_unit_ready\09\09\09\09"
module asm "\09.long\09__crc_scsi_test_unit_ready\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_test_unit_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_test_unit_ready\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_test_unit_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_device_set_state\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_device_set_state\09\09\09\09"
module asm "\09.long\09__crc_scsi_device_set_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_set_state:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_set_state\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_set_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sdev_evt_send\22, \22a\22\09"
module asm "\09.weak\09__crc_sdev_evt_send\09\09\09\09"
module asm "\09.long\09__crc_sdev_evt_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdev_evt_send:\09\09\09\09\09"
module asm "\09.asciz \09\22sdev_evt_send\22\09\09\09\09\09"
module asm "__kstrtabns_sdev_evt_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sdev_evt_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_sdev_evt_alloc\09\09\09\09"
module asm "\09.long\09__crc_sdev_evt_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdev_evt_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22sdev_evt_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_sdev_evt_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sdev_evt_send_simple\22, \22a\22\09"
module asm "\09.weak\09__crc_sdev_evt_send_simple\09\09\09\09"
module asm "\09.long\09__crc_sdev_evt_send_simple\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdev_evt_send_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22sdev_evt_send_simple\22\09\09\09\09\09"
module asm "__kstrtabns_sdev_evt_send_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_device_quiesce\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_device_quiesce\09\09\09\09"
module asm "\09.long\09__crc_scsi_device_quiesce\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_quiesce:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_quiesce\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_quiesce:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_device_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_device_resume\09\09\09\09"
module asm "\09.long\09__crc_scsi_device_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_resume\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_target_quiesce\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_target_quiesce\09\09\09\09"
module asm "\09.long\09__crc_scsi_target_quiesce\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_target_quiesce:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_target_quiesce\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_target_quiesce:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_target_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_target_resume\09\09\09\09"
module asm "\09.long\09__crc_scsi_target_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_target_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_target_resume\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_target_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_internal_device_block_nowait\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_internal_device_block_nowait\09\09\09\09"
module asm "\09.long\09__crc_scsi_internal_device_block_nowait\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_internal_device_block_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_internal_device_block_nowait\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_internal_device_block_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_internal_device_unblock_nowait\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_internal_device_unblock_nowait\09\09\09\09"
module asm "\09.long\09__crc_scsi_internal_device_unblock_nowait\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_internal_device_unblock_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_internal_device_unblock_nowait\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_internal_device_unblock_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_target_block\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_target_block\09\09\09\09"
module asm "\09.long\09__crc_scsi_target_block\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_target_block:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_target_block\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_target_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_target_unblock\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_target_unblock\09\09\09\09"
module asm "\09.long\09__crc_scsi_target_unblock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_target_unblock:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_target_unblock\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_target_unblock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_host_block\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_host_block\09\09\09\09"
module asm "\09.long\09__crc_scsi_host_block\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_host_block:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_host_block\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_host_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_host_unblock\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_host_unblock\09\09\09\09"
module asm "\09.long\09__crc_scsi_host_unblock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_host_unblock:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_host_unblock\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_host_unblock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_kmap_atomic_sg\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_kmap_atomic_sg\09\09\09\09"
module asm "\09.long\09__crc_scsi_kmap_atomic_sg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_kmap_atomic_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_kmap_atomic_sg\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_kmap_atomic_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_kunmap_atomic_sg\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_kunmap_atomic_sg\09\09\09\09"
module asm "\09.long\09__crc_scsi_kunmap_atomic_sg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_kunmap_atomic_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_kunmap_atomic_sg\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_kunmap_atomic_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdev_disable_disk_events\22, \22a\22\09"
module asm "\09.weak\09__crc_sdev_disable_disk_events\09\09\09\09"
module asm "\09.long\09__crc_sdev_disable_disk_events\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdev_disable_disk_events:\09\09\09\09\09"
module asm "\09.asciz \09\22sdev_disable_disk_events\22\09\09\09\09\09"
module asm "__kstrtabns_sdev_disable_disk_events:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdev_enable_disk_events\22, \22a\22\09"
module asm "\09.weak\09__crc_sdev_enable_disk_events\09\09\09\09"
module asm "\09.long\09__crc_sdev_enable_disk_events\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdev_enable_disk_events:\09\09\09\09\09"
module asm "\09.asciz \09\22sdev_enable_disk_events\22\09\09\09\09\09"
module asm "__kstrtabns_sdev_enable_disk_events:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_vpd_lun_id\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_vpd_lun_id\09\09\09\09"
module asm "\09.long\09__crc_scsi_vpd_lun_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_vpd_lun_id:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_vpd_lun_id\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_vpd_lun_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_vpd_tpg_id\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_vpd_tpg_id\09\09\09\09"
module asm "\09.long\09__crc_scsi_vpd_tpg_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_vpd_tpg_id:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_vpd_tpg_id\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_vpd_tpg_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_build_sense\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_build_sense\09\09\09\09"
module asm "\09.long\09__crc_scsi_build_sense\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_build_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_build_sense\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_build_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.30, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.31, %union.anon.32, %union.anon.33, %union.anon.38, ptr, ptr }
%union.anon.30 = type { %struct.list_head }
%union.anon.31 = type { %struct.hlist_node }
%union.anon.32 = type { %struct.rb_node }
%union.anon.33 = type { %struct.anon.37 }
%struct.anon.37 = type { i32, %struct.list_head, ptr }
%union.anon.38 = type { i64, [8 x i8] }
%struct.sbitmap_word = type { i32, [124 x i8], i32, [124 x i8], i32, [124 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scsi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.28, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.28 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.9, %union.anon.55, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.55 = type { %struct.atomic_t }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.scsi_mode_data = type { i32, i16, i8, i8, i8, i8 }
%struct.scsi_event = type { i32, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.75, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.56 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
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
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.75 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.scsi_vpd = type { %struct.callback_head, i32, [0 x i8] }
%struct.scsi_device_handler = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.blk_mq_queue_data = type { ptr, i8 }
%struct.blk_mq_hw_ctx = type { %struct.anon.29, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.29 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@scsi_sense_cache_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @scsi_sense_cache_mutex, i64 52), ptr getelementptr (i8, ptr @scsi_sense_cache_mutex, i64 52) }, ptr @scsi_sense_cache_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@scsi_sense_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"scsi_sense_cache\00", [47 x i8] zeroinitializer }, align 32
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@__kstrtab___scsi_execute = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_execute = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_execute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_execute to i32), ptr @__kstrtab___scsi_execute, ptr @__kstrtabns___scsi_execute }, section "___ksymtab+__scsi_execute", align 4
@__kstrtab_scsi_free_sgtables = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_free_sgtables = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_free_sgtables = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_free_sgtables to i32), ptr @__kstrtab_scsi_free_sgtables, ptr @__kstrtabns_scsi_free_sgtables }, section "___ksymtab_gpl+scsi_free_sgtables", align 4
@scsi_logging_level = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%u sectors total, %d bytes done.\0A\00", [62 x i8] zeroinitializer }, align 32
@scsi_io_completion.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/scsi/scsi_lib.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Bytes remaining after failed, no-retry command\00", [49 x i8] zeroinitializer }, align 32
@scsi_alloc_sgtables.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@scsi_alloc_sgtables.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_scsi_alloc_sgtables = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_alloc_sgtables = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_alloc_sgtables = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_alloc_sgtables to i32), ptr @__kstrtab_scsi_alloc_sgtables, ptr @__kstrtabns_scsi_alloc_sgtables }, section "___ksymtab+scsi_alloc_sgtables", align 4
@__kstrtab_scsi_alloc_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_alloc_request = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_alloc_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_alloc_request to i32), ptr @__kstrtab_scsi_alloc_request, ptr @__kstrtabns_scsi_alloc_request }, section "___ksymtab_gpl+scsi_alloc_request", align 4
@scsi_init_command.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&cmd->abort_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@scsi_init_command.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&cmd->abort_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_scsi_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_done = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_done to i32), ptr @__kstrtab_scsi_done, ptr @__kstrtabns_scsi_done }, section "___ksymtab+scsi_done", align 4
@__kstrtab___scsi_init_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_init_queue = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_init_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_init_queue to i32), ptr @__kstrtab___scsi_init_queue, ptr @__kstrtabns___scsi_init_queue }, section "___ksymtab_gpl+__scsi_init_queue", align 4
@scsi_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @scsi_queue_rq, ptr @scsi_commit_rqs, ptr null, ptr @scsi_mq_get_budget, ptr @scsi_mq_put_budget, ptr @scsi_mq_set_rq_budget_token, ptr @scsi_mq_get_rq_budget_token, ptr @scsi_timeout, ptr @scsi_mq_poll, ptr @scsi_complete, ptr @scsi_init_hctx, ptr null, ptr @scsi_mq_init_request, ptr @scsi_mq_exit_request, ptr @scsi_cleanup_rq, ptr @scsi_mq_lld_busy, ptr @scsi_map_queues, ptr @scsi_show_rq }, [56 x i8] zeroinitializer }, align 32
@scsi_mq_ops_no_commit = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @scsi_queue_rq, ptr null, ptr null, ptr @scsi_mq_get_budget, ptr @scsi_mq_put_budget, ptr @scsi_mq_set_rq_budget_token, ptr @scsi_mq_get_rq_budget_token, ptr @scsi_timeout, ptr @scsi_mq_poll, ptr @scsi_complete, ptr @scsi_init_hctx, ptr null, ptr @scsi_mq_init_request, ptr @scsi_mq_exit_request, ptr @scsi_cleanup_rq, ptr @scsi_mq_lld_busy, ptr @scsi_map_queues, ptr @scsi_show_rq }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_scsi_block_requests = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_block_requests = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_block_requests = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_block_requests to i32), ptr @__kstrtab_scsi_block_requests, ptr @__kstrtabns_scsi_block_requests }, section "___ksymtab+scsi_block_requests", align 4
@__kstrtab_scsi_unblock_requests = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_unblock_requests = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_unblock_requests = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_unblock_requests to i32), ptr @__kstrtab_scsi_unblock_requests, ptr @__kstrtabns_scsi_unblock_requests }, section "___ksymtab+scsi_unblock_requests", align 4
@__kstrtab_scsi_mode_select = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_mode_select = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_mode_select = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_mode_select to i32), ptr @__kstrtab_scsi_mode_select, ptr @__kstrtabns_scsi_mode_select }, section "___ksymtab_gpl+scsi_mode_select", align 4
@__kstrtab_scsi_mode_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_mode_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_mode_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_mode_sense to i32), ptr @__kstrtab_scsi_mode_sense, ptr @__kstrtabns_scsi_mode_sense }, section "___ksymtab+scsi_mode_sense", align 4
@__kstrtab_scsi_test_unit_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_test_unit_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_test_unit_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_test_unit_ready to i32), ptr @__kstrtab_scsi_test_unit_ready, ptr @__kstrtabns_scsi_test_unit_ready }, section "___ksymtab+scsi_test_unit_ready", align 4
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Illegal state transition %s->%s\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_scsi_device_set_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_set_state = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_set_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_set_state to i32), ptr @__kstrtab_scsi_device_set_state, ptr @__kstrtabns_scsi_device_set_state }, section "___ksymtab+scsi_device_set_state", align 4
@__kstrtab_sdev_evt_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdev_evt_send = external dso_local constant [0 x i8], align 1
@__ksymtab_sdev_evt_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdev_evt_send to i32), ptr @__kstrtab_sdev_evt_send, ptr @__kstrtabns_sdev_evt_send }, section "___ksymtab_gpl+sdev_evt_send", align 4
@__kstrtab_sdev_evt_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdev_evt_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_sdev_evt_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdev_evt_alloc to i32), ptr @__kstrtab_sdev_evt_alloc, ptr @__kstrtabns_sdev_evt_alloc }, section "___ksymtab_gpl+sdev_evt_alloc", align 4
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"event %d eaten due to OOM\0A\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_sdev_evt_send_simple = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdev_evt_send_simple = external dso_local constant [0 x i8], align 1
@__ksymtab_sdev_evt_send_simple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdev_evt_send_simple to i32), ptr @__kstrtab_sdev_evt_send_simple, ptr @__kstrtabns_sdev_evt_send_simple }, section "___ksymtab_gpl+sdev_evt_send_simple", align 4
@scsi_device_quiesce.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_scsi_device_quiesce = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_quiesce = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_quiesce = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_quiesce to i32), ptr @__kstrtab_scsi_device_quiesce, ptr @__kstrtabns_scsi_device_quiesce }, section "___ksymtab+scsi_device_quiesce", align 4
@__kstrtab_scsi_device_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_resume to i32), ptr @__kstrtab_scsi_device_resume, ptr @__kstrtabns_scsi_device_resume }, section "___ksymtab+scsi_device_resume", align 4
@__kstrtab_scsi_target_quiesce = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_target_quiesce = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_target_quiesce = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_target_quiesce to i32), ptr @__kstrtab_scsi_target_quiesce, ptr @__kstrtabns_scsi_target_quiesce }, section "___ksymtab+scsi_target_quiesce", align 4
@__kstrtab_scsi_target_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_target_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_target_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_target_resume to i32), ptr @__kstrtab_scsi_target_resume, ptr @__kstrtabns_scsi_target_resume }, section "___ksymtab+scsi_target_resume", align 4
@__kstrtab_scsi_internal_device_block_nowait = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_internal_device_block_nowait = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_internal_device_block_nowait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_internal_device_block_nowait to i32), ptr @__kstrtab_scsi_internal_device_block_nowait, ptr @__kstrtabns_scsi_internal_device_block_nowait }, section "___ksymtab_gpl+scsi_internal_device_block_nowait", align 4
@__kstrtab_scsi_internal_device_unblock_nowait = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_internal_device_unblock_nowait = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_internal_device_unblock_nowait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_internal_device_unblock_nowait to i32), ptr @__kstrtab_scsi_internal_device_unblock_nowait, ptr @__kstrtabns_scsi_internal_device_unblock_nowait }, section "___ksymtab_gpl+scsi_internal_device_unblock_nowait", align 4
@__kstrtab_scsi_target_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_target_block = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_target_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_target_block to i32), ptr @__kstrtab_scsi_target_block, ptr @__kstrtabns_scsi_target_block }, section "___ksymtab_gpl+scsi_target_block", align 4
@__kstrtab_scsi_target_unblock = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_target_unblock = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_target_unblock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_target_unblock to i32), ptr @__kstrtab_scsi_target_unblock, ptr @__kstrtabns_scsi_target_unblock }, section "___ksymtab_gpl+scsi_target_unblock", align 4
@scsi_host_block.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_scsi_host_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_host_block = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_host_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_host_block to i32), ptr @__kstrtab_scsi_host_block, ptr @__kstrtabns_scsi_host_block }, section "___ksymtab_gpl+scsi_host_block", align 4
@__kstrtab_scsi_host_unblock = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_host_unblock = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_host_unblock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_host_unblock to i32), ptr @__kstrtab_scsi_host_unblock, ptr @__kstrtabns_scsi_host_unblock }, section "___ksymtab_gpl+scsi_host_unblock", align 4
@scsi_kmap_atomic_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 3013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s: Bytes in sg: %zu, requested offset %zu, elements %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"scsi_kmap_atomic_sg\00", [44 x i8] zeroinitializer }, align 32
@scsi_kmap_atomic_sg._entry_ptr = internal global ptr @scsi_kmap_atomic_sg._entry, section ".printk_index", align 4
@__kstrtab_scsi_kmap_atomic_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_kmap_atomic_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_kmap_atomic_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_kmap_atomic_sg to i32), ptr @__kstrtab_scsi_kmap_atomic_sg, ptr @__kstrtabns_scsi_kmap_atomic_sg }, section "___ksymtab+scsi_kmap_atomic_sg", align 4
@__kstrtab_scsi_kunmap_atomic_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_kunmap_atomic_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_kunmap_atomic_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_kunmap_atomic_sg to i32), ptr @__kstrtab_scsi_kunmap_atomic_sg, ptr @__kstrtabns_scsi_kunmap_atomic_sg }, section "___ksymtab+scsi_kunmap_atomic_sg", align 4
@__kstrtab_sdev_disable_disk_events = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdev_disable_disk_events = external dso_local constant [0 x i8], align 1
@__ksymtab_sdev_disable_disk_events = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdev_disable_disk_events to i32), ptr @__kstrtab_sdev_disable_disk_events, ptr @__kstrtabns_sdev_disable_disk_events }, section "___ksymtab+sdev_disable_disk_events", align 4
@sdev_enable_disk_events.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_sdev_enable_disk_events = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdev_enable_disk_events = external dso_local constant [0 x i8], align 1
@__ksymtab_sdev_enable_disk_events = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdev_enable_disk_events to i32), ptr @__kstrtab_sdev_enable_disk_events, ptr @__kstrtabns_sdev_enable_disk_events }, section "___ksymtab+sdev_enable_disk_events", align 4
@scsi_vpd_lun_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"t10.%*pE\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eui.%8phN\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eui.%12phN\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eui.%16phN\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"naa.%8phN\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"naa.%16phN\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_scsi_vpd_lun_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_vpd_lun_id = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_vpd_lun_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_vpd_lun_id to i32), ptr @__kstrtab_scsi_vpd_lun_id, ptr @__kstrtabns_scsi_vpd_lun_id }, section "___ksymtab+scsi_vpd_lun_id", align 4
@scsi_vpd_tpg_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_scsi_vpd_tpg_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_vpd_tpg_id = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_vpd_tpg_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_vpd_tpg_id to i32), ptr @__kstrtab_scsi_vpd_tpg_id, ptr @__kstrtabns_scsi_vpd_tpg_id }, section "___ksymtab+scsi_vpd_tpg_id", align 4
@__kstrtab_scsi_build_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_build_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_build_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_build_sense to i32), ptr @__kstrtab_scsi_build_sense, ptr @__kstrtabns_scsi_build_sense }, section "___ksymtab_gpl+scsi_build_sense", align 4
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"scsi_sense_cache_mutex.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"scsi_sense_cache_mutex\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Inserting command %p into mlqueue\0A\00", [61 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@scsi_end_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@scsi_mq_requeue_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@scsi_io_completion_action._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.scsi_io_completion_action = private unnamed_addr constant [26 x i8] c"scsi_io_completion_action\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timing out command, waited %lus\0A\00", [63 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_scsi_dispatch_cmd_done = external dso_local global %struct.tracepoint, align 4
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/scsi.h\00", [36 x i8] zeroinitializer }, align 32
@trace_scsi_dispatch_cmd_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@scsi_queue_rq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rejecting I/O to offline device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rejecting I/O to dead device\0A\00", [34 x i8] zeroinitializer }, align 32
@scsi_device_state_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@scsi_target_queue_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 1354, ptr @.str.1, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unblocking target at zero depth\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"scsi_target_queue_ready\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scsi_target_queue_ready._entry_ptr = internal global ptr @scsi_target_queue_ready._entry, section ".printk_index", align 4
@scsi_host_queue_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1397, ptr @.str.1, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unblocking host at zero depth\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"scsi_host_queue_ready\00", [42 x i8] zeroinitializer }, align 32
@scsi_host_queue_ready._entry_ptr = internal global ptr @scsi_host_queue_ready._entry, section ".printk_index", align 4
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"queuecommand : device blocked\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"queuecommand : command too long. cdb_size=%d host->max_cmd_len=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"queuecommand : request rejected\0A\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_scsi_dispatch_cmd_start = external dso_local global %struct.tracepoint, align 4
@trace_scsi_dispatch_cmd_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_scsi_dispatch_cmd_error = external dso_local global %struct.tracepoint, align 4
@trace_scsi_dispatch_cmd_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unblocking device at zero depth\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SDEV_MEDIA_CHANGE=1\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SDEV_UA=INQUIRY_DATA_HAS_CHANGED\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SDEV_UA=CAPACITY_DATA_HAS_CHANGED\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"SDEV_UA=THIN_PROVISIONING_SOFT_THRESHOLD_REACHED\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SDEV_UA=MODE_PARAMETERS_CHANGED\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SDEV_UA=REPORTED_LUNS_DATA_HAS_CHANGED\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SDEV_UA=ASYMMETRIC_ACCESS_STATE_CHANGED\00", [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SDEV_UA=POWER_ON_RESET_OCCURRED\00", [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@device_block.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"scsi_internal_device_block(%s) failed: ret = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@switch.table.scsi_queue_rq = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 65536, i32 458752, i32 65536, i32 65536], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4181, i64 4182, i64 4183, i64 4184]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 4, i64 16, i64 20, i64 34]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 5, i64 6, i64 7, i64 11]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 40, i64 42]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 32, i64 36]
@__sancov_gen_cov_switch_values.55 = internal global [16 x i64] [i64 14, i64 8, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 17, i64 20, i64 26, i64 27, i64 29, i64 36]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 12, i64 85]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.60 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 4, i64 16, i64 20, i64 34]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.62 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.63 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 6, i64 7]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 8]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 5, i64 6, i64 9]
@__sancov_gen_cov_switch_values.67 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.68 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.69 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.71 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 5, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 7]
@__sancov_gen_cov_switch_values.74 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 7]
@__sancov_gen_cov_switch_values.76 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 8]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 8]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 16]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.83 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.84 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 4, i64 16, i64 20, i64 34]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 32, i64 4181, i64 4182, i64 4183, i64 4184]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 12, i64 14]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 8193, i64 8198]
@__sancov_gen_cov_switch_values.89 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.90 = private unnamed_addr constant [23 x i8] c"scsi_sense_cache_mutex\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"scsi_sense_cache\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 56, i32 27 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 68, i32 31 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 971, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 987, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1198, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [12 x i8] c"scsi_mq_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1943, i32 32 }
@___asan_gen_.126 = private unnamed_addr constant [22 x i8] c"scsi_mq_ops_no_commit\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1915, i32 32 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2417, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2592, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3011, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3153, i32 13 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3184, i32 35 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3195, i32 10 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3200, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3205, i32 10 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3220, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 3225, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 57, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 150, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 818, i32 11 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 679, i32 30 }
@___asan_gen_.187 = private unnamed_addr constant [31 x i8] c"../include/trace/events/scsi.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 292, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 108, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1250, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1259, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1353, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1395, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1528, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1545, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1567, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 1306, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2441, i32 17 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2445, i32 17 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2448, i32 17 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2451, i32 23 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2454, i32 17 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2457, i32 17 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2460, i32 17 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2463, i32 17 }
@___asan_gen_.256 = private constant [27 x i8] c"../drivers/scsi/scsi_lib.c\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 2884, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 695, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 723, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [27 x i8] c"switch.table.scsi_queue_rq\00", align 1
@llvm.compiler.used = appending global [95 x ptr] [ptr @__ksymtab___scsi_execute, ptr @__ksymtab___scsi_init_queue, ptr @__ksymtab_scsi_alloc_request, ptr @__ksymtab_scsi_alloc_sgtables, ptr @__ksymtab_scsi_block_requests, ptr @__ksymtab_scsi_build_sense, ptr @__ksymtab_scsi_device_quiesce, ptr @__ksymtab_scsi_device_resume, ptr @__ksymtab_scsi_device_set_state, ptr @__ksymtab_scsi_done, ptr @__ksymtab_scsi_free_sgtables, ptr @__ksymtab_scsi_host_block, ptr @__ksymtab_scsi_host_unblock, ptr @__ksymtab_scsi_internal_device_block_nowait, ptr @__ksymtab_scsi_internal_device_unblock_nowait, ptr @__ksymtab_scsi_kmap_atomic_sg, ptr @__ksymtab_scsi_kunmap_atomic_sg, ptr @__ksymtab_scsi_mode_select, ptr @__ksymtab_scsi_mode_sense, ptr @__ksymtab_scsi_target_block, ptr @__ksymtab_scsi_target_quiesce, ptr @__ksymtab_scsi_target_resume, ptr @__ksymtab_scsi_target_unblock, ptr @__ksymtab_scsi_test_unit_ready, ptr @__ksymtab_scsi_unblock_requests, ptr @__ksymtab_scsi_vpd_lun_id, ptr @__ksymtab_scsi_vpd_tpg_id, ptr @__ksymtab_sdev_disable_disk_events, ptr @__ksymtab_sdev_enable_disk_events, ptr @__ksymtab_sdev_evt_alloc, ptr @__ksymtab_sdev_evt_send, ptr @__ksymtab_sdev_evt_send_simple, ptr @scsi_host_queue_ready._entry, ptr @scsi_host_queue_ready._entry_ptr, ptr @scsi_kmap_atomic_sg._entry, ptr @scsi_kmap_atomic_sg._entry_ptr, ptr @scsi_target_queue_ready._entry, ptr @scsi_target_queue_ready._entry_ptr, ptr @scsi_sense_cache_mutex, ptr @scsi_sense_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @scsi_init_command.__key, ptr @.str.6, ptr @scsi_init_command.__key.7, ptr @.str.8, ptr @scsi_mq_ops, ptr @scsi_mq_ops_no_commit, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @scsi_io_completion_action._rs, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @switch.table.scsi_queue_rq], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_sense_cache_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_sense_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_init_command.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_init_command.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_mq_ops_no_commit to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_kmap_atomic_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_io_completion_action._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_target_queue_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_host_queue_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.scsi_queue_rq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_init_sense_cache(ptr nocapture noundef readnone %shost) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @scsi_sense_cache_mutex, i32 noundef 0) #14
  %0 = load ptr, ptr @scsi_sense_cache, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 0, i32 noundef 8192, i32 noundef 0, i32 noundef 96, ptr noundef null) #14
  store ptr %call, ptr @scsi_sense_cache, align 4
  %tobool1.not = icmp eq ptr %call, null
  %spec.select = select i1 %tobool1.not, i32 -12, i32 0
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry.if.end3_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end3_crit_edge ], [ %spec.select, %if.then ]
  tail call void @mutex_unlock(ptr noundef nonnull @scsi_sense_cache_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_queue_insert(ptr noundef %cmd, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__scsi_queue_insert(ptr noundef %cmd, i32 noundef %reason, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__scsi_queue_insert(ptr noundef %cmd, i32 noundef %reason, i1 noundef zeroext %unbusy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %2 = load i32, ptr @scsi_logging_level, align 4
  %3 = and i32 %2, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %do.body3, !prof !214

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end5

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.1, ptr noundef %cmd, ptr noundef nonnull @.str.23, ptr noundef %cmd) #14
  br label %do.end5

do.end5:                                          ; preds = %do.body3, %entry.do.end5_crit_edge
  %4 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1, align 4
  %6 = zext i32 %reason to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reason, label %do.end5.scsi_set_blocked.exit_crit_edge [
    i32 4181, label %sw.bb.i
    i32 4182, label %do.end5.sw.bb4.i_crit_edge
    i32 4183, label %do.end5.sw.bb4.i_crit_edge15
    i32 4184, label %sw.bb5.i
  ]

do.end5.sw.bb4.i_crit_edge15:                     ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4.i

do.end5.sw.bb4.i_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4.i

do.end5.scsi_set_blocked.exit_crit_edge:          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_set_blocked.exit

sw.bb.i:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 8
  %host_blocked.i = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 14
  %max_host_blocked.i = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 40
  %9 = ptrtoint ptr %max_host_blocked.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_host_blocked.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %host_blocked.i, i32 noundef 4) #14
  %11 = ptrtoint ptr %host_blocked.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %host_blocked.i, align 4
  br label %scsi_set_blocked.exit

sw.bb4.i:                                         ; preds = %do.end5.sw.bb4.i_crit_edge, %do.end5.sw.bb4.i_crit_edge15
  %device_blocked.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 5
  %max_device_blocked.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 50
  %12 = ptrtoint ptr %max_device_blocked.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_device_blocked.i, align 4
  %call.i.i11.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %device_blocked.i, i32 noundef 4) #14
  %14 = ptrtoint ptr %device_blocked.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %13, ptr %device_blocked.i, align 4
  br label %scsi_set_blocked.exit

sw.bb5.i:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  %parent.i.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 55, i32 1
  %15 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i.i, align 8
  %target_blocked.i = getelementptr i8, ptr %16, i32 948
  %max_target_blocked.i = getelementptr i8, ptr %16, i32 956
  %17 = ptrtoint ptr %max_target_blocked.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_target_blocked.i, align 4
  %call.i.i12.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %target_blocked.i, i32 noundef 4) #14
  %19 = ptrtoint ptr %target_blocked.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %18, ptr %target_blocked.i, align 4
  br label %scsi_set_blocked.exit

scsi_set_blocked.exit:                            ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb.i, %do.end5.scsi_set_blocked.exit_crit_edge
  br i1 %unbusy, label %if.then7, label %scsi_set_blocked.exit.if.end8_crit_edge

scsi_set_blocked.exit.if.end8_crit_edge:          ; preds = %scsi_set_blocked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then7:                                         ; preds = %scsi_set_blocked.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @scsi_device_unbusy(ptr noundef %1, ptr noundef %cmd)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %scsi_set_blocked.exit.if.end8_crit_edge
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %20 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %result, align 4
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 -192
  tail call void @blk_mq_requeue_request(ptr noundef %add.ptr.i.i, i1 noundef zeroext true) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__scsi_execute(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readonly %cmd, i32 noundef %data_direction, ptr noundef %buffer, i32 noundef %bufflen, ptr noundef writeonly %sense, ptr noundef %sshdr, i32 noundef %timeout, i32 noundef %retries, i64 noundef %flags, i32 noundef %rq_flags, ptr noundef writeonly %resid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_direction)
  %cmp = icmp eq i32 %data_direction, 1
  %cond = select i1 %cmp, i32 35, i32 34
  %and = lshr i32 %rq_flags, 13
  %2 = and i32 %and, 4
  %call.i = tail call ptr @blk_mq_alloc_request(ptr noundef %1, i32 noundef %cond, i32 noundef %2) #14
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i.i = getelementptr %struct.request, ptr %call.i, i32 1
  %4 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 16)
  %cmd4.i.i = getelementptr %struct.request, ptr %call.i, i32 1, i32 4
  %5 = ptrtoint ptr %cmd4.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i.i.i, ptr %cmd4.i.i, align 4
  %cmd_len.i.i = getelementptr %struct.request, ptr %call.i, i32 1, i32 5
  %6 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 16, ptr %cmd_len.i.i, align 4
  %sense_len.i.i = getelementptr %struct.request, ptr %call.i, i32 1, i32 7
  %7 = ptrtoint ptr %sense_len.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sense_len.i.i, align 4
  %rcu.i.i = getelementptr %struct.request, ptr %call.i, i32 1, i32 30, i32 0, i32 1, i32 1
  tail call void @init_rcu_head(ptr noundef %rcu.i.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %jiffies_at_alloc.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %jiffies_at_alloc.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %jiffies_at_alloc.i.i, align 4
  %retries.i.i = getelementptr %struct.request, ptr %call.i, i32 1, i32 31, i32 1
  %10 = ptrtoint ptr %retries.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %retries.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufflen)
  %tobool5.not = icmp eq i32 %bufflen, 0
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then6:                                         ; preds = %if.end
  %11 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %request_queue, align 4
  %call8 = tail call i32 @blk_rq_map_kern(ptr noundef %12, ptr noundef %call.i, ptr noundef %buffer, i32 noundef %bufflen, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.if.end12_crit_edge, label %if.then6.out_crit_edge

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cmd, align 1
  %15 = lshr i8 %14, 5
  %16 = zext i8 %15 to i32
  %arrayidx14 = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %18 to i16
  %19 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv15, ptr %cmd_len.i.i, align 4
  %20 = ptrtoint ptr %cmd4.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd4.i.i, align 4
  %conv18 = zext i8 %18 to i32
  %22 = call ptr @memcpy(ptr %21, ptr %cmd, i32 %conv18)
  %retries19 = getelementptr inbounds %struct.scsi_request, ptr %add.ptr.i.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %retries19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retries, ptr %retries19, align 4
  %timeout20 = getelementptr inbounds %struct.request, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %timeout20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %timeout, ptr %timeout20, align 4
  %cmd_flags = getelementptr inbounds %struct.request, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd_flags, align 4
  %27 = trunc i64 %flags to i32
  %conv22 = or i32 %26, %27
  store i32 %conv22, ptr %cmd_flags, align 4
  %rq_flags24 = getelementptr inbounds %struct.request, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %rq_flags24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rq_flags24, align 8
  %or23 = or i32 %29, %rq_flags
  %or25 = or i32 %or23, 2048
  store i32 %or25, ptr %rq_flags24, align 8
  %call26 = tail call zeroext i8 @blk_execute_rq(ptr noundef %call.i, i1 noundef zeroext true) #14
  %resid_len = getelementptr %struct.request, ptr %call.i, i32 1, i32 8
  %30 = ptrtoint ptr %resid_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %resid_len, align 4
  %32 = add i32 %31, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %bufflen)
  %33 = icmp ult i32 %32, %bufflen
  br i1 %33, label %if.then34, label %if.end12.if.end37_crit_edge, !prof !215

if.end12.if.end37_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then34:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i32 %bufflen, %31
  %add.ptr = getelementptr i8, ptr %buffer, i32 %sub
  %34 = call ptr @memset(ptr %add.ptr, i32 0, i32 %31)
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end12.if.end37_crit_edge
  %tobool38.not = icmp eq ptr %resid, null
  br i1 %tobool38.not, label %if.end37.if.end41_crit_edge, label %if.then39

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %resid_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %resid_len, align 4
  %37 = ptrtoint ptr %resid to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %resid, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37.if.end41_crit_edge
  %tobool42.not = icmp eq ptr %sense, null
  br i1 %tobool42.not, label %if.end41.if.end46_crit_edge, label %land.lhs.true

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end41
  %38 = ptrtoint ptr %sense_len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sense_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool43.not = icmp eq i32 %39, 0
  br i1 %tobool43.not, label %land.lhs.true.if.end46_crit_edge, label %if.then44

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %sense45 = getelementptr %struct.request, ptr %call.i, i32 1, i32 9
  %40 = ptrtoint ptr %sense45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sense45, align 4
  %42 = call ptr @memcpy(ptr %sense, ptr %41, i32 96)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true.if.end46_crit_edge, %if.end41.if.end46_crit_edge
  %tobool47.not = icmp eq ptr %sshdr, null
  br i1 %tobool47.not, label %if.end46.if.end52_crit_edge, label %if.then48

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %sense49 = getelementptr %struct.request, ptr %call.i, i32 1, i32 9
  %43 = ptrtoint ptr %sense49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sense49, align 4
  %45 = ptrtoint ptr %sense_len.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sense_len.i.i, align 4
  %call51 = tail call zeroext i1 @scsi_normalize_sense(ptr noundef %44, i32 noundef %46, ptr noundef nonnull %sshdr) #14
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end46.if.end52_crit_edge
  %result = getelementptr %struct.request, ptr %call.i, i32 1, i32 6
  %47 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %result, align 4
  br label %out

out:                                              ; preds = %if.end52, %if.then6.out_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then6.out_crit_edge ], [ %48, %if.end52 ]
  tail call void @blk_mq_free_request(ptr noundef %call.i) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %ret.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scsi_alloc_request(ptr noundef %q, i32 noundef %op, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @blk_mq_alloc_request(ptr noundef %q, i32 noundef %op, i32 noundef %flags) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr %struct.request, ptr %call, i32 1
  %0 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 16)
  %cmd4.i = getelementptr %struct.request, ptr %call, i32 1, i32 4
  %1 = ptrtoint ptr %cmd4.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr.i.i, ptr %cmd4.i, align 4
  %cmd_len.i = getelementptr %struct.request, ptr %call, i32 1, i32 5
  %2 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16, ptr %cmd_len.i, align 4
  %sense_len.i = getelementptr %struct.request, ptr %call, i32 1, i32 7
  %3 = ptrtoint ptr %sense_len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sense_len.i, align 4
  %rcu.i = getelementptr %struct.request, ptr %call, i32 1, i32 30, i32 0, i32 1, i32 1
  tail call void @init_rcu_head(ptr noundef %rcu.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %jiffies_at_alloc.i = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %jiffies_at_alloc.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %jiffies_at_alloc.i, align 4
  %retries.i = getelementptr %struct.request, ptr %call, i32 1, i32 31, i32 1
  %6 = ptrtoint ptr %retries.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %retries.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_kern(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_device_unbusy(ptr nocapture noundef readonly %sdev, ptr nocapture noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  tail call fastcc void @scsi_dec_host_busy(ptr noundef %1, ptr noundef %cmd)
  %can_queue = getelementptr i8, ptr %3, i32 952
  %4 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %can_queue, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %target_busy = getelementptr i8, ptr %3, i32 944
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %target_busy, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %target_busy, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %target_busy, ptr %target_busy, i32 1, ptr elementtype(i32) %target_busy) #14, !srcloc !216
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %budget_map = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 4
  %budget_token = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %budget_token to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %budget_token, align 4
  %map.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map.i.i, align 4
  %shift.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shift.i.i, align 4
  %shr.i.i = lshr i32 %8, %12
  %cleared.i.i = getelementptr %struct.sbitmap_word, ptr %10, i32 %shr.i.i, i32 4
  %notmask.i.i = shl nsw i32 -1, %12
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and.i.i = and i32 %8, %sub.i.i
  tail call void @_set_bit(i32 noundef %and.i.i, ptr noundef %cleared.i.i) #14
  %alloc_hint.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 4, i32 5
  %13 = ptrtoint ptr %alloc_hint.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %alloc_hint.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.sbitmap_put.exit_crit_edge, label %land.lhs.true.i, !prof !215

if.end.sbitmap_put.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sbitmap_put.exit

land.lhs.true.i:                                  ; preds = %if.end
  %round_robin.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %round_robin.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %round_robin.i, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool1.not.i = icmp eq i8 %16, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.sbitmap_put.exit_crit_edge, !prof !214

land.lhs.true.i.sbitmap_put.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sbitmap_put.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %17 = ptrtoint ptr %budget_map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %budget_map, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %8)
  %cmp.i = icmp ugt i32 %18, %8
  br i1 %cmp.i, label %if.then.i, label %land.rhs.i.sbitmap_put.exit_crit_edge, !prof !214

land.rhs.i.sbitmap_put.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sbitmap_put.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %14 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i13.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i13.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %25, %19
  %26 = inttoptr i32 %add.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %8, ptr %26, align 4
  br label %sbitmap_put.exit

sbitmap_put.exit:                                 ; preds = %if.then.i, %land.rhs.i.sbitmap_put.exit_crit_edge, %land.lhs.true.i.sbitmap_put.exit_crit_edge, %if.end.sbitmap_put.exit_crit_edge
  %28 = ptrtoint ptr %budget_token to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %budget_token, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scsi_dec_host_busy(ptr noundef %shost, ptr nocapture noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !218
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %state = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 26
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and.i = and i32 %5, -3
  store i32 %and.i, ptr %state, align 4
  %shost_state.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 48
  %6 = ptrtoint ptr %shost_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shost_state.i, align 4
  %.off.i = add i32 %7, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %rcu_read_lock.exit.do.body3_crit_edge, label %scsi_host_in_recovery.exit

rcu_read_lock.exit.do.body3_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3

scsi_host_in_recovery.exit:                       ; preds = %rcu_read_lock.exit
  %tmf_in_progress.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 36
  %8 = ptrtoint ptr %tmf_in_progress.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %tmf_in_progress.i, align 8
  %9 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %scsi_host_in_recovery.exit.if.end12_crit_edge, label %scsi_host_in_recovery.exit.do.body3_crit_edge, !prof !214

scsi_host_in_recovery.exit.do.body3_crit_edge:    ; preds = %scsi_host_in_recovery.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3

scsi_host_in_recovery.exit.if.end12_crit_edge:    ; preds = %scsi_host_in_recovery.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

do.body3:                                         ; preds = %scsi_host_in_recovery.exit.do.body3_crit_edge, %rcu_read_lock.exit.do.body3_crit_edge
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %10 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_lock, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #14
  %host_failed = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 15
  %12 = ptrtoint ptr %host_failed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host_failed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %do.body3.if.then10_crit_edge

do.body3.if.then10_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10

lor.lhs.false:                                    ; preds = %do.body3
  %host_eh_scheduled = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 16
  %14 = ptrtoint ptr %host_eh_scheduled to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_eh_scheduled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %do.body3.if.then10_crit_edge
  tail call void @scsi_eh_wakeup(ptr noundef %shost) #14
  br label %if.end

if.end:                                           ; preds = %if.then10, %lor.lhs.false.if.end_crit_edge
  %16 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %call5) #14
  br label %if.end12

if.end12:                                         ; preds = %if.end, %scsi_host_in_recovery.exit.if.end12_crit_edge
  %call.i18 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i18, label %if.end12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i21

if.end12.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i21:                                ; preds = %if.end12
  %call1.i19 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, %if.end12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  %18 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i25 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i26, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_requeue_run_queue(ptr nocapture noundef readonly %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr i8, ptr %work, i32 -2304
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  tail call fastcc void @scsi_run_queue(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scsi_run_queue(ptr noundef %q) unnamed_addr #0 align 64 {
entry:
  %starved_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queuedata, align 4
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 55, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %single_lun = getelementptr i8, ptr %3, i32 940
  %4 = ptrtoint ptr %single_lun to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %single_lun, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -24
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock.i, align 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #14
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %add.ptr.i, align 8
  %11 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call4.i) #14
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %request_queue.i, align 4
  tail call void @blk_mq_run_hw_queues(ptr noundef %14, i1 noundef zeroext false) #14
  %15 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host_lock.i, align 4
  %call17.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #14
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.scsi_single_lun_run.exit_crit_edge

if.then.scsi_single_lun_run.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_single_lun_run.exit

if.end.i:                                         ; preds = %if.then
  %devices.i = getelementptr i8, ptr %3, i32 -12
  %19 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %devices.i, align 4
  %cmp30.not84.i = icmp eq ptr %20, %devices.i
  br i1 %cmp30.not84.i, label %if.end.i.scsi_single_lun_run.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.scsi_single_lun_run.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_single_lun_run.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn.in86.i = phi ptr [ %.pn88.i, %for.inc.i.for.body.i_crit_edge ], [ %20, %if.end.i.for.body.i_crit_edge ]
  %flags.085.i = phi i32 [ %flags.1.i, %for.inc.i.for.body.i_crit_edge ], [ %call17.i, %if.end.i.for.body.i_crit_edge ]
  %sdev.087.i = getelementptr i8, ptr %.pn.in86.i, i32 -16
  %21 = ptrtoint ptr %.pn.in86.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn88.i = load ptr, ptr %.pn.in86.i, align 8
  %cmp32.i = icmp eq ptr %sdev.087.i, %1
  br i1 %cmp32.i, label %for.body.i.for.inc.i_crit_edge, label %if.end35.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end35.i:                                       ; preds = %for.body.i
  %call36.i = tail call i32 @scsi_device_get(ptr noundef %sdev.087.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end35.i.for.inc.i_crit_edge

if.end35.i.for.inc.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end39.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %flags.085.i) #14
  %request_queue41.i = getelementptr i8, ptr %.pn.in86.i, i32 -12
  %24 = ptrtoint ptr %request_queue41.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %request_queue41.i, align 4
  tail call void @blk_mq_run_hw_queues(ptr noundef %25, i1 noundef zeroext false) #14
  %26 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host_lock.i, align 4
  %call51.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #14
  tail call void @scsi_device_put(ptr noundef %sdev.087.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end39.i, %if.end35.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %flags.1.i = phi i32 [ %flags.085.i, %for.body.i.for.inc.i_crit_edge ], [ %flags.085.i, %if.end35.i.for.inc.i_crit_edge ], [ %call51.i, %if.end39.i ]
  %cmp30.not.i = icmp eq ptr %.pn88.i, %devices.i
  br i1 %cmp30.not.i, label %for.inc.i.scsi_single_lun_run.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.scsi_single_lun_run.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_single_lun_run.exit

scsi_single_lun_run.exit:                         ; preds = %for.inc.i.scsi_single_lun_run.exit_crit_edge, %if.end.i.scsi_single_lun_run.exit_crit_edge, %if.then.scsi_single_lun_run.exit_crit_edge
  %flags.2.i = phi i32 [ %call17.i, %if.then.scsi_single_lun_run.exit_crit_edge ], [ %call17.i, %if.end.i.scsi_single_lun_run.exit_crit_edge ], [ %flags.1.i, %for.inc.i.scsi_single_lun_run.exit_crit_edge ]
  %28 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %flags.2.i) #14
  br label %if.end

if.end:                                           ; preds = %scsi_single_lun_run.exit, %entry.if.end_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %starved_list = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %starved_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %starved_list, align 4
  %cmp.i.not = icmp eq ptr %33, %starved_list
  br i1 %cmp.i.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %starved_list.i) #14
  %34 = getelementptr inbounds %struct.list_head, ptr %starved_list.i, i32 0, i32 1
  %35 = ptrtoint ptr %starved_list.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %starved_list.i, ptr %starved_list.i, align 4
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %starved_list.i, ptr %34, align 4
  %host_lock.i10 = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 4
  %37 = ptrtoint ptr %host_lock.i10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host_lock.i10, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #14
  %39 = ptrtoint ptr %starved_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %starved_list, align 4
  %cmp.i.not.i.i = icmp eq ptr %40, %starved_list
  br i1 %cmp.i.not.i.i, label %if.then3.list_splice_init.exit.i_crit_edge, label %if.then.i.i

if.then3.list_splice_init.exit.i_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %starved_list.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %starved_list.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %starved_list.i, ptr %prev3.i.i.i, align 4
  store ptr %40, ptr %starved_list.i, align 4
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %42, ptr %44, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev6.i.i.i, align 4
  %48 = ptrtoint ptr %starved_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %starved_list, ptr %starved_list, align 4
  store ptr %starved_list, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %if.then3.list_splice_init.exit.i_crit_edge
  %host_blocked.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 14
  %host_self_blocked.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 36
  %49 = ptrtoint ptr %starved_list.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %starved_list.i, align 4
  %cmp.i.not71.i = icmp eq ptr %50, %starved_list.i
  br i1 %cmp.i.not71.i, label %list_splice_init.exit.i.while.end.i_crit_edge, label %while.body.lr.ph.i

list_splice_init.exit.i.while.end.i_crit_edge:    ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %list_splice_init.exit.i
  %prev.i2.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 2, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %flags.072.i = phi i32 [ %call2.i, %while.body.lr.ph.i ], [ %flags.1.i14, %cleanup.i.while.body.i_crit_edge ]
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %host_blocked.i.i, i32 noundef 4) #14
  %51 = ptrtoint ptr %host_blocked.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %host_blocked.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i49.i = icmp sgt i32 %52, 0
  br i1 %cmp.i49.i, label %while.body.i.while.end.i_crit_edge, label %scsi_host_is_busy.exit.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

scsi_host_is_busy.exit.i:                         ; preds = %while.body.i
  %53 = ptrtoint ptr %host_self_blocked.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load.i.i = load i16, ptr %host_self_blocked.i.i, align 8
  %54 = and i16 %bf.load.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool.not.i.not.i = icmp eq i16 %54, 0
  br i1 %tobool.not.i.not.i, label %if.end.i11, label %scsi_host_is_busy.exit.i.while.end.i_crit_edge

scsi_host_is_busy.exit.i.while.end.i_crit_edge:   ; preds = %scsi_host_is_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end.i11:                                       ; preds = %scsi_host_is_busy.exit.i
  %55 = ptrtoint ptr %starved_list.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %starved_list.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %56) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i11.list_del_init.exit.i_crit_edge

if.end.i11.list_del_init.exit.i_crit_edge:        ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i11.list_del_init.exit.i_crit_edge
  %63 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %56, ptr %56, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %56, ptr %prev.i3.i.i, align 4
  %parent.i.i12 = getelementptr i8, ptr %56, i32 444
  %65 = ptrtoint ptr %parent.i.i12 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %parent.i.i12, align 8
  %can_queue.i.i = getelementptr i8, ptr %66, i32 952
  %67 = ptrtoint ptr %can_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %can_queue.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.not.i.i = icmp eq i32 %68, 0
  br i1 %cmp.not.i.i, label %list_del_init.exit.i.if.end15.i_crit_edge, label %if.then.i51.i

list_del_init.exit.i.if.end15.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i

if.then.i51.i:                                    ; preds = %list_del_init.exit.i
  %target_busy.i.i = getelementptr i8, ptr %66, i32 944
  %call.i.i.i50.i = call zeroext i1 @__kasan_check_read(ptr noundef %target_busy.i.i, i32 noundef 4) #14
  %69 = ptrtoint ptr %target_busy.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %target_busy.i.i, align 4
  %71 = ptrtoint ptr %can_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %can_queue.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp2.not.i.i = icmp ult i32 %70, %72
  br i1 %cmp2.not.i.i, label %if.end.i52.i, label %if.then.i51.i.if.then12.i_crit_edge

if.then.i51.i.if.then12.i_crit_edge:              ; preds = %if.then.i51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

if.end.i52.i:                                     ; preds = %if.then.i51.i
  %target_blocked.i.i = getelementptr i8, ptr %66, i32 948
  %call.i.i12.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %target_blocked.i.i, i32 noundef 4) #14
  %73 = ptrtoint ptr %target_blocked.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %target_blocked.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp5.i.i = icmp sgt i32 %74, 0
  br i1 %cmp5.i.i, label %if.end.i52.i.if.then12.i_crit_edge, label %if.end.i52.i.if.end15.i_crit_edge

if.end.i52.i.if.end15.i_crit_edge:                ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i

if.end.i52.i.if.then12.i_crit_edge:               ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i52.i.if.then12.i_crit_edge, %if.then.i51.i.if.then12.i_crit_edge
  %call.i.i54.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %56) #14
  br i1 %call.i.i54.i, label %if.end.i.i57.i, label %if.then12.i.__list_del_entry.exit.i.i_crit_edge

if.then12.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i

if.end.i.i57.i:                                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i3.i.i, align 4
  %77 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %56, align 4
  %prev1.i.i.i56.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev1.i.i.i56.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %76, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i57.i, %if.then12.i.__list_del_entry.exit.i.i_crit_edge
  %81 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i58.i = call zeroext i1 @__list_add_valid(ptr noundef %56, ptr noundef %82, ptr noundef %starved_list) #14
  br i1 %call.i.i.i58.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.cleanup.i_crit_edge

__list_del_entry.exit.i.i.cleanup.i_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %83 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %56, ptr %prev.i2.i.i, align 4
  %84 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %starved_list, ptr %56, align 4
  %85 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev.i3.i.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %56, ptr %82, align 4
  br label %cleanup.i

if.end15.i:                                       ; preds = %if.end.i52.i.if.end15.i_crit_edge, %list_del_init.exit.i.if.end15.i_crit_edge
  %request_queue.i13 = getelementptr i8, ptr %56, i32 -96
  %87 = ptrtoint ptr %request_queue.i13 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %request_queue.i13, align 4
  %call16.i = call zeroext i1 @blk_get_queue(ptr noundef %88) #14
  br i1 %call16.i, label %if.end18.i, label %if.end15.i.cleanup.i_crit_edge

if.end15.i.cleanup.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end18.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  %89 = ptrtoint ptr %host_lock.i10 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %host_lock.i10, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %90, i32 noundef %flags.072.i) #14
  call void @blk_mq_run_hw_queues(ptr noundef %88, i1 noundef zeroext false) #14
  call void @blk_put_queue(ptr noundef %88) #14
  %91 = ptrtoint ptr %host_lock.i10 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %host_lock.i10, align 4
  %call29.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %92) #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end18.i, %if.end15.i.cleanup.i_crit_edge, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.cleanup.i_crit_edge
  %flags.1.i14 = phi i32 [ %call29.i, %if.end18.i ], [ %flags.072.i, %if.end15.i.cleanup.i_crit_edge ], [ %flags.072.i, %__list_del_entry.exit.i.i.cleanup.i_crit_edge ], [ %flags.072.i, %if.end.i.i.i.i ]
  %93 = ptrtoint ptr %starved_list.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %starved_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %94, %starved_list.i
  br i1 %cmp.i.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %scsi_host_is_busy.exit.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %list_splice_init.exit.i.while.end.i_crit_edge
  %flags.0.lcssa.i = phi i32 [ %call2.i, %list_splice_init.exit.i.while.end.i_crit_edge ], [ %flags.1.i14, %cleanup.i.while.end.i_crit_edge ], [ %flags.072.i, %scsi_host_is_busy.exit.i.while.end.i_crit_edge ], [ %flags.072.i, %while.body.i.while.end.i_crit_edge ]
  %95 = ptrtoint ptr %starved_list.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %starved_list.i, align 4
  %cmp.i.not.i59.i = icmp eq ptr %96, %starved_list.i
  br i1 %cmp.i.not.i59.i, label %while.end.i.scsi_starved_list_run.exit_crit_edge, label %if.then.i63.i

while.end.i.scsi_starved_list_run.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_starved_list_run.exit

if.then.i63.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %97 = ptrtoint ptr %starved_list to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %starved_list, align 4
  %99 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %34, align 4
  %prev3.i.i61.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %101 = ptrtoint ptr %prev3.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %starved_list, ptr %prev3.i.i61.i, align 4
  store ptr %96, ptr %starved_list, align 4
  %102 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %98, ptr %100, align 4
  %prev6.i.i62.i = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %103 = ptrtoint ptr %prev6.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev6.i.i62.i, align 4
  br label %scsi_starved_list_run.exit

scsi_starved_list_run.exit:                       ; preds = %if.then.i63.i, %while.end.i.scsi_starved_list_run.exit_crit_edge
  %104 = ptrtoint ptr %host_lock.i10 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %host_lock.i10, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %105, i32 noundef %flags.0.lcssa.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %starved_list.i) #14
  br label %if.end5

if.end5:                                          ; preds = %scsi_starved_list_run.exit, %if.end.if.end5_crit_edge
  call void @blk_mq_run_hw_queues(ptr noundef %q, i1 noundef zeroext false) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_run_host_queues(ptr noundef %shost) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__scsi_iterate_devices(ptr noundef %shost, ptr noundef null) #14
  %tobool.not5 = icmp eq ptr %call, null
  br i1 %tobool.not5, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %sdev.06 = phi ptr [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev.06, i32 0, i32 1
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  tail call fastcc void @scsi_run_queue(ptr noundef %1)
  %call1 = tail call ptr @__scsi_iterate_devices(ptr noundef %shost, ptr noundef nonnull %sdev.06) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_iterate_devices(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_free_sgtables(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nents = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %0 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sdb = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  tail call void @sg_free_table_chained(ptr noundef %sdb, i32 noundef 2) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %prot_sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 18
  %2 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %scsi_prot_sg_count.exit

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

scsi_prot_sg_count.exit:                          ; preds = %if.end
  %nents.i = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %scsi_prot_sg_count.exit.if.end6_crit_edge, label %if.then4

scsi_prot_sg_count.exit.if.end6_crit_edge:        ; preds = %scsi_prot_sg_count.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then4:                                         ; preds = %scsi_prot_sg_count.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sg_free_table_chained(ptr noundef nonnull %3, i32 noundef 1) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %scsi_prot_sg_count.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table_chained(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_io_completion(ptr noundef %cmd, i32 noundef %good_bytes) local_unnamed_addr #0 align 64 {
entry:
  %blk_stat = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %result1 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %0 = ptrtoint ptr %result1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %result1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 -192
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %blk_stat) #14
  %2 = ptrtoint ptr %blk_stat to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %blk_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !214

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = call fastcc i32 @scsi_io_completion_nz_result(ptr noundef %cmd, i32 noundef %1, ptr noundef nonnull %blk_stat)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %result.0 = phi i32 [ %call4, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %cmd_flags.i = getelementptr i8, ptr %cmd, i32 -180
  %3 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd_flags.i, align 4
  %5 = and i32 %4, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %5)
  %6 = icmp eq i32 %5, 34
  br i1 %6, label %if.then12, label %if.end.do.body_crit_edge, !prof !215

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %result1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %result1, align 4
  %result15 = getelementptr inbounds %struct.scsi_request, ptr %cmd, i32 0, i32 3
  %9 = ptrtoint ptr %result15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %result15, align 4
  br label %do.body

do.body:                                          ; preds = %if.then12, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %10 = load i32, ptr @scsi_logging_level, align 4
  %11 = and i32 %10, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %do.body.do.end28_crit_edge, label %do.body24, !prof !214

do.body.do.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28

do.body24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %__data_len.i.i = getelementptr i8, ptr %cmd, i32 -160
  %12 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %13, 9
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.1, ptr noundef %cmd, ptr noundef nonnull @.str.2, i32 noundef %shr.i, i32 noundef %good_bytes) #14
  br label %do.end28

do.end28:                                         ; preds = %do.body24, %do.body.do.end28_crit_edge
  %__data_len.i = getelementptr i8, ptr %cmd, i32 -160
  %14 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %__data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp30.not = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %blk_stat to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %blk_stat, align 1
  br i1 %cmp30.not, label %lor.rhs, label %do.end28.if.then39_crit_edge

do.end28.if.then39_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then39

lor.rhs:                                          ; preds = %do.end28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp31 = icmp eq i8 %17, 0
  br i1 %cmp31, label %lor.rhs.if.then39_crit_edge, label %lor.rhs.land.rhs_crit_edge, !prof !214

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

lor.rhs.if.then39_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then39

if.then39:                                        ; preds = %lor.rhs.if.then39_crit_edge, %do.end28.if.then39_crit_edge
  %18 = phi i8 [ 0, %lor.rhs.if.then39_crit_edge ], [ %17, %do.end28.if.then39_crit_edge ]
  %call40 = tail call fastcc zeroext i1 @scsi_end_request(ptr noundef %add.ptr.i.i, i8 noundef zeroext %18, i32 noundef %good_bytes)
  br i1 %call40, label %if.end51, label %if.then39.cleanup_crit_edge, !prof !215

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end51:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool53.not = icmp eq i8 %18, 0
  br i1 %tobool53.not, label %if.end51.if.end113_crit_edge, label %if.end51.land.rhs_crit_edge

if.end51.land.rhs_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

if.end51.if.end113_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

land.rhs:                                         ; preds = %if.end51.land.rhs_crit_edge, %lor.rhs.land.rhs_crit_edge
  %19 = phi i8 [ %18, %if.end51.land.rhs_crit_edge ], [ %17, %lor.rhs.land.rhs_crit_edge ]
  %call54 = tail call i32 @scsi_noretry_cmd(ptr noundef %cmd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.rhs.if.end113_crit_edge, label %if.then62, !prof !214

land.rhs.if.end113_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.then62:                                        ; preds = %land.rhs
  %20 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %__data_len.i, align 8
  %call64 = tail call fastcc zeroext i1 @scsi_end_request(ptr noundef %add.ptr.i.i, i8 noundef zeroext %19, i32 noundef %21)
  br i1 %call64, label %land.end72, label %if.then62.cleanup_crit_edge

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.end72:                                       ; preds = %if.then62
  %.b147 = load i1, ptr @scsi_io_completion.__already_done, align 1
  br i1 %.b147, label %land.end72.cleanup_crit_edge, label %if.then79, !prof !214

land.end72.cleanup_crit_edge:                     ; preds = %land.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then79:                                        ; preds = %land.end72
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scsi_io_completion.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 988, i32 noundef 9, ptr noundef nonnull @.str.4) #14
  br label %cleanup

if.end113:                                        ; preds = %land.rhs.if.end113_crit_edge, %if.end51.if.end113_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %cmp114 = icmp eq i32 %result.0, 0
  br i1 %cmp114, label %if.then122, label %if.else, !prof !214

if.then122:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @scsi_io_completion_reprep(ptr noundef %cmd)
  br label %cleanup

if.else:                                          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @scsi_io_completion_action(ptr noundef %cmd, i32 noundef %result.0)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then122, %if.then79, %land.end72.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %if.then39.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %blk_stat) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scsi_io_completion_nz_result(ptr noundef %cmd, i32 noundef %result, ptr nocapture noundef writeonly %blk_statp) unnamed_addr #0 align 64 {
entry:
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #14
  %0 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %3 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %sshdr, align 8
  %call1 = call zeroext i1 @scsi_command_normalize_sense(ptr noundef %cmd, ptr noundef nonnull %sshdr) #14
  br i1 %call1, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sshdr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %5)
  %cmp.i = icmp ult i8 %5, 112
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i = icmp eq i8 %6, 0
  %lnot = or i1 %cmp.i, %tobool.i
  %cmd_flags.i = getelementptr i8, ptr %cmd, i32 -180
  %7 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd_flags.i, align 4
  %9 = and i32 %8, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %9)
  %10 = icmp eq i32 %9, 34
  br i1 %10, label %if.then7, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end.thread:                                    ; preds = %entry
  %cmd_flags.i78 = getelementptr i8, ptr %cmd, i32 -180
  %11 = ptrtoint ptr %cmd_flags.i78 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_flags.i78, align 4
  %13 = and i32 %12, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %13)
  %14 = icmp eq i32 %13, 34
  br i1 %14, label %if.end.thread.if.end23.sink.split_crit_edge, label %if.end.thread.if.else_crit_edge

if.end.thread.if.else_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end.thread.if.end23.sink.split_crit_edge:      ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.sink.split

if.then7:                                         ; preds = %if.end
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 21
  %15 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sense_buffer, align 4
  %arrayidx = getelementptr i8, ptr %16, i32 7
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 88, i8 %18)
  %cmp = icmp ult i8 %18, 88
  %conv = zext i8 %18 to i32
  %add = add nuw nsw i32 %conv, 8
  %cond = select i1 %cmp, i32 %add, i32 96
  %sense_len = getelementptr inbounds %struct.scsi_request, ptr %cmd, i32 0, i32 4
  %19 = ptrtoint ptr %sense_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond, ptr %sense_len, align 4
  br i1 %lnot, label %if.then7.if.end23.sink.split_crit_edge, label %if.then7.land.lhs.true26_crit_edge

if.then7.land.lhs.true26_crit_edge:               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true26

if.then7.if.end23.sink.split_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.sink.split

if.else:                                          ; preds = %if.end.thread.if.else_crit_edge, %if.end.if.else_crit_edge
  %sense_current.0.off080 = phi i1 [ true, %if.end.thread.if.else_crit_edge ], [ %lnot, %if.end.if.else_crit_edge ]
  %__data_len.i = getelementptr i8, ptr %cmd, i32 -160
  %20 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %__data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp16 = icmp ne i32 %21, 0
  %sense_current.0.off0.not = xor i1 %sense_current.0.off080, true
  %brmerge = select i1 %cmp16, i1 true, i1 %sense_current.0.off0.not
  br i1 %brmerge, label %if.else.if.end23_crit_edge, label %if.else.if.end23.sink.split_crit_edge

if.else.if.end23.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.sink.split

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end23.sink.split:                              ; preds = %if.else.if.end23.sink.split_crit_edge, %if.then7.if.end23.sink.split_crit_edge, %if.end.thread.if.end23.sink.split_crit_edge
  %call21 = call fastcc zeroext i8 @scsi_result_to_blk_status(ptr noundef %cmd, i32 noundef %result)
  %22 = ptrtoint ptr %blk_statp to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call21, ptr %blk_statp, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.else.if.end23_crit_edge
  br i1 %call1, label %if.end23.land.lhs.true26_crit_edge, label %if.end23.if.end47_crit_edge

if.end23.if.end47_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end23.land.lhs.true26_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.end23.land.lhs.true26_crit_edge, %if.then7.land.lhs.true26_crit_edge
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp28 = icmp eq i8 %24, 1
  br i1 %cmp28, label %if.then30, label %land.lhs.true26.if.end47_crit_edge

land.lhs.true26.if.end47_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then30:                                        ; preds = %land.lhs.true26
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp32 = icmp eq i8 %26, 0
  br i1 %cmp32, label %land.lhs.true34, label %if.then30.if.else39_crit_edge

if.then30.if.else39_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else39

land.lhs.true34:                                  ; preds = %if.then30
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %28)
  %cmp36 = icmp eq i8 %28, 29
  br i1 %cmp36, label %land.lhs.true34.if.end54.sink.split_crit_edge, label %land.lhs.true34.if.else39_crit_edge

land.lhs.true34.if.else39_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else39

land.lhs.true34.if.end54.sink.split_crit_edge:    ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.sink.split

if.else39:                                        ; preds = %land.lhs.true34.if.else39_crit_edge, %if.then30.if.else39_crit_edge
  %rq_flags = getelementptr i8, ptr %cmd, i32 -176
  %29 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rq_flags, align 8
  %and = and i32 %30, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.then45, label %if.else39.if.end54.sink.split_crit_edge

if.else39.if.end54.sink.split_crit_edge:          ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.sink.split

if.then45:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #16
  call void @scsi_print_sense(ptr noundef %cmd) #14
  br label %if.end54.sink.split

if.end47:                                         ; preds = %land.lhs.true26.if.end47_crit_edge, %if.end23.if.end47_crit_edge
  %and48 = and i32 %result, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end54_crit_edge, label %land.lhs.true50

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

land.lhs.true50:                                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result)
  %cmp.i76 = icmp slt i32 %result, 0
  %31 = and i32 %result, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %31)
  %cmp1.i = icmp eq i32 %31, 65536
  %or.cond.i = or i1 %cmp.i76, %cmp1.i
  br i1 %or.cond.i, label %land.lhs.true50.if.end54_crit_edge, label %if.end3.i

land.lhs.true50.if.end54_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.end3.i:                                        ; preds = %land.lhs.true50
  %32 = trunc i32 %result to i8
  %trunc.i = and i8 %32, -2
  %33 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %trunc.i, label %if.end3.i.if.end54_crit_edge [
    i8 0, label %if.end3.i.if.end54.sink.split_crit_edge
    i8 4, label %if.end3.i.if.end54.sink.split_crit_edge91
    i8 16, label %if.end3.i.if.end54.sink.split_crit_edge92
    i8 20, label %if.end3.i.if.end54.sink.split_crit_edge93
    i8 34, label %if.end3.i.if.end54.sink.split_crit_edge94
  ]

if.end3.i.if.end54.sink.split_crit_edge94:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.sink.split

if.end3.i.if.end54.sink.split_crit_edge93:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.sink.split

if.end3.i.if.end54.sink.split_crit_edge92:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.sink.split

if.end3.i.if.end54.sink.split_crit_edge91:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.sink.split

if.end3.i.if.end54.sink.split_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.sink.split

if.end3.i.if.end54_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.end54.sink.split:                              ; preds = %if.end3.i.if.end54.sink.split_crit_edge, %if.end3.i.if.end54.sink.split_crit_edge91, %if.end3.i.if.end54.sink.split_crit_edge92, %if.end3.i.if.end54.sink.split_crit_edge93, %if.end3.i.if.end54.sink.split_crit_edge94, %if.then45, %if.else39.if.end54.sink.split_crit_edge, %land.lhs.true34.if.end54.sink.split_crit_edge
  %34 = ptrtoint ptr %blk_statp to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %blk_statp, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %if.end3.i.if.end54_crit_edge, %land.lhs.true50.if.end54_crit_edge, %if.end47.if.end54_crit_edge
  %result.addr.1 = phi i32 [ %result, %if.end47.if.end54_crit_edge ], [ %result, %land.lhs.true50.if.end54_crit_edge ], [ %result, %if.end3.i.if.end54_crit_edge ], [ 0, %if.end54.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #14
  ret i32 %result.addr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @scsi_end_request(ptr noundef %req, i8 noundef zeroext %error, i32 noundef %bytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.request, ptr %req, i32 1
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request_queue, align 4
  %call1 = tail call zeroext i1 @blk_update_request(ptr noundef %req, i8 noundef zeroext %error, i32 noundef %bytes) #14
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %queue_flags, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disk, align 8
  tail call void @add_disk_randomness(ptr noundef %10) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %cmd_flags.i = getelementptr %struct.request, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_flags.i, align 4
  %13 = and i32 %12, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %13)
  %14 = icmp eq i32 %13, 34
  br i1 %14, label %if.end5.if.end49_crit_edge, label %if.then7

if.end5.if.end49_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then7:                                         ; preds = %if.end5
  %flags = getelementptr %struct.request, ptr %req, i32 2, i32 16
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %land.rhs, label %if.then7.if.end39_crit_edge

if.then7.if.end39_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

land.rhs:                                         ; preds = %if.then7
  %.b67 = load i1, ptr @scsi_end_request.__already_done, align 1
  br i1 %.b67, label %land.rhs.if.end39_crit_edge, label %if.then17, !prof !214

land.rhs.if.end39_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scsi_end_request.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 551, i32 noundef 9, ptr noundef null) #14
  br label %if.end39

if.end39:                                         ; preds = %if.then17, %land.rhs.if.end39_crit_edge, %if.then7.if.end39_crit_edge
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and48 = and i32 %18, -3
  store i32 %and48, ptr %flags, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end39, %if.end5.if.end49_crit_edge
  %rcu = getelementptr %struct.request, ptr %req, i32 1, i32 30, i32 0, i32 1, i32 1
  tail call void @destroy_rcu_head(ptr noundef %rcu) #14
  %nents.i.i = getelementptr %struct.request, ptr %req, i32 2, i32 3
  %19 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %if.end49.if.end.i.i_crit_edge, label %if.then.i.i

if.end49.if.end.i.i_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %sdb.i.i = getelementptr %struct.request, ptr %req, i32 2, i32 2
  tail call void @sg_free_table_chained(ptr noundef %sdb.i.i, i32 noundef 2) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end49.if.end.i.i_crit_edge
  %prot_sdb.i.i.i = getelementptr %struct.request, ptr %req, i32 2, i32 6
  %21 = ptrtoint ptr %prot_sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prot_sdb.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.scsi_free_sgtables.exit.i_crit_edge, label %scsi_prot_sg_count.exit.i.i

if.end.i.i.scsi_free_sgtables.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_free_sgtables.exit.i

scsi_prot_sg_count.exit.i.i:                      ; preds = %if.end.i.i
  %nents.i.i.i = getelementptr inbounds %struct.sg_table, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nents.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool3.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool3.not.i.i, label %scsi_prot_sg_count.exit.i.i.scsi_free_sgtables.exit.i_crit_edge, label %if.then4.i.i

scsi_prot_sg_count.exit.i.i.scsi_free_sgtables.exit.i_crit_edge: ; preds = %scsi_prot_sg_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_free_sgtables.exit.i

if.then4.i.i:                                     ; preds = %scsi_prot_sg_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sg_free_table_chained(ptr noundef nonnull %22, i32 noundef 1) #14
  br label %scsi_free_sgtables.exit.i

scsi_free_sgtables.exit.i:                        ; preds = %if.then4.i.i, %scsi_prot_sg_count.exit.i.i.scsi_free_sgtables.exit.i_crit_edge, %if.end.i.i.scsi_free_sgtables.exit.i_crit_edge
  %25 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd_flags.i, align 4
  %27 = and i32 %26, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %27)
  %28 = icmp eq i32 %27, 34
  br i1 %28, label %scsi_free_sgtables.exit.i.scsi_mq_uninit_cmd.exit_crit_edge, label %if.then.i3.i

scsi_free_sgtables.exit.i.scsi_mq_uninit_cmd.exit_crit_edge: ; preds = %scsi_free_sgtables.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_mq_uninit_cmd.exit

if.then.i3.i:                                     ; preds = %scsi_free_sgtables.exit.i
  %29 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req, align 8
  %disk.i.i.i = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %disk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %disk.i.i.i, align 8
  %private_data.i.i.i = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private_data.i.i.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %uninit_command.i.i = getelementptr inbounds %struct.scsi_driver, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %uninit_command.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %uninit_command.i.i, align 4
  %tobool.not.i2.i = icmp eq ptr %38, null
  br i1 %tobool.not.i2.i, label %if.then.i3.i.scsi_mq_uninit_cmd.exit_crit_edge, label %if.then3.i.i

if.then.i3.i.scsi_mq_uninit_cmd.exit_crit_edge:   ; preds = %if.then.i3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_mq_uninit_cmd.exit

if.then3.i.i:                                     ; preds = %if.then.i3.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %38(ptr noundef %add.ptr.i) #14
  br label %scsi_mq_uninit_cmd.exit

scsi_mq_uninit_cmd.exit:                          ; preds = %if.then3.i.i, %if.then.i3.i.scsi_mq_uninit_cmd.exit_crit_edge, %scsi_free_sgtables.exit.i.scsi_mq_uninit_cmd.exit_crit_edge
  %q_usage_counter = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 2
  %39 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !218
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i.i, label %scsi_mq_uninit_cmd.exit.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

scsi_mq_uninit_cmd.exit.rcu_read_lock.exit.i.i_crit_edge: ; preds = %scsi_mq_uninit_cmd.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %scsi_mq_uninit_cmd.exit
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i68 = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i68, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #14
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %scsi_mq_uninit_cmd.exit.rcu_read_lock.exit.i.i_crit_edge
  %43 = ptrtoint ptr %q_usage_counter to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %q_usage_counter, align 4
  %and.i.i.i = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !214

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !220
  %46 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i2.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %51, %44
  %52 = inttoptr i32 %add.i.i to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add15.i.i = add i32 %54, 1
  store i32 %add15.i.i, ptr %52, align 4
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !221
  %and.i.i.i.i = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i69 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i69, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !215

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #14, !srcloc !222
  br label %if.end38.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %57, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %57, i32 1, i32 3, i32 1) #14
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 1, ptr elementtype(i32) %57) #14, !srcloc !223
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.else.i.i, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i3.i.i, label %if.end38.i.i.percpu_ref_get.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end38.i.i.percpu_ref_get.exit_crit_edge:       ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_get.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end38.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_get.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_get.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #14
  br label %percpu_ref_get.exit

percpu_ref_get.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge, %if.end38.i.i.percpu_ref_get.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  %59 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i10.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  tail call void @__blk_mq_end_request(ptr noundef %req, i8 noundef zeroext %error) #14
  tail call fastcc void @scsi_run_queue_async(ptr noundef %1)
  %63 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i.i.i70 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i.i.i70 to ptr
  %preempt_count.i.i.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i71, align 4
  %add.i.i.i.i.i72 = add i32 %66, 1
  store volatile i32 %add.i.i.i.i.i72, ptr %preempt_count.i.i.i.i.i.i71, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !218
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i.i73 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i.i73, label %percpu_ref_get.exit.rcu_read_lock.exit.i.i82_crit_edge, label %land.lhs.true.i.i.i76

percpu_ref_get.exit.rcu_read_lock.exit.i.i82_crit_edge: ; preds = %percpu_ref_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i82

land.lhs.true.i.i.i76:                            ; preds = %percpu_ref_get.exit
  %call1.i.i.i74 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i74)
  %tobool.not.i.i.i75 = icmp eq i32 %call1.i.i.i74, 0
  br i1 %tobool.not.i.i.i75, label %land.lhs.true.i.i.i76.rcu_read_lock.exit.i.i82_crit_edge, label %land.lhs.true2.i.i.i78

land.lhs.true.i.i.i76.rcu_read_lock.exit.i.i82_crit_edge: ; preds = %land.lhs.true.i.i.i76
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i82

land.lhs.true2.i.i.i78:                           ; preds = %land.lhs.true.i.i.i76
  %.b4.i.i.i77 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i77, label %land.lhs.true2.i.i.i78.rcu_read_lock.exit.i.i82_crit_edge, label %if.then.i.i.i79

land.lhs.true2.i.i.i78.rcu_read_lock.exit.i.i82_crit_edge: ; preds = %land.lhs.true2.i.i.i78
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i82

if.then.i.i.i79:                                  ; preds = %land.lhs.true2.i.i.i78
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #14
  br label %rcu_read_lock.exit.i.i82

rcu_read_lock.exit.i.i82:                         ; preds = %if.then.i.i.i79, %land.lhs.true2.i.i.i78.rcu_read_lock.exit.i.i82_crit_edge, %land.lhs.true.i.i.i76.rcu_read_lock.exit.i.i82_crit_edge, %percpu_ref_get.exit.rcu_read_lock.exit.i.i82_crit_edge
  %67 = ptrtoint ptr %q_usage_counter to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %q_usage_counter, align 4
  %and.i.i.i80 = and i32 %68, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i80)
  %tobool.not.i1.i.i81 = icmp eq i32 %and.i.i.i80, 0
  br i1 %tobool.not.i1.i.i81, label %do.body1.i.i90, label %if.else.i.i95, !prof !214

do.body1.i.i90:                                   ; preds = %rcu_read_lock.exit.i.i82
  %69 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !220
  %70 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i2.i.i83 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i2.i.i83 to ptr
  %cpu.i.i84 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %cpu.i.i84 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu.i.i84, align 4
  %arrayidx.i.i85 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx.i.i85 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.i85, align 4
  %add.i.i86 = add i32 %75, %68
  %76 = inttoptr i32 %add.i.i86 to ptr
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %add15.i.i87 = add i32 %78, -1
  store i32 %add15.i.i87, ptr %76, align 4
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !221
  %and.i.i.i.i88 = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i88)
  %tobool.not.i.i89 = icmp eq i32 %and.i.i.i.i88, 0
  br i1 %tobool.not.i.i89, label %if.then29.i.i91, label %do.body1.i.i90.do.end31.i.i92_crit_edge, !prof !215

do.body1.i.i90.do.end31.i.i92_crit_edge:          ; preds = %do.body1.i.i90
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31.i.i92

if.then29.i.i91:                                  ; preds = %do.body1.i.i90
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end31.i.i92

do.end31.i.i92:                                   ; preds = %if.then29.i.i91, %do.body1.i.i90.do.end31.i.i92_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %69) #14, !srcloc !222
  br label %if.end48.i.i

if.else.i.i95:                                    ; preds = %rcu_read_lock.exit.i.i82
  %data.i.i93 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 2, i32 1
  %80 = ptrtoint ptr %data.i.i93 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data.i.i93, align 4
  %call.i.i.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %81, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !224
  tail call void @llvm.prefetch.p0(ptr %81, i32 1, i32 3, i32 1) #14
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #14, !srcloc !225
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %82, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then45.i.i, label %if.else.i.i95.if.end48.i.i_crit_edge, !prof !215

if.else.i.i95.if.end48.i.i_crit_edge:             ; preds = %if.else.i.i95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i95
  call void @__sanitizer_cov_trace_pc() #16
  %83 = ptrtoint ptr %data.i.i93 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i.i93, align 4
  %release.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %release.i.i, align 4
  tail call void %86(ptr noundef %q_usage_counter) #14
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.else.i.i95.if.end48.i.i_crit_edge, %do.end31.i.i92
  %call.i3.i.i96 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i3.i.i96, label %if.end48.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true.i6.i.i99

if.end48.i.i.percpu_ref_put.exit_crit_edge:       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_put.exit

land.lhs.true.i6.i.i99:                           ; preds = %if.end48.i.i
  %call1.i4.i.i97 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i97)
  %tobool.not.i5.i.i98 = icmp eq i32 %call1.i4.i.i97, 0
  br i1 %tobool.not.i5.i.i98, label %land.lhs.true.i6.i.i99.percpu_ref_put.exit_crit_edge, label %land.lhs.true2.i8.i.i101

land.lhs.true.i6.i.i99.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i99
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_put.exit

land.lhs.true2.i8.i.i101:                         ; preds = %land.lhs.true.i6.i.i99
  %.b4.i7.i.i100 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i100, label %land.lhs.true2.i8.i.i101.percpu_ref_put.exit_crit_edge, label %if.then.i9.i.i102

land.lhs.true2.i8.i.i101.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i101
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_put.exit

if.then.i9.i.i102:                                ; preds = %land.lhs.true2.i8.i.i101
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #14
  br label %percpu_ref_put.exit

percpu_ref_put.exit:                              ; preds = %if.then.i9.i.i102, %land.lhs.true2.i8.i.i101.percpu_ref_put.exit_crit_edge, %land.lhs.true.i6.i.i99.percpu_ref_put.exit_crit_edge, %if.end48.i.i.percpu_ref_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  %87 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i10.i.i103 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i10.i.i103 to ptr
  %preempt_count.i.i.i.i11.i.i104 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i104 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i104, align 4
  %sub.i.i.i.i.i105 = add i32 %90, -1
  store volatile i32 %sub.i.i.i.i.i105, ptr %preempt_count.i.i.i.i11.i.i104, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

cleanup:                                          ; preds = %percpu_ref_put.exit, %entry.cleanup_crit_edge
  ret i1 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_noretry_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scsi_io_completion_reprep(ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %cmd, i32 -192
  %rq_flags.i = getelementptr i8, ptr %cmd, i32 -176
  %0 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_flags.i, align 8
  %and.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %and2.i = and i32 %1, -129
  %2 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and2.i, ptr %rq_flags.i, align 8
  %nents.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %3 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nents.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then.i.if.end.i.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  tail call void @sg_free_table_chained(ptr noundef %sdb.i.i.i, i32 noundef 2) #14
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.if.end.i.i.i_crit_edge
  %prot_sdb.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 18
  %5 = ptrtoint ptr %prot_sdb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prot_sdb.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.scsi_free_sgtables.exit.i.i_crit_edge, label %scsi_prot_sg_count.exit.i.i.i

if.end.i.i.i.scsi_free_sgtables.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_free_sgtables.exit.i.i

scsi_prot_sg_count.exit.i.i.i:                    ; preds = %if.end.i.i.i
  %nents.i.i.i.i = getelementptr inbounds %struct.sg_table, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %nents.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nents.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i.i.i, label %scsi_prot_sg_count.exit.i.i.i.scsi_free_sgtables.exit.i.i_crit_edge, label %if.then4.i.i.i

scsi_prot_sg_count.exit.i.i.i.scsi_free_sgtables.exit.i.i_crit_edge: ; preds = %scsi_prot_sg_count.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_free_sgtables.exit.i.i

if.then4.i.i.i:                                   ; preds = %scsi_prot_sg_count.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sg_free_table_chained(ptr noundef nonnull %6, i32 noundef 1) #14
  br label %scsi_free_sgtables.exit.i.i

scsi_free_sgtables.exit.i.i:                      ; preds = %if.then4.i.i.i, %scsi_prot_sg_count.exit.i.i.i.scsi_free_sgtables.exit.i.i_crit_edge, %if.end.i.i.i.scsi_free_sgtables.exit.i.i_crit_edge
  %cmd_flags.i.i.i.i = getelementptr i8, ptr %cmd, i32 -180
  %9 = ptrtoint ptr %cmd_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd_flags.i.i.i.i, align 4
  %11 = and i32 %10, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %11)
  %12 = icmp eq i32 %11, 34
  br i1 %12, label %scsi_free_sgtables.exit.i.i.scsi_mq_requeue_cmd.exit_crit_edge, label %if.then.i3.i.i

scsi_free_sgtables.exit.i.i.scsi_mq_requeue_cmd.exit_crit_edge: ; preds = %scsi_free_sgtables.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_mq_requeue_cmd.exit

if.then.i3.i.i:                                   ; preds = %scsi_free_sgtables.exit.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i.i, align 8
  %disk.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %disk.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disk.i.i.i.i, align 8
  %private_data.i.i.i.i = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %private_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data.i.i.i.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %uninit_command.i.i.i = getelementptr inbounds %struct.scsi_driver, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %uninit_command.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %uninit_command.i.i.i, align 4
  %tobool.not.i2.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i2.i.i, label %if.then.i3.i.i.scsi_mq_requeue_cmd.exit_crit_edge, label %if.then3.i.i.i

if.then.i3.i.i.scsi_mq_requeue_cmd.exit_crit_edge: ; preds = %if.then.i3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_mq_requeue_cmd.exit

if.then3.i.i.i:                                   ; preds = %if.then.i3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %22(ptr noundef %cmd) #14
  br label %scsi_mq_requeue_cmd.exit

land.end.i:                                       ; preds = %entry
  %.b43.i = load i1, ptr @scsi_mq_requeue_cmd.__already_done, align 1
  br i1 %.b43.i, label %land.end.i.scsi_mq_requeue_cmd.exit_crit_edge, label %if.then8.i, !prof !214

land.end.i.scsi_mq_requeue_cmd.exit_crit_edge:    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_mq_requeue_cmd.exit

if.then8.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scsi_mq_requeue_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 129, i32 noundef 9, ptr noundef null) #14
  br label %scsi_mq_requeue_cmd.exit

scsi_mq_requeue_cmd.exit:                         ; preds = %if.then8.i, %land.end.i.scsi_mq_requeue_cmd.exit_crit_edge, %if.then3.i.i.i, %if.then.i3.i.i.scsi_mq_requeue_cmd.exit_crit_edge, %scsi_free_sgtables.exit.i.i.scsi_mq_requeue_cmd.exit_crit_edge
  tail call void @blk_mq_requeue_request(ptr noundef %add.ptr.i.i.i, i1 noundef zeroext true) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scsi_io_completion_action(ptr noundef %cmd, i32 noundef %result) unnamed_addr #0 align 64 {
entry:
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 -192
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #14
  %0 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %3 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %sshdr, align 8
  %call1 = call zeroext i1 @scsi_command_normalize_sense(ptr noundef %cmd, ptr noundef nonnull %sshdr) #14
  br i1 %call1, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sshdr, align 8
  %call4 = call fastcc zeroext i8 @scsi_result_to_blk_status(ptr noundef %cmd, i32 noundef %result)
  %6 = and i32 %result, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %6)
  %cmp = icmp eq i32 %6, 524288
  br i1 %cmp, label %if.end.land.lhs.true121_crit_edge, label %if.else

if.end.land.lhs.true121_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.end.thread:                                    ; preds = %entry
  %call4212 = call fastcc zeroext i8 @scsi_result_to_blk_status(ptr noundef %cmd, i32 noundef %result)
  %7 = and i32 %result, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp213 = icmp eq i32 %7, 524288
  br i1 %cmp213, label %if.end.thread.land.lhs.true121_crit_edge, label %if.end.thread.sw.bb126_crit_edge

if.end.thread.sw.bb126_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb126

if.end.thread.land.lhs.true121_crit_edge:         ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %5)
  %cmp.i = icmp ult i8 %5, 112
  %8 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i = icmp eq i8 %8, 0
  %lnot = or i1 %cmp.i, %tobool.i
  br i1 %lnot, label %if.then8, label %if.else.sw.bb126_crit_edge

if.else.sw.bb126_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb126

if.then8:                                         ; preds = %if.else
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %0, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %10, label %if.then8.sw.bb126_crit_edge [
    i8 6, label %sw.bb
    i8 5, label %sw.bb16
    i8 11, label %sw.bb67
    i8 2, label %sw.bb74
    i8 7, label %sw.bb87
  ]

if.then8.sw.bb126_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb126

sw.bb:                                            ; preds = %if.then8
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %removable = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 41
  %14 = ptrtoint ptr %removable to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %bf.load = load i64, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load)
  %tobool10.not = icmp sgt i64 %bf.load, -1
  br i1 %tobool10.not, label %sw.bb.land.lhs.true121_crit_edge, label %if.then11

sw.bb.land.lhs.true121_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.then11:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set = or i64 %bf.load, 4611686018427387904
  %15 = ptrtoint ptr %removable to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %bf.set, ptr %removable, align 4
  br label %sw.bb126

sw.bb16:                                          ; preds = %if.then8
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %use_10_for_rw = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 41
  %18 = ptrtoint ptr %use_10_for_rw to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %bf.load18 = load i64, ptr %use_10_for_rw, align 4
  %19 = and i64 %bf.load18, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool22.not = icmp eq i64 %19, 0
  br i1 %tobool22.not, label %sw.bb16.if.else46thread-pre-split_crit_edge, label %land.lhs.true23

sw.bb16.if.else46thread-pre-split_crit_edge:      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else46thread-pre-split

land.lhs.true23:                                  ; preds = %sw.bb16
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %21)
  %cmp25 = icmp eq i8 %21, 32
  br i1 %cmp25, label %land.lhs.true27, label %land.lhs.true23.if.else46_crit_edge

land.lhs.true23.if.else46_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else46

land.lhs.true27:                                  ; preds = %land.lhs.true23
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp29 = icmp eq i8 %23, 0
  br i1 %cmp29, label %land.lhs.true31, label %land.lhs.true27.if.then62_crit_edge

land.lhs.true27.if.then62_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then62

land.lhs.true31:                                  ; preds = %land.lhs.true27
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %24 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmnd, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %27, label %land.lhs.true31.if.else46thread-pre-split_crit_edge [
    i8 40, label %land.lhs.true31.if.then40_crit_edge
    i8 42, label %land.lhs.true31.if.then40_crit_edge219
  ]

land.lhs.true31.if.then40_crit_edge219:           ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then40

land.lhs.true31.if.then40_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then40

land.lhs.true31.if.else46thread-pre-split_crit_edge: ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else46thread-pre-split

if.then40:                                        ; preds = %land.lhs.true31.if.then40_crit_edge, %land.lhs.true31.if.then40_crit_edge219
  %bf.clear44 = and i64 %bf.load18, -281474976710657
  %29 = ptrtoint ptr %use_10_for_rw to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %bf.clear44, ptr %use_10_for_rw, align 4
  br label %land.lhs.true121

if.else46thread-pre-split:                        ; preds = %land.lhs.true31.if.else46thread-pre-split_crit_edge, %sw.bb16.if.else46thread-pre-split_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr = load i8, ptr %1, align 2
  br label %if.else46

if.else46:                                        ; preds = %if.else46thread-pre-split, %land.lhs.true23.if.else46_crit_edge
  %31 = phi i8 [ %.pr, %if.else46thread-pre-split ], [ %21, %land.lhs.true23.if.else46_crit_edge ]
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %31, label %if.else63 [
    i8 16, label %if.else46.sw.bb126_crit_edge
    i8 32, label %if.else46.if.then62_crit_edge
    i8 36, label %if.else46.if.then62_crit_edge220
  ]

if.else46.if.then62_crit_edge220:                 ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then62

if.else46.if.then62_crit_edge:                    ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then62

if.else46.sw.bb126_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb126

if.then62:                                        ; preds = %if.else46.if.then62_crit_edge, %if.else46.if.then62_crit_edge220, %land.lhs.true27.if.then62_crit_edge
  br label %sw.bb126

if.else63:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb126

sw.bb67:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %34)
  %cmp70 = icmp eq i8 %34, 16
  %spec.select = select i1 %cmp70, i8 8, i8 %call4
  br label %sw.bb126

sw.bb74:                                          ; preds = %if.then8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %36)
  %cmp77 = icmp eq i8 %36, 4
  br i1 %cmp77, label %if.then79, label %sw.bb74.sw.bb126_crit_edge

sw.bb74.sw.bb126_crit_edge:                       ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb126

if.then79:                                        ; preds = %sw.bb74
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %2, align 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %38, label %if.then79.sw.bb126_crit_edge [
    i8 1, label %if.then79.land.lhs.true121_crit_edge
    i8 4, label %if.then79.land.lhs.true121_crit_edge221
    i8 5, label %if.then79.land.lhs.true121_crit_edge222
    i8 6, label %if.then79.land.lhs.true121_crit_edge223
    i8 7, label %if.then79.land.lhs.true121_crit_edge224
    i8 8, label %if.then79.land.lhs.true121_crit_edge225
    i8 9, label %if.then79.land.lhs.true121_crit_edge226
    i8 17, label %if.then79.land.lhs.true121_crit_edge227
    i8 20, label %if.then79.land.lhs.true121_crit_edge228
    i8 26, label %if.then79.land.lhs.true121_crit_edge229
    i8 27, label %if.then79.land.lhs.true121_crit_edge230
    i8 29, label %if.then79.land.lhs.true121_crit_edge231
    i8 36, label %if.then79.land.lhs.true121_crit_edge232
    i8 10, label %sw.bb83
  ]

if.then79.land.lhs.true121_crit_edge232:          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.then79.land.lhs.true121_crit_edge231:          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.then79.land.lhs.true121_crit_edge230:          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.then79.land.lhs.true121_crit_edge229:          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.then79.land.lhs.true121_crit_edge228:          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.then79.land.lhs.true121_crit_edge227:          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.then79.land.lhs.true121_crit_edge226:          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.then79.land.lhs.true121_crit_edge225:          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.then79.land.lhs.true121_crit_edge224:          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.then79.land.lhs.true121_crit_edge223:          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.then79.land.lhs.true121_crit_edge222:          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.then79.land.lhs.true121_crit_edge221:          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.then79.land.lhs.true121_crit_edge:             ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true121

if.then79.sw.bb126_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb126

sw.bb83:                                          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb126

sw.bb87:                                          ; preds = %if.then8
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %1, align 2
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %41, label %sw.bb87.sw.bb126_crit_edge [
    i8 12, label %land.lhs.true92
    i8 85, label %land.lhs.true102
  ]

sw.bb87.sw.bb126_crit_edge:                       ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb126

land.lhs.true92:                                  ; preds = %sw.bb87
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %44)
  %cmp95 = icmp eq i8 %44, 18
  br i1 %cmp95, label %land.lhs.true92.if.then112_crit_edge, label %land.lhs.true92.sw.bb126_crit_edge

land.lhs.true92.sw.bb126_crit_edge:               ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb126

land.lhs.true92.if.then112_crit_edge:             ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then112

land.lhs.true102:                                 ; preds = %sw.bb87
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %2, align 1
  %47 = and i8 %46, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %47)
  %switch = icmp eq i8 %47, 14
  br i1 %switch, label %land.lhs.true102.if.then112_crit_edge, label %land.lhs.true102.sw.bb126_crit_edge

land.lhs.true102.sw.bb126_crit_edge:              ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb126

land.lhs.true102.if.then112_crit_edge:            ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then112

if.then112:                                       ; preds = %land.lhs.true102.if.then112_crit_edge, %land.lhs.true92.if.then112_crit_edge
  br label %sw.bb126

land.lhs.true121:                                 ; preds = %if.then79.land.lhs.true121_crit_edge, %if.then79.land.lhs.true121_crit_edge221, %if.then79.land.lhs.true121_crit_edge222, %if.then79.land.lhs.true121_crit_edge223, %if.then79.land.lhs.true121_crit_edge224, %if.then79.land.lhs.true121_crit_edge225, %if.then79.land.lhs.true121_crit_edge226, %if.then79.land.lhs.true121_crit_edge227, %if.then79.land.lhs.true121_crit_edge228, %if.then79.land.lhs.true121_crit_edge229, %if.then79.land.lhs.true121_crit_edge230, %if.then79.land.lhs.true121_crit_edge231, %if.then79.land.lhs.true121_crit_edge232, %if.then40, %sw.bb.land.lhs.true121_crit_edge, %if.end.thread.land.lhs.true121_crit_edge, %if.end.land.lhs.true121_crit_edge
  %call4215 = phi i8 [ %call4, %if.then40 ], [ %call4, %if.end.land.lhs.true121_crit_edge ], [ %call4, %sw.bb.land.lhs.true121_crit_edge ], [ %call4, %if.then79.land.lhs.true121_crit_edge ], [ %call4, %if.then79.land.lhs.true121_crit_edge221 ], [ %call4, %if.then79.land.lhs.true121_crit_edge222 ], [ %call4, %if.then79.land.lhs.true121_crit_edge223 ], [ %call4, %if.then79.land.lhs.true121_crit_edge224 ], [ %call4, %if.then79.land.lhs.true121_crit_edge225 ], [ %call4, %if.then79.land.lhs.true121_crit_edge226 ], [ %call4, %if.then79.land.lhs.true121_crit_edge227 ], [ %call4, %if.then79.land.lhs.true121_crit_edge228 ], [ %call4, %if.then79.land.lhs.true121_crit_edge229 ], [ %call4, %if.then79.land.lhs.true121_crit_edge230 ], [ %call4, %if.then79.land.lhs.true121_crit_edge231 ], [ %call4, %if.then79.land.lhs.true121_crit_edge232 ], [ %call4212, %if.end.thread.land.lhs.true121_crit_edge ]
  %action.0 = phi i32 [ 1, %if.then40 ], [ 2, %if.end.land.lhs.true121_crit_edge ], [ 2, %sw.bb.land.lhs.true121_crit_edge ], [ 3, %if.then79.land.lhs.true121_crit_edge ], [ 3, %if.then79.land.lhs.true121_crit_edge221 ], [ 3, %if.then79.land.lhs.true121_crit_edge222 ], [ 3, %if.then79.land.lhs.true121_crit_edge223 ], [ 3, %if.then79.land.lhs.true121_crit_edge224 ], [ 3, %if.then79.land.lhs.true121_crit_edge225 ], [ 3, %if.then79.land.lhs.true121_crit_edge226 ], [ 3, %if.then79.land.lhs.true121_crit_edge227 ], [ 3, %if.then79.land.lhs.true121_crit_edge228 ], [ 3, %if.then79.land.lhs.true121_crit_edge229 ], [ 3, %if.then79.land.lhs.true121_crit_edge230 ], [ 3, %if.then79.land.lhs.true121_crit_edge231 ], [ 3, %if.then79.land.lhs.true121_crit_edge232 ], [ 2, %if.end.thread.land.lhs.true121_crit_edge ]
  %allowed.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 9
  %48 = ptrtoint ptr %allowed.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %allowed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.i187 = icmp eq i32 %49, -1
  br i1 %cmp.i187, label %land.lhs.true121.if.end125_crit_edge, label %if.end.i

land.lhs.true121.if.end125_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end125

if.end.i:                                         ; preds = %land.lhs.true121
  %add.i = add nuw i32 %49, 1
  %timeout.i = getelementptr i8, ptr %cmd, i32 -164
  %50 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %timeout.i, align 4
  %mul.i = mul i32 %51, %add.i
  %jiffies_at_alloc.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 7
  %52 = ptrtoint ptr %jiffies_at_alloc.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %jiffies_at_alloc.i, align 4
  %add2.i = add i32 %53, %mul.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add2.i, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %55, label %if.end.i.if.end125_crit_edge

if.end.i.if.end125_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end125

55:                                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %div.i = udiv i32 %mul.i, 100
  call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.9, ptr noundef %cmd, ptr noundef nonnull @.str.25, i32 noundef %div.i) #14
  br label %sw.bb126

if.end125:                                        ; preds = %if.end.i.if.end125_crit_edge, %land.lhs.true121.if.end125_crit_edge
  %56 = zext i32 %action.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %action.0, label %if.end125.cleanup_crit_edge [
    i32 3, label %sw.bb154
    i32 1, label %if.end125.sw.bb152_crit_edge
    i32 2, label %sw.bb153
  ]

if.end125.sw.bb152_crit_edge:                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb152

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb126:                                         ; preds = %55, %if.then112, %land.lhs.true102.sw.bb126_crit_edge, %land.lhs.true92.sw.bb126_crit_edge, %sw.bb87.sw.bb126_crit_edge, %sw.bb83, %if.then79.sw.bb126_crit_edge, %sw.bb74.sw.bb126_crit_edge, %sw.bb67, %if.else63, %if.then62, %if.else46.sw.bb126_crit_edge, %if.then11, %if.then8.sw.bb126_crit_edge, %if.else.sw.bb126_crit_edge, %if.end.thread.sw.bb126_crit_edge
  %blk_stat.1207211 = phi i8 [ %call4215, %55 ], [ %call4, %if.else.sw.bb126_crit_edge ], [ %call4, %if.then8.sw.bb126_crit_edge ], [ %call4, %land.lhs.true102.sw.bb126_crit_edge ], [ %call4, %sw.bb74.sw.bb126_crit_edge ], [ %spec.select, %sw.bb67 ], [ 8, %if.else46.sw.bb126_crit_edge ], [ %call4, %if.then11 ], [ %call4, %if.else63 ], [ 5, %if.then62 ], [ 15, %if.then112 ], [ %call4, %if.then79.sw.bb126_crit_edge ], [ 12, %sw.bb83 ], [ %call4, %land.lhs.true92.sw.bb126_crit_edge ], [ %call4, %sw.bb87.sw.bb126_crit_edge ], [ %call4212, %if.end.thread.sw.bb126_crit_edge ]
  %rq_flags = getelementptr i8, ptr %cmd, i32 -176
  %57 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rq_flags, align 8
  %and127 = and i32 %58, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.then129, label %sw.bb126.if.end147_crit_edge

sw.bb126.if.end147_crit_edge:                     ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147

if.then129:                                       ; preds = %sw.bb126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %59 = load i32, ptr @scsi_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool130.not = icmp eq i32 %59, 0
  br i1 %tobool130.not, label %if.then129.land.lhs.true139_crit_edge, label %if.then134, !prof !214

if.then129.land.lhs.true139_crit_edge:            ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true139

if.then134:                                       ; preds = %if.then129
  %60 = and i32 %59, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %phi.cmp = icmp eq i32 %60, 0
  br i1 %phi.cmp, label %if.then134.land.lhs.true139_crit_edge, label %if.then134.if.end147_crit_edge

if.then134.if.end147_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147

if.then134.land.lhs.true139_crit_edge:            ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true139

land.lhs.true139:                                 ; preds = %if.then134.land.lhs.true139_crit_edge, %if.then129.land.lhs.true139_crit_edge
  %call140 = call i32 @___ratelimit(ptr noundef nonnull @scsi_io_completion_action._rs, ptr noundef nonnull @__func__.scsi_io_completion_action) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %land.lhs.true139.if.end147_crit_edge, label %if.then142

land.lhs.true139.if.end147_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147

if.then142:                                       ; preds = %land.lhs.true139
  call void @scsi_print_result(ptr noundef %cmd, ptr noundef null, i32 noundef 8195) #14
  br i1 %call1, label %if.then144, label %if.then142.if.end145_crit_edge

if.then142.if.end145_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end145

if.then144:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #16
  call void @scsi_print_sense(ptr noundef %cmd) #14
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %if.then142.if.end145_crit_edge
  call void @scsi_print_command(ptr noundef %cmd) #14
  br label %if.end147

if.end147:                                        ; preds = %if.end145, %land.lhs.true139.if.end147_crit_edge, %if.then134.if.end147_crit_edge, %sw.bb126.if.end147_crit_edge
  %cmd_flags.i = getelementptr i8, ptr %cmd, i32 -180
  %61 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cmd_flags.i, align 4
  %63 = and i32 %62, 1792
  %64 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rq_flags, align 8
  %and2.i = and i32 %65, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i188

if.then.i:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #16
  %__data_len.i.i = getelementptr i8, ptr %cmd, i32 -160
  %66 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %__data_len.i.i, align 8
  br label %scsi_rq_err_bytes.exit

if.end.i188:                                      ; preds = %if.end147
  %bio3.i = getelementptr i8, ptr %cmd, i32 -144
  %68 = ptrtoint ptr %bio3.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %bio.036.i = load ptr, ptr %bio3.i, align 8
  %tobool4.not37.i = icmp eq ptr %bio.036.i, null
  br i1 %tobool4.not37.i, label %if.end.i188.do.body.i_crit_edge, label %if.end.i188.for.body.i_crit_edge

if.end.i188.for.body.i_crit_edge:                 ; preds = %if.end.i188
  br label %for.body.i

if.end.i188.do.body.i_crit_edge:                  ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %if.end.i188.for.body.i_crit_edge
  %bio.039.i = phi ptr [ %bio.0.i, %if.end8.i.for.body.i_crit_edge ], [ %bio.036.i, %if.end.i188.for.body.i_crit_edge ]
  %bytes.038.i = phi i32 [ %add.i189, %if.end8.i.for.body.i_crit_edge ], [ 0, %if.end.i188.for.body.i_crit_edge ]
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio.039.i, i32 0, i32 2
  %69 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bi_opf.i, align 8
  %and5.i = and i32 %70, %63
  call void @__sanitizer_cov_trace_cmp4(i32 %and5.i, i32 %63)
  %cmp.not.i = icmp eq i32 %and5.i, %63
  br i1 %cmp.not.i, label %if.end8.i, label %for.body.i.do.body.i_crit_edge

for.body.i.do.body.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.end8.i:                                        ; preds = %for.body.i
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %bio.039.i, i32 0, i32 8, i32 1
  %71 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bi_size.i, align 8
  %add.i189 = add i32 %72, %bytes.038.i
  %73 = ptrtoint ptr %bio.039.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %bio.0.i = load ptr, ptr %bio.039.i, align 8
  %tobool4.not.i = icmp eq ptr %bio.0.i, null
  br i1 %tobool4.not.i, label %if.end8.i.do.body.i_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end8.i.do.body.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.body.i:                                        ; preds = %if.end8.i.do.body.i_crit_edge, %for.body.i.do.body.i_crit_edge, %if.end.i188.do.body.i_crit_edge
  %bytes.0.lcssa.i = phi i32 [ 0, %if.end.i188.do.body.i_crit_edge ], [ %bytes.038.i, %for.body.i.do.body.i_crit_edge ], [ %add.i189, %if.end8.i.do.body.i_crit_edge ]
  %__data_len.i35.i = getelementptr i8, ptr %cmd, i32 -160
  %74 = ptrtoint ptr %__data_len.i35.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %__data_len.i35.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool10.not.i = icmp ne i32 %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.0.lcssa.i)
  %tobool11.not.i = icmp eq i32 %bytes.0.lcssa.i, 0
  %spec.select.i = select i1 %tobool10.not.i, i1 %tobool11.not.i, i1 false
  br i1 %spec.select.i, label %do.body16.i, label %do.body.i.scsi_rq_err_bytes.exit_crit_edge, !prof !215

do.body.i.scsi_rq_err_bytes.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_rq_err_bytes.exit

do.body16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_lib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 657, 0\0A.popsection", ""() #14, !srcloc !227
  unreachable

scsi_rq_err_bytes.exit:                           ; preds = %do.body.i.scsi_rq_err_bytes.exit_crit_edge, %if.then.i
  %retval.0.i190 = phi i32 [ %67, %if.then.i ], [ %bytes.0.lcssa.i, %do.body.i.scsi_rq_err_bytes.exit_crit_edge ]
  %call149 = call fastcc zeroext i1 @scsi_end_request(ptr noundef %add.ptr.i.i, i8 noundef zeroext %blk_stat.1207211, i32 noundef %retval.0.i190)
  br i1 %call149, label %scsi_rq_err_bytes.exit.sw.bb152_crit_edge, label %scsi_rq_err_bytes.exit.cleanup_crit_edge

scsi_rq_err_bytes.exit.cleanup_crit_edge:         ; preds = %scsi_rq_err_bytes.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

scsi_rq_err_bytes.exit.sw.bb152_crit_edge:        ; preds = %scsi_rq_err_bytes.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb152

sw.bb152:                                         ; preds = %scsi_rq_err_bytes.exit.sw.bb152_crit_edge, %if.end125.sw.bb152_crit_edge
  call fastcc void @scsi_io_completion_reprep(ptr noundef %cmd)
  br label %cleanup

sw.bb153:                                         ; preds = %if.end125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %76 = load i32, ptr @scsi_logging_level, align 4
  %77 = and i32 %76, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.not.i191 = icmp eq i32 %77, 0
  br i1 %cmp.not.i191, label %sw.bb153.__scsi_queue_insert.exit_crit_edge, label %do.body3.i, !prof !214

sw.bb153.__scsi_queue_insert.exit_crit_edge:      ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #16
  br label %__scsi_queue_insert.exit

do.body3.i:                                       ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.1, ptr noundef %cmd, ptr noundef nonnull @.str.23, ptr noundef %cmd) #14
  br label %__scsi_queue_insert.exit

__scsi_queue_insert.exit:                         ; preds = %do.body3.i, %sw.bb153.__scsi_queue_insert.exit_crit_edge
  %78 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device, align 4
  %device_blocked.i.i = getelementptr inbounds %struct.scsi_device, ptr %79, i32 0, i32 5
  %max_device_blocked.i.i = getelementptr inbounds %struct.scsi_device, ptr %79, i32 0, i32 50
  %80 = ptrtoint ptr %max_device_blocked.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_device_blocked.i.i, align 4
  %call.i.i11.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %device_blocked.i.i, i32 noundef 4) #14
  %82 = ptrtoint ptr %device_blocked.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 %81, ptr %device_blocked.i.i, align 4
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %83 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %result.i, align 4
  call void @blk_mq_requeue_request(ptr noundef %add.ptr.i.i, i1 noundef zeroext true) #14
  br label %cleanup

sw.bb154:                                         ; preds = %if.end125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %84 = load i32, ptr @scsi_logging_level, align 4
  %85 = and i32 %84, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.not.i194 = icmp eq i32 %85, 0
  br i1 %cmp.not.i194, label %sw.bb154.__scsi_queue_insert.exit202_crit_edge, label %do.body3.i195, !prof !214

sw.bb154.__scsi_queue_insert.exit202_crit_edge:   ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #16
  br label %__scsi_queue_insert.exit202

do.body3.i195:                                    ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.1, ptr noundef %cmd, ptr noundef nonnull @.str.23, ptr noundef %cmd) #14
  br label %__scsi_queue_insert.exit202

__scsi_queue_insert.exit202:                      ; preds = %do.body3.i195, %sw.bb154.__scsi_queue_insert.exit202_crit_edge
  %86 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device, align 4
  %device_blocked.i.i196 = getelementptr inbounds %struct.scsi_device, ptr %87, i32 0, i32 5
  %max_device_blocked.i.i197 = getelementptr inbounds %struct.scsi_device, ptr %87, i32 0, i32 50
  %88 = ptrtoint ptr %max_device_blocked.i.i197 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max_device_blocked.i.i197, align 4
  %call.i.i11.i.i198 = call zeroext i1 @__kasan_check_write(ptr noundef %device_blocked.i.i196, i32 noundef 4) #14
  %90 = ptrtoint ptr %device_blocked.i.i196 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 %89, ptr %device_blocked.i.i196, align 4
  %result.i199 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %91 = ptrtoint ptr %result.i199 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %result.i199, align 4
  call void @blk_mq_requeue_request(ptr noundef %add.ptr.i.i, i1 noundef zeroext true) #14
  br label %cleanup

cleanup:                                          ; preds = %__scsi_queue_insert.exit202, %__scsi_queue_insert.exit, %sw.bb152, %scsi_rq_err_bytes.exit.cleanup_crit_edge, %if.end125.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @scsi_alloc_sgtables(ptr noundef %cmd) #0 align 64 {
entry:
  %last_sg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 -192
  %rq_flags.i = getelementptr i8, ptr %cmd, i32 -176
  %2 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq_flags.i, align 8
  %and.i = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.blk_rq_nr_phys_segments.exit_crit_edge

entry.blk_rq_nr_phys_segments.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %blk_rq_nr_phys_segments.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %nr_phys_segments.i = getelementptr i8, ptr %cmd, i32 -92
  %4 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nr_phys_segments.i, align 4
  br label %blk_rq_nr_phys_segments.exit

blk_rq_nr_phys_segments.exit:                     ; preds = %if.end.i, %entry.blk_rq_nr_phys_segments.exit_crit_edge
  %retval.0.i = phi i16 [ %5, %if.end.i ], [ 1, %entry.blk_rq_nr_phys_segments.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_sg) #14
  %6 = ptrtoint ptr %last_sg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %last_sg, align 4
  %dma_drain_len.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 61
  %7 = ptrtoint ptr %dma_drain_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_drain_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i291 = icmp eq i32 %8, 0
  br i1 %tobool.not.i291, label %blk_rq_nr_phys_segments.exit.scsi_cmd_needs_dma_drain.exit_crit_edge, label %land.lhs.true.i

blk_rq_nr_phys_segments.exit.scsi_cmd_needs_dma_drain.exit_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_cmd_needs_dma_drain.exit

land.lhs.true.i:                                  ; preds = %blk_rq_nr_phys_segments.exit
  %cmd_flags.i.i = getelementptr i8, ptr %cmd, i32 -180
  %9 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd_flags.i.i, align 4
  %11 = and i32 %10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %11)
  %12 = icmp eq i32 %11, 34
  br i1 %12, label %land.rhs.i, label %land.lhs.true.i.scsi_cmd_needs_dma_drain.exit_crit_edge

land.lhs.true.i.scsi_cmd_needs_dma_drain.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_cmd_needs_dma_drain.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %hostt.i = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hostt.i, align 8
  %dma_need_drain.i = getelementptr inbounds %struct.scsi_host_template, ptr %16, i32 0, i32 24
  %17 = ptrtoint ptr %dma_need_drain.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma_need_drain.i, align 8
  %call3.i = tail call zeroext i1 %18(ptr noundef %add.ptr.i.i) #14
  br label %scsi_cmd_needs_dma_drain.exit

scsi_cmd_needs_dma_drain.exit:                    ; preds = %land.rhs.i, %land.lhs.true.i.scsi_cmd_needs_dma_drain.exit_crit_edge, %blk_rq_nr_phys_segments.exit.scsi_cmd_needs_dma_drain.exit_crit_edge
  %19 = phi i1 [ false, %land.lhs.true.i.scsi_cmd_needs_dma_drain.exit_crit_edge ], [ false, %blk_rq_nr_phys_segments.exit.scsi_cmd_needs_dma_drain.exit_crit_edge ], [ %call3.i, %land.rhs.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i)
  %tobool.not = icmp eq i16 %retval.0.i, 0
  br i1 %tobool.not, label %land.rhs, label %if.end42

land.rhs:                                         ; preds = %scsi_cmd_needs_dma_drain.exit
  %.b288 = load i1, ptr @scsi_alloc_sgtables.__already_done, align 1
  br i1 %.b288, label %land.rhs.cleanup231_crit_edge, label %if.then, !prof !214

land.rhs.cleanup231_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup231

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scsi_alloc_sgtables.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1032, i32 noundef 9, ptr noundef null) #14
  br label %cleanup231

if.end42:                                         ; preds = %scsi_cmd_needs_dma_drain.exit
  %inc = zext i1 %19 to i16
  %spec.select = add i16 %retval.0.i, %inc
  %sdb = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %conv = zext i16 %spec.select to i32
  %20 = ptrtoint ptr %sdb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdb, align 4
  %call48 = tail call i32 @sg_alloc_table_chained(ptr noundef %sdb, i32 noundef %conv, ptr noundef %21, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end57, label %if.end42.cleanup231_crit_edge, !prof !214

if.end42.cleanup231_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup231

if.end57:                                         ; preds = %if.end42
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i, align 8
  %24 = ptrtoint ptr %sdb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdb, align 4
  %call61 = call i32 @__blk_rq_map_sg(ptr noundef %23, ptr noundef %add.ptr.i.i, ptr noundef %25, ptr noundef nonnull %last_sg) #14
  %__data_len.i = getelementptr i8, ptr %cmd, i32 -160
  %26 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %__data_len.i, align 8
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i.i, align 8
  %dma_pad_mask = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %dma_pad_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_pad_mask, align 4
  %and = and i32 %31, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool64.not = icmp eq i32 %and, 0
  br i1 %tobool64.not, label %if.end57.if.end72_crit_edge, label %if.then65

if.end57.if.end72_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then65:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  %neg = xor i32 %27, -1
  %and69 = and i32 %31, %neg
  %add = add i32 %and69, 1
  %32 = ptrtoint ptr %last_sg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %last_sg, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length, align 4
  %add70 = add i32 %35, %add
  store i32 %add70, ptr %length, align 4
  %extra_len = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 27
  %36 = ptrtoint ptr %extra_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %extra_len, align 4
  %add71 = add i32 %37, %add
  store i32 %add71, ptr %extra_len, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then65, %if.end57.if.end72_crit_edge
  br i1 %19, label %if.then74, label %if.end72.do.body81_crit_edge

if.end72.do.body81_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body81

if.then74:                                        ; preds = %if.end72
  %38 = ptrtoint ptr %last_sg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %last_sg, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %and.i293 = and i32 %41, -3
  store i32 %and.i293, ptr %39, align 4
  %42 = load ptr, ptr %last_sg, align 4
  %call75 = call ptr @sg_next(ptr noundef %42) #14
  %43 = ptrtoint ptr %last_sg to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call75, ptr %last_sg, align 4
  %dma_drain_buf = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 62
  %44 = ptrtoint ptr %dma_drain_buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_drain_buf, align 4
  %46 = ptrtoint ptr %dma_drain_len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_drain_len.i, align 8
  %48 = ptrtoint ptr %45 to i32
  %cmp.i = icmp ugt ptr %45, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i294, label %if.then74.do.body5.i_crit_edge, !prof !214

if.then74.do.body5.i_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5.i

land.lhs.true.i294:                               ; preds = %if.then74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %49 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %49, %45
  br i1 %cmp1.i, label %land.rhs.i295, label %land.lhs.true.i294.do.body5.i_crit_edge, !prof !214

land.lhs.true.i294.do.body5.i_crit_edge:          ; preds = %land.lhs.true.i294
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5.i

land.rhs.i295:                                    ; preds = %land.lhs.true.i294
  %sub.i = add i32 %48, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %50 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %50, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i295.do.body5.i_crit_edge, label %do.end8.i, !prof !215

land.rhs.i295.do.body5.i_crit_edge:               ; preds = %land.rhs.i295
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i295.do.body5.i_crit_edge, %land.lhs.true.i294.do.body5.i_crit_edge, %if.then74.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #14, !srcloc !228
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i295
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %51 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %51, i32 %shr.i
  %52 = ptrtoint ptr %call75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call75, align 4
  %54 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %54, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !214

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !229
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !214

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #14, !srcloc !230
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and.i296 = and i32 %48, 4095
  %and.i.i.i = and i32 %53, 3
  %or.i.i.i = or i32 %and.i.i.i, %54
  %55 = ptrtoint ptr %call75 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or.i.i.i, ptr %call75, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %call75, i32 0, i32 1
  %56 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.i296, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %call75, i32 0, i32 2
  %57 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %47, ptr %length.i.i, align 4
  %58 = ptrtoint ptr %last_sg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %last_sg, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %or.i = and i32 %61, -4
  %and.i297 = or i32 %or.i, 2
  store i32 %and.i297, ptr %59, align 4
  %62 = ptrtoint ptr %dma_drain_len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_drain_len.i, align 8
  %extra_len77 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 27
  %64 = ptrtoint ptr %extra_len77 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %extra_len77, align 4
  %add78 = add i32 %65, %63
  store i32 %add78, ptr %extra_len77, align 4
  %inc79 = add i32 %call61, 1
  br label %do.body81

do.body81:                                        ; preds = %sg_set_buf.exit, %if.end72.do.body81_crit_edge
  %count.0 = phi i32 [ %inc79, %sg_set_buf.exit ], [ %call61, %if.end72.do.body81_crit_edge ]
  %nents = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %66 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0, i32 %67)
  %cmp = icmp ugt i32 %count.0, %67
  br i1 %cmp, label %do.body92, label %do.end100, !prof !215

do.body92:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_lib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1073, 0\0A.popsection", ""() #14, !srcloc !231
  unreachable

do.end100:                                        ; preds = %do.body81
  %68 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %count.0, ptr %nents, align 4
  %69 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rq_flags.i, align 8
  %and.i299 = and i32 %70, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i299)
  %tobool.not.i300 = icmp eq i32 %and.i299, 0
  %bv_len.i = getelementptr i8, ptr %cmd, i32 -52
  %retval.0.in.i = select i1 %tobool.not.i300, ptr %__data_len.i, ptr %bv_len.i
  %71 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %retval.0.i301 = load i32, ptr %retval.0.in.i, align 4
  %length106 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %72 = ptrtoint ptr %length106 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i301, ptr %length106, align 4
  %cmd_flags.i = getelementptr i8, ptr %cmd, i32 -180
  %73 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cmd_flags.i, align 4
  %75 = and i32 %74, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.i302.not = icmp eq i32 %75, 0
  br i1 %tobool.i302.not, label %do.end100.cleanup231_crit_edge, label %if.then108

do.end100.cleanup231_crit_edge:                   ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup231

if.then108:                                       ; preds = %do.end100
  %prot_sdb109 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 18
  %76 = ptrtoint ptr %prot_sdb109 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prot_sdb109, align 4
  %tobool111.not = icmp eq ptr %77, null
  br i1 %tobool111.not, label %land.rhs121, label %if.end169

land.rhs121:                                      ; preds = %if.then108
  %.b286287 = load i1, ptr @scsi_alloc_sgtables.__already_done.5, align 1
  br i1 %.b286287, label %land.rhs121.out_free_sgtables_crit_edge, label %if.then132, !prof !214

land.rhs121.out_free_sgtables_crit_edge:          ; preds = %land.rhs121
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_sgtables

if.then132:                                       ; preds = %land.rhs121
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scsi_alloc_sgtables.__already_done.5, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1081, i32 noundef 9, ptr noundef null) #14
  br label %out_free_sgtables

if.end169:                                        ; preds = %if.then108
  %78 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i.i, align 8
  %bio = getelementptr i8, ptr %cmd, i32 -144
  %80 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bio, align 8
  %call171 = call i32 @blk_rq_count_integrity_sg(ptr noundef %79, ptr noundef %81) #14
  %82 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %77, align 4
  %call175 = call i32 @sg_alloc_table_chained(ptr noundef nonnull %77, i32 noundef %call171, ptr noundef %83, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.end178, label %if.end169.out_free_sgtables_crit_edge

if.end169.out_free_sgtables_crit_edge:            ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_sgtables

if.end178:                                        ; preds = %if.end169
  %84 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.i.i, align 8
  %86 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bio, align 8
  %88 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %77, align 4
  %call183 = call i32 @blk_rq_map_integrity_sg(ptr noundef %85, ptr noundef %87, ptr noundef %89) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call183, i32 %call171)
  %cmp185 = icmp sgt i32 %call183, %call171
  br i1 %cmp185, label %do.body194, label %do.body203, !prof !215

do.body194:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_lib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1102, 0\0A.popsection", ""() #14, !srcloc !232
  unreachable

do.body203:                                       ; preds = %if.end178
  %90 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr.i.i, align 8
  %max_integrity_segments.i = getelementptr inbounds %struct.request_queue, ptr %91, i32 0, i32 37, i32 22
  %92 = ptrtoint ptr %max_integrity_segments.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %max_integrity_segments.i, align 2
  %conv206 = zext i16 %93 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call183, i32 %conv206)
  %cmp207 = icmp sgt i32 %call183, %conv206
  br i1 %cmp207, label %do.body216, label %cleanup, !prof !215

do.body216:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_lib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1103, 0\0A.popsection", ""() #14, !srcloc !233
  unreachable

cleanup:                                          ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %prot_sdb109 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %77, ptr %prot_sdb109, align 4
  %nents228 = getelementptr inbounds %struct.sg_table, ptr %77, i32 0, i32 1
  %95 = ptrtoint ptr %nents228 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call183, ptr %nents228, align 4
  br label %cleanup231

out_free_sgtables:                                ; preds = %if.end169.out_free_sgtables_crit_edge, %if.then132, %land.rhs121.out_free_sgtables_crit_edge
  %ret.0.ph = phi i8 [ 10, %land.rhs121.out_free_sgtables_crit_edge ], [ 9, %if.end169.out_free_sgtables_crit_edge ], [ 10, %if.then132 ]
  %96 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i303 = icmp eq i32 %97, 0
  br i1 %tobool.not.i303, label %out_free_sgtables.if.end.i304_crit_edge, label %if.then.i

out_free_sgtables.if.end.i304_crit_edge:          ; preds = %out_free_sgtables
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i304

if.then.i:                                        ; preds = %out_free_sgtables
  call void @__sanitizer_cov_trace_pc() #16
  call void @sg_free_table_chained(ptr noundef %sdb, i32 noundef 2) #14
  br label %if.end.i304

if.end.i304:                                      ; preds = %if.then.i, %out_free_sgtables.if.end.i304_crit_edge
  %98 = ptrtoint ptr %prot_sdb109 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prot_sdb109, align 4
  %tobool.not.i.i = icmp eq ptr %99, null
  br i1 %tobool.not.i.i, label %if.end.i304.cleanup231_crit_edge, label %scsi_prot_sg_count.exit.i

if.end.i304.cleanup231_crit_edge:                 ; preds = %if.end.i304
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup231

scsi_prot_sg_count.exit.i:                        ; preds = %if.end.i304
  %nents.i.i = getelementptr inbounds %struct.sg_table, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool3.not.i = icmp eq i32 %101, 0
  br i1 %tobool3.not.i, label %scsi_prot_sg_count.exit.i.cleanup231_crit_edge, label %if.then4.i

scsi_prot_sg_count.exit.i.cleanup231_crit_edge:   ; preds = %scsi_prot_sg_count.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup231

if.then4.i:                                       ; preds = %scsi_prot_sg_count.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @sg_free_table_chained(ptr noundef nonnull %99, i32 noundef 1) #14
  br label %cleanup231

cleanup231:                                       ; preds = %if.then4.i, %scsi_prot_sg_count.exit.i.cleanup231_crit_edge, %if.end.i304.cleanup231_crit_edge, %cleanup, %do.end100.cleanup231_crit_edge, %if.end42.cleanup231_crit_edge, %if.then, %land.rhs.cleanup231_crit_edge
  %retval.0 = phi i8 [ 10, %if.then ], [ 9, %if.end42.cleanup231_crit_edge ], [ 0, %cleanup ], [ 0, %do.end100.cleanup231_crit_edge ], [ 10, %land.rhs.cleanup231_crit_edge ], [ %ret.0.ph, %if.end.i304.cleanup231_crit_edge ], [ %ret.0.ph, %scsi_prot_sg_count.exit.i.cleanup231_crit_edge ], [ %ret.0.ph, %if.then4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_sg) #14
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_chained(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_count_integrity_sg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_integrity_sg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_init_command(ptr noundef %dev, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 21
  %0 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sense_buffer, align 4
  %prot_sdb = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 18
  %2 = ptrtoint ptr %prot_sdb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prot_sdb, align 4
  %flags1 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 25
  %4 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1, align 4
  %and = and i32 %5, 2
  %budget_token2 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 6
  %6 = ptrtoint ptr %budget_token2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %budget_token2, align 4
  %cmd_flags.i = getelementptr i8, ptr %cmd, i32 -180
  %8 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd_flags.i, align 4
  %10 = and i32 %9, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %10)
  %11 = icmp ne i32 %10, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %11, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %12 = call ptr @memset(ptr %cmd, i32 0, i32 16)
  %cmd4.i = getelementptr i8, ptr %cmd, i32 16
  %13 = ptrtoint ptr %cmd4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cmd, ptr %cmd4.i, align 4
  %cmd_len.i = getelementptr i8, ptr %cmd, i32 20
  %14 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 16, ptr %cmd_len.i, align 4
  %sense_len.i = getelementptr i8, ptr %cmd, i32 28
  %15 = ptrtoint ptr %sense_len.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sense_len.i, align 4
  %rcu.i = getelementptr i8, ptr %cmd, i32 156
  tail call void @init_rcu_head(ptr noundef %rcu.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %jiffies_at_alloc.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 7
  %17 = ptrtoint ptr %jiffies_at_alloc.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %jiffies_at_alloc.i, align 4
  %retries.i = getelementptr i8, ptr %cmd, i32 176
  %18 = ptrtoint ptr %retries.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %retries.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %and, %entry.if.end_crit_edge ], [ 2, %if.then ]
  %jiffies_at_alloc5 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 7
  %19 = ptrtoint ptr %jiffies_at_alloc5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %jiffies_at_alloc5, align 4
  %retries6 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 8
  %21 = ptrtoint ptr %retries6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %retries6, align 4
  %state = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 26
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not = icmp eq i32 %25, 0
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hostt, align 8
  %init_cmd_priv = getelementptr inbounds %struct.scsi_host_template, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %init_cmd_priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_cmd_priv, align 4
  %tobool9.not = icmp eq ptr %31, null
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 8
  %add = add i32 %33, 248
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %to_clear.0 = phi i32 [ 248, %if.end.if.end13_crit_edge ], [ %add, %if.then10 ]
  %add.ptr = getelementptr i8, ptr %cmd, i32 44
  %34 = call ptr @memset(ptr %add.ptr, i32 0, i32 %to_clear.0)
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev, ptr %add.ptr, align 4
  %36 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %1, ptr %sense_buffer, align 4
  %37 = ptrtoint ptr %prot_sdb to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %3, ptr %prot_sdb, align 4
  %38 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %flags.0, ptr %flags1, align 4
  %eh_entry = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 2
  %39 = ptrtoint ptr %eh_entry to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %eh_entry, ptr %eh_entry, align 4
  %prev.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %eh_entry, ptr %prev.i, align 4
  %abort_work = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 3
  tail call void @__init_work(ptr noundef %abort_work, i32 noundef 0) #14
  %41 = ptrtoint ptr %abort_work to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -64, ptr %abort_work, align 4
  %lockdep_map = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @scsi_init_command.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry24 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 3, i32 0, i32 1
  %42 = ptrtoint ptr %entry24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %entry24, ptr %entry24, align 4
  %prev.i70 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 3, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i70 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %entry24, ptr %prev.i70, align 4
  %func = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 3, i32 0, i32 2
  %44 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @scmd_eh_abort_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull @scsi_init_command.__key.7) #14
  %45 = ptrtoint ptr %jiffies_at_alloc5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %20, ptr %jiffies_at_alloc5, align 4
  %46 = ptrtoint ptr %retries6 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %22, ptr %retries6, align 4
  br i1 %tobool8.not, label %if.end13.if.end38_crit_edge, label %if.then36

if.end13.if.end38_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then36:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state, align 4
  %or.i = or i32 %48, 2
  store i32 %or.i, ptr %state, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end13.if.end38_crit_edge
  %49 = ptrtoint ptr %budget_token2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %7, ptr %budget_token2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_eh_abort_handler(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_done(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %submitter = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 13
  %0 = ptrtoint ptr %submitter to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %submitter, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %1, label %sw.epilog [
    i8 2, label %entry.return_crit_edge
    i8 1, label %sw.bb
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @scsi_eh_done(ptr noundef %cmd) #14
  br label %return

sw.epilog:                                        ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 -192
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 8
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %queue_flags.i, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %sw.epilog.if.end_crit_edge, label %blk_should_fake_timeout.exit

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

blk_should_fake_timeout.exit:                     ; preds = %sw.epilog
  %call1.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %4) #14
  br i1 %call1.i, label %blk_should_fake_timeout.exit.return_crit_edge, label %blk_should_fake_timeout.exit.if.end_crit_edge, !prof !215

blk_should_fake_timeout.exit.if.end_crit_edge:    ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

blk_should_fake_timeout.exit.return_crit_edge:    ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %blk_should_fake_timeout.exit.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %state = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 26
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end13, label %if.end.return_crit_edge, !prof !214

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @trace_scsi_dispatch_cmd_done(ptr noundef %cmd)
  tail call void @blk_mq_complete_request(ptr noundef %add.ptr.i.i) #14
  br label %return

return:                                           ; preds = %if.end13, %if.end.return_crit_edge, %blk_should_fake_timeout.exit.return_crit_edge, %sw.bb, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_scsi_dispatch_cmd_done(ptr noundef %cmd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_done, i32 0, i32 1), ptr blockaddress(@trace_scsi_dispatch_cmd_done, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !234

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !204) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !214

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !235
  %call42 = tail call i32 @__traceiter_scsi_dispatch_cmd_done(ptr noundef null, ptr noundef %cmd) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !236
  %13 = tail call i32 @llvm.read_register.i32(metadata !204) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !204) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !214

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !237
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_scsi_dispatch_cmd_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_scsi_dispatch_cmd_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 294, ptr noundef nonnull @.str.14) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !238
  %31 = tail call i32 @llvm.read_register.i32(metadata !204) #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__scsi_init_queue(ptr nocapture noundef %shost, ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_dev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 52
  %0 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_dev, align 4
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 28
  %2 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sg_tablesize, align 2
  %4 = tail call i16 @llvm.umin.i16(i16 %3, i16 2048)
  tail call void @blk_queue_max_segments(ptr noundef %q, i16 noundef zeroext %4) #14
  %prot_capabilities.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 41
  %5 = ptrtoint ptr %prot_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prot_capabilities.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp.i = icmp ult i32 %6, 8
  br i1 %cmp.i, label %entry.if.end53_crit_edge, label %if.then

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.then:                                          ; preds = %entry
  %sg_prot_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 29
  %7 = ptrtoint ptr %sg_prot_tablesize to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sg_prot_tablesize, align 4
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %8, label %cond.end32 [
    i16 0, label %if.then.do.end50.sink.split_crit_edge
    i16 -1, label %if.then.do.end50.sink.split_crit_edge124
  ]

if.then.do.end50.sink.split_crit_edge124:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end50.sink.split

if.then.do.end50.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end50.sink.split

cond.end32:                                       ; preds = %if.then
  %10 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sg_tablesize, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %11)
  %cmp40 = icmp ult i16 %8, %11
  br i1 %cmp40, label %do.body45, label %cond.end32.do.end50_crit_edge, !prof !215

cond.end32.do.end50_crit_edge:                    ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end50

do.body45:                                        ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_lib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1888, 0\0A.popsection", ""() #14, !srcloc !239
  unreachable

do.end50.sink.split:                              ; preds = %if.then.do.end50.sink.split_crit_edge, %if.then.do.end50.sink.split_crit_edge124
  %12 = ptrtoint ptr %sg_prot_tablesize to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %sg_prot_tablesize, align 4
  br label %do.end50

do.end50:                                         ; preds = %do.end50.sink.split, %cond.end32.do.end50_crit_edge
  %cond33120 = phi i16 [ %8, %cond.end32.do.end50_crit_edge ], [ -1, %do.end50.sink.split ]
  %max_integrity_segments.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 22
  %13 = ptrtoint ptr %max_integrity_segments.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %cond33120, ptr %max_integrity_segments.i, align 2
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %entry.if.end53_crit_edge
  %dma_mask = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_mask, align 8
  %tobool54.not = icmp eq ptr %15, null
  br i1 %tobool54.not, label %if.end53.if.end65_crit_edge, label %if.then55

if.end53.if.end65_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  %max_sectors = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 30
  %16 = ptrtoint ptr %max_sectors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_sectors, align 8
  %call56 = tail call i32 @dma_max_mapping_size(ptr noundef %1) #14
  %shr = lshr i32 %call56, 9
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %shr)
  %19 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_sectors, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then55, %if.end53.if.end65_crit_edge
  %max_sectors66 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 30
  %20 = ptrtoint ptr %max_sectors66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_sectors66, align 8
  tail call void @blk_queue_max_hw_sectors(ptr noundef %q, i32 noundef %21) #14
  %dma_boundary = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 32
  %22 = ptrtoint ptr %dma_boundary to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_boundary, align 8
  tail call void @blk_queue_segment_boundary(ptr noundef %q, i32 noundef %23) #14
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 22
  %24 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end65.dma_set_seg_boundary.exit_crit_edge, label %if.then.i

if.end65.dma_set_seg_boundary.exit_crit_edge:     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_set_seg_boundary.exit

if.then.i:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %dma_boundary to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_boundary, align 8
  %segment_boundary_mask.i = getelementptr inbounds %struct.device_dma_parameters, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %segment_boundary_mask.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %segment_boundary_mask.i, align 4
  br label %dma_set_seg_boundary.exit

dma_set_seg_boundary.exit:                        ; preds = %if.then.i, %if.end65.dma_set_seg_boundary.exit_crit_edge
  %max_segment_size = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 31
  %29 = ptrtoint ptr %max_segment_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_segment_size, align 4
  tail call void @blk_queue_max_segment_size(ptr noundef %q, i32 noundef %30) #14
  %virt_boundary_mask = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 33
  %31 = ptrtoint ptr %virt_boundary_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %virt_boundary_mask, align 4
  tail call void @blk_queue_virt_boundary(ptr noundef %q, i32 noundef %32) #14
  %33 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i116 = icmp eq ptr %34, null
  br i1 %tobool.not.i116, label %dma_set_seg_boundary.exit.dma_set_max_seg_size.exit_crit_edge, label %if.then.i117

dma_set_seg_boundary.exit.dma_set_max_seg_size.exit_crit_edge: ; preds = %dma_set_seg_boundary.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_set_max_seg_size.exit

if.then.i117:                                     ; preds = %dma_set_seg_boundary.exit
  call void @__sanitizer_cov_trace_pc() #16
  %max_segment_size.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 7
  %35 = ptrtoint ptr %max_segment_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_segment_size.i, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %34, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i117, %dma_set_seg_boundary.exit.dma_set_max_seg_size.exit_crit_edge
  tail call void @blk_queue_dma_alignment(ptr noundef %q, i32 noundef 127) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_max_mapping_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_segment_boundary(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segment_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_virt_boundary(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_dma_alignment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_mq_setup_tags(ptr noundef %shost) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tag_set1 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13
  %sg_tablesize.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 28
  %0 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sg_tablesize.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp.i = icmp ult i16 %1, 2
  %conv.i = zext i16 %1 to i32
  %phi.bo.i = mul nuw nsw i32 %conv.i, 20
  %2 = tail call i32 @llvm.umax.i32(i32 %phi.bo.i, i32 20)
  %3 = select i1 %cmp.i, i32 %2, i32 40
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 11
  %4 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostt, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %add = add i32 %7, 292
  %add3 = add i32 %add, %3
  %prot_capabilities.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 41
  %8 = ptrtoint ptr %prot_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prot_capabilities.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %add5 = add i32 %add3, 36
  %cmd_size.0 = select i1 %tobool.not, i32 %add3, i32 %add5
  %10 = call ptr @memset(ptr %tag_set1, i32 0, i32 184)
  %commit_rqs = getelementptr inbounds %struct.scsi_host_template, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %commit_rqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %commit_rqs, align 8
  %tobool7.not = icmp eq ptr %12, null
  %spec.select = select i1 %tobool7.not, ptr @scsi_mq_ops_no_commit, ptr @scsi_mq_ops
  %13 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select, ptr %13, align 4
  %nr_hw_queues = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 34
  %15 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not = icmp eq i32 %16, 0
  %. = select i1 %tobool11.not, i32 1, i32 %16
  %nr_hw_queues16 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 3
  %17 = ptrtoint ptr %nr_hw_queues16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %., ptr %nr_hw_queues16, align 4
  %nr_maps = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 35
  %18 = ptrtoint ptr %nr_maps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_maps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool17.not = icmp eq i32 %19, 0
  %cond21 = select i1 %tobool17.not, i32 1, i32 %19
  %nr_maps22 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 1
  %20 = ptrtoint ptr %nr_maps22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond21, ptr %nr_maps22, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 26
  %21 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %can_queue, align 4
  %queue_depth = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 4
  %23 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %queue_depth, align 4
  %cmd_size23 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 6
  %24 = ptrtoint ptr %cmd_size23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cmd_size.0, ptr %cmd_size23, align 4
  %numa_node = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 7
  %25 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %numa_node, align 4
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 9
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %flags, align 4
  %tag_alloc_policy = getelementptr inbounds %struct.scsi_host_template, ptr %5, i32 0, i32 44
  %27 = ptrtoint ptr %tag_alloc_policy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tag_alloc_policy, align 8
  %and = shl i32 %28, 8
  %shl = and i32 %and, 256
  %or = or i32 %shl, 1
  store i32 %or, ptr %flags, align 4
  %driver_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 10
  %29 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %shost, ptr %driver_data, align 4
  %host_tagset = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 36
  %30 = ptrtoint ptr %host_tagset to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load = load i16, ptr %host_tagset, align 8
  %31 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool26.not = icmp eq i16 %31, 0
  br i1 %tobool26.not, label %entry.if.end30_crit_edge, label %if.then27

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %or29 = or i32 %shl, 9
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or29, ptr %flags, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %entry.if.end30_crit_edge
  %call31 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %tag_set1) #14
  ret i32 %call31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_mq_destroy_tags(ptr noundef %shost) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tag_set = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scsi_device_from_queue(ptr nocapture noundef readonly %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mq_ops = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 5
  %0 = ptrtoint ptr %mq_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq_ops, align 8
  %cmp = icmp eq ptr %1, @scsi_mq_ops_no_commit
  %cmp2 = icmp eq ptr %1, @scsi_mq_ops
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %if.end, label %entry.if.then5_crit_edge

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.end:                                           ; preds = %entry
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.then5_crit_edge, label %lor.lhs.false3

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

lor.lhs.false3:                                   ; preds = %if.end
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 55
  %call = tail call ptr @get_device(ptr noundef %sdev_gendev) #14
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %lor.lhs.false3.if.then5_crit_edge, label %lor.lhs.false3.if.end6_crit_edge

lor.lhs.false3.if.end6_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

lor.lhs.false3.if.then5_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false3.if.then5_crit_edge, %if.end.if.then5_crit_edge, %entry.if.then5_crit_edge
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %lor.lhs.false3.if.end6_crit_edge
  %sdev.1 = phi ptr [ %3, %lor.lhs.false3.if.end6_crit_edge ], [ null, %if.then5 ]
  ret ptr %sdev.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @scsi_block_requests(ptr nocapture noundef %shost) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %host_self_blocked = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 36
  %0 = ptrtoint ptr %host_self_blocked to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %host_self_blocked, align 8
  %bf.set = or i16 %bf.load, 8192
  store i16 %bf.set, ptr %host_self_blocked, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_unblock_requests(ptr noundef %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %host_self_blocked = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 36
  %0 = ptrtoint ptr %host_self_blocked to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %host_self_blocked, align 8
  %bf.clear = and i16 %bf.load, -8193
  store i16 %bf.clear, ptr %host_self_blocked, align 8
  %call.i = tail call ptr @__scsi_iterate_devices(ptr noundef %shost, ptr noundef null) #14
  %tobool.not5.i = icmp eq ptr %call.i, null
  br i1 %tobool.not5.i, label %entry.scsi_run_host_queues.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.scsi_run_host_queues.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_run_host_queues.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %sdev.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.06.i, i32 0, i32 1
  %1 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %request_queue.i, align 4
  tail call fastcc void @scsi_run_queue(ptr noundef %2) #14
  %call1.i = tail call ptr @__scsi_iterate_devices(ptr noundef %shost, ptr noundef nonnull %sdev.06.i) #14
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %for.body.i.scsi_run_host_queues.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.scsi_run_host_queues.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_run_host_queues.exit

scsi_run_host_queues.exit:                        ; preds = %for.body.i.scsi_run_host_queues.exit_crit_edge, %entry.scsi_run_host_queues.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_exit_queue() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scsi_sense_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_mode_select(ptr nocapture noundef readonly %sdev, i32 noundef %pf, i32 noundef %sp, ptr nocapture noundef readonly %buffer, i32 noundef %len, i32 noundef %timeout, i32 noundef %retries, ptr nocapture noundef readonly %data, ptr noundef %sshdr) #0 align 64 {
entry:
  %cmd = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cmd) #14
  %0 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 4
  %2 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 7
  %3 = call ptr @memset(ptr %cmd, i32 0, i32 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pf)
  %tobool.not = icmp eq i32 %pf, 0
  %cond = select i1 %tobool.not, i8 0, i8 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sp)
  %tobool1.not = icmp ne i32 %sp, 0
  %cond2 = zext i1 %tobool1.not to i8
  %or = or i8 %cond, %cond2
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %or, ptr %0, align 1
  %use_10_for_ms = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %5 = ptrtoint ptr %use_10_for_ms to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %bf.load = load i64, ptr %use_10_for_ms, align 4
  %6 = and i64 %bf.load, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool3.not = icmp eq i64 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %add = add i32 %len, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add)
  %cmp = icmp sgt i32 %add, 255
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false5

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %block_descriptor_length = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %block_descriptor_length to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %block_descriptor_length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %8)
  %cmp7 = icmp ugt i16 %8, 255
  br i1 %cmp7, label %lor.lhs.false5.if.then_crit_edge, label %if.else

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65527, i32 %len)
  %cmp9 = icmp sgt i32 %len, 65527
  br i1 %cmp9, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %add12 = add nsw i32 %len, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add12, i32 noundef 3264) #17
  %tobool13.not = icmp eq ptr %call9.i, null
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %call9.i, i32 8
  %9 = call ptr @memcpy(ptr %add.ptr, ptr %buffer, i32 %len)
  %10 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %call9.i, align 128
  %arrayidx18 = getelementptr i8, ptr %call9.i, i32 1
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx18, align 1
  %medium_type = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %medium_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %medium_type, align 2
  %arrayidx19 = getelementptr i8, ptr %call9.i, i32 2
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx19, align 2
  %device_specific = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 3
  %15 = ptrtoint ptr %device_specific to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %device_specific, align 1
  %arrayidx20 = getelementptr i8, ptr %call9.i, i32 3
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx20, align 1
  %longlba = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 5
  %18 = ptrtoint ptr %longlba to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load21 = load i8, ptr %longlba, align 1
  %bf.load21.lobit = lshr i8 %bf.load21, 7
  %arrayidx27 = getelementptr i8, ptr %call9.i, i32 4
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.load21.lobit, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr i8, ptr %call9.i, i32 5
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx28, align 1
  %block_descriptor_length29 = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 1
  %21 = ptrtoint ptr %block_descriptor_length29 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %block_descriptor_length29, align 4
  %arrayidx30 = getelementptr i8, ptr %call9.i, i32 6
  %23 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx30, align 2
  %24 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 85, ptr %cmd, align 1
  %conv32 = trunc i32 %add12 to i16
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %conv32, ptr %2, align 1
  br label %if.end58

if.else:                                          ; preds = %lor.lhs.false5
  %longlba34 = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 5
  %26 = ptrtoint ptr %longlba34 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load35 = load i8, ptr %longlba34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load35)
  %tobool37.not = icmp sgt i8 %bf.load35, -1
  br i1 %tobool37.not, label %if.end8.i126, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8.i126:                                     ; preds = %if.else
  %call9.i125 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #17
  %tobool42.not = icmp eq ptr %call9.i125, null
  br i1 %tobool42.not, label %if.end8.i126.cleanup_crit_edge, label %if.end44

if.end8.i126.cleanup_crit_edge:                   ; preds = %if.end8.i126
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end44:                                         ; preds = %if.end8.i126
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr45 = getelementptr i8, ptr %call9.i125, i32 4
  %27 = call ptr @memcpy(ptr %add.ptr45, ptr %buffer, i32 %len)
  %28 = ptrtoint ptr %call9.i125 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %call9.i125, align 128
  %medium_type48 = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 2
  %29 = ptrtoint ptr %medium_type48 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %medium_type48, align 2
  %arrayidx49 = getelementptr i8, ptr %call9.i125, i32 1
  %31 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx49, align 1
  %device_specific50 = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 3
  %32 = ptrtoint ptr %device_specific50 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %device_specific50, align 1
  %arrayidx51 = getelementptr i8, ptr %call9.i125, i32 2
  %34 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx51, align 2
  %35 = ptrtoint ptr %block_descriptor_length to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %block_descriptor_length, align 4
  %conv53 = trunc i16 %36 to i8
  %arrayidx54 = getelementptr i8, ptr %call9.i125, i32 3
  %37 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv53, ptr %arrayidx54, align 1
  %38 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 21, ptr %cmd, align 1
  %conv56 = trunc i32 %add to i8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv56, ptr %1, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.end44, %if.end15
  %len.addr.0 = phi i32 [ %add12, %if.end15 ], [ %add, %if.end44 ]
  %real_buffer.0 = phi ptr [ %call9.i, %if.end15 ], [ %call9.i125, %if.end44 ]
  %call.i = call i32 @__scsi_execute(ptr noundef %sdev, ptr noundef nonnull %cmd, i32 noundef 1, ptr noundef nonnull %real_buffer.0, i32 noundef %len.addr.0, ptr noundef null, ptr noundef %sshdr, i32 noundef %timeout, i32 noundef %retries, i64 noundef 0, i32 noundef 0, ptr noundef null) #14
  tail call void @kfree(ptr noundef nonnull %real_buffer.0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end8.i126.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end58 ], [ -22, %if.then.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -12, %if.end8.i126.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_mode_sense(ptr nocapture noundef %sdev, i32 noundef %dbd, i32 noundef %modepage, ptr noundef %buffer, i32 noundef %len, i32 noundef %timeout, i32 noundef %retries, ptr nocapture noundef %data, ptr noundef %sshdr) #0 align 64 {
entry:
  %cmd = alloca [12 x i8], align 1
  %my_sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #14
  %0 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 4
  %3 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %my_sshdr) #14
  %4 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %my_sshdr, i32 0, i32 1
  %5 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %my_sshdr, i32 0, i32 2
  %6 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %my_sshdr, i32 0, i32 3
  %7 = ptrtoint ptr %my_sshdr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %my_sshdr, align 8
  %8 = call ptr @memset(ptr %data, i32 0, i32 12)
  %9 = call ptr @memset(ptr %cmd, i32 0, i32 12)
  %set_dbd_for_ms = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %10 = ptrtoint ptr %set_dbd_for_ms to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load = load i64, ptr %set_dbd_for_ms, align 4
  %11 = and i64 %bf.load, 70368744177664
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not = icmp eq i64 %11, 0
  %12 = trunc i32 %dbd to i8
  %.op = and i8 %12, 24
  %conv = select i1 %tobool.not, i8 %.op, i8 8
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %0, align 1
  %conv2 = trunc i32 %modepage to i8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv2, ptr %1, align 1
  %tobool4.not = icmp eq ptr %sshdr, null
  %spec.store.select = select i1 %tobool4.not, ptr %my_sshdr, ptr %sshdr
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %len)
  %cmp = icmp sgt i32 %len, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp23 = icmp slt i32 %len, 4
  %conv28 = trunc i32 %len to i8
  %15 = add i32 %len, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65528, i32 %15)
  %16 = icmp ult i32 %15, -65528
  %conv21 = trunc i32 %len to i16
  %sshdr.sroa.gep = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %spec.store.select.sroa.sel = select i1 %tobool4.not, ptr %4, ptr %sshdr.sroa.gep
  %sshdr.sroa.gep203 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %spec.store.select.sroa.sel204 = select i1 %tobool4.not, ptr %5, ptr %sshdr.sroa.gep203
  %sshdr.sroa.gep206 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %spec.store.select.sroa.sel207 = select i1 %tobool4.not, ptr %6, ptr %sshdr.sroa.gep206
  br label %retry.outer

retry.outer:                                      ; preds = %land.lhs.true63.retry.outer_crit_edge, %entry
  %retry_count.0.ph = phi i32 [ %dec, %land.lhs.true63.retry.outer_crit_edge ], [ %retries, %entry ]
  br label %retry

retry:                                            ; preds = %if.end55, %retry.outer
  %17 = ptrtoint ptr %set_dbd_for_ms to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %bf.load6 = load i64, ptr %set_dbd_for_ms, align 4
  %18 = and i64 %bf.load6, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool10.not = icmp ne i64 %18, 0
  %spec.select195 = or i1 %cmp, %tobool10.not
  br i1 %spec.select195, label %if.then13, label %if.else

if.then13:                                        ; preds = %retry
  br i1 %16, label %if.then13.cleanup_crit_edge, label %if.end19

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 90, ptr %cmd, align 1
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %conv21, ptr %3, align 1
  br label %if.end30

if.else:                                          ; preds = %retry
  br i1 %cmp23, label %if.else.cleanup_crit_edge, label %if.end26

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 26, ptr %cmd, align 1
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv28, ptr %2, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %if.end19
  %header_length.0 = phi i32 [ 8, %if.end19 ], [ 4, %if.end26 ]
  %23 = call ptr @memset(ptr %buffer, i32 0, i32 %len)
  %call.i = call i32 @__scsi_execute(ptr noundef %sdev, ptr noundef nonnull %cmd, i32 noundef 2, ptr noundef %buffer, i32 noundef %len, ptr noundef null, ptr noundef %spec.store.select, i32 noundef %timeout, i32 noundef %retries, i64 noundef 0, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31 = icmp slt i32 %call.i, 0
  br i1 %cmp31, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %24 = and i32 %call.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %24)
  %cmp1.i = icmp eq i32 %24, 65536
  br i1 %cmp1.i, label %if.end34.if.then36_crit_edge, label %if.end3.i

if.end34.if.then36_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36

if.end3.i:                                        ; preds = %if.end34
  %25 = trunc i32 %call.i to i8
  %trunc.i = and i8 %25, -2
  %26 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %trunc.i, label %if.end3.i.if.then36_crit_edge [
    i8 0, label %if.end3.i.if.end73_crit_edge
    i8 4, label %if.end3.i.if.end73_crit_edge238
    i8 16, label %if.end3.i.if.end73_crit_edge239
    i8 20, label %if.end3.i.if.end73_crit_edge240
    i8 34, label %if.end3.i.if.end73_crit_edge241
  ]

if.end3.i.if.end73_crit_edge241:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.end3.i.if.end73_crit_edge240:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.end3.i.if.end73_crit_edge239:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.end3.i.if.end73_crit_edge238:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.end3.i.if.end73_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.end3.i.if.then36_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36

if.then36:                                        ; preds = %if.end3.i.if.then36_crit_edge, %if.end34.if.then36_crit_edge
  %27 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %spec.store.select, align 1
  %29 = and i8 %28, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %29)
  %cmp.i199 = icmp eq i8 %29, 112
  br i1 %cmp.i199, label %if.then38, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then38:                                        ; preds = %if.then36
  %30 = ptrtoint ptr %spec.store.select.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %spec.store.select.sroa.sel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %31)
  %cmp40 = icmp eq i8 %31, 5
  br i1 %cmp40, label %land.lhs.true, label %if.then38.if.end60_crit_edge

if.then38.if.end60_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.lhs.true:                                    ; preds = %if.then38
  %32 = ptrtoint ptr %spec.store.select.sroa.sel204 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %spec.store.select.sroa.sel204, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %33)
  %cmp43 = icmp eq i8 %33, 32
  br i1 %cmp43, label %land.lhs.true45, label %land.lhs.true.if.end60_crit_edge

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.lhs.true45:                                  ; preds = %land.lhs.true
  %34 = ptrtoint ptr %spec.store.select.sroa.sel207 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %spec.store.select.sroa.sel207, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp47 = icmp ne i8 %35, 0
  %spec.select195.not = xor i1 %spec.select195, true
  %brmerge = select i1 %cmp47, i1 true, i1 %spec.select195.not
  br i1 %brmerge, label %land.lhs.true45.if.end60_crit_edge, label %if.then51

land.lhs.true45.if.end60_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then51:                                        ; preds = %land.lhs.true45
  br i1 %cmp, label %if.then51.cleanup_crit_edge, label %if.end55

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end55:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %set_dbd_for_ms to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %bf.load57 = load i64, ptr %set_dbd_for_ms, align 4
  %bf.clear58 = and i64 %bf.load57, -140737488355329
  store i64 %bf.clear58, ptr %set_dbd_for_ms, align 4
  br label %retry

if.end60:                                         ; preds = %land.lhs.true45.if.end60_crit_edge, %land.lhs.true.if.end60_crit_edge, %if.then38.if.end60_crit_edge
  %and.i = and i32 %call.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp1.i201.not = icmp eq i32 %and.i, 2
  br i1 %cmp1.i201.not, label %land.lhs.true63, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true63:                                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %31)
  %cmp66 = icmp ne i8 %31, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry_count.0.ph)
  %tobool69.not = icmp eq i32 %retry_count.0.ph, 0
  %or.cond196 = select i1 %cmp66, i1 true, i1 %tobool69.not
  %dec = add i32 %retry_count.0.ph, -1
  br i1 %or.cond196, label %land.lhs.true63.cleanup_crit_edge, label %land.lhs.true63.retry.outer_crit_edge

land.lhs.true63.retry.outer_crit_edge:            ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry.outer

land.lhs.true63.cleanup_crit_edge:                ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end73:                                         ; preds = %if.end3.i.if.end73_crit_edge, %if.end3.i.if.end73_crit_edge238, %if.end3.i.if.end73_crit_edge239, %if.end3.i.if.end73_crit_edge240, %if.end3.i.if.end73_crit_edge241
  %37 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -122, i8 %38)
  %cmp76 = icmp eq i8 %38, -122
  br i1 %cmp76, label %land.lhs.true78, label %if.end73.if.else96_crit_edge

if.end73.if.else96_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else96

land.lhs.true78:                                  ; preds = %if.end73
  %arrayidx79 = getelementptr i8, ptr %buffer, i32 1
  %39 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %40)
  %cmp81 = icmp eq i8 %40, 11
  br i1 %cmp81, label %land.rhs, label %land.lhs.true78.if.else96_crit_edge

land.lhs.true78.if.else96_crit_edge:              ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else96

land.rhs:                                         ; preds = %land.lhs.true78
  %41 = zext i32 %modepage to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %modepage, label %land.rhs.if.else96_crit_edge [
    i32 8, label %land.rhs.if.then92_crit_edge
    i32 6, label %land.rhs.if.then92_crit_edge242
  ]

land.rhs.if.then92_crit_edge242:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then92

land.rhs.if.then92_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then92

land.rhs.if.else96_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else96

if.then92:                                        ; preds = %land.rhs.if.then92_crit_edge, %land.rhs.if.then92_crit_edge242
  %42 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 13, ptr %data, align 4
  %medium_type = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 2
  %43 = ptrtoint ptr %medium_type to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %medium_type, align 2
  %device_specific = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 3
  %44 = ptrtoint ptr %device_specific to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %device_specific, align 1
  %longlba = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 5
  %45 = ptrtoint ptr %longlba to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load93 = load i8, ptr %longlba, align 1
  %bf.clear94 = and i8 %bf.load93, 127
  store i8 %bf.clear94, ptr %longlba, align 1
  br label %if.end131

if.else96:                                        ; preds = %land.rhs.if.else96_crit_edge, %land.lhs.true78.if.else96_crit_edge, %if.end73.if.else96_crit_edge
  br i1 %spec.select195, label %if.then98, label %if.else118

if.then98:                                        ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %buffer to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %buffer, align 1
  %conv101 = zext i16 %47 to i32
  %add = add nuw nsw i32 %conv101, 2
  %48 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add, ptr %data, align 4
  %arrayidx103 = getelementptr i8, ptr %buffer, i32 2
  %49 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx103, align 1
  %medium_type104 = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 2
  %51 = ptrtoint ptr %medium_type104 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %medium_type104, align 2
  %arrayidx105 = getelementptr i8, ptr %buffer, i32 3
  %52 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx105, align 1
  %device_specific106 = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 3
  %54 = ptrtoint ptr %device_specific106 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %device_specific106, align 1
  %arrayidx107 = getelementptr i8, ptr %buffer, i32 4
  %55 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx107, align 1
  %longlba111 = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 5
  %57 = ptrtoint ptr %longlba111 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load112 = load i8, ptr %longlba111, align 1
  %bf.shl = shl i8 %56, 7
  %bf.clear113 = and i8 %bf.load112, 127
  %bf.set114 = or i8 %bf.clear113, %bf.shl
  store i8 %bf.set114, ptr %longlba111, align 1
  %arrayidx115 = getelementptr i8, ptr %buffer, i32 6
  %58 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %arrayidx115, align 1
  br label %if.end131

if.else118:                                       ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #16
  %conv120 = zext i8 %38 to i32
  %add121 = add nuw nsw i32 %conv120, 1
  %60 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add121, ptr %data, align 4
  %arrayidx123 = getelementptr i8, ptr %buffer, i32 1
  %61 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx123, align 1
  %medium_type124 = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 2
  %63 = ptrtoint ptr %medium_type124 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %medium_type124, align 2
  %arrayidx125 = getelementptr i8, ptr %buffer, i32 2
  %64 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx125, align 1
  %device_specific126 = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 3
  %66 = ptrtoint ptr %device_specific126 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %device_specific126, align 1
  %arrayidx127 = getelementptr i8, ptr %buffer, i32 3
  %67 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx127, align 1
  %conv128 = zext i8 %68 to i16
  br label %if.end131

if.end131:                                        ; preds = %if.else118, %if.then98, %if.then92
  %.sink = phi i16 [ %59, %if.then98 ], [ %conv128, %if.else118 ], [ 0, %if.then92 ]
  %header_length.1 = phi i32 [ %header_length.0, %if.then98 ], [ %header_length.0, %if.else118 ], [ 0, %if.then92 ]
  %block_descriptor_length117 = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 1
  %69 = ptrtoint ptr %block_descriptor_length117 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %.sink, ptr %block_descriptor_length117, align 4
  %conv132 = trunc i32 %header_length.1 to i8
  %header_length133 = getelementptr inbounds %struct.scsi_mode_data, ptr %data, i32 0, i32 4
  %70 = ptrtoint ptr %header_length133 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv132, ptr %header_length133, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %land.lhs.true63.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end131 ], [ -22, %if.then13.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call.i, %if.end30.cleanup_crit_edge ], [ -5, %if.then51.cleanup_crit_edge ], [ -5, %if.then36.cleanup_crit_edge ], [ -5, %if.end60.cleanup_crit_edge ], [ -5, %land.lhs.true63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %my_sshdr) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_test_unit_ready(ptr nocapture noundef %sdev, i32 noundef %timeout, i32 noundef %retries, ptr noundef %sshdr) #0 align 64 {
entry:
  %cmd = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd) #14
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 6)
  %removable = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %tobool.not.i = icmp eq ptr %sshdr, null
  %sense_key = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %land.lhs.true7.do.body_crit_edge, %entry
  %retries.addr.0 = phi i32 [ %retries, %entry ], [ %dec, %land.lhs.true7.do.body_crit_edge ]
  %call.i = call i32 @__scsi_execute(ptr noundef %sdev, ptr noundef nonnull %cmd, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %sshdr, i32 noundef %timeout, i32 noundef 1, i64 noundef 0, i32 noundef 0, ptr noundef null) #14
  %1 = ptrtoint ptr %removable to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %bf.load = load i64, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load)
  %tobool.not = icmp sgt i64 %bf.load, -1
  br i1 %tobool.not, label %do.cond, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  br i1 %tobool.not.i, label %land.lhs.true.do.end_crit_edge, label %scsi_sense_valid.exit

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

scsi_sense_valid.exit:                            ; preds = %land.lhs.true
  %2 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sshdr, align 1
  %4 = and i8 %3, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %4)
  %cmp.i = icmp eq i8 %4, 112
  br i1 %cmp.i, label %land.lhs.true2, label %scsi_sense_valid.exit.scsi_sense_valid.exit24_crit_edge

scsi_sense_valid.exit.scsi_sense_valid.exit24_crit_edge: ; preds = %scsi_sense_valid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_sense_valid.exit24

land.lhs.true2:                                   ; preds = %scsi_sense_valid.exit
  %5 = ptrtoint ptr %sense_key to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sense_key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %6)
  %cmp = icmp eq i8 %6, 6
  br i1 %cmp, label %if.then, label %land.lhs.true2.scsi_sense_valid.exit24_crit_edge

land.lhs.true2.scsi_sense_valid.exit24_crit_edge: ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_sense_valid.exit24

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set = or i64 %bf.load, 4611686018427387904
  %7 = ptrtoint ptr %removable to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %bf.set, ptr %removable, align 4
  br label %scsi_sense_valid.exit24

do.cond:                                          ; preds = %do.body
  br i1 %tobool.not.i, label %do.cond.do.end_crit_edge, label %do.cond.scsi_sense_valid.exit24_crit_edge

do.cond.scsi_sense_valid.exit24_crit_edge:        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_sense_valid.exit24

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

scsi_sense_valid.exit24:                          ; preds = %do.cond.scsi_sense_valid.exit24_crit_edge, %if.then, %land.lhs.true2.scsi_sense_valid.exit24_crit_edge, %scsi_sense_valid.exit.scsi_sense_valid.exit24_crit_edge
  %8 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sshdr, align 1
  %10 = and i8 %9, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %10)
  %cmp.i21 = icmp eq i8 %10, 112
  br i1 %cmp.i21, label %land.lhs.true7, label %scsi_sense_valid.exit24.do.end_crit_edge

scsi_sense_valid.exit24.do.end_crit_edge:         ; preds = %scsi_sense_valid.exit24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true7:                                   ; preds = %scsi_sense_valid.exit24
  %11 = ptrtoint ptr %sense_key to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sense_key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %12)
  %cmp10 = icmp ne i8 %12, 6
  %dec = add i32 %retries.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool12.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp10, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %land.lhs.true7.do.end_crit_edge, label %land.lhs.true7.do.body_crit_edge

land.lhs.true7.do.body_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %land.lhs.true7.do.end_crit_edge, %scsi_sense_valid.exit24.do.end_crit_edge, %do.cond.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_device_set_state(ptr noundef %sdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev_state = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 69
  %0 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdev_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %state)
  %cmp = icmp eq i32 %1, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %state, label %if.end.sw.epilog28_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 5, label %sw.bb5
    i32 6, label %if.end.sw.bb9_crit_edge
    i32 7, label %if.end.sw.bb9_crit_edge54
    i32 8, label %sw.bb13
    i32 9, label %sw.bb17
    i32 3, label %sw.bb20
    i32 4, label %sw.bb24
  ]

if.end.sw.bb9_crit_edge54:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb9

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb9

if.end.sw.epilog28_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cond38 = icmp eq i32 %1, 9
  br i1 %cond38, label %sw.bb.sw.epilog28_crit_edge, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

sw.bb.sw.epilog28_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb1:                                           ; preds = %if.end
  %3 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %1, label %sw.bb1.do.body_crit_edge [
    i32 1, label %sw.bb1.sw.epilog28_crit_edge
    i32 6, label %sw.bb1.sw.epilog28_crit_edge55
    i32 7, label %sw.bb1.sw.epilog28_crit_edge56
    i32 5, label %sw.bb1.sw.epilog28_crit_edge57
    i32 8, label %sw.bb1.sw.epilog28_crit_edge58
  ]

sw.bb1.sw.epilog28_crit_edge58:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb1.sw.epilog28_crit_edge57:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb1.sw.epilog28_crit_edge56:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb1.sw.epilog28_crit_edge55:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb1.sw.epilog28_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb1.do.body_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

sw.bb5:                                           ; preds = %if.end
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %1, label %sw.bb5.do.body_crit_edge [
    i32 2, label %sw.bb5.sw.epilog28_crit_edge
    i32 6, label %sw.bb5.sw.epilog28_crit_edge59
    i32 7, label %sw.bb5.sw.epilog28_crit_edge60
  ]

sw.bb5.sw.epilog28_crit_edge60:                   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb5.sw.epilog28_crit_edge59:                   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb5.sw.epilog28_crit_edge:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb5.do.body_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

sw.bb9:                                           ; preds = %if.end.sw.bb9_crit_edge, %if.end.sw.bb9_crit_edge54
  %5 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %1, label %sw.bb9.do.body_crit_edge [
    i32 1, label %sw.bb9.sw.epilog28_crit_edge
    i32 2, label %sw.bb9.sw.epilog28_crit_edge61
    i32 5, label %sw.bb9.sw.epilog28_crit_edge62
    i32 8, label %sw.bb9.sw.epilog28_crit_edge63
  ]

sw.bb9.sw.epilog28_crit_edge63:                   ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb9.sw.epilog28_crit_edge62:                   ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb9.sw.epilog28_crit_edge61:                   ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb9.sw.epilog28_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb9.do.body_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

sw.bb13:                                          ; preds = %if.end
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %1, label %sw.bb13.do.body_crit_edge [
    i32 2, label %sw.bb13.sw.epilog28_crit_edge
    i32 9, label %sw.bb13.sw.epilog28_crit_edge64
    i32 5, label %sw.bb13.sw.epilog28_crit_edge65
    i32 6, label %sw.bb13.sw.epilog28_crit_edge66
  ]

sw.bb13.sw.epilog28_crit_edge66:                  ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb13.sw.epilog28_crit_edge65:                  ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb13.sw.epilog28_crit_edge64:                  ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb13.sw.epilog28_crit_edge:                    ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb13.do.body_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb17.sw.epilog28_crit_edge, label %sw.bb17.do.body_crit_edge

sw.bb17.do.body_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

sw.bb17.sw.epilog28_crit_edge:                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb20:                                          ; preds = %if.end
  %7 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %1, label %sw.bb20.do.body_crit_edge [
    i32 1, label %sw.bb20.sw.epilog28_crit_edge
    i32 2, label %sw.bb20.sw.epilog28_crit_edge67
    i32 5, label %sw.bb20.sw.epilog28_crit_edge68
    i32 6, label %sw.bb20.sw.epilog28_crit_edge69
    i32 7, label %sw.bb20.sw.epilog28_crit_edge70
  ]

sw.bb20.sw.epilog28_crit_edge70:                  ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb20.sw.epilog28_crit_edge69:                  ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb20.sw.epilog28_crit_edge68:                  ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb20.sw.epilog28_crit_edge67:                  ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb20.sw.epilog28_crit_edge:                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb20.do.body_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

sw.bb24:                                          ; preds = %if.end
  %8 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %1, label %sw.bb24.do.body_crit_edge [
    i32 1, label %sw.bb24.sw.epilog28_crit_edge
    i32 2, label %sw.bb24.sw.epilog28_crit_edge71
    i32 6, label %sw.bb24.sw.epilog28_crit_edge72
    i32 7, label %sw.bb24.sw.epilog28_crit_edge73
    i32 3, label %sw.bb24.sw.epilog28_crit_edge74
    i32 8, label %sw.bb24.sw.epilog28_crit_edge75
    i32 9, label %sw.bb24.sw.epilog28_crit_edge76
  ]

sw.bb24.sw.epilog28_crit_edge76:                  ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb24.sw.epilog28_crit_edge75:                  ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb24.sw.epilog28_crit_edge74:                  ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb24.sw.epilog28_crit_edge73:                  ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb24.sw.epilog28_crit_edge72:                  ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb24.sw.epilog28_crit_edge71:                  ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb24.sw.epilog28_crit_edge:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28

sw.bb24.do.body_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

sw.epilog28:                                      ; preds = %sw.bb24.sw.epilog28_crit_edge, %sw.bb24.sw.epilog28_crit_edge71, %sw.bb24.sw.epilog28_crit_edge72, %sw.bb24.sw.epilog28_crit_edge73, %sw.bb24.sw.epilog28_crit_edge74, %sw.bb24.sw.epilog28_crit_edge75, %sw.bb24.sw.epilog28_crit_edge76, %sw.bb20.sw.epilog28_crit_edge, %sw.bb20.sw.epilog28_crit_edge67, %sw.bb20.sw.epilog28_crit_edge68, %sw.bb20.sw.epilog28_crit_edge69, %sw.bb20.sw.epilog28_crit_edge70, %sw.bb17.sw.epilog28_crit_edge, %sw.bb13.sw.epilog28_crit_edge, %sw.bb13.sw.epilog28_crit_edge64, %sw.bb13.sw.epilog28_crit_edge65, %sw.bb13.sw.epilog28_crit_edge66, %sw.bb9.sw.epilog28_crit_edge, %sw.bb9.sw.epilog28_crit_edge61, %sw.bb9.sw.epilog28_crit_edge62, %sw.bb9.sw.epilog28_crit_edge63, %sw.bb5.sw.epilog28_crit_edge, %sw.bb5.sw.epilog28_crit_edge59, %sw.bb5.sw.epilog28_crit_edge60, %sw.bb1.sw.epilog28_crit_edge, %sw.bb1.sw.epilog28_crit_edge55, %sw.bb1.sw.epilog28_crit_edge56, %sw.bb1.sw.epilog28_crit_edge57, %sw.bb1.sw.epilog28_crit_edge58, %sw.bb.sw.epilog28_crit_edge, %if.end.sw.epilog28_crit_edge
  %offline_already = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 43
  %9 = ptrtoint ptr %offline_already to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %offline_already, align 8
  %10 = ptrtoint ptr %sdev_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %state, ptr %sdev_state, align 4
  br label %cleanup

do.body:                                          ; preds = %sw.bb24.do.body_crit_edge, %sw.bb20.do.body_crit_edge, %sw.bb17.do.body_crit_edge, %sw.bb13.do.body_crit_edge, %sw.bb9.do.body_crit_edge, %sw.bb5.do.body_crit_edge, %sw.bb1.do.body_crit_edge, %sw.bb.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %11 = load i32, ptr @scsi_logging_level, align 4
  %and = and i32 %11, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp30.not = icmp eq i32 %and, 0
  br i1 %cmp30.not, label %do.body.cleanup_crit_edge, label %do.body33, !prof !214

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr @scsi_device_state_name(i32 noundef %1) #14
  %call34 = tail call ptr @scsi_device_state_name(i32 noundef %state) #14
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.9, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef %call, ptr noundef %call34) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body33, %do.body.cleanup_crit_edge, %sw.epilog28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog28 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %do.body33 ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_state_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_evt_thread(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %envp.i = alloca [3 x ptr], align 4
  %event_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event_list) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %event_list, i32 0, i32 1
  %1 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %event_list, ptr %event_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %event_list, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %work, i32 -344
  %pending_events = getelementptr i8, ptr %work, i32 -12
  %call = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %pending_events) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @sdev_evt_send_simple(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 3264)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %call.1 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %pending_events) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  call void @sdev_evt_send_simple(ptr noundef %add.ptr, i32 noundef 2, i32 noundef 3264)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %call.2 = call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %pending_events) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  call void @sdev_evt_send_simple(ptr noundef %add.ptr, i32 noundef 3, i32 noundef 3264)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %call.3 = call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %pending_events) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  call void @sdev_evt_send_simple(ptr noundef %add.ptr, i32 noundef 4, i32 noundef 3264)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %call.4 = call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %pending_events) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  call void @sdev_evt_send_simple(ptr noundef %add.ptr, i32 noundef 5, i32 noundef 3264)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %call.5 = call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %pending_events) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  call void @sdev_evt_send_simple(ptr noundef %add.ptr, i32 noundef 6, i32 noundef 3264)
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %call.6 = call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %pending_events) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  call void @sdev_evt_send_simple(ptr noundef %add.ptr, i32 noundef 7, i32 noundef 3264)
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %call.7 = call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %pending_events) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  call void @sdev_evt_send_simple(ptr noundef %add.ptr, i32 noundef 8, i32 noundef 3264)
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %list_lock = getelementptr i8, ptr %work, i32 -288
  %event_list9 = getelementptr i8, ptr %work, i32 -8
  %prev2.i.i = getelementptr i8, ptr %work, i32 -4
  %3 = getelementptr inbounds [3 x ptr], ptr %envp.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x ptr], ptr %envp.i, i32 0, i32 2
  %sdev_gendev.i = getelementptr i8, ptr %work, i32 64
  br label %while.cond

while.cond:                                       ; preds = %scsi_evt_emit.exit.while.cond_crit_edge, %for.inc.7
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #14
  %5 = ptrtoint ptr %event_list9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %event_list9, align 4
  %cmp.i.not.i = icmp eq ptr %6, %event_list9
  br i1 %cmp.i.not.i, label %while.cond.list_splice_init.exit_crit_edge, label %if.then.i

while.cond.list_splice_init.exit_crit_edge:       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %event_list, align 4
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %event_list, ptr %prev3.i.i, align 4
  store ptr %6, ptr %event_list, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %10, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev6.i.i, align 4
  %14 = ptrtoint ptr %event_list9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %event_list9, ptr %event_list9, align 4
  store ptr %event_list9, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %while.cond.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock, i32 noundef %call6) #14
  %15 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %event_list, align 4
  %cmp.i.not = icmp eq ptr %16, %event_list
  br i1 %cmp.i.not, label %while.end, label %list_splice_init.exit.for.body20_crit_edge

list_splice_init.exit.for.body20_crit_edge:       ; preds = %list_splice_init.exit
  br label %for.body20

for.body20:                                       ; preds = %scsi_evt_emit.exit.for.body20_crit_edge, %list_splice_init.exit.for.body20_crit_edge
  %this.051 = phi ptr [ %tmp1.053, %scsi_evt_emit.exit.for.body20_crit_edge ], [ %16, %list_splice_init.exit.for.body20_crit_edge ]
  %17 = ptrtoint ptr %this.051 to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp1.053 = load ptr, ptr %this.051, align 4
  %add.ptr23 = getelementptr i8, ptr %this.051, i32 -4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %this.051) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body20.list_del.exit_crit_edge

for.body20.list_del.exit_crit_edge:               ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %this.051, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %this.051 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %this.051, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body20.list_del.exit_crit_edge
  %24 = ptrtoint ptr %this.051 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %this.051, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %this.051, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %envp.i) #14
  %26 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %envp.i, align 4, !annotation !240
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !240
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !240
  %29 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr23, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %30, label %list_del.exit.scsi_evt_emit.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb4.i
    i32 4, label %sw.bb7.i
    i32 5, label %sw.bb10.i
    i32 6, label %sw.bb13.i
    i32 7, label %sw.bb16.i
    i32 8, label %sw.bb19.i
  ]

list_del.exit.scsi_evt_emit.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_evt_emit.exit

sw.bb.i:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.39, ptr %envp.i, align 4
  br label %scsi_evt_emit.exit

sw.bb1.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @scsi_rescan_device(ptr noundef %sdev_gendev.i) #14
  %33 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.40, ptr %envp.i, align 4
  br label %scsi_evt_emit.exit

sw.bb4.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.41, ptr %envp.i, align 4
  br label %scsi_evt_emit.exit

sw.bb7.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.42, ptr %envp.i, align 4
  br label %scsi_evt_emit.exit

sw.bb10.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.43, ptr %envp.i, align 4
  br label %scsi_evt_emit.exit

sw.bb13.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.44, ptr %envp.i, align 4
  br label %scsi_evt_emit.exit

sw.bb16.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.45, ptr %envp.i, align 4
  br label %scsi_evt_emit.exit

sw.bb19.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.46, ptr %envp.i, align 4
  br label %scsi_evt_emit.exit

scsi_evt_emit.exit:                               ; preds = %sw.bb19.i, %sw.bb16.i, %sw.bb13.i, %sw.bb10.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %list_del.exit.scsi_evt_emit.exit_crit_edge
  %idx.0.i = phi i32 [ 0, %list_del.exit.scsi_evt_emit.exit_crit_edge ], [ 1, %sw.bb19.i ], [ 1, %sw.bb16.i ], [ 1, %sw.bb13.i ], [ 1, %sw.bb10.i ], [ 1, %sw.bb7.i ], [ 1, %sw.bb4.i ], [ 1, %sw.bb1.i ], [ 1, %sw.bb.i ]
  %arrayidx23.i = getelementptr [3 x ptr], ptr %envp.i, i32 0, i32 %idx.0.i
  %40 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx23.i, align 4
  %call.i = call i32 @kobject_uevent_env(ptr noundef %sdev_gendev.i, i32 noundef 2, ptr noundef nonnull %envp.i) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %envp.i) #14
  call void @kfree(ptr noundef %add.ptr23) #14
  %cmp.i43.not = icmp eq ptr %tmp1.053, %event_list
  br i1 %cmp.i43.not, label %scsi_evt_emit.exit.while.cond_crit_edge, label %scsi_evt_emit.exit.for.body20_crit_edge

scsi_evt_emit.exit.for.body20_crit_edge:          ; preds = %scsi_evt_emit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body20

scsi_evt_emit.exit.while.cond_crit_edge:          ; preds = %scsi_evt_emit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

while.end:                                        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event_list) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdev_evt_send_simple(ptr noundef %sdev, i32 noundef %evt_type, i32 noundef %gfpflags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i.i = and i32 %gfpflags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i19.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i19.i.i.i, label %entry.kzalloc.exit.i_crit_edge, label %if.end.i20.i.i.i, !prof !214

entry.kzalloc.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %kzalloc.exit.i

if.end.i20.i.i.i:                                 ; preds = %entry
  %and2.i.i.i.i = and i32 %gfpflags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i20.i.i.i.kzalloc.exit.i_crit_edge

if.end.i20.i.i.i.kzalloc.exit.i_crit_edge:        ; preds = %if.end.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and6.i.i.i.i = and i32 %gfpflags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i20.i.i.i.kzalloc.exit.i_crit_edge, %entry.kzalloc.exit.i_crit_edge
  %retval.0.i21.i.i.i = phi i32 [ 0, %entry.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i20.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %or.i.i = or i32 %gfpflags, 256
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i.i, i32 noundef 12) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.9, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef %evt_type) #14
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit.i
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %evt_type, ptr %call7.i.i.i, align 8
  %node.i = getelementptr inbounds %struct.scsi_event, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.scsi_event, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %node.i, ptr %prev.i.i, align 8
  %list_lock.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock.i) #14
  %event_list.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 48
  %prev.i.i5 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 48, i32 1
  %5 = ptrtoint ptr %prev.i.i5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i5, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %6, ptr noundef %event_list.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.sdev_evt_send.exit_crit_edge

if.end.sdev_evt_send.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sdev_evt_send.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %prev.i.i5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %node.i, ptr %prev.i.i5, align 4
  %8 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %event_list.i, ptr %node.i, align 4
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev.i.i, align 8
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %node.i, ptr %6, align 4
  br label %sdev_evt_send.exit

sdev_evt_send.exit:                               ; preds = %if.end.i.i.i, %if.end.sdev_evt_send.exit_crit_edge
  %event_work.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i10.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %event_work.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock.i, i32 noundef %call2.i) #14
  br label %cleanup

cleanup:                                          ; preds = %sdev_evt_send.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdev_evt_send(ptr noundef %sdev, ptr noundef %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %list_lock = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #14
  %node = getelementptr inbounds %struct.scsi_event, ptr %evt, i32 0, i32 1
  %event_list = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 48
  %prev.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 48, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %1, ptr noundef %event_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %node, ptr %prev.i, align 4
  %3 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %event_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.scsi_event, ptr %evt, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %node, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %event_work = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i10 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %event_work) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock, i32 noundef %call2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sdev_evt_alloc(i32 noundef %evt_type, i32 noundef %gfpflags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfpflags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !214

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfpflags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and6.i.i.i = and i32 %gfpflags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfpflags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 12) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %evt_type, ptr %call7.i.i, align 8
  %node = getelementptr inbounds %struct.scsi_event, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %node, ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.scsi_event, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %node, ptr %prev.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_device_quiesce(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  %quiesced_by = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 70
  %2 = ptrtoint ptr %quiesced_by to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %quiesced_by, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %land.rhs

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %3, %7
  br i1 %cmp.not, label %land.rhs.if.end31_crit_edge, label %land.rhs4

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.rhs4:                                        ; preds = %land.rhs
  %.b67 = load i1, ptr @scsi_device_quiesce.__already_done, align 1
  br i1 %.b67, label %land.rhs4.if.end31_crit_edge, label %if.then, !prof !214

land.rhs4.if.end31_crit_edge:                     ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then:                                          ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scsi_device_quiesce.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2625, i32 noundef 9, ptr noundef null) #14
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs4.if.end31_crit_edge, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %8 = ptrtoint ptr %quiesced_by to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %quiesced_by, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i69 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i69 to ptr
  %task41 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task41, align 8
  %cmp42 = icmp eq ptr %9, %13
  br i1 %cmp42, label %if.end31.cleanup_crit_edge, label %if.end44

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end44:                                         ; preds = %if.end31
  tail call void @blk_set_pm_only(ptr noundef %1) #14
  tail call void @blk_mq_freeze_queue(ptr noundef %1) #14
  tail call void @synchronize_rcu() #14
  tail call void @blk_mq_unfreeze_queue(ptr noundef %1) #14
  %state_mutex = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 68
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #14
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 69
  %14 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sdev_state.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %15, label %do.body.i [
    i32 5, label %if.end44.if.then47_crit_edge
    i32 2, label %if.end44.sw.epilog28.i_crit_edge
    i32 6, label %if.end44.sw.epilog28.i_crit_edge75
    i32 7, label %if.end44.sw.epilog28.i_crit_edge76
  ]

if.end44.sw.epilog28.i_crit_edge76:               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28.i

if.end44.sw.epilog28.i_crit_edge75:               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28.i

if.end44.sw.epilog28.i_crit_edge:                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28.i

if.end44.if.then47_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

sw.epilog28.i:                                    ; preds = %if.end44.sw.epilog28.i_crit_edge, %if.end44.sw.epilog28.i_crit_edge75, %if.end44.sw.epilog28.i_crit_edge76
  %offline_already.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 43
  %17 = ptrtoint ptr %offline_already.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %offline_already.i, align 8
  %18 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %sdev_state.i, align 4
  br label %if.then47

do.body.i:                                        ; preds = %if.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %19 = load i32, ptr @scsi_logging_level, align 4
  %and.i70 = and i32 %19, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %cmp30.not.i = icmp eq i32 %and.i70, 0
  br i1 %cmp30.not.i, label %do.body.i.if.else_crit_edge, label %do.body33.i, !prof !214

do.body.i.if.else_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

do.body33.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @scsi_device_state_name(i32 noundef %15) #14
  %call34.i = tail call ptr @scsi_device_state_name(i32 noundef 5) #14
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.9, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef %call.i, ptr noundef %call34.i) #14
  br label %if.else

if.then47:                                        ; preds = %sw.epilog28.i, %if.end44.if.then47_crit_edge
  %20 = ptrtoint ptr %task41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task41, align 8
  %22 = ptrtoint ptr %quiesced_by to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %quiesced_by, align 8
  br label %if.end51

if.else:                                          ; preds = %do.body33.i, %do.body.i.if.else_crit_edge
  tail call void @blk_clear_pm_only(ptr noundef %1) #14
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then47
  %retval.0.i73 = phi i32 [ -22, %if.else ], [ 0, %if.then47 ]
  tail call void @mutex_unlock(ptr noundef %state_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i73, %if.end51 ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_set_pm_only(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_clear_pm_only(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_device_resume(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state_mutex = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 68
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #14
  %sdev_state = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 69
  %0 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %scsi_device_set_state.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

scsi_device_set_state.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %offline_already.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 43
  %2 = ptrtoint ptr %offline_already.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %offline_already.i, align 8
  %3 = ptrtoint ptr %sdev_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %sdev_state, align 4
  br label %if.end

if.end:                                           ; preds = %scsi_device_set_state.exit, %entry.if.end_crit_edge
  %quiesced_by = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 70
  %4 = ptrtoint ptr %quiesced_by to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %quiesced_by, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %quiesced_by to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %quiesced_by, align 8
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %7 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %request_queue, align 4
  tail call void @blk_clear_pm_only(ptr noundef %8) #14
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_mutex) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_target_quiesce(ptr noundef %starget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @starget_for_each_device(ptr noundef %starget, ptr noundef null, ptr noundef nonnull @device_quiesce_fn) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @starget_for_each_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_quiesce_fn(ptr noundef %sdev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scsi_device_quiesce(ptr noundef %sdev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_target_resume(ptr noundef %starget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @starget_for_each_device(ptr noundef %starget, ptr noundef null, ptr noundef nonnull @device_resume_fn) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_resume_fn(ptr noundef %sdev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state_mutex.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 68
  tail call void @mutex_lock_nested(ptr noundef %state_mutex.i, i32 noundef 0) #14
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 69
  %0 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdev_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp.i = icmp eq i32 %1, 5
  br i1 %cmp.i, label %scsi_device_set_state.exit.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

scsi_device_set_state.exit.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %offline_already.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 43
  %2 = ptrtoint ptr %offline_already.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %offline_already.i.i, align 8
  %3 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %sdev_state.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %scsi_device_set_state.exit.i, %entry.if.end.i_crit_edge
  %quiesced_by.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 70
  %4 = ptrtoint ptr %quiesced_by.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %quiesced_by.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i.scsi_device_resume.exit_crit_edge, label %if.then1.i

if.end.i.scsi_device_resume.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_device_resume.exit

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %quiesced_by.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %quiesced_by.i, align 8
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %7 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %request_queue.i, align 4
  tail call void @blk_clear_pm_only(ptr noundef %8) #14
  br label %scsi_device_resume.exit

scsi_device_resume.exit:                          ; preds = %if.then1.i, %if.end.i.scsi_device_resume.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_mutex.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_start_queue(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_stopped = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 42
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %queue_stopped, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !241
  tail call void @llvm.prefetch.p0(ptr %queue_stopped, i32 1, i32 3, i32 1) #14
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %queue_stopped, i32 1, i32 0) #14, !srcloc !242
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool.not, label %__cmpxchg.exit.if.end_crit_edge, label %if.then

__cmpxchg.exit.if.end_crit_edge:                  ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #16
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %1 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %request_queue, align 4
  tail call void @blk_mq_unquiesce_queue(ptr noundef %2) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %__cmpxchg.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_internal_device_block_nowait(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__scsi_internal_device_block_nowait(ptr noundef %sdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %queue_stopped.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %queue_stopped.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !244
  tail call void @llvm.prefetch.p0(ptr %queue_stopped.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then
  %0 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %queue_stopped.i, i32 0, i32 1) #14, !srcloc !242
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i)
  %tobool.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %__cmpxchg.exit.i.if.end_crit_edge

__cmpxchg.exit.i.if.end_crit_edge:                ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %1 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %request_queue.i, align 4
  tail call void @blk_mq_quiesce_queue_nowait(ptr noundef %2) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i, %__cmpxchg.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__scsi_internal_device_block_nowait(ptr noundef %sdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 69
  %0 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdev_state.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %1, label %do.body.i [
    i32 8, label %entry.return_crit_edge
    i32 2, label %entry.sw.epilog28.i_crit_edge
    i32 9, label %entry.sw.epilog28.i_crit_edge18
    i32 5, label %entry.sw.epilog28.i_crit_edge19
    i32 6, label %entry.sw.epilog28.i_crit_edge20
  ]

entry.sw.epilog28.i_crit_edge20:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28.i

entry.sw.epilog28.i_crit_edge19:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28.i

entry.sw.epilog28.i_crit_edge18:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28.i

entry.sw.epilog28.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog28.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.epilog28.i:                                    ; preds = %entry.sw.epilog28.i_crit_edge, %entry.sw.epilog28.i_crit_edge18, %entry.sw.epilog28.i_crit_edge19, %entry.sw.epilog28.i_crit_edge20
  %offline_already.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 43
  %3 = ptrtoint ptr %offline_already.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %offline_already.i, align 8
  %4 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %sdev_state.i, align 4
  br label %return

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %5 = load i32, ptr @scsi_logging_level, align 4
  %and.i = and i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp30.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp30.not.i, label %do.body.i.if.then_crit_edge, label %do.body33.i, !prof !214

do.body.i.if.then_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

do.body33.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @scsi_device_state_name(i32 noundef %1) #14
  %call34.i = tail call ptr @scsi_device_state_name(i32 noundef 8) #14
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.9, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef %call.i, ptr noundef %call34.i) #14
  %6 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %sdev_state.i, align 4
  br label %if.then

if.then:                                          ; preds = %do.body33.i, %do.body.i.if.then_crit_edge
  %7 = phi i32 [ %.pr, %do.body33.i ], [ %1, %do.body.i.if.then_crit_edge ]
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %7, label %do.body.i10 [
    i32 9, label %if.then.return_crit_edge
    i32 1, label %sw.epilog28.i7
  ]

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.epilog28.i7:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %offline_already.i6 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 43
  %9 = ptrtoint ptr %offline_already.i6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %offline_already.i6, align 8
  %10 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 9, ptr %sdev_state.i, align 4
  br label %return

do.body.i10:                                      ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %11 = load i32, ptr @scsi_logging_level, align 4
  %and.i8 = and i32 %11, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %cmp30.not.i9 = icmp eq i32 %and.i8, 0
  br i1 %cmp30.not.i9, label %do.body.i10.return_crit_edge, label %do.body33.i13, !prof !214

do.body.i10.return_crit_edge:                     ; preds = %do.body.i10
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.body33.i13:                                    ; preds = %do.body.i10
  call void @__sanitizer_cov_trace_pc() #16
  %call.i11 = tail call ptr @scsi_device_state_name(i32 noundef %7) #14
  %call34.i12 = tail call ptr @scsi_device_state_name(i32 noundef 9) #14
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.9, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef %call.i11, ptr noundef %call34.i12) #14
  br label %return

return:                                           ; preds = %do.body33.i13, %do.body.i10.return_crit_edge, %sw.epilog28.i7, %if.then.return_crit_edge, %sw.epilog28.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog28.i7 ], [ 0, %if.then.return_crit_edge ], [ -22, %do.body33.i13 ], [ -22, %do.body.i10.return_crit_edge ], [ 0, %sw.epilog28.i ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_internal_device_unblock_nowait(ptr noundef %sdev, i32 noundef %new_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %new_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %new_state, label %entry.return_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 7, label %entry.sw.epilog_crit_edge18
  ]

entry.sw.epilog_crit_edge18:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge18
  %sdev_state = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 69
  %1 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sdev_state, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %2, label %sw.epilog.return_crit_edge [
    i32 8, label %sw.epilog.sw.epilog9.sink.split_crit_edge
    i32 7, label %sw.epilog.sw.epilog9.sink.split_crit_edge19
    i32 9, label %sw.bb3
    i32 3, label %sw.epilog.sw.epilog9_crit_edge
    i32 6, label %sw.epilog.sw.epilog9_crit_edge20
  ]

sw.epilog.sw.epilog9_crit_edge20:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog9

sw.epilog.sw.epilog9_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog9

sw.epilog.sw.epilog9.sink.split_crit_edge19:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog9.sink.split

sw.epilog.sw.epilog9.sink.split_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog9.sink.split

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb3:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %4 = and i32 %new_state, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %switch = icmp eq i32 %4, 6
  %new_state. = select i1 %switch, i32 %new_state, i32 1
  br label %sw.epilog9.sink.split

sw.epilog9.sink.split:                            ; preds = %sw.bb3, %sw.epilog.sw.epilog9.sink.split_crit_edge, %sw.epilog.sw.epilog9.sink.split_crit_edge19
  %new_state.sink = phi i32 [ %new_state, %sw.epilog.sw.epilog9.sink.split_crit_edge ], [ %new_state, %sw.epilog.sw.epilog9.sink.split_crit_edge19 ], [ %new_state., %sw.bb3 ]
  %5 = ptrtoint ptr %sdev_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %new_state.sink, ptr %sdev_state, align 4
  br label %sw.epilog9

sw.epilog9:                                       ; preds = %sw.epilog9.sink.split, %sw.epilog.sw.epilog9_crit_edge, %sw.epilog.sw.epilog9_crit_edge20
  %queue_stopped.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %queue_stopped.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !241
  tail call void @llvm.prefetch.p0(ptr %queue_stopped.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %sw.epilog9
  %6 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %queue_stopped.i, i32 1, i32 0) #14, !srcloc !242
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i)
  %tobool.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit.i.return_crit_edge, label %if.then.i

__cmpxchg.exit.i.return_crit_edge:                ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then.i:                                        ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %7 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %request_queue.i, align 4
  tail call void @blk_mq_unquiesce_queue(ptr noundef %8) #14
  br label %return

return:                                           ; preds = %if.then.i, %__cmpxchg.exit.i.return_crit_edge, %sw.epilog.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %sw.epilog.return_crit_edge ], [ 0, %__cmpxchg.exit.i.return_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_target_block(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scsi_is_target_device(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  tail call void @starget_for_each_device(ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @device_block) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @target_block) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_target_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_block(ptr noundef %sdev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state_mutex.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 68
  tail call void @mutex_lock_nested(ptr noundef %state_mutex.i, i32 noundef 0) #14
  %call.i = tail call fastcc i32 @__scsi_internal_device_block_nowait(ptr noundef %sdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %land.rhs

if.then.i:                                        ; preds = %entry
  %queue_stopped.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %queue_stopped.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !244
  tail call void @llvm.prefetch.p0(ptr %queue_stopped.i.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.then.i
  %0 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %queue_stopped.i.i, i32 0, i32 1) #14, !srcloc !242
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %asmresult1.i.i.i, 0
  %request_queue.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %1 = ptrtoint ptr %request_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %request_queue.i.i, align 4
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else18.i.i

if.then.i.i:                                      ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blk_mq_quiesce_queue(ptr noundef %2) #14
  br label %scsi_internal_device_block.exit

if.else18.i.i:                                    ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blk_mq_wait_quiesce_done(ptr noundef %2) #14
  br label %scsi_internal_device_block.exit

scsi_internal_device_block.exit:                  ; preds = %if.else18.i.i, %if.then.i.i
  tail call void @mutex_unlock(ptr noundef %state_mutex.i) #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  tail call void @mutex_unlock(ptr noundef %state_mutex.i) #14
  %.b41 = load i1, ptr @device_block.__already_done, align 1
  br i1 %.b41, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !214

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @device_block.__already_done, align 1
  %init_name.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  %5 = ptrtoint ptr %sdev_gendev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_gendev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2885, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef %retval.0.i, i32 noundef %call.i) #14
  br label %if.end29

if.end29:                                         ; preds = %dev_name.exit, %land.rhs.if.end29_crit_edge, %scsi_internal_device_block.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_block(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scsi_is_target_device(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  tail call void @starget_for_each_device(ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @device_block) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_target_unblock(ptr noundef %dev, i32 noundef %new_state) #0 align 64 {
entry:
  %new_state.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %new_state.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_state, ptr %new_state.addr, align 4
  %call = tail call i32 @scsi_is_target_device(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  call void @starget_for_each_device(ptr noundef %add.ptr, ptr noundef nonnull %new_state.addr, ptr noundef nonnull @device_unblock) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = call i32 @device_for_each_child(ptr noundef %dev, ptr noundef nonnull %new_state.addr, ptr noundef nonnull @target_unblock) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_unblock(ptr noundef %sdev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %call = tail call fastcc i32 @scsi_internal_device_unblock(ptr noundef %sdev, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_unblock(ptr noundef %dev, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scsi_is_target_device(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  tail call void @starget_for_each_device(ptr noundef %add.ptr, ptr noundef %data, ptr noundef nonnull @device_unblock) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_host_block(ptr noundef %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__scsi_iterate_devices(ptr noundef %shost, ptr noundef null) #14
  %tobool.not64 = icmp eq ptr %call, null
  br i1 %tobool.not64, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %sdev.065 = phi ptr [ %call4, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %state_mutex = getelementptr inbounds %struct.scsi_device, ptr %sdev.065, i32 0, i32 68
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #14
  %call.i = tail call fastcc i32 @__scsi_internal_device_block_nowait(ptr noundef nonnull %sdev.065) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then

if.then.i:                                        ; preds = %for.body
  %queue_stopped.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.065, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %queue_stopped.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !244
  tail call void @llvm.prefetch.p0(ptr %queue_stopped.i.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.then.i
  %0 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %queue_stopped.i.i, i32 0, i32 1) #14, !srcloc !242
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %asmresult1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %__cmpxchg.exit.i.i.for.inc_crit_edge

__cmpxchg.exit.i.i.for.inc_crit_edge:             ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then.i.i:                                      ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %request_queue.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.065, i32 0, i32 1
  %1 = ptrtoint ptr %request_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %request_queue.i.i, align 4
  tail call void @blk_mq_quiesce_queue_nowait(ptr noundef %2) #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %state_mutex) #14
  tail call void @scsi_device_put(ptr noundef nonnull %sdev.065) #14
  br label %for.end

for.inc:                                          ; preds = %if.then.i.i, %__cmpxchg.exit.i.i.for.inc_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_mutex) #14
  %call4 = tail call ptr @__scsi_iterate_devices(ptr noundef %shost, ptr noundef nonnull %sdev.065) #14
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.then ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 13, i32 9
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %for.end.if.end35_crit_edge, label %land.rhs

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.rhs:                                         ; preds = %for.end
  %.b57 = load i1, ptr @scsi_host_block.__already_done, align 1
  br i1 %.b57, label %land.rhs.if.end35_crit_edge, label %if.then13, !prof !214

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scsi_host_block.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2958, i32 noundef 9, ptr noundef null) #14
  br label %if.end35

if.end35:                                         ; preds = %if.then13, %land.rhs.if.end35_crit_edge, %for.end.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool43.not = icmp eq i32 %ret.1, 0
  br i1 %tobool43.not, label %if.then44, label %if.end35.if.end45_crit_edge

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then44:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @synchronize_rcu() #14
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end35.if.end45_crit_edge
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_host_unblock(ptr noundef %shost, i32 noundef %new_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__scsi_iterate_devices(ptr noundef %shost, ptr noundef null) #14
  %tobool.not10 = icmp eq ptr %call, null
  br i1 %tobool.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %sdev.011 = phi ptr [ %call3, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call1 = tail call fastcc i32 @scsi_internal_device_unblock(ptr noundef nonnull %sdev.011, i32 noundef %new_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @scsi_device_put(ptr noundef nonnull %sdev.011) #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %call3 = tail call ptr @__scsi_iterate_devices(ptr noundef %shost, ptr noundef nonnull %sdev.011) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ %call1, %if.then ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scsi_internal_device_unblock(ptr noundef %sdev, i32 noundef %new_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state_mutex = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 68
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #14
  %0 = zext i32 %new_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %new_state, label %entry.scsi_internal_device_unblock_nowait.exit_crit_edge [
    i32 2, label %entry.sw.epilog.i_crit_edge
    i32 7, label %entry.sw.epilog.i_crit_edge4
  ]

entry.sw.epilog.i_crit_edge4:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

entry.scsi_internal_device_unblock_nowait.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_internal_device_unblock_nowait.exit

sw.epilog.i:                                      ; preds = %entry.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge4
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 69
  %1 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sdev_state.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %2, label %sw.epilog.i.scsi_internal_device_unblock_nowait.exit_crit_edge [
    i32 8, label %sw.epilog.i.sw.epilog9.sink.split.i_crit_edge
    i32 7, label %sw.epilog.i.sw.epilog9.sink.split.i_crit_edge5
    i32 9, label %sw.bb3.i
    i32 3, label %sw.epilog.i.sw.epilog9.i_crit_edge
    i32 6, label %sw.epilog.i.sw.epilog9.i_crit_edge6
  ]

sw.epilog.i.sw.epilog9.i_crit_edge6:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog9.i

sw.epilog.i.sw.epilog9.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog9.i

sw.epilog.i.sw.epilog9.sink.split.i_crit_edge5:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog9.sink.split.i

sw.epilog.i.sw.epilog9.sink.split.i_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog9.sink.split.i

sw.epilog.i.scsi_internal_device_unblock_nowait.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_internal_device_unblock_nowait.exit

sw.bb3.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %4 = and i32 %new_state, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %switch.i = icmp eq i32 %4, 6
  %new_state..i = select i1 %switch.i, i32 %new_state, i32 1
  br label %sw.epilog9.sink.split.i

sw.epilog9.sink.split.i:                          ; preds = %sw.bb3.i, %sw.epilog.i.sw.epilog9.sink.split.i_crit_edge, %sw.epilog.i.sw.epilog9.sink.split.i_crit_edge5
  %new_state.sink.i = phi i32 [ %new_state, %sw.epilog.i.sw.epilog9.sink.split.i_crit_edge ], [ %new_state, %sw.epilog.i.sw.epilog9.sink.split.i_crit_edge5 ], [ %new_state..i, %sw.bb3.i ]
  %5 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %new_state.sink.i, ptr %sdev_state.i, align 4
  br label %sw.epilog9.i

sw.epilog9.i:                                     ; preds = %sw.epilog9.sink.split.i, %sw.epilog.i.sw.epilog9.i_crit_edge, %sw.epilog.i.sw.epilog9.i_crit_edge6
  %queue_stopped.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %queue_stopped.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !241
  tail call void @llvm.prefetch.p0(ptr %queue_stopped.i.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %sw.epilog9.i
  %6 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %queue_stopped.i.i, i32 1, i32 0) #14, !srcloc !242
  %asmresult.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %asmresult1.i.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i.i.scsi_internal_device_unblock_nowait.exit_crit_edge, label %if.then.i.i

__cmpxchg.exit.i.i.scsi_internal_device_unblock_nowait.exit_crit_edge: ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_internal_device_unblock_nowait.exit

if.then.i.i:                                      ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %request_queue.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %7 = ptrtoint ptr %request_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %request_queue.i.i, align 4
  tail call void @blk_mq_unquiesce_queue(ptr noundef %8) #14
  br label %scsi_internal_device_unblock_nowait.exit

scsi_internal_device_unblock_nowait.exit:         ; preds = %if.then.i.i, %__cmpxchg.exit.i.i.scsi_internal_device_unblock_nowait.exit_crit_edge, %sw.epilog.i.scsi_internal_device_unblock_nowait.exit_crit_edge, %entry.scsi_internal_device_unblock_nowait.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.scsi_internal_device_unblock_nowait.exit_crit_edge ], [ -22, %sw.epilog.i.scsi_internal_device_unblock_nowait.exit_crit_edge ], [ 0, %__cmpxchg.exit.i.i.scsi_internal_device_unblock_nowait.exit_crit_edge ], [ 0, %if.then.i.i ]
  tail call void @mutex_unlock(ptr noundef %state_mutex) #14
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scsi_kmap_atomic_sg(ptr noundef %sgl, i32 noundef %sg_count, ptr nocapture noundef %offset, ptr nocapture noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !221
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end21, label %entry.if.end_crit_edge, !prof !215

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3001, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end21, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_count)
  %cmp34117 = icmp sgt i32 %sg_count, 0
  br i1 %cmp34117, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0120 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %sg_len.0119 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %sg.0118 = phi ptr [ %call40, %for.inc.for.body_crit_edge ], [ %sgl, %if.end.for.body_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0118, i32 0, i32 2
  %1 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %length, align 4
  %add = add i32 %2, %sg_len.0119
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %4)
  %cmp36 = icmp ugt i32 %add, %4
  br i1 %cmp36, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0120, 1
  %call40 = tail call ptr @sg_next(ptr noundef %sg.0118) #14
  %exitcond.not = icmp eq i32 %inc, %sg_count
  br i1 %exitcond.not, label %for.inc.do.end52_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.do.end52_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end52

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %sg.0.lcssa = phi ptr [ %sgl, %if.end.for.end_crit_edge ], [ %sg.0118, %for.body.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %i.0120, %for.body.for.end_crit_edge ]
  %len_complete.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %sg_len.0119, %for.body.for.end_crit_edge ]
  %sg_len.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %sg_count)
  %cmp41 = icmp eq i32 %i.0.lcssa, %sg_count
  br i1 %cmp41, label %for.end.do.end52_crit_edge, label %if.end81, !prof !215

for.end.do.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end52

do.end52:                                         ; preds = %for.end.do.end52_crit_edge, %for.inc.do.end52_crit_edge
  %sg_len.1133 = phi i32 [ %sg_len.1, %for.end.do.end52_crit_edge ], [ %add, %for.inc.do.end52_crit_edge ]
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %sg_len.1133, i32 noundef %6, i32 noundef %sg_count) #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3014, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end81:                                         ; preds = %for.end
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %sub = sub i32 %8, %len_complete.1
  %offset82 = getelementptr inbounds %struct.scatterlist, ptr %sg.0.lcssa, i32 0, i32 1
  %9 = ptrtoint ptr %offset82 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset82, align 4
  %add83 = add i32 %sub, %10
  store i32 %add83, ptr %offset, align 4
  %11 = ptrtoint ptr %sg.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sg.0.lcssa, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !214

do.body2.i:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !246
  unreachable

sg_page.exit:                                     ; preds = %if.end81
  %and.i116 = and i32 %12, -4
  %13 = inttoptr i32 %and.i116 to ptr
  %shr = lshr i32 %add83, 12
  %add.ptr = getelementptr %struct.page, ptr %13, i32 %shr
  %and = and i32 %add83, 4095
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %offset, align 4
  %sub85 = sub nuw nsw i32 4096, %and
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub85)
  %cmp86 = icmp ugt i32 %16, %sub85
  br i1 %cmp86, label %if.then88, label %sg_page.exit.if.end89_crit_edge

sg_page.exit.if.end89_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

if.then88:                                        ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub85, ptr %len, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %sg_page.exit.if.end89_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %18 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %18, 512
  %19 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !247
  %23 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i1.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 213
  %27 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %28, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !248
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %do.end52
  %retval.0 = phi ptr [ null, %do.end52 ], [ %call.i.i, %if.end89 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_kunmap_atomic_sg(ptr noundef %virt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kunmap_local_indexed(ptr noundef %virt) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !249
  %0 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i1.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %5, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !250
  %6 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdev_disable_disk_events(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %disk_events_disable_depth = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 45
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %disk_events_disable_depth, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %disk_events_disable_depth, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %disk_events_disable_depth, ptr %disk_events_disable_depth, i32 1, ptr elementtype(i32) %disk_events_disable_depth) #14, !srcloc !223
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdev_enable_disk_events(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %disk_events_disable_depth = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 45
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %disk_events_disable_depth, i32 noundef 4) #14
  %0 = ptrtoint ptr %disk_events_disable_depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %disk_events_disable_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %land.rhs, label %if.end37.critedge

land.rhs:                                         ; preds = %entry
  %.b42 = load i1, ptr @sdev_enable_disk_events.__already_done, align 1
  br i1 %.b42, label %land.rhs.return_crit_edge, label %if.then, !prof !214

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @sdev_enable_disk_events.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3052, i32 noundef 9, ptr noundef null) #14
  br label %return

if.end37.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %disk_events_disable_depth, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %disk_events_disable_depth, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %disk_events_disable_depth, ptr %disk_events_disable_depth, i32 1, ptr elementtype(i32) %disk_events_disable_depth) #14, !srcloc !216
  br label %return

return:                                           ; preds = %if.end37.critedge, %if.then, %land.rhs.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_vpd_lun_id(ptr noundef %sdev, ptr nocapture noundef writeonly %id, i32 noundef %id_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !218
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %vpd_pg831 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 34
  %4 = ptrtoint ptr %vpd_pg831 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vpd_pg831, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b167 = load i1, ptr @scsi_vpd_lun_id.__warned, align 1
  br i1 %.b167, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scsi_vpd_lun_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 3153, ptr noundef nonnull @.str.14) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end8
  %call.i168 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i168, label %if.then11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i171

if.then11.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i171:                               ; preds = %if.then11
  %call1.i169 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i169)
  %tobool.not.i170 = icmp eq i32 %call1.i169, 0
  br i1 %tobool.not.i170, label %land.lhs.true.i171.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i173

land.lhs.true.i171.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i171
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i173:                              ; preds = %land.lhs.true.i171
  %.b4.i172 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i172, label %land.lhs.true2.i173.rcu_read_unlock.exit_crit_edge, label %if.then.i174

land.lhs.true2.i173.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i173
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i174:                                     ; preds = %land.lhs.true2.i173
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i174, %land.lhs.true2.i173.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i171.rcu_read_unlock.exit_crit_edge, %if.then11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  br label %cleanup104

if.end12:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %id_len)
  %cmp = icmp ult i32 %id_len, 21
  br i1 %cmp, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end12
  %call.i177 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i177, label %if.then13.rcu_read_unlock.exit187_crit_edge, label %land.lhs.true.i180

if.then13.rcu_read_unlock.exit187_crit_edge:      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit187

land.lhs.true.i180:                               ; preds = %if.then13
  %call1.i178 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i178)
  %tobool.not.i179 = icmp eq i32 %call1.i178, 0
  br i1 %tobool.not.i179, label %land.lhs.true.i180.rcu_read_unlock.exit187_crit_edge, label %land.lhs.true2.i182

land.lhs.true.i180.rcu_read_unlock.exit187_crit_edge: ; preds = %land.lhs.true.i180
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit187

land.lhs.true2.i182:                              ; preds = %land.lhs.true.i180
  %.b4.i181 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i181, label %land.lhs.true2.i182.rcu_read_unlock.exit187_crit_edge, label %if.then.i183

land.lhs.true2.i182.rcu_read_unlock.exit187_crit_edge: ; preds = %land.lhs.true2.i182
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit187

if.then.i183:                                     ; preds = %land.lhs.true2.i182
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #14
  br label %rcu_read_unlock.exit187

rcu_read_unlock.exit187:                          ; preds = %if.then.i183, %land.lhs.true2.i182.rcu_read_unlock.exit187_crit_edge, %land.lhs.true.i180.rcu_read_unlock.exit187_crit_edge, %if.then13.rcu_read_unlock.exit187_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  br label %cleanup104

if.end14:                                         ; preds = %if.end12
  %6 = call ptr @memset(ptr %id, i32 0, i32 %id_len)
  %data = getelementptr inbounds %struct.scsi_vpd, ptr %5, i32 0, i32 2
  %add.ptr = getelementptr %struct.scsi_vpd, ptr %5, i32 1, i32 0, i32 1
  %len = getelementptr inbounds %struct.scsi_vpd, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %add.ptr17204 = getelementptr i8, ptr %data, i32 %8
  %cmp18205 = icmp ult ptr %add.ptr, %add.ptr17204
  br i1 %cmp18205, label %for.body.lr.ph, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %9 = trunc i32 %id_len to i8
  %conv95 = add i8 %9, -1
  %conv41 = add i8 %9, -4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %cur_id_prio.0213 = phi i8 [ 0, %for.body.lr.ph ], [ %cur_id_prio.2, %cleanup.for.body_crit_edge ]
  %id_size.0211 = phi i32 [ -22, %for.body.lr.ph ], [ %id_size.2, %cleanup.for.body_crit_edge ]
  %d.0208 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr103, %cleanup.for.body_crit_edge ]
  %cur_id_size.0206 = phi i8 [ 0, %for.body.lr.ph ], [ %cur_id_size.4, %cleanup.for.body_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %d.0208, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %11 to i32
  %and.i = and i32 %conv.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i188 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i188, label %if.end.i, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %arrayidx1.i = getelementptr i8, ptr %d.0208, i32 3
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.i = icmp eq i8 %13, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %and8.i = and i32 %conv.i, 15
  %14 = zext i32 %and8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %and8.i, label %if.end5.i.cleanup_crit_edge [
    i32 8, label %if.end5.i.designator_prio.exit_crit_edge
    i32 3, label %sw.bb9.i
    i32 2, label %sw.bb16.i
    i32 1, label %sw.bb24.i
  ]

if.end5.i.designator_prio.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %designator_prio.exit

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb9.i:                                         ; preds = %if.end5.i
  %arrayidx10.i = getelementptr i8, ptr %d.0208, i32 4
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx10.i, align 1
  %17 = lshr i8 %16, 4
  %18 = zext i8 %17 to i32
  %switch.tableidx = add nsw i32 %18, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %19 = icmp ult i32 %switch.tableidx, 4
  br i1 %19, label %switch.lookup, label %sw.bb9.i.cleanup_crit_edge

sw.bb9.i.cleanup_crit_edge:                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb16.i:                                        ; preds = %if.end5.i
  %20 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %13, label %sw.bb16.i.cleanup_crit_edge [
    i8 16, label %sw.bb16.i.designator_prio.exit_crit_edge
    i8 12, label %sw.bb20.i
    i8 8, label %sw.bb21.i
  ]

sw.bb16.i.designator_prio.exit_crit_edge:         ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %designator_prio.exit

sw.bb16.i.cleanup_crit_edge:                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb20.i:                                        ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %designator_prio.exit

sw.bb21.i:                                        ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %designator_prio.exit

sw.bb24.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %designator_prio.exit

switch.lookup:                                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #16
  %switch.shiftamt = shl nsw i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 134546433, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %designator_prio.exit

designator_prio.exit:                             ; preds = %switch.lookup, %sw.bb24.i, %sw.bb21.i, %sw.bb20.i, %sw.bb16.i.designator_prio.exit_crit_edge, %if.end5.i.designator_prio.exit_crit_edge
  %retval.0.i = phi i8 [ 1, %sw.bb24.i ], [ 3, %sw.bb21.i ], [ 6, %sw.bb20.i ], [ 9, %if.end5.i.designator_prio.exit_crit_edge ], [ 7, %sw.bb16.i.designator_prio.exit_crit_edge ], [ %switch.masked, %switch.lookup ]
  call void @__sanitizer_cov_trace_cmp1(i8 %cur_id_prio.0213, i8 %retval.0.i)
  %cmp24 = icmp ugt i8 %cur_id_prio.0213, %retval.0.i
  br i1 %cmp24, label %designator_prio.exit.cleanup_crit_edge, label %if.end27

designator_prio.exit.cleanup_crit_edge:           ; preds = %designator_prio.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end27:                                         ; preds = %designator_prio.exit
  %21 = and i8 %11, 15
  %and = zext i8 %21 to i32
  %22 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %and, label %if.end27.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb46
    i32 3, label %sw.bb56
    i32 8, label %sw.bb66
  ]

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end27
  %23 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cur_id_size.0206, i8 %24)
  %cmp32 = icmp ugt i8 %cur_id_size.0206, %24
  br i1 %cmp32, label %sw.bb.cleanup_crit_edge, label %if.end35

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end35:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %conv31 = zext i8 %24 to i32
  %add = add nuw nsw i32 %conv31, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %id_len)
  %cmp38 = icmp ugt i32 %add, %id_len
  %cur_id_size.1 = select i1 %cmp38, i8 %conv41, i8 %24
  %add.ptr43 = getelementptr i8, ptr %d.0208, i32 4
  %conv44 = zext i8 %cur_id_size.1 to i32
  %call45 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef %id_len, ptr noundef nonnull @.str.15, i32 noundef %conv44, ptr noundef %add.ptr43)
  br label %cleanup

sw.bb46:                                          ; preds = %if.end27
  %25 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx1.i, align 1
  %add.ptr48 = getelementptr i8, ptr %d.0208, i32 4
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %26, label %sw.bb46.cleanup_crit_edge [
    i8 8, label %sw.bb50
    i8 12, label %sw.bb52
    i8 16, label %sw.bb54
  ]

sw.bb46.cleanup_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb50:                                          ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #16
  %call51 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef %id_len, ptr noundef nonnull @.str.16, ptr noundef %add.ptr48)
  br label %cleanup

sw.bb52:                                          ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #16
  %call53 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef %id_len, ptr noundef nonnull @.str.17, ptr noundef %add.ptr48)
  br label %cleanup

sw.bb54:                                          ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #16
  %call55 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef %id_len, ptr noundef nonnull @.str.18, ptr noundef %add.ptr48)
  br label %cleanup

sw.bb56:                                          ; preds = %if.end27
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx1.i, align 1
  %add.ptr58 = getelementptr i8, ptr %d.0208, i32 4
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %29, label %sw.bb56.cleanup_crit_edge [
    i8 8, label %sw.bb60
    i8 16, label %sw.bb62
  ]

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb60:                                          ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #16
  %call61 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef %id_len, ptr noundef nonnull @.str.19, ptr noundef %add.ptr58)
  br label %cleanup

sw.bb62:                                          ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #16
  %call63 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef %id_len, ptr noundef nonnull @.str.20, ptr noundef %add.ptr58)
  br label %cleanup

sw.bb66:                                          ; preds = %if.end27
  %31 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cur_id_size.0206, i8 %32)
  %cmp70 = icmp ugt i8 %cur_id_size.0206, %32
  br i1 %cmp70, label %sw.bb66.cleanup_crit_edge, label %if.end73

sw.bb66.cleanup_crit_edge:                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end73:                                         ; preds = %sw.bb66
  %conv69 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv69, i32 %id_len)
  %cmp76 = icmp ugt i32 %conv69, %id_len
  br i1 %cmp76, label %if.then78, label %if.end73.if.end85_crit_edge

if.end73.if.end85_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %cur_id_prio.0213)
  %cmp81 = icmp ugt i8 %cur_id_prio.0213, 2
  br i1 %cmp81, label %if.then78.cleanup_crit_edge, label %if.then78.if.end85_crit_edge

if.then78.if.end85_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end85:                                         ; preds = %if.then78.if.end85_crit_edge, %if.end73.if.end85_crit_edge
  %prio.0 = phi i8 [ 2, %if.then78.if.end85_crit_edge ], [ %retval.0.i, %if.end73.if.end85_crit_edge ]
  %add.ptr89 = getelementptr i8, ptr %d.0208, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv69, i32 %id_len)
  %cmp91.not = icmp ult i32 %conv69, %id_len
  %cur_id_size.2 = select i1 %cmp91.not, i8 %32, i8 %conv95
  %conv97 = zext i8 %cur_id_size.2 to i32
  %33 = call ptr @memcpy(ptr %id, ptr %add.ptr89, i32 %conv97)
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then78.cleanup_crit_edge, %sw.bb66.cleanup_crit_edge, %sw.bb62, %sw.bb60, %sw.bb56.cleanup_crit_edge, %sw.bb54, %sw.bb52, %sw.bb50, %sw.bb46.cleanup_crit_edge, %if.end35, %sw.bb.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %designator_prio.exit.cleanup_crit_edge, %sw.bb16.i.cleanup_crit_edge, %sw.bb9.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %cur_id_size.4 = phi i8 [ %cur_id_size.0206, %designator_prio.exit.cleanup_crit_edge ], [ %cur_id_size.0206, %if.end27.cleanup_crit_edge ], [ %cur_id_size.0206, %sw.bb66.cleanup_crit_edge ], [ %cur_id_size.0206, %if.then78.cleanup_crit_edge ], [ %cur_id_size.2, %if.end85 ], [ %29, %sw.bb56.cleanup_crit_edge ], [ 16, %sw.bb62 ], [ 8, %sw.bb60 ], [ %26, %sw.bb46.cleanup_crit_edge ], [ 16, %sw.bb54 ], [ 12, %sw.bb52 ], [ 8, %sw.bb50 ], [ %cur_id_size.0206, %sw.bb.cleanup_crit_edge ], [ %cur_id_size.1, %if.end35 ], [ %cur_id_size.0206, %for.body.cleanup_crit_edge ], [ %cur_id_size.0206, %if.end.i.cleanup_crit_edge ], [ %cur_id_size.0206, %sw.bb16.i.cleanup_crit_edge ], [ %cur_id_size.0206, %sw.bb9.i.cleanup_crit_edge ], [ %cur_id_size.0206, %if.end5.i.cleanup_crit_edge ]
  %id_size.2 = phi i32 [ %id_size.0211, %designator_prio.exit.cleanup_crit_edge ], [ %id_size.0211, %if.end27.cleanup_crit_edge ], [ %id_size.0211, %sw.bb66.cleanup_crit_edge ], [ %id_size.0211, %if.then78.cleanup_crit_edge ], [ %conv69, %if.end85 ], [ %id_size.0211, %sw.bb56.cleanup_crit_edge ], [ %call63, %sw.bb62 ], [ %call61, %sw.bb60 ], [ %id_size.0211, %sw.bb46.cleanup_crit_edge ], [ %call55, %sw.bb54 ], [ %call53, %sw.bb52 ], [ %call51, %sw.bb50 ], [ %id_size.0211, %sw.bb.cleanup_crit_edge ], [ %call45, %if.end35 ], [ %id_size.0211, %for.body.cleanup_crit_edge ], [ %id_size.0211, %if.end.i.cleanup_crit_edge ], [ %id_size.0211, %sw.bb16.i.cleanup_crit_edge ], [ %id_size.0211, %sw.bb9.i.cleanup_crit_edge ], [ %id_size.0211, %if.end5.i.cleanup_crit_edge ]
  %cur_id_prio.2 = phi i8 [ %cur_id_prio.0213, %designator_prio.exit.cleanup_crit_edge ], [ %cur_id_prio.0213, %if.end27.cleanup_crit_edge ], [ %cur_id_prio.0213, %sw.bb66.cleanup_crit_edge ], [ %cur_id_prio.0213, %if.then78.cleanup_crit_edge ], [ %prio.0, %if.end85 ], [ %retval.0.i, %sw.bb56.cleanup_crit_edge ], [ %retval.0.i, %sw.bb62 ], [ %retval.0.i, %sw.bb60 ], [ %retval.0.i, %sw.bb46.cleanup_crit_edge ], [ %retval.0.i, %sw.bb54 ], [ %retval.0.i, %sw.bb52 ], [ %retval.0.i, %sw.bb50 ], [ %cur_id_prio.0213, %sw.bb.cleanup_crit_edge ], [ %retval.0.i, %if.end35 ], [ %cur_id_prio.0213, %for.body.cleanup_crit_edge ], [ %cur_id_prio.0213, %if.end.i.cleanup_crit_edge ], [ %cur_id_prio.0213, %sw.bb16.i.cleanup_crit_edge ], [ %cur_id_prio.0213, %sw.bb9.i.cleanup_crit_edge ], [ %cur_id_prio.0213, %if.end5.i.cleanup_crit_edge ]
  %arrayidx100 = getelementptr i8, ptr %d.0208, i32 3
  %34 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %35 to i32
  %add102 = add nuw nsw i32 %conv101, 4
  %add.ptr103 = getelementptr i8, ptr %d.0208, i32 %add102
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %add.ptr17 = getelementptr i8, ptr %data, i32 %37
  %cmp18 = icmp ult ptr %add.ptr103, %add.ptr17
  br i1 %cmp18, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end14.for.end_crit_edge
  %id_size.0.lcssa = phi i32 [ -22, %if.end14.for.end_crit_edge ], [ %id_size.2, %cleanup.for.end_crit_edge ]
  %call.i189 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i189, label %for.end.rcu_read_unlock.exit199_crit_edge, label %land.lhs.true.i192

for.end.rcu_read_unlock.exit199_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit199

land.lhs.true.i192:                               ; preds = %for.end
  %call1.i190 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i190)
  %tobool.not.i191 = icmp eq i32 %call1.i190, 0
  br i1 %tobool.not.i191, label %land.lhs.true.i192.rcu_read_unlock.exit199_crit_edge, label %land.lhs.true2.i194

land.lhs.true.i192.rcu_read_unlock.exit199_crit_edge: ; preds = %land.lhs.true.i192
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit199

land.lhs.true2.i194:                              ; preds = %land.lhs.true.i192
  %.b4.i193 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i193, label %land.lhs.true2.i194.rcu_read_unlock.exit199_crit_edge, label %if.then.i195

land.lhs.true2.i194.rcu_read_unlock.exit199_crit_edge: ; preds = %land.lhs.true2.i194
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit199

if.then.i195:                                     ; preds = %land.lhs.true2.i194
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #14
  br label %rcu_read_unlock.exit199

rcu_read_unlock.exit199:                          ; preds = %if.then.i195, %land.lhs.true2.i194.rcu_read_unlock.exit199_crit_edge, %land.lhs.true.i192.rcu_read_unlock.exit199_crit_edge, %for.end.rcu_read_unlock.exit199_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  br label %cleanup104

cleanup104:                                       ; preds = %rcu_read_unlock.exit199, %rcu_read_unlock.exit187, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -22, %rcu_read_unlock.exit187 ], [ %id_size.0.lcssa, %rcu_read_unlock.exit199 ], [ -6, %rcu_read_unlock.exit ]
  %38 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i196 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i196 to ptr
  %preempt_count.i.i.i.i197 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i197, align 4
  %sub.i.i.i198 = add i32 %41, -1
  store volatile i32 %sub.i.i.i198, ptr %preempt_count.i.i.i.i197, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_vpd_tpg_id(ptr noundef %sdev, ptr noundef writeonly %rel_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !218
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %vpd_pg831 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 34
  %4 = ptrtoint ptr %vpd_pg831 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vpd_pg831, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b49 = load i1, ptr @scsi_vpd_tpg_id.__warned, align 1
  br i1 %.b49, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scsi_vpd_tpg_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 3275, ptr noundef nonnull @.str.14) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end8
  %call.i51 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i51, label %if.then11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i54

if.then11.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i54:                                ; preds = %if.then11
  %call1.i52 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i56

land.lhs.true.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i56:                               ; preds = %land.lhs.true.i54
  %.b4.i55 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55, label %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, label %if.then.i57

land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i57:                                      ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i57, %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, %if.then11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  %6 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i58 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i58 to ptr
  %preempt_count.i.i.i.i59 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i59, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i59, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %data = getelementptr inbounds %struct.scsi_vpd, ptr %5, i32 0, i32 2
  %add.ptr = getelementptr %struct.scsi_vpd, ptr %5, i32 1, i32 0, i32 1
  %len = getelementptr inbounds %struct.scsi_vpd, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %add.ptr15 = getelementptr i8, ptr %data, i32 %11
  %cmp71 = icmp ult ptr %add.ptr, %add.ptr15
  br i1 %cmp71, label %if.end12.while.body_crit_edge, label %if.end12.while.end_crit_edge

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %if.end12.while.body_crit_edge
  %d.074 = phi ptr [ %add.ptr25, %sw.epilog.while.body_crit_edge ], [ %add.ptr, %if.end12.while.body_crit_edge ]
  %rel_port.073 = phi i32 [ %rel_port.1, %sw.epilog.while.body_crit_edge ], [ -1, %if.end12.while.body_crit_edge ]
  %group_id.072 = phi i32 [ %group_id.1, %sw.epilog.while.body_crit_edge ], [ -11, %if.end12.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %d.074, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = and i8 %13, 15
  %and = zext i8 %14 to i32
  %15 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %and, label %while.body.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %sw.bb19
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx16 = getelementptr i8, ptr %d.074, i32 6
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %arrayidx16, align 1
  %conv18 = zext i16 %17 to i32
  br label %sw.epilog

sw.bb19:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx20 = getelementptr i8, ptr %d.074, i32 6
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %arrayidx20, align 1
  %conv22 = zext i16 %19 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb, %while.body.sw.epilog_crit_edge
  %group_id.1 = phi i32 [ %group_id.072, %while.body.sw.epilog_crit_edge ], [ %conv22, %sw.bb19 ], [ %group_id.072, %sw.bb ]
  %rel_port.1 = phi i32 [ %rel_port.073, %while.body.sw.epilog_crit_edge ], [ %rel_port.073, %sw.bb19 ], [ %conv18, %sw.bb ]
  %arrayidx23 = getelementptr i8, ptr %d.074, i32 3
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %21 to i32
  %add = add nuw nsw i32 %conv24, 4
  %add.ptr25 = getelementptr i8, ptr %d.074, i32 %add
  %cmp = icmp ult ptr %add.ptr25, %add.ptr15
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %if.end12.while.end_crit_edge
  %group_id.0.lcssa = phi i32 [ -11, %if.end12.while.end_crit_edge ], [ %group_id.1, %sw.epilog.while.end_crit_edge ]
  %rel_port.0.lcssa = phi i32 [ -1, %if.end12.while.end_crit_edge ], [ %rel_port.1, %sw.epilog.while.end_crit_edge ]
  %call.i60 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i60, label %while.end.rcu_read_unlock.exit70_crit_edge, label %land.lhs.true.i63

while.end.rcu_read_unlock.exit70_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit70

land.lhs.true.i63:                                ; preds = %while.end
  %call1.i61 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61)
  %tobool.not.i62 = icmp eq i32 %call1.i61, 0
  br i1 %tobool.not.i62, label %land.lhs.true.i63.rcu_read_unlock.exit70_crit_edge, label %land.lhs.true2.i65

land.lhs.true.i63.rcu_read_unlock.exit70_crit_edge: ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit70

land.lhs.true2.i65:                               ; preds = %land.lhs.true.i63
  %.b4.i64 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i64, label %land.lhs.true2.i65.rcu_read_unlock.exit70_crit_edge, label %if.then.i66

land.lhs.true2.i65.rcu_read_unlock.exit70_crit_edge: ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit70

if.then.i66:                                      ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #14
  br label %rcu_read_unlock.exit70

rcu_read_unlock.exit70:                           ; preds = %if.then.i66, %land.lhs.true2.i65.rcu_read_unlock.exit70_crit_edge, %land.lhs.true.i63.rcu_read_unlock.exit70_crit_edge, %while.end.rcu_read_unlock.exit70_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  %22 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i67 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i67 to ptr
  %preempt_count.i.i.i.i68 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i68, align 4
  %sub.i.i.i69 = add i32 %25, -1
  store volatile i32 %sub.i.i.i69, ptr %preempt_count.i.i.i.i68, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group_id.0.lcssa)
  %cmp26 = icmp slt i32 %group_id.0.lcssa, 0
  %tobool29.not = icmp eq ptr %rel_id, null
  %or.cond = or i1 %tobool29.not, %cmp26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rel_port.0.lcssa)
  %cmp31.not = icmp eq i32 %rel_port.0.lcssa, -1
  %or.cond50 = select i1 %or.cond, i1 true, i1 %cmp31.not
  br i1 %or.cond50, label %rcu_read_unlock.exit70.cleanup_crit_edge, label %if.then33

rcu_read_unlock.exit70.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit70
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then33:                                        ; preds = %rcu_read_unlock.exit70
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %rel_id to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %rel_port.0.lcssa, ptr %rel_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %rcu_read_unlock.exit70.cleanup_crit_edge, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -6, %rcu_read_unlock.exit ], [ %group_id.0.lcssa, %if.then33 ], [ %group_id.0.lcssa, %rcu_read_unlock.exit70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_build_sense(ptr nocapture noundef %scmd, i32 noundef %desc, i8 noundef zeroext %key, i8 noundef zeroext %asc, i8 noundef zeroext %ascq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 21
  %0 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sense_buffer, align 4
  tail call void @scsi_build_sense_buffer(i32 noundef %desc, ptr noundef %1, i8 noundef zeroext %key, i8 noundef zeroext %asc, i8 noundef zeroext %ascq) #14
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 24
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %result, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_build_sense_buffer(i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_requeue_request(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_get_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_put_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_command_normalize_sense(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @scsi_result_to_blk_status(ptr nocapture noundef %cmd, i32 noundef %result) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %result, 16
  %trunc = trunc i32 %0 to i8
  %1 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %trunc, label %sw.default [
    i8 0, label %sw.bb
    i8 15, label %entry.return_crit_edge
    i8 20, label %entry.return_crit_edge17
    i8 16, label %sw.bb2
    i8 17, label %sw.bb3
    i8 18, label %sw.bb4
    i8 19, label %sw.bb5
  ]

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result)
  %cmp.i = icmp slt i32 %result, 0
  %2 = and i32 %result, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %2)
  %cmp1.i = icmp eq i32 %2, 65536
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %sw.bb.scsi_status_is_good.exit.thread_crit_edge, label %if.end3.i

sw.bb.scsi_status_is_good.exit.thread_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_status_is_good.exit.thread

if.end3.i:                                        ; preds = %sw.bb
  %3 = trunc i32 %result to i8
  %trunc.i = and i8 %3, -2
  %4 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %trunc.i, label %if.end3.i.scsi_status_is_good.exit.thread_crit_edge [
    i8 0, label %if.end3.i.return_crit_edge
    i8 4, label %if.end3.i.return_crit_edge18
    i8 16, label %if.end3.i.return_crit_edge19
    i8 20, label %if.end3.i.return_crit_edge20
    i8 34, label %if.end3.i.return_crit_edge21
  ]

if.end3.i.return_crit_edge21:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end3.i.return_crit_edge20:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end3.i.return_crit_edge19:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end3.i.return_crit_edge18:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end3.i.return_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end3.i.scsi_status_is_good.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_status_is_good.exit.thread

scsi_status_is_good.exit.thread:                  ; preds = %if.end3.i.scsi_status_is_good.exit.thread_crit_edge, %sw.bb.scsi_status_is_good.exit.thread_crit_edge
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %5 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %result.i, align 4
  %and.i = and i32 %6, -16711681
  store i32 %and.i, ptr %result.i, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %result.i10 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %7 = ptrtoint ptr %result.i10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %result.i10, align 4
  %and.i11 = and i32 %8, -16711681
  store i32 %and.i11, ptr %result.i10, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %result.i12 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %9 = ptrtoint ptr %result.i12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %result.i12, align 4
  %and.i13 = and i32 %10, -16711681
  store i32 %and.i13, ptr %result.i12, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %result.i14 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %11 = ptrtoint ptr %result.i14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %result.i14, align 4
  %and.i15 = and i32 %12, -16711681
  store i32 %and.i15, ptr %result.i14, align 4
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %scsi_status_is_good.exit.thread, %if.end3.i.return_crit_edge, %if.end3.i.return_crit_edge18, %if.end3.i.return_crit_edge19, %if.end3.i.return_crit_edge20, %if.end3.i.return_crit_edge21, %entry.return_crit_edge, %entry.return_crit_edge17
  %retval.0 = phi i8 [ 10, %sw.default ], [ 7, %sw.bb5 ], [ 3, %sw.bb4 ], [ 6, %sw.bb3 ], [ 5, %sw.bb2 ], [ 4, %entry.return_crit_edge ], [ 4, %entry.return_crit_edge17 ], [ 10, %scsi_status_is_good.exit.thread ], [ 0, %if.end3.i.return_crit_edge ], [ 0, %if.end3.i.return_crit_edge18 ], [ 0, %if.end3.i.return_crit_edge19 ], [ 0, %if.end3.i.return_crit_edge20 ], [ 0, %if.end3.i.return_crit_edge21 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_sense(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_disk_randomness(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_rcu_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scsi_run_queue_async(ptr noundef %sdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %single_lun = getelementptr i8, ptr %1, i32 940
  %2 = ptrtoint ptr %single_lun to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %single_lun, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 8
  %starved_list = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %starved_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %starved_list, align 4
  %cmp.i.not = icmp eq ptr %7, %starved_list
  br i1 %cmp.i.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %requeue_work = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 58
  %call3 = tail call i32 @kblockd_schedule_work(ptr noundef %requeue_work) #14
  br label %if.end9

if.else:                                          ; preds = %lor.lhs.false
  %restarts = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %restarts, i32 noundef 4) #14
  %8 = ptrtoint ptr %restarts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %restarts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.else.if.end9_crit_edge, label %land.lhs.true

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

land.lhs.true:                                    ; preds = %if.else
  %call.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %restarts, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !251
  tail call void @llvm.prefetch.p0(ptr %restarts, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %restarts, ptr %restarts, i32 %9, i32 0, ptr elementtype(i32) %restarts) #14, !srcloc !252
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !253
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i, i32 %9)
  %cmp = icmp eq i32 %asmresult3.i.i.i, %9
  br i1 %cmp, label %if.then8, label %atomic_cmpxchg.exit.if.end9_crit_edge

atomic_cmpxchg.exit.if.end9_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then8:                                         ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #16
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %11 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %request_queue, align 4
  tail call void @blk_mq_run_hw_queues(ptr noundef %12, i1 noundef zeroext true) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %atomic_cmpxchg.exit.if.end9_crit_edge, %if.else.if.end9_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kblockd_schedule_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_command(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rcu_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_should_fake_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_scsi_dispatch_cmd_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @scsi_queue_rq(ptr nocapture noundef readnone %hctx, ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queuedata, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %add.ptr.i = getelementptr %struct.request, ptr %1, i32 1
  %budget_token = getelementptr %struct.request, ptr %1, i32 1, i32 31
  %8 = ptrtoint ptr %budget_token to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %budget_token, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b179 = load i1, ptr @scsi_queue_rq.__already_done, align 1
  br i1 %.b179, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !214

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scsi_queue_rq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1711, i32 noundef 9, ptr noundef null) #14
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %sdev_state = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 69
  %10 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sdev_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp36.not = icmp eq i32 %11, 2
  br i1 %cmp36.not, label %if.end28.if.end49_crit_edge, label %if.then43, !prof !214

if.end28.if.end49_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then43:                                        ; preds = %if.end28
  %call44 = tail call fastcc zeroext i8 @scsi_device_state_check(ptr noundef %5, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call44)
  %cmp45.not = icmp eq i8 %call44, 0
  br i1 %cmp45.not, label %if.then43.if.end49_crit_edge, label %if.then43.out_put_budget_crit_edge

if.then43.out_put_budget_crit_edge:               ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_put_budget

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.end49:                                         ; preds = %if.then43.if.end49_crit_edge, %if.end28.if.end49_crit_edge
  %parent.i.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 55, i32 1
  %12 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 -24
  %single_lun.i = getelementptr i8, ptr %13, i32 940
  %14 = ptrtoint ptr %single_lun.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %single_lun.i, align 4
  %15 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end49.if.end7.i_crit_edge, label %if.then.i

if.end49.if.end7.i_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end49
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %17) #14
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i, align 8
  %tobool1.not.i = icmp eq ptr %19, null
  %cmp.not.i = icmp eq ptr %19, %5
  %or.cond.i = or i1 %tobool1.not.i, %cmp.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %21) #14
  br label %out_put_budget

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %5, ptr %add.ptr.i.i, align 8
  %23 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %24) #14
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %if.end49.if.end7.i_crit_edge
  %can_queue.i = getelementptr i8, ptr %13, i32 952
  %25 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %can_queue.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp8.i = icmp eq i32 %26, 0
  br i1 %cmp8.i, label %if.end7.i.if.end53_crit_edge, label %if.end10.i

if.end7.i.if.end53_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.end10.i:                                       ; preds = %if.end7.i
  %target_busy.i = getelementptr i8, ptr %13, i32 944
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %target_busy.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !254
  tail call void @llvm.prefetch.p0(ptr %target_busy.i, i32 1, i32 3, i32 1) #14
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %target_busy.i, ptr %target_busy.i, i32 1, ptr elementtype(i32) %target_busy.i) #14, !srcloc !255
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !256
  %sub.i = add i32 %asmresult.i.i.i.i.i, -1
  %target_blocked.i = getelementptr i8, ptr %13, i32 948
  %call.i.i67.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %target_blocked.i, i32 noundef 4) #14
  %28 = ptrtoint ptr %target_blocked.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %target_blocked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp13.i = icmp sgt i32 %29, 0
  br i1 %cmp13.i, label %if.then14.i, label %if.end10.i.if.end34.i_crit_edge

if.end10.i.if.end34.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool15.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.then14.i.starved.i_crit_edge

if.then14.i.starved.i_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %starved.i

if.end17.i:                                       ; preds = %if.then14.i
  %call.i.i68.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %target_blocked.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !224
  tail call void @llvm.prefetch.p0(ptr %target_blocked.i, i32 1, i32 3, i32 1) #14
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %target_blocked.i, ptr %target_blocked.i, i32 1, ptr elementtype(i32) %target_blocked.i) #14, !srcloc !225
  %asmresult.i.i.i.i69.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i69.i)
  %cmp20.i = icmp sgt i32 %asmresult.i.i.i.i69.i, 0
  br i1 %cmp20.i, label %if.end17.i.out_dec.i_crit_edge, label %do.body.i

if.end17.i.out_dec.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dec.i

do.body.i:                                        ; preds = %if.end17.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %31 = load i32, ptr @scsi_logging_level, align 4
  %32 = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp23.not.i = icmp eq i32 %32, 0
  br i1 %cmp23.not.i, label %do.body.i.if.end34.i_crit_edge, label %do.end.i, !prof !214

do.body.i.if.end34.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %13, ptr noundef nonnull @.str.30) #19
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end.i, %do.body.i.if.end34.i_crit_edge, %if.end10.i.if.end34.i_crit_edge
  %33 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %can_queue.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %34)
  %cmp36.not.i = icmp ult i32 %sub.i, %34
  br i1 %cmp36.not.i, label %if.end34.i.if.end53_crit_edge, label %if.end34.i.starved.i_crit_edge

if.end34.i.starved.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %starved.i

if.end34.i.if.end53_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

starved.i:                                        ; preds = %if.end34.i.starved.i_crit_edge, %if.then14.i.starved.i_crit_edge
  %host_lock39.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %35 = ptrtoint ptr %host_lock39.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host_lock39.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %36) #14
  %starved_entry.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 8
  %starved_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 2
  %call.i.i71.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %starved_entry.i) #14
  br i1 %call.i.i71.i, label %if.end.i.i.i, label %starved.i.__list_del_entry.exit.i.i_crit_edge

starved.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %starved.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %starved.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %starved_entry.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %starved_entry.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %starved.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %starved_entry.i, ptr noundef %44, ptr noundef %starved_list.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %starved_entry.i, ptr %prev.i2.i.i, align 4
  %46 = ptrtoint ptr %starved_entry.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %starved_list.i, ptr %starved_entry.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %starved_entry.i, ptr %44, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %49 = ptrtoint ptr %host_lock39.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %host_lock39.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %50) #14
  br label %out_dec.i

out_dec.i:                                        ; preds = %list_move_tail.exit.i, %if.end17.i.out_dec.i_crit_edge
  %51 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %can_queue.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp42.not.i = icmp eq i32 %52, 0
  br i1 %cmp42.not.i, label %out_dec.i.out_put_budget_crit_edge, label %if.then43.i

out_dec.i.out_put_budget_crit_edge:               ; preds = %out_dec.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_put_budget

if.then43.i:                                      ; preds = %out_dec.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i70.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %target_busy.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %target_busy.i, i32 1, i32 3, i32 1) #14
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %target_busy.i, ptr %target_busy.i, i32 1, ptr elementtype(i32) %target_busy.i) #14, !srcloc !216
  br label %out_put_budget

if.end53:                                         ; preds = %if.end34.i.if.end53_crit_edge, %if.end7.i.if.end53_crit_edge
  %shost_state.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 48
  %54 = ptrtoint ptr %shost_state.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %shost_state.i.i, align 4
  %.off.i.i = add i32 %55, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  br i1 %switch.i.i, label %if.end53.out_dec_target_busy_crit_edge, label %scsi_host_in_recovery.exit.i

if.end53.out_dec_target_busy_crit_edge:           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dec_target_busy

scsi_host_in_recovery.exit.i:                     ; preds = %if.end53
  %tmf_in_progress.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 36
  %56 = ptrtoint ptr %tmf_in_progress.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load.i.i = load i16, ptr %tmf_in_progress.i.i, align 8
  %57 = and i16 %bf.load.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i180 = icmp eq i16 %57, 0
  br i1 %tobool.not.i180, label %if.end.i182, label %scsi_host_in_recovery.exit.i.out_dec_target_busy_crit_edge

scsi_host_in_recovery.exit.i.out_dec_target_busy_crit_edge: ; preds = %scsi_host_in_recovery.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dec_target_busy

if.end.i182:                                      ; preds = %scsi_host_in_recovery.exit.i
  %host_blocked.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 14
  %call.i.i.i181 = tail call zeroext i1 @__kasan_check_read(ptr noundef %host_blocked.i, i32 noundef 4) #14
  %58 = ptrtoint ptr %host_blocked.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %host_blocked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i = icmp sgt i32 %59, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end.i182.if.end21.i_crit_edge

if.end.i182.if.end21.i_crit_edge:                 ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

if.then2.i:                                       ; preds = %if.end.i182
  %call3.i = tail call i32 @scsi_host_busy(ptr noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp sgt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then2.i.starved.i192_crit_edge, label %if.end6.i

if.then2.i.starved.i192_crit_edge:                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %starved.i192

if.end6.i:                                        ; preds = %if.then2.i
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %host_blocked.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !224
  tail call void @llvm.prefetch.p0(ptr %host_blocked.i, i32 1, i32 3, i32 1) #14
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %host_blocked.i, ptr %host_blocked.i, i32 1, ptr elementtype(i32) %host_blocked.i) #14, !srcloc !225
  %asmresult.i.i.i.i.i183 = extractvalue { i32, i32 } %60, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i183)
  %cmp9.i = icmp sgt i32 %asmresult.i.i.i.i.i183, 0
  br i1 %cmp9.i, label %if.end6.i.out_dec.i194_crit_edge, label %do.body.i184

if.end6.i.out_dec.i194_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dec.i194

do.body.i184:                                     ; preds = %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %61 = load i32, ptr @scsi_logging_level, align 4
  %62 = and i32 %61, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp12.not.i = icmp eq i32 %62, 0
  br i1 %cmp12.not.i, label %do.body.i184.if.end21.i_crit_edge, label %do.end.i185, !prof !214

do.body.i184.if.end21.i_crit_edge:                ; preds = %do.body.i184
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

do.end.i185:                                      ; preds = %do.body.i184
  call void @__sanitizer_cov_trace_pc() #16
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.33) #19
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i185, %do.body.i184.if.end21.i_crit_edge, %if.end.i182.if.end21.i_crit_edge
  %63 = ptrtoint ptr %tmf_in_progress.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load.i186 = load i16, ptr %tmf_in_progress.i.i, align 8
  %64 = and i16 %bf.load.i186, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool22.not.i = icmp eq i16 %64, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end21.i.starved.i192_crit_edge

if.end21.i.starved.i192_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %starved.i192

if.end24.i:                                       ; preds = %if.end21.i
  %starved_entry.i187 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 8
  %65 = ptrtoint ptr %starved_entry.i187 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %starved_entry.i187, align 4
  %cmp.i.not.i = icmp eq ptr %66, %starved_entry.i187
  br i1 %cmp.i.not.i, label %if.end24.i.if.end57_crit_edge, label %if.then27.i

if.end24.i.if.end57_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.then27.i:                                      ; preds = %if.end24.i
  %host_lock.i188 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %67 = ptrtoint ptr %host_lock.i188 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %host_lock.i188, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %68) #14
  %69 = ptrtoint ptr %starved_entry.i187 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %starved_entry.i187, align 4
  %cmp.i2.not.i = icmp eq ptr %70, %starved_entry.i187
  br i1 %cmp.i2.not.i, label %if.then27.i.if.end33.i_crit_edge, label %if.then31.i

if.then27.i.if.end33.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i

if.then31.i:                                      ; preds = %if.then27.i
  %call.i.i4.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %starved_entry.i187) #14
  br i1 %call.i.i4.i, label %if.end.i.i.i191, label %if.then31.i.list_del_init.exit.i_crit_edge

if.then31.i.list_del_init.exit.i_crit_edge:       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i

if.end.i.i.i191:                                  ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i189 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 8, i32 1
  %71 = ptrtoint ptr %prev.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i189, align 4
  %73 = ptrtoint ptr %starved_entry.i187 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %starved_entry.i187, align 4
  %prev1.i.i.i.i190 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i190 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i.i190, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i191, %if.then31.i.list_del_init.exit.i_crit_edge
  %77 = ptrtoint ptr %starved_entry.i187 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %starved_entry.i187, ptr %starved_entry.i187, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 8, i32 1
  %78 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %starved_entry.i187, ptr %prev.i3.i.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %list_del_init.exit.i, %if.then27.i.if.end33.i_crit_edge
  %79 = ptrtoint ptr %host_lock.i188 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %host_lock.i188, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %80) #14
  br label %if.end57

starved.i192:                                     ; preds = %if.end21.i.starved.i192_crit_edge, %if.then2.i.starved.i192_crit_edge
  %host_lock36.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %81 = ptrtoint ptr %host_lock36.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %host_lock36.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %82) #14
  %starved_entry37.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 8
  %83 = ptrtoint ptr %starved_entry37.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %starved_entry37.i, align 4
  %cmp.i5.not.i = icmp eq ptr %84, %starved_entry37.i
  br i1 %cmp.i5.not.i, label %if.then40.i, label %starved.i192.if.end42.i_crit_edge

starved.i192.if.end42.i_crit_edge:                ; preds = %starved.i192
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

if.then40.i:                                      ; preds = %starved.i192
  %starved_list.i193 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 2, i32 1
  %85 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i, align 4
  %call.i.i7.i = tail call zeroext i1 @__list_add_valid(ptr noundef %starved_entry37.i, ptr noundef %86, ptr noundef %starved_list.i193) #14
  br i1 %call.i.i7.i, label %if.end.i.i8.i, label %if.then40.i.if.end42.i_crit_edge

if.then40.i.if.end42.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

if.end.i.i8.i:                                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #16
  %87 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %starved_entry37.i, ptr %prev.i.i, align 4
  %88 = ptrtoint ptr %starved_entry37.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %starved_list.i193, ptr %starved_entry37.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 8, i32 1
  %89 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev3.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %starved_entry37.i, ptr %86, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end.i.i8.i, %if.then40.i.if.end42.i_crit_edge, %starved.i192.if.end42.i_crit_edge
  %91 = ptrtoint ptr %host_lock36.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %host_lock36.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %92) #14
  br label %out_dec.i194

out_dec.i194:                                     ; preds = %if.end42.i, %if.end6.i.out_dec.i194_crit_edge
  tail call fastcc void @scsi_dec_host_busy(ptr noundef %7, ptr noundef %add.ptr.i) #14
  br label %out_dec_target_busy

if.end57:                                         ; preds = %if.end33.i, %if.end24.i.if.end57_crit_edge
  %state.i = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i, i32 0, i32 26
  %93 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %state.i, align 4
  %or.i.i = or i32 %94, 2
  store i32 %or.i.i, ptr %state.i, align 4
  %rq_flags = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %95 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rq_flags, align 8
  %and = and i32 %96, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.end57
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 8
  %queuedata.i = getelementptr inbounds %struct.request_queue, ptr %98, i32 0, i32 10
  %99 = ptrtoint ptr %queuedata.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %queuedata.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 8
  tail call void @scsi_init_command(ptr noundef %100, ptr noundef %add.ptr.i) #14
  %prot_op.i = getelementptr %struct.request, ptr %1, i32 1, i32 32
  %103 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %prot_op.i, align 4
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %104 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %__data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i197 = icmp eq i32 %105, 0
  br i1 %tobool.not.i197, label %if.then59.if.end.i200_crit_edge, label %if.then.i198

if.then59.if.end.i200_crit_edge:                  ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i200

if.then.i198:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %106 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %cond.i = select i1 %tobool.i.not.i, i32 2, i32 1
  br label %if.end.i200

if.end.i200:                                      ; preds = %if.then.i198, %if.then59.if.end.i200_crit_edge
  %cond.sink.i = phi i32 [ %cond.i, %if.then.i198 ], [ 3, %if.then59.if.end.i200_crit_edge ]
  %108 = getelementptr %struct.request, ptr %1, i32 2
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %cond.sink.i, ptr %108, align 4
  %add.ptr.i199 = getelementptr %struct.request, ptr %1, i32 2, i32 19
  %hostt.i = getelementptr inbounds %struct.Scsi_Host, ptr %102, i32 0, i32 11
  %110 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hostt.i, align 8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 8
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i199, i32 %113
  %sdb.i = getelementptr %struct.request, ptr %1, i32 2, i32 2
  %114 = ptrtoint ptr %sdb.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %add.ptr4.i, ptr %sdb.i, align 4
  %prot_capabilities.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %102, i32 0, i32 41
  %115 = ptrtoint ptr %prot_capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %prot_capabilities.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool6.not.i = icmp eq i32 %116, 0
  br i1 %tobool6.not.i, label %if.end.i200.if.end13.i_crit_edge, label %if.then7.i

if.end.i200.if.end13.i_crit_edge:                 ; preds = %if.end.i200
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then7.i:                                       ; preds = %if.end.i200
  call void @__sanitizer_cov_trace_pc() #16
  %prot_sdb.i = getelementptr %struct.request, ptr %1, i32 2, i32 6
  %117 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prot_sdb.i, align 4
  %119 = call ptr @memset(ptr %118, i32 0, i32 16)
  %120 = load ptr, ptr %prot_sdb.i, align 4
  %add.ptr9.i = getelementptr %struct.scsi_data_buffer, ptr %120, i32 1
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %add.ptr9.i, ptr %120, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then7.i, %if.end.i200.if.end13.i_crit_edge
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %122 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %cmd_flags.i.i, align 4
  %124 = and i32 %123, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %124)
  %125 = icmp eq i32 %124, 34
  br i1 %125, label %if.then15.i, label %if.end17.i201

if.then15.i:                                      ; preds = %if.end13.i
  %bio.i.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 10
  %126 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bio.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %127, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then15.i
  %call1.i.i = tail call zeroext i8 @scsi_alloc_sgtables(ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1.i.i)
  %cmp.not.i.i = icmp eq i8 %call1.i.i, 0
  br i1 %cmp.not.i.i, label %if.then.i.i.scsi_prepare_cmd.exit.thread260_crit_edge, label %if.then.i.i.out_dec_host_busy_crit_edge

if.then.i.i.out_dec_host_busy_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dec_host_busy

if.then.i.i.scsi_prepare_cmd.exit.thread260_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_prepare_cmd.exit.thread260

do.body.i.i:                                      ; preds = %if.then15.i
  %128 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %__data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool7.not.i.i = icmp eq i32 %129, 0
  br i1 %tobool7.not.i.i, label %do.end21.i.i, label %do.body15.i.i, !prof !214

do.body15.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_lib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1223, 0\0A.popsection", ""() #14, !srcloc !257
  unreachable

do.end21.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %130 = call ptr @memset(ptr %sdb.i, i32 0, i32 16)
  br label %scsi_prepare_cmd.exit.thread260

scsi_prepare_cmd.exit.thread260:                  ; preds = %do.end21.i.i, %if.then.i.i.scsi_prepare_cmd.exit.thread260_crit_edge
  %cmd_len.i.i = getelementptr %struct.request, ptr %1, i32 1, i32 5
  %131 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %cmd_len.i.i, align 4
  %cmd_len24.i.i = getelementptr %struct.request, ptr %1, i32 1, i32 33
  %133 = ptrtoint ptr %cmd_len24.i.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %cmd_len24.i.i, align 4
  %cmd26.i.i = getelementptr %struct.request, ptr %1, i32 1, i32 4
  %134 = ptrtoint ptr %cmd26.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cmd26.i.i, align 4
  %cmnd.i.i = getelementptr %struct.request, ptr %1, i32 2, i32 1
  %136 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %135, ptr %cmnd.i.i, align 4
  %137 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %__data_len.i.i, align 8
  %transfersize.i.i = getelementptr %struct.request, ptr %1, i32 2, i32 8
  %139 = ptrtoint ptr %transfersize.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %transfersize.i.i, align 4
  %retries.i.i = getelementptr inbounds %struct.scsi_request, ptr %add.ptr.i, i32 0, i32 6
  %140 = ptrtoint ptr %retries.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %retries.i.i, align 4
  %allowed.i.i = getelementptr %struct.request, ptr %1, i32 1, i32 31, i32 1, i32 4
  %142 = ptrtoint ptr %allowed.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %allowed.i.i, align 4
  br label %if.end65

if.end17.i201:                                    ; preds = %if.end13.i
  %handler.i = getelementptr inbounds %struct.scsi_device, ptr %100, i32 0, i32 59
  %143 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %handler.i, align 8
  %tobool18.not.i = icmp eq ptr %144, null
  br i1 %tobool18.not.i, label %if.end17.i201.scsi_prepare_cmd.exit_crit_edge, label %land.lhs.true.i

if.end17.i201.scsi_prepare_cmd.exit_crit_edge:    ; preds = %if.end17.i201
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_prepare_cmd.exit

land.lhs.true.i:                                  ; preds = %if.end17.i201
  %prep_fn.i = getelementptr inbounds %struct.scsi_device_handler, ptr %144, i32 0, i32 7
  %145 = ptrtoint ptr %prep_fn.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prep_fn.i, align 4
  %tobool20.not.i = icmp eq ptr %146, null
  br i1 %tobool20.not.i, label %land.lhs.true.i.scsi_prepare_cmd.exit_crit_edge, label %if.then21.i

land.lhs.true.i.scsi_prepare_cmd.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_prepare_cmd.exit

if.then21.i:                                      ; preds = %land.lhs.true.i
  %call24.i = tail call zeroext i8 %146(ptr noundef %100, ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call24.i)
  %cmp.not.i202 = icmp eq i8 %call24.i, 0
  br i1 %cmp.not.i202, label %if.then21.i.scsi_prepare_cmd.exit_crit_edge, label %if.then21.i.out_dec_host_busy_crit_edge

if.then21.i.out_dec_host_busy_crit_edge:          ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dec_host_busy

if.then21.i.scsi_prepare_cmd.exit_crit_edge:      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_prepare_cmd.exit

scsi_prepare_cmd.exit:                            ; preds = %if.then21.i.scsi_prepare_cmd.exit_crit_edge, %land.lhs.true.i.scsi_prepare_cmd.exit_crit_edge, %if.end17.i201.scsi_prepare_cmd.exit_crit_edge
  %cmd31.i = getelementptr %struct.request, ptr %1, i32 1, i32 4
  %147 = ptrtoint ptr %cmd31.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %add.ptr.i, ptr %cmd31.i, align 4
  %cmnd.i = getelementptr %struct.request, ptr %1, i32 2, i32 1
  %148 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %add.ptr.i, ptr %cmnd.i, align 4
  %149 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 16)
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %1, align 8
  %disk.i.i = getelementptr inbounds %struct.request_queue, ptr %151, i32 0, i32 15
  %152 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %disk.i.i, align 8
  %private_data.i.i = getelementptr inbounds %struct.gendisk, ptr %153, i32 0, i32 10
  %154 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %private_data.i.i, align 8
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %init_command.i = getelementptr inbounds %struct.scsi_driver, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %init_command.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %init_command.i, align 4
  %call34.i = tail call zeroext i8 %159(ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call34.i)
  %cmp62.not = icmp eq i8 %call34.i, 0
  br i1 %cmp62.not, label %scsi_prepare_cmd.exit.if.end65_crit_edge, label %scsi_prepare_cmd.exit.out_dec_host_busy_crit_edge

scsi_prepare_cmd.exit.out_dec_host_busy_crit_edge: ; preds = %scsi_prepare_cmd.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dec_host_busy

scsi_prepare_cmd.exit.if.end65_crit_edge:         ; preds = %scsi_prepare_cmd.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.end65:                                         ; preds = %scsi_prepare_cmd.exit.if.end65_crit_edge, %scsi_prepare_cmd.exit.thread260
  %160 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %rq_flags, align 8
  %or = or i32 %161, 128
  store i32 %or, ptr %rq_flags, align 8
  br label %if.end67

if.else:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i) #14
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.end65
  %flags = getelementptr %struct.request, ptr %1, i32 2, i32 16
  %162 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %flags, align 4
  %and68 = and i32 %163, 2
  store i32 %and68, ptr %flags, align 4
  %simple_tags = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 41
  %164 = ptrtoint ptr %simple_tags to i32
  call void @__asan_loadN_noabort(i32 %164, i32 8)
  %bf.load = load i64, ptr %simple_tags, align 4
  %165 = and i64 %bf.load, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %165)
  %tobool69.not = icmp eq i64 %165, 0
  br i1 %tobool69.not, label %if.end67.if.end73_crit_edge, label %if.then70

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %or72 = or i32 %and68, 1
  %166 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %or72, ptr %flags, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end67.if.end73_crit_edge
  %last = getelementptr inbounds %struct.blk_mq_queue_data, ptr %bd, i32 0, i32 1
  %167 = ptrtoint ptr %last to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %last, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool74.not = icmp eq i8 %168, 0
  br i1 %tobool74.not, label %if.end73.if.end78_crit_edge, label %if.then75

if.end73.if.end78_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  %169 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %flags, align 4
  %or77 = or i32 %170, 4
  store i32 %or77, ptr %flags, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end73.if.end78_crit_edge
  %resid_len.i = getelementptr %struct.request, ptr %1, i32 1, i32 8
  %171 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %resid_len.i, align 4
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i, i32 0, i32 21
  %172 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %sense_buffer, align 4
  %174 = call ptr @memset(ptr %173, i32 0, i32 96)
  %submitter = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i, i32 0, i32 13
  %175 = ptrtoint ptr %submitter to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %submitter, align 1
  tail call void @blk_mq_start_request(ptr noundef %1) #14
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i, i32 0, i32 1
  %176 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %device.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 8
  %iorequest_cnt.i = getelementptr inbounds %struct.scsi_device, ptr %177, i32 0, i32 51
  %call.i.i.i203 = tail call zeroext i1 @__kasan_check_write(ptr noundef %iorequest_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %iorequest_cnt.i, i32 1, i32 3, i32 1) #14
  %180 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %iorequest_cnt.i, ptr %iorequest_cnt.i, i32 1, ptr elementtype(i32) %iorequest_cnt.i) #14, !srcloc !223
  %181 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %device.i, align 4
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %182, i32 0, i32 69
  %183 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %sdev_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %184)
  %cmp.i204 = icmp eq i32 %184, 4
  br i1 %cmp.i204, label %if.end78.done.i_crit_edge, label %if.end.i205, !prof !215

if.end78.done.i_crit_edge:                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %done.i

if.end.i205:                                      ; preds = %if.end78
  %185 = and i32 %184, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %185)
  %.not.i = icmp eq i32 %185, 8
  br i1 %.not.i, label %do.body.i206, label %if.end26.i, !prof !215

do.body.i206:                                     ; preds = %if.end.i205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %186 = load i32, ptr @scsi_logging_level, align 4
  %187 = and i32 %186, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp14.not.i = icmp eq i32 %187, 0
  br i1 %cmp14.not.i, label %do.body.i206.if.then81.thread_crit_edge, label %do.body22.i, !prof !214

do.body.i206.if.then81.thread_crit_edge:          ; preds = %do.body.i206
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then81.thread

do.body22.i:                                      ; preds = %do.body.i206
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.1, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.35) #14
  br label %if.then81.thread

if.end26.i:                                       ; preds = %if.end.i205
  %lun_in_cdb.i = getelementptr inbounds %struct.scsi_device, ptr %182, i32 0, i32 41
  %188 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %188, i32 8)
  %bf.load.i207 = load i64, ptr %lun_in_cdb.i, align 4
  %189 = and i64 %bf.load.i207, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %189)
  %tobool28.not.i = icmp eq i64 %189, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end37.i_crit_edge, label %if.then29.i

if.end26.i.if.end37.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  %cmnd.i208 = getelementptr %struct.request, ptr %1, i32 2, i32 1
  %190 = ptrtoint ptr %cmnd.i208 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %cmnd.i208, align 4
  %arrayidx.i = getelementptr i8, ptr %191, i32 1
  %192 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx.i, align 1
  %194 = and i8 %193, 31
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %182, i32 0, i32 18
  %195 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %lun.i, align 8
  %.tr.i = trunc i64 %196 to i8
  %197 = shl i8 %.tr.i, 5
  %conv34.i = or i8 %197, %194
  store i8 %conv34.i, ptr %arrayidx.i, align 1
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end37.i_crit_edge
  tail call void @scsi_log_send(ptr noundef %add.ptr.i) #14
  %cmd_len.i = getelementptr %struct.request, ptr %1, i32 1, i32 33
  %198 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %cmd_len.i, align 4
  %conv38.i = zext i16 %199 to i32
  %200 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %device.i, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 8
  %max_cmd_len.i = getelementptr inbounds %struct.Scsi_Host, ptr %203, i32 0, i32 24
  %204 = ptrtoint ptr %max_cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %max_cmd_len.i, align 4
  %conv41.i = zext i16 %205 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %199, i16 %205)
  %cmp42.i = icmp ugt i16 %199, %205
  br i1 %cmp42.i, label %do.body45.i, label %if.end70.i

do.body45.i:                                      ; preds = %if.end37.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %206 = load i32, ptr @scsi_logging_level, align 4
  %207 = and i32 %206, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp48.not.i = icmp eq i32 %207, 0
  br i1 %cmp48.not.i, label %do.body45.i.done.i_crit_edge, label %do.body57.i, !prof !214

do.body45.i.done.i_crit_edge:                     ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %done.i

do.body57.i:                                      ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.1, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.36, i32 noundef %conv38.i, i32 noundef %conv41.i) #14
  br label %done.i

if.end70.i:                                       ; preds = %if.end37.i
  %shost_state.i = getelementptr inbounds %struct.Scsi_Host, ptr %179, i32 0, i32 48
  %208 = ptrtoint ptr %shost_state.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %shost_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %209)
  %cmp71.i = icmp eq i32 %209, 4
  br i1 %cmp71.i, label %if.end70.i.done.i_crit_edge, label %if.end81.i, !prof !215

if.end70.i.done.i_crit_edge:                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %done.i

if.end81.i:                                       ; preds = %if.end70.i
  tail call fastcc void @trace_scsi_dispatch_cmd_start(ptr noundef %add.ptr.i) #14
  %hostt.i209 = getelementptr inbounds %struct.Scsi_Host, ptr %179, i32 0, i32 11
  %210 = ptrtoint ptr %hostt.i209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %hostt.i209, align 8
  %queuecommand.i = getelementptr inbounds %struct.scsi_host_template, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %queuecommand.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %queuecommand.i, align 4
  %call82.i = tail call i32 %213(ptr noundef %179, ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %if.end81.i.cleanup_crit_edge, label %if.then84.i

if.end81.i.cleanup_crit_edge:                     ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then84.i:                                      ; preds = %if.end81.i
  tail call fastcc void @trace_scsi_dispatch_cmd_error(ptr noundef %add.ptr.i, i32 noundef %call82.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4182, i32 %call82.i)
  %cmp85.not.i = icmp eq i32 %call82.i, 4182
  call void @__sanitizer_cov_trace_const_cmp4(i32 4184, i32 %call82.i)
  %cmp87.not.i = icmp eq i32 %call82.i, 4184
  %spec.store.select.i = select i1 %cmp87.not.i, i32 4184, i32 4181
  %rtn.0.i = select i1 %cmp85.not.i, i32 4182, i32 %spec.store.select.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %214 = load i32, ptr @scsi_logging_level, align 4
  %215 = and i32 %214, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp94.not.i = icmp eq i32 %215, 0
  br i1 %cmp94.not.i, label %if.then84.i.if.then81_crit_edge, label %do.body103.i, !prof !214

if.then84.i.if.then81_crit_edge:                  ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then81

do.body103.i:                                     ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.1, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.37) #14
  br label %if.then81

done.i:                                           ; preds = %if.end70.i.done.i_crit_edge, %do.body57.i, %do.body45.i.done.i_crit_edge, %if.end78.done.i_crit_edge
  %.sink.i = phi i32 [ 65536, %if.end78.done.i_crit_edge ], [ 327680, %do.body57.i ], [ 327680, %do.body45.i.done.i_crit_edge ], [ 65536, %if.end70.i.done.i_crit_edge ]
  %result80.i = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i, i32 0, i32 24
  %216 = ptrtoint ptr %result80.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %.sink.i, ptr %result80.i, align 4
  %217 = ptrtoint ptr %submitter to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %submitter, align 1
  %219 = zext i8 %218 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %218, label %sw.epilog.i.i [
    i8 2, label %done.i.cleanup_crit_edge
    i8 1, label %sw.bb.i.i
  ]

done.i.cleanup_crit_edge:                         ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb.i.i:                                        ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @scsi_eh_done(ptr noundef %add.ptr.i) #14
  br label %cleanup

sw.epilog.i.i:                                    ; preds = %done.i
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %1, align 8
  %queue_flags.i.i.i = getelementptr inbounds %struct.request_queue, ptr %221, i32 0, i32 11
  %222 = ptrtoint ptr %queue_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load volatile i32, ptr %queue_flags.i.i.i, align 4
  %224 = and i32 %223, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool.not.i.i.i = icmp eq i32 %224, 0
  br i1 %tobool.not.i.i.i, label %sw.epilog.i.i.if.end.i.i_crit_edge, label %blk_should_fake_timeout.exit.i.i

sw.epilog.i.i.if.end.i.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

blk_should_fake_timeout.exit.i.i:                 ; preds = %sw.epilog.i.i
  %call1.i.i.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %221) #14
  br i1 %call1.i.i.i, label %blk_should_fake_timeout.exit.i.i.cleanup_crit_edge, label %blk_should_fake_timeout.exit.i.i.if.end.i.i_crit_edge, !prof !215

blk_should_fake_timeout.exit.i.i.if.end.i.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

blk_should_fake_timeout.exit.i.i.cleanup_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %blk_should_fake_timeout.exit.i.i.if.end.i.i_crit_edge, %sw.epilog.i.i.if.end.i.i_crit_edge
  %call4.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end13.i.i, label %if.end.i.i.cleanup_crit_edge, !prof !214

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @trace_scsi_dispatch_cmd_done(ptr noundef %add.ptr.i) #14
  tail call void @blk_mq_complete_request(ptr noundef %1) #14
  br label %cleanup

if.then81.thread:                                 ; preds = %do.body22.i, %do.body.i206.if.then81.thread_crit_edge
  %225 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %device.i, align 4
  br label %sw.bb4.i

if.then81:                                        ; preds = %do.body103.i, %if.then84.i.if.then81_crit_edge
  %227 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %device.i, align 4
  %229 = zext i32 %rtn.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %229, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %rtn.0.i, label %if.then81.out_dec_host_busy_crit_edge [
    i32 4181, label %sw.bb.i
    i32 4182, label %if.then81.sw.bb4.i_crit_edge
    i32 4183, label %if.then81.sw.bb4.i_crit_edge266
    i32 4184, label %sw.bb5.i
  ]

if.then81.sw.bb4.i_crit_edge266:                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4.i

if.then81.sw.bb4.i_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4.i

if.then81.out_dec_host_busy_crit_edge:            ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dec_host_busy

sw.bb.i:                                          ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #16
  %230 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %228, align 8
  %host_blocked.i212 = getelementptr inbounds %struct.Scsi_Host, ptr %231, i32 0, i32 14
  %max_host_blocked.i = getelementptr inbounds %struct.Scsi_Host, ptr %231, i32 0, i32 40
  %232 = ptrtoint ptr %max_host_blocked.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %max_host_blocked.i, align 8
  %call.i.i.i213 = tail call zeroext i1 @__kasan_check_write(ptr noundef %host_blocked.i212, i32 noundef 4) #14
  %234 = ptrtoint ptr %host_blocked.i212 to i32
  call void @__asan_store4_noabort(i32 %234)
  store volatile i32 %233, ptr %host_blocked.i212, align 4
  br label %out_dec_host_busy

sw.bb4.i:                                         ; preds = %if.then81.sw.bb4.i_crit_edge, %if.then81.sw.bb4.i_crit_edge266, %if.then81.thread
  %235 = phi ptr [ %226, %if.then81.thread ], [ %228, %if.then81.sw.bb4.i_crit_edge ], [ %228, %if.then81.sw.bb4.i_crit_edge266 ]
  %device_blocked.i = getelementptr inbounds %struct.scsi_device, ptr %235, i32 0, i32 5
  %max_device_blocked.i = getelementptr inbounds %struct.scsi_device, ptr %235, i32 0, i32 50
  %236 = ptrtoint ptr %max_device_blocked.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %max_device_blocked.i, align 4
  %call.i.i11.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %device_blocked.i, i32 noundef 4) #14
  %238 = ptrtoint ptr %device_blocked.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store volatile i32 %237, ptr %device_blocked.i, align 4
  br label %out_dec_host_busy

sw.bb5.i:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #16
  %parent.i.i214 = getelementptr inbounds %struct.scsi_device, ptr %228, i32 0, i32 55, i32 1
  %239 = ptrtoint ptr %parent.i.i214 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %parent.i.i214, align 8
  %target_blocked.i215 = getelementptr i8, ptr %240, i32 948
  %max_target_blocked.i = getelementptr i8, ptr %240, i32 956
  %241 = ptrtoint ptr %max_target_blocked.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %max_target_blocked.i, align 4
  %call.i.i12.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %target_blocked.i215, i32 noundef 4) #14
  %243 = ptrtoint ptr %target_blocked.i215 to i32
  call void @__asan_store4_noabort(i32 %243)
  store volatile i32 %242, ptr %target_blocked.i215, align 4
  br label %out_dec_host_busy

out_dec_host_busy:                                ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb.i, %if.then81.out_dec_host_busy_crit_edge, %scsi_prepare_cmd.exit.out_dec_host_busy_crit_edge, %if.then21.i.out_dec_host_busy_crit_edge, %if.then.i.i.out_dec_host_busy_crit_edge
  %ret.0 = phi i8 [ %call34.i, %scsi_prepare_cmd.exit.out_dec_host_busy_crit_edge ], [ 9, %if.then81.out_dec_host_busy_crit_edge ], [ 9, %sw.bb.i ], [ 9, %sw.bb4.i ], [ 9, %sw.bb5.i ], [ %call1.i.i, %if.then.i.i.out_dec_host_busy_crit_edge ], [ %call24.i, %if.then21.i.out_dec_host_busy_crit_edge ]
  tail call fastcc void @scsi_dec_host_busy(ptr noundef %7, ptr noundef %add.ptr.i)
  br label %out_dec_target_busy

out_dec_target_busy:                              ; preds = %out_dec_host_busy, %out_dec.i194, %scsi_host_in_recovery.exit.i.out_dec_target_busy_crit_edge, %if.end53.out_dec_target_busy_crit_edge
  %ret.1 = phi i8 [ %ret.0, %out_dec_host_busy ], [ 9, %out_dec.i194 ], [ 9, %scsi_host_in_recovery.exit.i.out_dec_target_busy_crit_edge ], [ 9, %if.end53.out_dec_target_busy_crit_edge ]
  %244 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %parent.i.i, align 8
  %can_queue = getelementptr i8, ptr %245, i32 952
  %246 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %can_queue, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %cmp84.not = icmp eq i32 %247, 0
  br i1 %cmp84.not, label %out_dec_target_busy.out_put_budget_crit_edge, label %if.then86

out_dec_target_busy.out_put_budget_crit_edge:     ; preds = %out_dec_target_busy
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_put_budget

if.then86:                                        ; preds = %out_dec_target_busy
  call void @__sanitizer_cov_trace_pc() #16
  %target_busy = getelementptr i8, ptr %245, i32 944
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %target_busy, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %target_busy, i32 1, i32 3, i32 1) #14
  %248 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %target_busy, ptr %target_busy, i32 1, ptr elementtype(i32) %target_busy) #14, !srcloc !216
  br label %out_put_budget

out_put_budget:                                   ; preds = %if.then86, %out_dec_target_busy.out_put_budget_crit_edge, %if.then43.i, %out_dec.i.out_put_budget_crit_edge, %if.then3.i, %if.then43.out_put_budget_crit_edge
  %ret.2 = phi i8 [ %call44, %if.then43.out_put_budget_crit_edge ], [ %ret.1, %if.then86 ], [ %ret.1, %out_dec_target_busy.out_put_budget_crit_edge ], [ 9, %if.then3.i ], [ 9, %if.then43.i ], [ 9, %out_dec.i.out_put_budget_crit_edge ]
  %249 = ptrtoint ptr %budget_token to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %budget_token, align 4
  %251 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %queuedata, align 4
  %budget_map.i = getelementptr inbounds %struct.scsi_device, ptr %252, i32 0, i32 4
  %map.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %252, i32 0, i32 4, i32 4
  %253 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %map.i.i.i, align 4
  %shift.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %252, i32 0, i32 4, i32 1
  %255 = ptrtoint ptr %shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %shift.i.i.i, align 4
  %shr.i.i.i = lshr i32 %250, %256
  %cleared.i.i.i = getelementptr %struct.sbitmap_word, ptr %254, i32 %shr.i.i.i, i32 4
  %notmask.i.i.i = shl nsw i32 -1, %256
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i.i.i = and i32 %250, %sub.i.i.i
  tail call void @_set_bit(i32 noundef %and.i.i.i, ptr noundef %cleared.i.i.i) #14
  %alloc_hint.i.i = getelementptr inbounds %struct.scsi_device, ptr %252, i32 0, i32 4, i32 5
  %257 = ptrtoint ptr %alloc_hint.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %alloc_hint.i.i, align 4
  %tobool.not.i.i220 = icmp eq ptr %258, null
  br i1 %tobool.not.i.i220, label %out_put_budget.scsi_mq_put_budget.exit_crit_edge, label %land.lhs.true.i.i, !prof !215

out_put_budget.scsi_mq_put_budget.exit_crit_edge: ; preds = %out_put_budget
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_mq_put_budget.exit

land.lhs.true.i.i:                                ; preds = %out_put_budget
  %round_robin.i.i = getelementptr inbounds %struct.scsi_device, ptr %252, i32 0, i32 4, i32 3
  %259 = ptrtoint ptr %round_robin.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %round_robin.i.i, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool1.not.i.i = icmp eq i8 %260, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.scsi_mq_put_budget.exit_crit_edge, !prof !214

land.lhs.true.i.i.scsi_mq_put_budget.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_mq_put_budget.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %261 = ptrtoint ptr %budget_map.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %budget_map.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %262, i32 %250)
  %cmp.i.i = icmp ugt i32 %262, %250
  br i1 %cmp.i.i, label %if.then.i.i221, label %land.rhs.i.i.scsi_mq_put_budget.exit_crit_edge, !prof !214

land.rhs.i.i.scsi_mq_put_budget.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_mq_put_budget.exit

if.then.i.i221:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %263 = ptrtoint ptr %258 to i32
  %264 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i13.i.i = and i32 %264, -16384
  %265 = inttoptr i32 %and.i13.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %265, i32 0, i32 3
  %266 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %267
  %268 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %269, %263
  %270 = inttoptr i32 %add.i.i to ptr
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %250, ptr %270, align 4
  br label %scsi_mq_put_budget.exit

scsi_mq_put_budget.exit:                          ; preds = %if.then.i.i221, %land.rhs.i.i.scsi_mq_put_budget.exit_crit_edge, %land.lhs.true.i.i.scsi_mq_put_budget.exit_crit_edge, %out_put_budget.scsi_mq_put_budget.exit_crit_edge
  %272 = ptrtoint ptr %budget_token to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 -1, ptr %budget_token, align 4
  %273 = zext i8 %ret.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %273, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %ret.2, label %sw.default [
    i8 12, label %sw.bb96
    i8 9, label %scsi_mq_put_budget.exit.sw.bb_crit_edge
    i8 14, label %scsi_mq_put_budget.exit.sw.bb_crit_edge267
  ]

scsi_mq_put_budget.exit.sw.bb_crit_edge267:       ; preds = %scsi_mq_put_budget.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

scsi_mq_put_budget.exit.sw.bb_crit_edge:          ; preds = %scsi_mq_put_budget.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.bb:                                            ; preds = %scsi_mq_put_budget.exit.sw.bb_crit_edge, %scsi_mq_put_budget.exit.sw.bb_crit_edge267
  %274 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %sdev_state, align 4
  %276 = and i32 %275, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %276)
  %.not = icmp eq i32 %276, 8
  %spec.select = select i1 %.not, i8 13, i8 %ret.2
  br label %cleanup

sw.bb96:                                          ; preds = %scsi_mq_put_budget.exit
  %result = getelementptr %struct.request, ptr %1, i32 1, i32 6
  %277 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 131072, ptr %result, align 4
  %rq_flags98 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %278 = ptrtoint ptr %rq_flags98 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %rq_flags98, align 8
  %and99 = and i32 %279, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %sw.bb96.cleanup_crit_edge, label %if.then101

sw.bb96.cleanup_crit_edge:                        ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then101:                                       ; preds = %sw.bb96
  %nents.i.i = getelementptr %struct.request, ptr %1, i32 2, i32 3
  %280 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool.not.i.i224 = icmp eq i32 %281, 0
  br i1 %tobool.not.i.i224, label %if.then101.if.end.i.i227_crit_edge, label %if.then.i.i225

if.then101.if.end.i.i227_crit_edge:               ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i227

if.then.i.i225:                                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #16
  %sdb.i.i = getelementptr %struct.request, ptr %1, i32 2, i32 2
  tail call void @sg_free_table_chained(ptr noundef %sdb.i.i, i32 noundef 2) #14
  br label %if.end.i.i227

if.end.i.i227:                                    ; preds = %if.then.i.i225, %if.then101.if.end.i.i227_crit_edge
  %prot_sdb.i.i.i = getelementptr %struct.request, ptr %1, i32 2, i32 6
  %282 = ptrtoint ptr %prot_sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %prot_sdb.i.i.i, align 4
  %tobool.not.i.i.i226 = icmp eq ptr %283, null
  br i1 %tobool.not.i.i.i226, label %if.end.i.i227.scsi_free_sgtables.exit.i_crit_edge, label %scsi_prot_sg_count.exit.i.i

if.end.i.i227.scsi_free_sgtables.exit.i_crit_edge: ; preds = %if.end.i.i227
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_free_sgtables.exit.i

scsi_prot_sg_count.exit.i.i:                      ; preds = %if.end.i.i227
  %nents.i.i.i = getelementptr inbounds %struct.sg_table, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %nents.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %tobool3.not.i.i = icmp eq i32 %285, 0
  br i1 %tobool3.not.i.i, label %scsi_prot_sg_count.exit.i.i.scsi_free_sgtables.exit.i_crit_edge, label %if.then4.i.i

scsi_prot_sg_count.exit.i.i.scsi_free_sgtables.exit.i_crit_edge: ; preds = %scsi_prot_sg_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_free_sgtables.exit.i

if.then4.i.i:                                     ; preds = %scsi_prot_sg_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sg_free_table_chained(ptr noundef nonnull %283, i32 noundef 1) #14
  br label %scsi_free_sgtables.exit.i

scsi_free_sgtables.exit.i:                        ; preds = %if.then4.i.i, %scsi_prot_sg_count.exit.i.i.scsi_free_sgtables.exit.i_crit_edge, %if.end.i.i227.scsi_free_sgtables.exit.i_crit_edge
  %cmd_flags.i.i.i = getelementptr %struct.request, ptr %1, i32 0, i32 3
  %286 = ptrtoint ptr %cmd_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %cmd_flags.i.i.i, align 4
  %288 = and i32 %287, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %288)
  %289 = icmp eq i32 %288, 34
  br i1 %289, label %scsi_free_sgtables.exit.i.cleanup_crit_edge, label %if.then.i3.i

scsi_free_sgtables.exit.i.cleanup_crit_edge:      ; preds = %scsi_free_sgtables.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i3.i:                                     ; preds = %scsi_free_sgtables.exit.i
  %290 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %1, align 8
  %disk.i.i.i = getelementptr inbounds %struct.request_queue, ptr %291, i32 0, i32 15
  %292 = ptrtoint ptr %disk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %disk.i.i.i, align 8
  %private_data.i.i.i = getelementptr inbounds %struct.gendisk, ptr %293, i32 0, i32 10
  %294 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %private_data.i.i.i, align 8
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %295, align 4
  %uninit_command.i.i = getelementptr inbounds %struct.scsi_driver, ptr %297, i32 0, i32 3
  %298 = ptrtoint ptr %uninit_command.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %uninit_command.i.i, align 4
  %tobool.not.i2.i = icmp eq ptr %299, null
  br i1 %tobool.not.i2.i, label %if.then.i3.i.cleanup_crit_edge, label %if.then3.i.i

if.then.i3.i.cleanup_crit_edge:                   ; preds = %if.then.i3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3.i.i:                                     ; preds = %if.then.i3.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %299(ptr noundef %add.ptr.i) #14
  br label %cleanup

sw.default:                                       ; preds = %scsi_mq_put_budget.exit
  %300 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %sdev_state, align 4
  %switch.tableidx = add i32 %301, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %302 = icmp ult i32 %switch.tableidx, 4
  br i1 %302, label %switch.lookup, label %sw.default.if.end119_crit_edge

sw.default.if.end119_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

switch.lookup:                                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.scsi_queue_rq, i32 0, i32 %switch.tableidx
  %303 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %303)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end119

if.end119:                                        ; preds = %switch.lookup, %sw.default.if.end119_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 458752, %sw.default.if.end119_crit_edge ]
  %result118 = getelementptr %struct.request, ptr %1, i32 1, i32 6
  %304 = ptrtoint ptr %result118 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %.sink, ptr %result118, align 4
  %rq_flags120 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %305 = ptrtoint ptr %rq_flags120 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %rq_flags120, align 8
  %and121 = and i32 %306, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end119.if.end124_crit_edge, label %if.then123

if.end119.if.end124_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

if.then123:                                       ; preds = %if.end119
  %nents.i.i233 = getelementptr %struct.request, ptr %1, i32 2, i32 3
  %307 = ptrtoint ptr %nents.i.i233 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %nents.i.i233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %tobool.not.i.i234 = icmp eq i32 %308, 0
  br i1 %tobool.not.i.i234, label %if.then123.if.end.i.i239_crit_edge, label %if.then.i.i236

if.then123.if.end.i.i239_crit_edge:               ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i239

if.then.i.i236:                                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #16
  %sdb.i.i235 = getelementptr %struct.request, ptr %1, i32 2, i32 2
  tail call void @sg_free_table_chained(ptr noundef %sdb.i.i235, i32 noundef 2) #14
  br label %if.end.i.i239

if.end.i.i239:                                    ; preds = %if.then.i.i236, %if.then123.if.end.i.i239_crit_edge
  %prot_sdb.i.i.i237 = getelementptr %struct.request, ptr %1, i32 2, i32 6
  %309 = ptrtoint ptr %prot_sdb.i.i.i237 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %prot_sdb.i.i.i237, align 4
  %tobool.not.i.i.i238 = icmp eq ptr %310, null
  br i1 %tobool.not.i.i.i238, label %if.end.i.i239.scsi_free_sgtables.exit.i245_crit_edge, label %scsi_prot_sg_count.exit.i.i242

if.end.i.i239.scsi_free_sgtables.exit.i245_crit_edge: ; preds = %if.end.i.i239
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_free_sgtables.exit.i245

scsi_prot_sg_count.exit.i.i242:                   ; preds = %if.end.i.i239
  %nents.i.i.i240 = getelementptr inbounds %struct.sg_table, ptr %310, i32 0, i32 1
  %311 = ptrtoint ptr %nents.i.i.i240 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %nents.i.i.i240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %tobool3.not.i.i241 = icmp eq i32 %312, 0
  br i1 %tobool3.not.i.i241, label %scsi_prot_sg_count.exit.i.i242.scsi_free_sgtables.exit.i245_crit_edge, label %if.then4.i.i243

scsi_prot_sg_count.exit.i.i242.scsi_free_sgtables.exit.i245_crit_edge: ; preds = %scsi_prot_sg_count.exit.i.i242
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_free_sgtables.exit.i245

if.then4.i.i243:                                  ; preds = %scsi_prot_sg_count.exit.i.i242
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sg_free_table_chained(ptr noundef nonnull %310, i32 noundef 1) #14
  br label %scsi_free_sgtables.exit.i245

scsi_free_sgtables.exit.i245:                     ; preds = %if.then4.i.i243, %scsi_prot_sg_count.exit.i.i242.scsi_free_sgtables.exit.i245_crit_edge, %if.end.i.i239.scsi_free_sgtables.exit.i245_crit_edge
  %cmd_flags.i.i.i244 = getelementptr %struct.request, ptr %1, i32 0, i32 3
  %313 = ptrtoint ptr %cmd_flags.i.i.i244 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %cmd_flags.i.i.i244, align 4
  %315 = and i32 %314, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %315)
  %316 = icmp eq i32 %315, 34
  br i1 %316, label %scsi_free_sgtables.exit.i245.if.end124_crit_edge, label %if.then.i3.i251

scsi_free_sgtables.exit.i245.if.end124_crit_edge: ; preds = %scsi_free_sgtables.exit.i245
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

if.then.i3.i251:                                  ; preds = %scsi_free_sgtables.exit.i245
  %317 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %1, align 8
  %disk.i.i.i247 = getelementptr inbounds %struct.request_queue, ptr %318, i32 0, i32 15
  %319 = ptrtoint ptr %disk.i.i.i247 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %disk.i.i.i247, align 8
  %private_data.i.i.i248 = getelementptr inbounds %struct.gendisk, ptr %320, i32 0, i32 10
  %321 = ptrtoint ptr %private_data.i.i.i248 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %private_data.i.i.i248, align 8
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %322, align 4
  %uninit_command.i.i249 = getelementptr inbounds %struct.scsi_driver, ptr %324, i32 0, i32 3
  %325 = ptrtoint ptr %uninit_command.i.i249 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %uninit_command.i.i249, align 4
  %tobool.not.i2.i250 = icmp eq ptr %326, null
  br i1 %tobool.not.i2.i250, label %if.then.i3.i251.if.end124_crit_edge, label %if.then3.i.i252

if.then.i3.i251.if.end124_crit_edge:              ; preds = %if.then.i3.i251
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

if.then3.i.i252:                                  ; preds = %if.then.i3.i251
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %326(ptr noundef %add.ptr.i) #14
  br label %if.end124

if.end124:                                        ; preds = %if.then3.i.i252, %if.then.i3.i251.if.end124_crit_edge, %scsi_free_sgtables.exit.i245.if.end124_crit_edge, %if.end119.if.end124_crit_edge
  tail call fastcc void @scsi_run_queue_async(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %if.then3.i.i, %if.then.i3.i.cleanup_crit_edge, %scsi_free_sgtables.exit.i.cleanup_crit_edge, %sw.bb96.cleanup_crit_edge, %sw.bb, %if.end13.i.i, %if.end.i.i.cleanup_crit_edge, %blk_should_fake_timeout.exit.i.i.cleanup_crit_edge, %sw.bb.i.i, %done.i.cleanup_crit_edge, %if.end81.i.cleanup_crit_edge
  %retval.0 = phi i8 [ %ret.2, %if.end124 ], [ 12, %sw.bb96.cleanup_crit_edge ], [ %spec.select, %sw.bb ], [ 12, %scsi_free_sgtables.exit.i.cleanup_crit_edge ], [ 12, %if.then.i3.i.cleanup_crit_edge ], [ 12, %if.then3.i.i ], [ 0, %if.end81.i.cleanup_crit_edge ], [ 0, %done.i.cleanup_crit_edge ], [ 0, %sw.bb.i.i ], [ 0, %blk_should_fake_timeout.exit.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.end13.i.i ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scsi_commit_rqs(ptr nocapture noundef readonly %hctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 128
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostt, align 8
  %commit_rqs = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %commit_rqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %commit_rqs, align 8
  %queue_num = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 24
  %6 = ptrtoint ptr %queue_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_num, align 4
  %conv = trunc i32 %7 to i16
  tail call void %5(ptr noundef %1, i16 noundef zeroext %conv) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_mq_get_budget(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queuedata, align 4
  %budget_map.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @sbitmap_get(ptr noundef %budget_map.i) #14
  %device_blocked.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %device_blocked.i, i32 noundef 4) #14
  %2 = ptrtoint ptr %device_blocked.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %device_blocked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %scsi_dev_queue_ready.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i.if.end_crit_edge, label %if.end.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %if.then.i
  %call.i.i19 = tail call i32 @sbitmap_weight(ptr noundef %budget_map.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i19)
  %cmp4.i = icmp sgt i32 %call.i.i19, 1
  br i1 %cmp4.i, label %if.end.i.if.then22.i_crit_edge, label %if.end6.i

if.end.i.if.then22.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22.i

if.end6.i:                                        ; preds = %if.end.i
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %device_blocked.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !224
  tail call void @llvm.prefetch.p0(ptr %device_blocked.i, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %device_blocked.i, ptr %device_blocked.i, i32 1, ptr elementtype(i32) %device_blocked.i) #14, !srcloc !225
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp9.i = icmp sgt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp9.i, label %if.end6.i.if.then22.i_crit_edge, label %do.body.i

if.end6.i.if.then22.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22.i

do.body.i:                                        ; preds = %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %5 = load i32, ptr @scsi_logging_level, align 4
  %6 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp12.not.i = icmp eq i32 %6, 0
  br i1 %cmp12.not.i, label %do.body.i.cleanup_crit_edge, label %do.body16.i, !prof !214

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.38) #14
  br label %cleanup

if.then22.i:                                      ; preds = %if.end6.i.if.then22.i_crit_edge, %if.end.i.if.then22.i_crit_edge
  %map.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i.i.i, align 4
  %shift.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift.i.i.i, align 4
  %shr.i.i.i = lshr i32 %call.i, %10
  %cleared.i.i.i = getelementptr %struct.sbitmap_word, ptr %8, i32 %shr.i.i.i, i32 4
  %notmask.i.i.i = shl nsw i32 -1, %10
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i.i.i = and i32 %call.i, %sub.i.i.i
  tail call void @_set_bit(i32 noundef %and.i.i.i, ptr noundef %cleared.i.i.i) #14
  %alloc_hint.i.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 4, i32 5
  %11 = ptrtoint ptr %alloc_hint.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %alloc_hint.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.then22.i.if.end_crit_edge, label %land.lhs.true.i.i, !prof !215

if.then22.i.if.end_crit_edge:                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i.i:                                ; preds = %if.then22.i
  %round_robin.i.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %round_robin.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %round_robin.i.i, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.if.end_crit_edge, !prof !214

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %15 = ptrtoint ptr %budget_map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %budget_map.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %call.i)
  %cmp.i.i = icmp ugt i32 %16, %call.i
  br i1 %cmp.i.i, label %if.then.i.i, label %land.rhs.i.i.if.end_crit_edge, !prof !214

land.rhs.i.i.if.end_crit_edge:                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %12 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i13.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i13.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %23, %17
  %24 = inttoptr i32 %add.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i, ptr %24, align 4
  br label %if.end

scsi_dev_queue_ready.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  br i1 %cmp, label %scsi_dev_queue_ready.exit.cleanup_crit_edge, label %scsi_dev_queue_ready.exit.if.end_crit_edge

scsi_dev_queue_ready.exit.if.end_crit_edge:       ; preds = %scsi_dev_queue_ready.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

scsi_dev_queue_ready.exit.cleanup_crit_edge:      ; preds = %scsi_dev_queue_ready.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %scsi_dev_queue_ready.exit.if.end_crit_edge, %if.then.i.i, %land.rhs.i.i.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge, %if.then22.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %restarts = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %restarts, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %restarts, i32 1, i32 3, i32 1) #14
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %restarts, ptr %restarts, i32 1, ptr elementtype(i32) %restarts) #14, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !258
  %call.i21 = tail call i32 @sbitmap_weight(ptr noundef %budget_map.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp5 = icmp eq i32 %call.i21, 0
  br i1 %cmp5, label %land.rhs, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs:                                         ; preds = %if.end
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 69
  %27 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sdev_state.i, align 4
  %29 = and i32 %28, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %.not = icmp eq i32 %29, 8
  br i1 %.not, label %land.rhs.cleanup_crit_edge, label %if.then10, !prof !214

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %request_queue, align 4
  tail call void @blk_mq_delay_run_hw_queues(ptr noundef %31, i32 noundef 3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %land.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %scsi_dev_queue_ready.exit.cleanup_crit_edge, %do.body16.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %scsi_dev_queue_ready.exit.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.then10 ], [ -1, %land.rhs.cleanup_crit_edge ], [ %call.i, %do.body.i.cleanup_crit_edge ], [ %call.i, %do.body16.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scsi_mq_put_budget(ptr nocapture noundef readonly %q, i32 noundef %budget_token) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queuedata, align 4
  %budget_map = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 4
  %map.i.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map.i.i, align 4
  %shift.i.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shift.i.i, align 4
  %shr.i.i = lshr i32 %budget_token, %5
  %cleared.i.i = getelementptr %struct.sbitmap_word, ptr %3, i32 %shr.i.i, i32 4
  %notmask.i.i = shl nsw i32 -1, %5
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and.i.i = and i32 %sub.i.i, %budget_token
  tail call void @_set_bit(i32 noundef %and.i.i, ptr noundef %cleared.i.i) #14
  %alloc_hint.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 4, i32 5
  %6 = ptrtoint ptr %alloc_hint.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alloc_hint.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.sbitmap_put.exit_crit_edge, label %land.lhs.true.i, !prof !215

entry.sbitmap_put.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sbitmap_put.exit

land.lhs.true.i:                                  ; preds = %entry
  %round_robin.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %round_robin.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %round_robin.i, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.sbitmap_put.exit_crit_edge, !prof !214

land.lhs.true.i.sbitmap_put.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sbitmap_put.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %10 = ptrtoint ptr %budget_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %budget_map, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %budget_token)
  %cmp.i = icmp ugt i32 %11, %budget_token
  br i1 %cmp.i, label %if.then.i, label %land.rhs.i.sbitmap_put.exit_crit_edge, !prof !214

land.rhs.i.sbitmap_put.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sbitmap_put.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %7 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i13.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i13.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %18, %12
  %19 = inttoptr i32 %add.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %budget_token, ptr %19, align 4
  br label %sbitmap_put.exit

sbitmap_put.exit:                                 ; preds = %if.then.i, %land.rhs.i.sbitmap_put.exit_crit_edge, %land.lhs.true.i.sbitmap_put.exit_crit_edge, %entry.sbitmap_put.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @scsi_mq_set_rq_budget_token(ptr nocapture noundef writeonly %req, i32 noundef %token) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %budget_token = getelementptr %struct.request, ptr %req, i32 1, i32 31
  %0 = ptrtoint ptr %budget_token to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %token, ptr %budget_token, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scsi_mq_get_rq_budget_token(ptr nocapture noundef readonly %req) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %budget_token = getelementptr %struct.request, ptr %req, i32 1, i32 31
  %0 = ptrtoint ptr %budget_token to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %budget_token, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_timeout(ptr noundef %req, i1 noundef zeroext %reserved) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %reserved, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @scsi_times_out(ptr noundef %req) #14
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_mq_poll(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readnone %iob) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 128
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostt, align 8
  %mq_poll = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %mq_poll to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mq_poll, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %queue_num = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 24
  %6 = ptrtoint ptr %queue_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_num, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %7) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scsi_complete(ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %eh_entry = getelementptr %struct.request, ptr %rq, i32 1, i32 10
  %0 = ptrtoint ptr %eh_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %eh_entry, ptr %eh_entry, align 4
  %prev.i = getelementptr %struct.request, ptr %rq, i32 1, i32 11
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %eh_entry, ptr %prev.i, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %iodone_cnt = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 52
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %iodone_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %iodone_cnt, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %iodone_cnt, ptr %iodone_cnt, i32 1, ptr elementtype(i32) %iodone_cnt) #14, !srcloc !223
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i, i32 0, i32 24
  %5 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %ioerr_cnt = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 53
  %call.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ioerr_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %ioerr_cnt, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ioerr_cnt, ptr %ioerr_cnt, i32 1, ptr elementtype(i32) %ioerr_cnt) #14, !srcloc !223
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @scsi_decide_disposition(ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 8194
  br i1 %cmp.not, label %if.end.if.end5.thread_crit_edge, label %land.lhs.true

if.end.if.end5.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.thread

land.lhs.true:                                    ; preds = %if.end
  %allowed.i = getelementptr %struct.request, ptr %rq, i32 1, i32 31, i32 1, i32 4
  %10 = ptrtoint ptr %allowed.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %allowed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i = icmp eq i32 %11, -1
  br i1 %cmp.i, label %land.lhs.true.if.end5_crit_edge, label %if.end.i

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end.i:                                         ; preds = %land.lhs.true
  %add.i = add nuw i32 %11, 1
  %timeout.i = getelementptr %struct.request, ptr %rq, i32 0, i32 7
  %12 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeout.i, align 4
  %mul.i = mul i32 %13, %add.i
  %jiffies_at_alloc.i = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i, i32 0, i32 7
  %14 = ptrtoint ptr %jiffies_at_alloc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %jiffies_at_alloc.i, align 4
  %add2.i = add i32 %15, %mul.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add2.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %17, label %if.end.i.if.end5_crit_edge

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

17:                                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %div.i = udiv i32 %mul.i, 100
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.9, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.25, i32 noundef %div.i) #14
  br label %if.end5.thread

if.end5.thread:                                   ; preds = %17, %if.end.if.end5.thread_crit_edge
  tail call void @scsi_log_completion(ptr noundef %add.ptr.i, i32 noundef 8194) #14
  tail call void @scsi_finish_command(ptr noundef %add.ptr.i) #14
  br label %sw.epilog

if.end5:                                          ; preds = %if.end.i.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge
  tail call void @scsi_log_completion(ptr noundef %add.ptr.i, i32 noundef %call2) #14
  %18 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call2, label %sw.default [
    i32 8198, label %sw.bb7
    i32 8193, label %sw.bb6
  ]

sw.bb6:                                           ; preds = %if.end5
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %21 = load i32, ptr @scsi_logging_level, align 4
  %22 = and i32 %21, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 0
  br i1 %cmp.not.i, label %sw.bb6.__scsi_queue_insert.exit_crit_edge, label %do.body3.i, !prof !214

sw.bb6.__scsi_queue_insert.exit_crit_edge:        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %__scsi_queue_insert.exit

do.body3.i:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.1, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.23, ptr noundef %add.ptr.i) #14
  br label %__scsi_queue_insert.exit

__scsi_queue_insert.exit:                         ; preds = %do.body3.i, %sw.bb6.__scsi_queue_insert.exit_crit_edge
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device, align 4
  %device_blocked.i.i = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 5
  %max_device_blocked.i.i = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 50
  %25 = ptrtoint ptr %max_device_blocked.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_device_blocked.i.i, align 4
  %call.i.i11.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %device_blocked.i.i, i32 noundef 4) #14
  %27 = ptrtoint ptr %device_blocked.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %26, ptr %device_blocked.i.i, align 4
  tail call void @scsi_device_unbusy(ptr noundef %20, ptr noundef %add.ptr.i) #14
  %28 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %result, align 4
  tail call void @blk_mq_requeue_request(ptr noundef %rq, i1 noundef zeroext true) #14
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end5
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %31 = load i32, ptr @scsi_logging_level, align 4
  %32 = and i32 %31, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.not.i22 = icmp eq i32 %32, 0
  br i1 %cmp.not.i22, label %sw.bb7.__scsi_queue_insert.exit29_crit_edge, label %do.body3.i23, !prof !214

sw.bb7.__scsi_queue_insert.exit29_crit_edge:      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  br label %__scsi_queue_insert.exit29

do.body3.i23:                                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.1, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.23, ptr noundef %add.ptr.i) #14
  br label %__scsi_queue_insert.exit29

__scsi_queue_insert.exit29:                       ; preds = %do.body3.i23, %sw.bb7.__scsi_queue_insert.exit29_crit_edge
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 4
  %device_blocked.i.i24 = getelementptr inbounds %struct.scsi_device, ptr %34, i32 0, i32 5
  %max_device_blocked.i.i25 = getelementptr inbounds %struct.scsi_device, ptr %34, i32 0, i32 50
  %35 = ptrtoint ptr %max_device_blocked.i.i25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_device_blocked.i.i25, align 4
  %call.i.i11.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %device_blocked.i.i24, i32 noundef 4) #14
  %37 = ptrtoint ptr %device_blocked.i.i24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %36, ptr %device_blocked.i.i24, align 4
  tail call void @scsi_device_unbusy(ptr noundef %30, ptr noundef %add.ptr.i) #14
  %38 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %result, align 4
  tail call void @blk_mq_requeue_request(ptr noundef %rq, i1 noundef zeroext true) #14
  br label %sw.epilog

sw.default:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @scsi_eh_scmd_add(ptr noundef %add.ptr.i) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %__scsi_queue_insert.exit29, %__scsi_queue_insert.exit, %if.end5.thread
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @scsi_init_hctx(ptr nocapture noundef writeonly %hctx, ptr noundef %data, i32 noundef %hctx_idx) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %driver_data, align 128
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_mq_init_request(ptr nocapture noundef readonly %set, ptr noundef %rq, i32 noundef %hctx_idx, i32 noundef %numa_node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %2 = load ptr, ptr @scsi_sense_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #14
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i, i32 0, i32 21
  %3 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %sense_buffer, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sense = getelementptr %struct.request, ptr %rq, i32 1, i32 9
  %4 = ptrtoint ptr %sense to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %sense, align 4
  %prot_capabilities.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 41
  %5 = ptrtoint ptr %prot_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prot_capabilities.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr %struct.request, ptr %rq, i32 2, i32 19
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hostt, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %10
  %sg_tablesize.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 28
  %11 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sg_tablesize.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %cmp.i = icmp ult i16 %12, 2
  %conv.i = zext i16 %12 to i32
  %phi.bo.i = mul nuw nsw i32 %conv.i, 20
  %cond.i = select i1 %cmp.i, i32 %phi.bo.i, i32 40
  %add.ptr9 = getelementptr i8, ptr %add.ptr7, i32 %cond.i
  %prot_sdb = getelementptr %struct.request, ptr %rq, i32 2, i32 6
  %13 = ptrtoint ptr %prot_sdb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr9, ptr %prot_sdb, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %hostt11 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %hostt11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hostt11, align 8
  %init_cmd_priv = getelementptr inbounds %struct.scsi_host_template, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %init_cmd_priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_cmd_priv, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  %call16 = tail call i32 %17(ptr noundef %1, ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.then17, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %18 = load ptr, ptr @scsi_sense_cache, align 4
  %19 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sense_buffer, align 4
  tail call void @kmem_cache_free(ptr noundef %18, ptr noundef %20) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.then13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call16, %if.then17 ], [ %call16, %if.then13.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scsi_mq_exit_request(ptr nocapture noundef readonly %set, ptr noundef %rq, i32 noundef %hctx_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostt, align 8
  %exit_cmd_priv = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %exit_cmd_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exit_cmd_priv, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 %5(ptr noundef %1, ptr noundef %add.ptr.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = load ptr, ptr @scsi_sense_cache, align 4
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i, i32 0, i32 21
  %7 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sense_buffer, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef %8) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scsi_cleanup_rq(ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %0 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_flags, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %nents.i.i = getelementptr %struct.request, ptr %rq, i32 2, i32 3
  %2 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %if.then.if.end.i.i_crit_edge, label %if.then.i.i

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %sdb.i.i = getelementptr %struct.request, ptr %rq, i32 2, i32 2
  tail call void @sg_free_table_chained(ptr noundef %sdb.i.i, i32 noundef 2) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.if.end.i.i_crit_edge
  %prot_sdb.i.i.i = getelementptr %struct.request, ptr %rq, i32 2, i32 6
  %4 = ptrtoint ptr %prot_sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prot_sdb.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.scsi_free_sgtables.exit.i_crit_edge, label %scsi_prot_sg_count.exit.i.i

if.end.i.i.scsi_free_sgtables.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_free_sgtables.exit.i

scsi_prot_sg_count.exit.i.i:                      ; preds = %if.end.i.i
  %nents.i.i.i = getelementptr inbounds %struct.sg_table, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nents.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i.i, label %scsi_prot_sg_count.exit.i.i.scsi_free_sgtables.exit.i_crit_edge, label %if.then4.i.i

scsi_prot_sg_count.exit.i.i.scsi_free_sgtables.exit.i_crit_edge: ; preds = %scsi_prot_sg_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_free_sgtables.exit.i

if.then4.i.i:                                     ; preds = %scsi_prot_sg_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sg_free_table_chained(ptr noundef nonnull %5, i32 noundef 1) #14
  br label %scsi_free_sgtables.exit.i

scsi_free_sgtables.exit.i:                        ; preds = %if.then4.i.i, %scsi_prot_sg_count.exit.i.i.scsi_free_sgtables.exit.i_crit_edge, %if.end.i.i.scsi_free_sgtables.exit.i_crit_edge
  %cmd_flags.i.i.i = getelementptr %struct.request, ptr %rq, i32 0, i32 3
  %8 = ptrtoint ptr %cmd_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd_flags.i.i.i, align 4
  %10 = and i32 %9, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %10)
  %11 = icmp eq i32 %10, 34
  br i1 %11, label %scsi_free_sgtables.exit.i.scsi_mq_uninit_cmd.exit_crit_edge, label %if.then.i3.i

scsi_free_sgtables.exit.i.scsi_mq_uninit_cmd.exit_crit_edge: ; preds = %scsi_free_sgtables.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_mq_uninit_cmd.exit

if.then.i3.i:                                     ; preds = %scsi_free_sgtables.exit.i
  %12 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq, align 8
  %disk.i.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %disk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disk.i.i.i, align 8
  %private_data.i.i.i = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data.i.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %uninit_command.i.i = getelementptr inbounds %struct.scsi_driver, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %uninit_command.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %uninit_command.i.i, align 4
  %tobool.not.i2.i = icmp eq ptr %21, null
  br i1 %tobool.not.i2.i, label %if.then.i3.i.scsi_mq_uninit_cmd.exit_crit_edge, label %if.then3.i.i

if.then.i3.i.scsi_mq_uninit_cmd.exit_crit_edge:   ; preds = %if.then.i3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_mq_uninit_cmd.exit

if.then3.i.i:                                     ; preds = %if.then.i3.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %21(ptr noundef %add.ptr.i) #14
  br label %scsi_mq_uninit_cmd.exit

scsi_mq_uninit_cmd.exit:                          ; preds = %if.then3.i.i, %if.then.i3.i.scsi_mq_uninit_cmd.exit_crit_edge, %scsi_free_sgtables.exit.i.scsi_mq_uninit_cmd.exit_crit_edge
  %22 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rq_flags, align 8
  %and2 = and i32 %23, -129
  store i32 %and2, ptr %rq_flags, align 8
  br label %if.end

if.end:                                           ; preds = %scsi_mq_uninit_cmd.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @scsi_mq_lld_busy(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queuedata, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %2 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %queue_flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %shost_state.i = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 48
  %7 = ptrtoint ptr %shost_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shost_state.i, align 4
  %.off.i = add i32 %8, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.end.cleanup_crit_edge, label %scsi_host_in_recovery.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

scsi_host_in_recovery.exit:                       ; preds = %if.end
  %tmf_in_progress.i = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 36
  %9 = ptrtoint ptr %tmf_in_progress.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %tmf_in_progress.i, align 8
  %10 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool2.not = icmp eq i16 %10, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %scsi_host_in_recovery.exit.cleanup_crit_edge

scsi_host_in_recovery.exit.cleanup_crit_edge:     ; preds = %scsi_host_in_recovery.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %scsi_host_in_recovery.exit
  %budget_map.i.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 4
  %call.i.i = tail call i32 @sbitmap_weight(ptr noundef %budget_map.i.i) #14
  %queue_depth.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %queue_depth.i, align 4
  %conv.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %conv.i)
  %cmp.not.i = icmp slt i32 %call.i.i, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %device_blocked.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %device_blocked.i, i32 noundef 4) #14
  %13 = ptrtoint ptr %device_blocked.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %device_blocked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3.i = icmp sgt i32 %14, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %lor.lhs.false.cleanup_crit_edge, %scsi_host_in_recovery.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %scsi_host_in_recovery.exit.cleanup_crit_edge ], [ true, %lor.lhs.false.cleanup_crit_edge ], [ %cmp3.i, %if.end.i ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_map_queues(ptr noundef %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hostt = getelementptr i8, ptr %set, i32 -8
  %0 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostt, align 8
  %map_queues = getelementptr inbounds %struct.scsi_host_template, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %map_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_queues, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %set, i32 -248
  %call = tail call i32 %3(ptr noundef %add.ptr) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 @blk_mq_map_queues(ptr noundef %set) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_show_rq(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @scsi_device_state_check(ptr noundef %sdev, ptr noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev_state = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 69
  %0 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdev_state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %1, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 6, label %entry.sw.bb1_crit_edge
    i32 7, label %entry.sw.bb1_crit_edge67
    i32 4, label %sw.bb3
    i32 8, label %entry.sw.bb4_crit_edge
    i32 9, label %entry.sw.bb4_crit_edge68
    i32 5, label %sw.bb5
  ]

entry.sw.bb4_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4

entry.sw.bb1_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge67
  %offline_already = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 43
  %3 = ptrtoint ptr %offline_already to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %offline_already, align 8, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %offline_already to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %offline_already, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.9, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.28) #14
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.9, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.29) #14
  br label %return

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge68
  br label %return

sw.bb5:                                           ; preds = %entry
  %tobool6.not = icmp eq ptr %req, null
  br i1 %tobool6.not, label %sw.bb5.return_crit_edge, label %land.lhs.true

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true:                                    ; preds = %sw.bb5
  %rq_flags = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_flags, align 8
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.rhs, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.rhs:                                         ; preds = %land.lhs.true
  %.b65 = load i1, ptr @scsi_device_state_check.__already_done, align 1
  br i1 %.b65, label %land.rhs.return_crit_edge, label %if.then16, !prof !214

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then16:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @scsi_device_state_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1270, i32 noundef 9, ptr noundef null) #14
  br label %return

sw.default:                                       ; preds = %entry
  %tobool49.not = icmp eq ptr %req, null
  br i1 %tobool49.not, label %sw.default.if.end55_crit_edge, label %land.lhs.true50

sw.default.if.end55_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

land.lhs.true50:                                  ; preds = %sw.default
  %rq_flags51 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %8 = ptrtoint ptr %rq_flags51 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rq_flags51, align 8
  %and52 = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %land.lhs.true50.return_crit_edge, label %land.lhs.true50.if.end55_crit_edge

land.lhs.true50.if.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

land.lhs.true50.return_crit_edge:                 ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end55:                                         ; preds = %land.lhs.true50.if.end55_crit_edge, %sw.default.if.end55_crit_edge
  br label %return

return:                                           ; preds = %if.end55, %land.lhs.true50.return_crit_edge, %if.then16, %land.rhs.return_crit_edge, %land.lhs.true.return_crit_edge, %sw.bb5.return_crit_edge, %sw.bb4, %sw.bb3, %if.then, %sw.bb1.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i8 [ 0, %if.end55 ], [ 9, %sw.bb4 ], [ 10, %sw.bb3 ], [ 0, %entry.return_crit_edge ], [ 10, %if.then ], [ 10, %sw.bb1.return_crit_edge ], [ 9, %if.then16 ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %sw.bb5.return_crit_edge ], [ 10, %land.lhs.true50.return_crit_edge ], [ 9, %land.rhs.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_host_busy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_log_send(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_scsi_dispatch_cmd_start(ptr noundef %cmd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_start, i32 0, i32 1), ptr blockaddress(@trace_scsi_dispatch_cmd_start, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !234

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !204) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !214

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !259
  %call42 = tail call i32 @__traceiter_scsi_dispatch_cmd_start(ptr noundef null, ptr noundef %cmd) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !260
  %13 = tail call i32 @llvm.read_register.i32(metadata !204) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !204) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !214

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !237
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_scsi_dispatch_cmd_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_scsi_dispatch_cmd_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 196, ptr noundef nonnull @.str.14) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !238
  %31 = tail call i32 @llvm.read_register.i32(metadata !204) #14
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
define internal fastcc void @trace_scsi_dispatch_cmd_error(ptr noundef %cmd, i32 noundef %rtn) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_error, i32 0, i32 1), ptr blockaddress(@trace_scsi_dispatch_cmd_error, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !234

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !204) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !214

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !261
  %call42 = tail call i32 @__traceiter_scsi_dispatch_cmd_error(ptr noundef null, ptr noundef %cmd, i32 noundef %rtn) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !262
  %13 = tail call i32 @llvm.read_register.i32(metadata !204) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !204) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !214

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !237
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_scsi_dispatch_cmd_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_scsi_dispatch_cmd_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 241, ptr noundef nonnull @.str.14) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !238
  %31 = tail call i32 @llvm.read_register.i32(metadata !204) #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_scsi_dispatch_cmd_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_scsi_dispatch_cmd_error(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_delay_run_hw_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_weight(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_times_out(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_decide_disposition(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_log_completion(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_finish_command(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_scmd_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_map_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_rescan_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue_nowait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_wait_quiesce_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !86, !88, !90, !92, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !121, !123, !125, !127, !129, !130, !132, !134, !136, !137, !138, !140, !141, !143, !145, !147, !149, !151, !153, !154, !155, !156, !157, !159, !160, !161, !162, !164, !166, !168, !170, !171, !173, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !197, !199, !200, !201, !203}
!llvm.named.register.sp = !{!204}
!llvm.module.flags = !{!205, !206, !207, !208, !209, !210, !211, !212}
!llvm.ident = !{!213}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/scsi_lib.c", i32 68, i32 31}
!2 = !{ptr @__ksymtab___scsi_execute, !3, !"__ksymtab___scsi_execute", i1 false, i1 false}
!3 = !{!"../drivers/scsi/scsi_lib.c", i32 267, i32 1}
!4 = !{ptr @__ksymtab_scsi_free_sgtables, !5, !"__ksymtab_scsi_free_sgtables", i1 false, i1 false}
!5 = !{!"../drivers/scsi/scsi_lib.c", i32 501, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/scsi_lib.c", i32 971, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/scsi/scsi_lib.c", i32 987, i32 4}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/scsi/scsi_lib.c", i32 1032, i32 6}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/scsi/scsi_lib.c", i32 1081, i32 7}
!17 = !{ptr @__ksymtab_scsi_alloc_sgtables, !18, !"__ksymtab_scsi_alloc_sgtables", i1 false, i1 false}
!18 = !{!"../drivers/scsi/scsi_lib.c", i32 1114, i32 1}
!19 = !{ptr @__ksymtab_scsi_alloc_request, !20, !"__ksymtab_scsi_alloc_request", i1 false, i1 false}
!20 = !{!"../drivers/scsi/scsi_lib.c", i32 1149, i32 1}
!21 = !{ptr @scsi_init_command.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/scsi/scsi_lib.c", i32 1198, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @scsi_init_command.__key.7, !22, !"__key", i1 false, i1 false}
!25 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__ksymtab_scsi_done, !27, !"__ksymtab_scsi_done", i1 false, i1 false}
!27 = !{!"../drivers/scsi/scsi_lib.c", i32 1646, i32 1}
!28 = !{ptr @__ksymtab___scsi_init_queue, !29, !"__ksymtab___scsi_init_queue", i1 false, i1 false}
!29 = !{!"../drivers/scsi/scsi_lib.c", i32 1913, i32 1}
!30 = !{ptr @__ksymtab_scsi_block_requests, !31, !"__ksymtab_scsi_block_requests", i1 false, i1 false}
!31 = !{!"../drivers/scsi/scsi_lib.c", i32 2041, i32 1}
!32 = !{ptr @__ksymtab_scsi_unblock_requests, !33, !"__ksymtab_scsi_unblock_requests", i1 false, i1 false}
!33 = !{!"../drivers/scsi/scsi_lib.c", i32 2058, i32 1}
!34 = !{ptr @__ksymtab_scsi_mode_select, !35, !"__ksymtab_scsi_mode_select", i1 false, i1 false}
!35 = !{!"../drivers/scsi/scsi_lib.c", i32 2142, i32 1}
!36 = !{ptr @__ksymtab_scsi_mode_sense, !37, !"__ksymtab_scsi_mode_sense", i1 false, i1 false}
!37 = !{!"../drivers/scsi/scsi_lib.c", i32 2264, i32 1}
!38 = !{ptr @__ksymtab_scsi_test_unit_ready, !39, !"__ksymtab_scsi_test_unit_ready", i1 false, i1 false}
!39 = !{!"../drivers/scsi/scsi_lib.c", i32 2297, i32 1}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/scsi_lib.c", i32 2417, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__ksymtab_scsi_device_set_state, !44, !"__ksymtab_scsi_device_set_state", i1 false, i1 false}
!44 = !{!"../drivers/scsi/scsi_lib.c", i32 2425, i32 1}
!45 = !{ptr @__ksymtab_sdev_evt_send, !46, !"__ksymtab_sdev_evt_send", i1 false, i1 false}
!46 = !{!"../drivers/scsi/scsi_lib.c", i32 2541, i32 1}
!47 = !{ptr @__ksymtab_sdev_evt_alloc, !48, !"__ksymtab_sdev_evt_alloc", i1 false, i1 false}
!48 = !{!"../drivers/scsi/scsi_lib.c", i32 2577, i32 1}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/scsi_lib.c", i32 2592, i32 3}
!51 = !{ptr @__ksymtab_sdev_evt_send_simple, !52, !"__ksymtab_sdev_evt_send_simple", i1 false, i1 false}
!52 = !{!"../drivers/scsi/scsi_lib.c", i32 2599, i32 1}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../drivers/scsi/scsi_lib.c", i32 2625, i32 2}
!55 = !{ptr @__ksymtab_scsi_device_quiesce, !56, !"__ksymtab_scsi_device_quiesce", i1 false, i1 false}
!56 = !{!"../drivers/scsi/scsi_lib.c", i32 2652, i32 1}
!57 = !{ptr @__ksymtab_scsi_device_resume, !58, !"__ksymtab_scsi_device_resume", i1 false, i1 false}
!58 = !{!"../drivers/scsi/scsi_lib.c", i32 2678, i32 1}
!59 = !{ptr @__ksymtab_scsi_target_quiesce, !60, !"__ksymtab_scsi_target_quiesce", i1 false, i1 false}
!60 = !{!"../drivers/scsi/scsi_lib.c", i32 2691, i32 1}
!61 = !{ptr @__ksymtab_scsi_target_resume, !62, !"__ksymtab_scsi_target_resume", i1 false, i1 false}
!62 = !{!"../drivers/scsi/scsi_lib.c", i32 2704, i32 1}
!63 = !{ptr @__ksymtab_scsi_internal_device_block_nowait, !64, !"__ksymtab_scsi_internal_device_block_nowait", i1 false, i1 false}
!64 = !{!"../drivers/scsi/scsi_lib.c", i32 2767, i32 1}
!65 = !{ptr @__ksymtab_scsi_internal_device_unblock_nowait, !66, !"__ksymtab_scsi_internal_device_unblock_nowait", i1 false, i1 false}
!66 = !{!"../drivers/scsi/scsi_lib.c", i32 2849, i32 1}
!67 = !{ptr @__ksymtab_scsi_target_block, !68, !"__ksymtab_scsi_target_block", i1 false, i1 false}
!68 = !{!"../drivers/scsi/scsi_lib.c", i32 2906, i32 1}
!69 = !{ptr @__ksymtab_scsi_target_unblock, !70, !"__ksymtab_scsi_target_unblock", i1 false, i1 false}
!70 = !{!"../drivers/scsi/scsi_lib.c", i32 2932, i32 1}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../drivers/scsi/scsi_lib.c", i32 2958, i32 2}
!73 = !{ptr @__ksymtab_scsi_host_block, !74, !"__ksymtab_scsi_host_block", i1 false, i1 false}
!74 = !{!"../drivers/scsi/scsi_lib.c", i32 2965, i32 1}
!75 = !{ptr @__ksymtab_scsi_host_unblock, !76, !"__ksymtab_scsi_host_unblock", i1 false, i1 false}
!76 = !{!"../drivers/scsi/scsi_lib.c", i32 2982, i32 1}
!77 = !{ptr @.str.12, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/scsi_lib.c", i32 3011, i32 3}
!79 = !{ptr @.str.13, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @scsi_kmap_atomic_sg._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @scsi_kmap_atomic_sg._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @__ksymtab_scsi_kmap_atomic_sg, !83, !"__ksymtab_scsi_kmap_atomic_sg", i1 false, i1 false}
!83 = !{!"../drivers/scsi/scsi_lib.c", i32 3032, i32 1}
!84 = !{ptr @__ksymtab_scsi_kunmap_atomic_sg, !85, !"__ksymtab_scsi_kunmap_atomic_sg", i1 false, i1 false}
!85 = !{!"../drivers/scsi/scsi_lib.c", i32 3042, i32 1}
!86 = !{ptr @__ksymtab_sdev_disable_disk_events, !87, !"__ksymtab_sdev_disable_disk_events", i1 false, i1 false}
!87 = !{!"../drivers/scsi/scsi_lib.c", i32 3048, i32 1}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../drivers/scsi/scsi_lib.c", i32 3052, i32 6}
!90 = !{ptr @__ksymtab_sdev_enable_disk_events, !91, !"__ksymtab_sdev_enable_disk_events", i1 false, i1 false}
!91 = !{!"../drivers/scsi/scsi_lib.c", i32 3056, i32 1}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../drivers/scsi/scsi_lib.c", i32 3153, i32 13}
!94 = !{ptr @.str.14, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.15, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/scsi_lib.c", i32 3184, i32 35}
!97 = !{ptr @.str.16, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/scsi_lib.c", i32 3195, i32 10}
!99 = !{ptr @.str.17, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/scsi_lib.c", i32 3200, i32 10}
!101 = !{ptr @.str.18, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/scsi_lib.c", i32 3205, i32 10}
!103 = !{ptr @.str.19, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/scsi_lib.c", i32 3220, i32 10}
!105 = !{ptr @.str.20, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/scsi_lib.c", i32 3225, i32 10}
!107 = !{ptr @__ksymtab_scsi_vpd_lun_id, !108, !"__ksymtab_scsi_vpd_lun_id", i1 false, i1 false}
!108 = !{!"../drivers/scsi/scsi_lib.c", i32 3257, i32 1}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../drivers/scsi/scsi_lib.c", i32 3275, i32 13}
!111 = !{ptr @__ksymtab_scsi_vpd_tpg_id, !112, !"__ksymtab_scsi_vpd_tpg_id", i1 false, i1 false}
!112 = !{!"../drivers/scsi/scsi_lib.c", i32 3304, i32 1}
!113 = !{ptr @__ksymtab_scsi_build_sense, !114, !"__ksymtab_scsi_build_sense", i1 false, i1 false}
!114 = !{!"../drivers/scsi/scsi_lib.c", i32 3321, i32 1}
!115 = !{ptr @scsi_sense_cache, !116, !"scsi_sense_cache", i1 false, i1 false}
!116 = !{!"../drivers/scsi/scsi_lib.c", i32 56, i32 27}
!117 = !{ptr @.str.21, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/scsi_lib.c", i32 57, i32 8}
!119 = !{ptr @.str.22, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @scsi_sense_cache_mutex, !118, !"scsi_sense_cache_mutex", i1 false, i1 false}
!121 = !{ptr @.str.23, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/scsi_lib.c", i32 150, i32 2}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../drivers/scsi/scsi_lib.c", i32 551, i32 3}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../drivers/scsi/scsi_lib.c", i32 129, i32 3}
!127 = !{ptr @.str.24, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/scsi_lib.c", i32 818, i32 11}
!129 = !{ptr @scsi_io_completion_action._rs, !128, !"_rs", i1 false, i1 false}
!130 = !{ptr @__func__.scsi_io_completion_action, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/scsi_lib.c", i32 831, i32 18}
!132 = !{ptr @.str.25, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/scsi_lib.c", i32 679, i32 30}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../include/trace/events/scsi.h", i32 292, i32 1}
!136 = !{ptr @.str.26, !135, !"<string literal>", i1 false, i1 false}
!137 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!140 = !{ptr @.str.27, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @scsi_mq_ops, !142, !"scsi_mq_ops", i1 false, i1 false}
!142 = !{!"../drivers/scsi/scsi_lib.c", i32 1943, i32 32}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../drivers/scsi/scsi_lib.c", i32 1711, i32 2}
!145 = !{ptr @.str.28, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/scsi_lib.c", i32 1250, i32 4}
!147 = !{ptr @.str.29, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/scsi_lib.c", i32 1259, i32 3}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../drivers/scsi/scsi_lib.c", i32 1270, i32 14}
!151 = !{ptr @.str.30, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/scsi_lib.c", i32 1353, i32 3}
!153 = !{ptr @.str.31, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.32, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @scsi_target_queue_ready._entry, !152, !"_entry", i1 false, i1 false}
!156 = !{ptr @scsi_target_queue_ready._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.33, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/scsi_lib.c", i32 1395, i32 3}
!159 = !{ptr @.str.34, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @scsi_host_queue_ready._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @scsi_host_queue_ready._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.35, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/scsi_lib.c", i32 1528, i32 3}
!164 = !{ptr @.str.36, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/scsi_lib.c", i32 1545, i32 3}
!166 = !{ptr @.str.37, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/scsi_lib.c", i32 1567, i32 3}
!168 = distinct !{null, !169, !"__already_done", i1 false, i1 false}
!169 = !{!"../include/trace/events/scsi.h", i32 156, i32 1}
!170 = distinct !{null, !169, !"__warned", i1 false, i1 false}
!171 = distinct !{null, !172, !"__already_done", i1 false, i1 false}
!172 = !{!"../include/trace/events/scsi.h", i32 198, i32 1}
!173 = distinct !{null, !172, !"__warned", i1 false, i1 false}
!174 = !{ptr @.str.38, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/scsi_lib.c", i32 1306, i32 3}
!176 = !{ptr @scsi_mq_ops_no_commit, !177, !"scsi_mq_ops_no_commit", i1 false, i1 false}
!177 = !{!"../drivers/scsi/scsi_lib.c", i32 1915, i32 32}
!178 = !{ptr @.str.39, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/scsi_lib.c", i32 2441, i32 17}
!180 = !{ptr @.str.40, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/scsi_lib.c", i32 2445, i32 17}
!182 = !{ptr @.str.41, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/scsi_lib.c", i32 2448, i32 17}
!184 = !{ptr @.str.42, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/scsi_lib.c", i32 2451, i32 23}
!186 = !{ptr @.str.43, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/scsi_lib.c", i32 2454, i32 17}
!188 = !{ptr @.str.44, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/scsi_lib.c", i32 2457, i32 17}
!190 = !{ptr @.str.45, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/scsi_lib.c", i32 2460, i32 17}
!192 = !{ptr @.str.46, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/scsi_lib.c", i32 2463, i32 17}
!194 = distinct !{null, !195, !"__already_done", i1 false, i1 false}
!195 = !{!"../drivers/scsi/scsi_lib.c", i32 2884, i32 2}
!196 = !{ptr @.str.47, !195, !"<string literal>", i1 false, i1 false}
!197 = distinct !{null, !198, !"__warned", i1 false, i1 false}
!198 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!199 = !{ptr @.str.48, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.49, !198, !"<string literal>", i1 false, i1 false}
!201 = distinct !{null, !202, !"__warned", i1 false, i1 false}
!202 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!203 = !{ptr @.str.50, !202, !"<string literal>", i1 false, i1 false}
!204 = !{!"sp"}
!205 = !{i32 1, !"wchar_size", i32 2}
!206 = !{i32 1, !"min_enum_size", i32 4}
!207 = !{i32 8, !"branch-target-enforcement", i32 0}
!208 = !{i32 8, !"sign-return-address", i32 0}
!209 = !{i32 8, !"sign-return-address-all", i32 0}
!210 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!211 = !{i32 7, !"uwtable", i32 1}
!212 = !{i32 7, !"frame-pointer", i32 2}
!213 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!214 = !{!"branch_weights", i32 2000, i32 1}
!215 = !{!"branch_weights", i32 1, i32 2000}
!216 = !{i64 2148633604, i64 2148633630, i64 2148633659, i64 2148633693, i64 2148633724, i64 2148633747}
!217 = !{i8 0, i8 2}
!218 = !{i64 2149610669}
!219 = !{i64 2149610935}
!220 = !{i64 1035819, i64 1035880}
!221 = !{i64 1038551}
!222 = !{i64 1038836}
!223 = !{i64 2148631139, i64 2148631165, i64 2148631194, i64 2148631228, i64 2148631259, i64 2148631282}
!224 = !{i64 2148719615}
!225 = !{i64 2148634324, i64 2148634356, i64 2148634385, i64 2148634419, i64 2148634450, i64 2148634473}
!226 = !{i64 2148719844}
!227 = !{i64 2155323983, i64 2155324471, i64 2155324020, i64 2155324076, i64 2155324110, i64 2155324134, i64 2155324175, i64 2155324196, i64 2155324224, i64 2155324258}
!228 = !{i64 2154801787, i64 2154802279, i64 2154801824, i64 2154801880, i64 2154801914, i64 2154801938, i64 2154801979, i64 2154802000, i64 2154802028, i64 2154802062}
!229 = !{i64 2154795468, i64 2154795960, i64 2154795505, i64 2154795561, i64 2154795595, i64 2154795619, i64 2154795660, i64 2154795681, i64 2154795709, i64 2154795743}
!230 = !{i64 2154797078, i64 2154797570, i64 2154797115, i64 2154797171, i64 2154797205, i64 2154797229, i64 2154797270, i64 2154797291, i64 2154797319, i64 2154797353}
!231 = !{i64 2155332343, i64 2155332832, i64 2155332380, i64 2155332436, i64 2155332470, i64 2155332494, i64 2155332535, i64 2155332556, i64 2155332584, i64 2155332618}
!232 = !{i64 2155339047, i64 2155339536, i64 2155339084, i64 2155339140, i64 2155339174, i64 2155339198, i64 2155339239, i64 2155339260, i64 2155339288, i64 2155339322}
!233 = !{i64 2155340704, i64 2155341193, i64 2155340741, i64 2155340797, i64 2155340831, i64 2155340855, i64 2155340896, i64 2155340917, i64 2155340945, i64 2155340979}
!234 = !{i64 2148455737, i64 2148455742, i64 2148455755, i64 2148455799, i64 2148455833, i64 2148455854}
!235 = !{i64 2155242444}
!236 = !{i64 2155242657}
!237 = !{i64 2149619228}
!238 = !{i64 2149620264}
!239 = !{i64 2155371016, i64 2155371505, i64 2155371053, i64 2155371109, i64 2155371143, i64 2155371167, i64 2155371208, i64 2155371229, i64 2155371257, i64 2155371291}
!240 = !{!"auto-init"}
!241 = !{i64 2155411437}
!242 = !{i64 1140631, i64 1140652, i64 1140675, i64 1140694, i64 1140713}
!243 = !{i64 2155411838}
!244 = !{i64 2155412755}
!245 = !{i64 2155413156}
!246 = !{i64 2154799026, i64 2154799518, i64 2154799063, i64 2154799119, i64 2154799153, i64 2154799177, i64 2154799218, i64 2154799239, i64 2154799267, i64 2154799301}
!247 = !{i64 2153769519}
!248 = !{i64 2152313519}
!249 = !{i64 2152313726}
!250 = !{i64 2153772290}
!251 = !{i64 2148732986}
!252 = !{i64 1116652, i64 1116676, i64 1116697, i64 1116714, i64 1116731}
!253 = !{i64 2148733212}
!254 = !{i64 2148716574}
!255 = !{i64 2148631859, i64 2148631891, i64 2148631920, i64 2148631954, i64 2148631985, i64 2148632008}
!256 = !{i64 2148716803}
!257 = !{i64 2155346870, i64 2155347359, i64 2155346907, i64 2155346963, i64 2155346997, i64 2155347021, i64 2155347062, i64 2155347083, i64 2155347111, i64 2155347145}
!258 = !{i64 2155364071}
!259 = !{i64 2155208749}
!260 = !{i64 2155208964}
!261 = !{i64 2155225672}
!262 = !{i64 2155225897}
