; ModuleID = '/llk/IR_all_yes/drivers/vhost/vringh.c_pt.bc'
source_filename = "../drivers/vhost/vringh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vringh_kiov_advance\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_kiov_advance\09\09\09\09"
module asm "\09.long\09__crc_vringh_kiov_advance\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_kiov_advance:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_kiov_advance\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_kiov_advance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_init_user\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_init_user\09\09\09\09"
module asm "\09.long\09__crc_vringh_init_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_init_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_init_user\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_init_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_getdesc_user\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_getdesc_user\09\09\09\09"
module asm "\09.long\09__crc_vringh_getdesc_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_getdesc_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_getdesc_user\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_getdesc_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_iov_pull_user\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_iov_pull_user\09\09\09\09"
module asm "\09.long\09__crc_vringh_iov_pull_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_iov_pull_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_iov_pull_user\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_iov_pull_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_iov_push_user\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_iov_push_user\09\09\09\09"
module asm "\09.long\09__crc_vringh_iov_push_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_iov_push_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_iov_push_user\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_iov_push_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_abandon_user\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_abandon_user\09\09\09\09"
module asm "\09.long\09__crc_vringh_abandon_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_abandon_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_abandon_user\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_abandon_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_complete_user\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_complete_user\09\09\09\09"
module asm "\09.long\09__crc_vringh_complete_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_complete_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_complete_user\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_complete_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_complete_multi_user\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_complete_multi_user\09\09\09\09"
module asm "\09.long\09__crc_vringh_complete_multi_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_complete_multi_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_complete_multi_user\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_complete_multi_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_notify_enable_user\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_notify_enable_user\09\09\09\09"
module asm "\09.long\09__crc_vringh_notify_enable_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_notify_enable_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_notify_enable_user\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_notify_enable_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_notify_disable_user\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_notify_disable_user\09\09\09\09"
module asm "\09.long\09__crc_vringh_notify_disable_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_notify_disable_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_notify_disable_user\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_notify_disable_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_need_notify_user\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_need_notify_user\09\09\09\09"
module asm "\09.long\09__crc_vringh_need_notify_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_need_notify_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_need_notify_user\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_need_notify_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_init_kern\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_init_kern\09\09\09\09"
module asm "\09.long\09__crc_vringh_init_kern\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_init_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_init_kern\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_init_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_getdesc_kern\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_getdesc_kern\09\09\09\09"
module asm "\09.long\09__crc_vringh_getdesc_kern\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_getdesc_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_getdesc_kern\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_getdesc_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_iov_pull_kern\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_iov_pull_kern\09\09\09\09"
module asm "\09.long\09__crc_vringh_iov_pull_kern\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_iov_pull_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_iov_pull_kern\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_iov_pull_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_iov_push_kern\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_iov_push_kern\09\09\09\09"
module asm "\09.long\09__crc_vringh_iov_push_kern\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_iov_push_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_iov_push_kern\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_iov_push_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_abandon_kern\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_abandon_kern\09\09\09\09"
module asm "\09.long\09__crc_vringh_abandon_kern\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_abandon_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_abandon_kern\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_abandon_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_complete_kern\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_complete_kern\09\09\09\09"
module asm "\09.long\09__crc_vringh_complete_kern\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_complete_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_complete_kern\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_complete_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_notify_enable_kern\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_notify_enable_kern\09\09\09\09"
module asm "\09.long\09__crc_vringh_notify_enable_kern\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_notify_enable_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_notify_enable_kern\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_notify_enable_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_notify_disable_kern\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_notify_disable_kern\09\09\09\09"
module asm "\09.long\09__crc_vringh_notify_disable_kern\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_notify_disable_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_notify_disable_kern\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_notify_disable_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_need_notify_kern\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_need_notify_kern\09\09\09\09"
module asm "\09.long\09__crc_vringh_need_notify_kern\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_need_notify_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_need_notify_kern\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_need_notify_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_init_iotlb\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_init_iotlb\09\09\09\09"
module asm "\09.long\09__crc_vringh_init_iotlb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_init_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_init_iotlb\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_init_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_set_iotlb\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_set_iotlb\09\09\09\09"
module asm "\09.long\09__crc_vringh_set_iotlb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_set_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_set_iotlb\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_set_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_getdesc_iotlb\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_getdesc_iotlb\09\09\09\09"
module asm "\09.long\09__crc_vringh_getdesc_iotlb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_getdesc_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_getdesc_iotlb\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_getdesc_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_iov_pull_iotlb\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_iov_pull_iotlb\09\09\09\09"
module asm "\09.long\09__crc_vringh_iov_pull_iotlb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_iov_pull_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_iov_pull_iotlb\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_iov_pull_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_iov_push_iotlb\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_iov_push_iotlb\09\09\09\09"
module asm "\09.long\09__crc_vringh_iov_push_iotlb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_iov_push_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_iov_push_iotlb\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_iov_push_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_abandon_iotlb\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_abandon_iotlb\09\09\09\09"
module asm "\09.long\09__crc_vringh_abandon_iotlb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_abandon_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_abandon_iotlb\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_abandon_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_complete_iotlb\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_complete_iotlb\09\09\09\09"
module asm "\09.long\09__crc_vringh_complete_iotlb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_complete_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_complete_iotlb\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_complete_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_notify_enable_iotlb\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_notify_enable_iotlb\09\09\09\09"
module asm "\09.long\09__crc_vringh_notify_enable_iotlb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_notify_enable_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_notify_enable_iotlb\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_notify_enable_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_notify_disable_iotlb\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_notify_disable_iotlb\09\09\09\09"
module asm "\09.long\09__crc_vringh_notify_disable_iotlb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_notify_disable_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_notify_disable_iotlb\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_notify_disable_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vringh_need_notify_iotlb\22, \22a\22\09"
module asm "\09.weak\09__crc_vringh_need_notify_iotlb\09\09\09\09"
module asm "\09.long\09__crc_vringh_need_notify_iotlb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vringh_need_notify_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22vringh_need_notify_iotlb\22\09\09\09\09\09"
module asm "__kstrtabns_vringh_need_notify_iotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vringh_range = type { i64, i64, i64 }
%struct.vringh_kiov = type { ptr, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.vringh = type { i8, i8, i8, i16, i16, i32, %struct.vring, ptr, ptr, ptr }
%struct.vring = type { i32, ptr, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.vring_avail = type { i16, i16, [0 x i16] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vring_desc = type { i64, i32, i16, i16 }
%struct.vring_used_elem = type { i32, i32 }
%struct.vring_used = type { i16, i16, [0 x %struct.vring_used_elem] }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.30, %union.anon.31 }
%union.anon.30 = type { ptr }
%union.anon.31 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.66, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vhost_iotlb_map = type { %struct.rb_node, %struct.list_head, i64, i64, i64, i64, i32, i32, i64, ptr }
%struct.page = type { i32, %union.anon.9, %union.anon.44, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.44 = type { %struct.atomic_t }

@__kstrtab_vringh_kiov_advance = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_kiov_advance = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_kiov_advance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_kiov_advance to i32), ptr @__kstrtab_vringh_kiov_advance, ptr @__kstrtabns_vringh_kiov_advance }, section "___ksymtab+vringh_kiov_advance", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Bad ring size %u\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_vringh_init_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_init_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_init_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_init_user to i32), ptr @__kstrtab_vringh_init_user, ptr @__kstrtabns_vringh_init_user }, section "___ksymtab+vringh_init_user", align 4
@__kstrtab_vringh_getdesc_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_getdesc_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_getdesc_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_getdesc_user to i32), ptr @__kstrtab_vringh_getdesc_user, ptr @__kstrtabns_vringh_getdesc_user }, section "___ksymtab+vringh_getdesc_user", align 4
@__kstrtab_vringh_iov_pull_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_iov_pull_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_iov_pull_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_iov_pull_user to i32), ptr @__kstrtab_vringh_iov_pull_user, ptr @__kstrtabns_vringh_iov_pull_user }, section "___ksymtab+vringh_iov_pull_user", align 4
@__kstrtab_vringh_iov_push_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_iov_push_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_iov_push_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_iov_push_user to i32), ptr @__kstrtab_vringh_iov_push_user, ptr @__kstrtabns_vringh_iov_push_user }, section "___ksymtab+vringh_iov_push_user", align 4
@__kstrtab_vringh_abandon_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_abandon_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_abandon_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_abandon_user to i32), ptr @__kstrtab_vringh_abandon_user, ptr @__kstrtabns_vringh_abandon_user }, section "___ksymtab+vringh_abandon_user", align 4
@__kstrtab_vringh_complete_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_complete_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_complete_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_complete_user to i32), ptr @__kstrtab_vringh_complete_user, ptr @__kstrtabns_vringh_complete_user }, section "___ksymtab+vringh_complete_user", align 4
@__kstrtab_vringh_complete_multi_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_complete_multi_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_complete_multi_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_complete_multi_user to i32), ptr @__kstrtab_vringh_complete_multi_user, ptr @__kstrtabns_vringh_complete_multi_user }, section "___ksymtab+vringh_complete_multi_user", align 4
@__kstrtab_vringh_notify_enable_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_notify_enable_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_notify_enable_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_notify_enable_user to i32), ptr @__kstrtab_vringh_notify_enable_user, ptr @__kstrtabns_vringh_notify_enable_user }, section "___ksymtab+vringh_notify_enable_user", align 4
@__kstrtab_vringh_notify_disable_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_notify_disable_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_notify_disable_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_notify_disable_user to i32), ptr @__kstrtab_vringh_notify_disable_user, ptr @__kstrtabns_vringh_notify_disable_user }, section "___ksymtab+vringh_notify_disable_user", align 4
@__kstrtab_vringh_need_notify_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_need_notify_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_need_notify_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_need_notify_user to i32), ptr @__kstrtab_vringh_need_notify_user, ptr @__kstrtabns_vringh_need_notify_user }, section "___ksymtab+vringh_need_notify_user", align 4
@__kstrtab_vringh_init_kern = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_init_kern = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_init_kern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_init_kern to i32), ptr @__kstrtab_vringh_init_kern, ptr @__kstrtabns_vringh_init_kern }, section "___ksymtab+vringh_init_kern", align 4
@__kstrtab_vringh_getdesc_kern = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_getdesc_kern = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_getdesc_kern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_getdesc_kern to i32), ptr @__kstrtab_vringh_getdesc_kern, ptr @__kstrtabns_vringh_getdesc_kern }, section "___ksymtab+vringh_getdesc_kern", align 4
@__kstrtab_vringh_iov_pull_kern = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_iov_pull_kern = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_iov_pull_kern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_iov_pull_kern to i32), ptr @__kstrtab_vringh_iov_pull_kern, ptr @__kstrtabns_vringh_iov_pull_kern }, section "___ksymtab+vringh_iov_pull_kern", align 4
@__kstrtab_vringh_iov_push_kern = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_iov_push_kern = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_iov_push_kern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_iov_push_kern to i32), ptr @__kstrtab_vringh_iov_push_kern, ptr @__kstrtabns_vringh_iov_push_kern }, section "___ksymtab+vringh_iov_push_kern", align 4
@__kstrtab_vringh_abandon_kern = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_abandon_kern = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_abandon_kern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_abandon_kern to i32), ptr @__kstrtab_vringh_abandon_kern, ptr @__kstrtabns_vringh_abandon_kern }, section "___ksymtab+vringh_abandon_kern", align 4
@__kstrtab_vringh_complete_kern = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_complete_kern = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_complete_kern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_complete_kern to i32), ptr @__kstrtab_vringh_complete_kern, ptr @__kstrtabns_vringh_complete_kern }, section "___ksymtab+vringh_complete_kern", align 4
@__kstrtab_vringh_notify_enable_kern = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_notify_enable_kern = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_notify_enable_kern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_notify_enable_kern to i32), ptr @__kstrtab_vringh_notify_enable_kern, ptr @__kstrtabns_vringh_notify_enable_kern }, section "___ksymtab+vringh_notify_enable_kern", align 4
@__kstrtab_vringh_notify_disable_kern = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_notify_disable_kern = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_notify_disable_kern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_notify_disable_kern to i32), ptr @__kstrtab_vringh_notify_disable_kern, ptr @__kstrtabns_vringh_notify_disable_kern }, section "___ksymtab+vringh_notify_disable_kern", align 4
@__kstrtab_vringh_need_notify_kern = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_need_notify_kern = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_need_notify_kern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_need_notify_kern to i32), ptr @__kstrtab_vringh_need_notify_kern, ptr @__kstrtabns_vringh_need_notify_kern }, section "___ksymtab+vringh_need_notify_kern", align 4
@__kstrtab_vringh_init_iotlb = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_init_iotlb = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_init_iotlb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_init_iotlb to i32), ptr @__kstrtab_vringh_init_iotlb, ptr @__kstrtabns_vringh_init_iotlb }, section "___ksymtab+vringh_init_iotlb", align 4
@__kstrtab_vringh_set_iotlb = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_set_iotlb = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_set_iotlb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_set_iotlb to i32), ptr @__kstrtab_vringh_set_iotlb, ptr @__kstrtabns_vringh_set_iotlb }, section "___ksymtab+vringh_set_iotlb", align 4
@__kstrtab_vringh_getdesc_iotlb = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_getdesc_iotlb = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_getdesc_iotlb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_getdesc_iotlb to i32), ptr @__kstrtab_vringh_getdesc_iotlb, ptr @__kstrtabns_vringh_getdesc_iotlb }, section "___ksymtab+vringh_getdesc_iotlb", align 4
@__kstrtab_vringh_iov_pull_iotlb = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_iov_pull_iotlb = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_iov_pull_iotlb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_iov_pull_iotlb to i32), ptr @__kstrtab_vringh_iov_pull_iotlb, ptr @__kstrtabns_vringh_iov_pull_iotlb }, section "___ksymtab+vringh_iov_pull_iotlb", align 4
@__kstrtab_vringh_iov_push_iotlb = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_iov_push_iotlb = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_iov_push_iotlb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_iov_push_iotlb to i32), ptr @__kstrtab_vringh_iov_push_iotlb, ptr @__kstrtabns_vringh_iov_push_iotlb }, section "___ksymtab+vringh_iov_push_iotlb", align 4
@__kstrtab_vringh_abandon_iotlb = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_abandon_iotlb = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_abandon_iotlb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_abandon_iotlb to i32), ptr @__kstrtab_vringh_abandon_iotlb, ptr @__kstrtabns_vringh_abandon_iotlb }, section "___ksymtab+vringh_abandon_iotlb", align 4
@__kstrtab_vringh_complete_iotlb = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_complete_iotlb = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_complete_iotlb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_complete_iotlb to i32), ptr @__kstrtab_vringh_complete_iotlb, ptr @__kstrtabns_vringh_complete_iotlb }, section "___ksymtab+vringh_complete_iotlb", align 4
@__kstrtab_vringh_notify_enable_iotlb = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_notify_enable_iotlb = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_notify_enable_iotlb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_notify_enable_iotlb to i32), ptr @__kstrtab_vringh_notify_enable_iotlb, ptr @__kstrtabns_vringh_notify_enable_iotlb }, section "___ksymtab+vringh_notify_enable_iotlb", align 4
@__kstrtab_vringh_notify_disable_iotlb = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_notify_disable_iotlb = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_notify_disable_iotlb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_notify_disable_iotlb to i32), ptr @__kstrtab_vringh_notify_disable_iotlb, ptr @__kstrtabns_vringh_notify_disable_iotlb }, section "___ksymtab+vringh_notify_disable_iotlb", align 4
@__kstrtab_vringh_need_notify_iotlb = external dso_local constant [0 x i8], align 1
@__kstrtabns_vringh_need_notify_iotlb = external dso_local constant [0 x i8], align 1
@__ksymtab_vringh_need_notify_iotlb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vringh_need_notify_iotlb to i32), ptr @__kstrtab_vringh_need_notify_iotlb, ptr @__kstrtabns_vringh_need_notify_iotlb }, section "___ksymtab+vringh_need_notify_iotlb", align 4
@__UNIQUE_ID_file279 = internal constant [33 x i8] c"vringh.file=drivers/vhost/vringh\00", section ".modinfo", align 1
@__UNIQUE_ID_license280 = internal constant [19 x i8] c"vringh.license=GPL\00", section ".modinfo", align 1
@vringh_bad.vringh_rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vringh_rs.lock\00", [17 x i8] zeroinitializer }, align 32
@__func__.vringh_bad = private unnamed_addr constant [11 x i8] c"vringh_bad\00", align 1
@vringh_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vringh_bad, ptr @.str.3, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\015vringh:\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/vhost/vringh.c\00", [41 x i8] zeroinitializer }, align 32
@vringh_bad._entry_ptr = internal global ptr @vringh_bad._entry, section ".printk_index", align 4
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to access avail idx at %p\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read head: idx %d address %p\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Guest says index %u > %u is available\00", [58 x i8] zeroinitializer }, align 32
@__const.__vringh_iov.range = private unnamed_addr constant %struct.vringh_range { i64 -1, i64 0, i64 0 }, align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Descriptor loop in %p\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Readable desc %p after writable\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unexpected %s desc\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"writable\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"readable\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Chained index %u > %u\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Multilevel indirect %u->%u\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Strange indirect len %u\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Wrapping descriptor %zu@0x%llx\00", [33 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to write %u used entries %u at %p\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to update used index at %p\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Clearing used flags %p\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Updating avail event index %p\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to check avail idx at %p\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Setting used flags %p\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get flags at %p\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get used event idx at %p\00", [61 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 648, i32 14 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"vringh_rs\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 25, i32 9 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 31, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 48, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 63, i32 14 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 69, i32 14 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 353, i32 15 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 363, i32 16 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 371, i32 15 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 372, i32 16 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 372, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 419, i32 15 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 185, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 191, i32 14 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 153, i32 14 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 230, i32 6 }
@___asan_gen_.85 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 214, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 156, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 461, i32 14 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 471, i32 14 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 539, i32 15 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 546, i32 15 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 557, i32 14 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 576, i32 15 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 500, i32 15 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [26 x i8] c"../drivers/vhost/vringh.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 510, i32 14 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_file279, ptr @__UNIQUE_ID_license280, ptr @__ksymtab_vringh_abandon_iotlb, ptr @__ksymtab_vringh_abandon_kern, ptr @__ksymtab_vringh_abandon_user, ptr @__ksymtab_vringh_complete_iotlb, ptr @__ksymtab_vringh_complete_kern, ptr @__ksymtab_vringh_complete_multi_user, ptr @__ksymtab_vringh_complete_user, ptr @__ksymtab_vringh_getdesc_iotlb, ptr @__ksymtab_vringh_getdesc_kern, ptr @__ksymtab_vringh_getdesc_user, ptr @__ksymtab_vringh_init_iotlb, ptr @__ksymtab_vringh_init_kern, ptr @__ksymtab_vringh_init_user, ptr @__ksymtab_vringh_iov_pull_iotlb, ptr @__ksymtab_vringh_iov_pull_kern, ptr @__ksymtab_vringh_iov_pull_user, ptr @__ksymtab_vringh_iov_push_iotlb, ptr @__ksymtab_vringh_iov_push_kern, ptr @__ksymtab_vringh_iov_push_user, ptr @__ksymtab_vringh_kiov_advance, ptr @__ksymtab_vringh_need_notify_iotlb, ptr @__ksymtab_vringh_need_notify_kern, ptr @__ksymtab_vringh_need_notify_user, ptr @__ksymtab_vringh_notify_disable_iotlb, ptr @__ksymtab_vringh_notify_disable_kern, ptr @__ksymtab_vringh_notify_disable_user, ptr @__ksymtab_vringh_notify_enable_iotlb, ptr @__ksymtab_vringh_notify_enable_kern, ptr @__ksymtab_vringh_notify_enable_user, ptr @__ksymtab_vringh_set_iotlb, ptr @vringh_bad._entry, ptr @vringh_bad._entry_ptr, ptr @.str, ptr @vringh_bad.vringh_rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vringh_bad.vringh_rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vringh_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vringh_kiov_advance(ptr nocapture noundef %iov, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i = getelementptr inbounds %struct.vringh_kiov, ptr %iov, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not56 = icmp eq i32 %len, 0
  br i1 %tobool.not56, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %used = getelementptr inbounds %struct.vringh_kiov, ptr %iov, i32 0, i32 3
  %consumed = getelementptr inbounds %struct.vringh_kiov, ptr %iov, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %len.addr.057 = phi i32 [ %len, %land.rhs.lr.ph ], [ %sub29, %if.end.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 4
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %4 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iov, align 4
  %iov_len = getelementptr %struct.kvec, ptr %5, i32 %1, i32 1
  %6 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iov_len, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %len.addr.057)
  %9 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %consumed, align 4
  %add = add i32 %10, %8
  store i32 %add, ptr %consumed, align 4
  %11 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iov_len, align 4
  %sub = sub i32 %12, %8
  store i32 %sub, ptr %iov_len, align 4
  %13 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iov, align 4
  %15 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i, align 4
  %arrayidx10 = getelementptr %struct.kvec, ptr %14, i32 %16
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx10, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 %8
  store ptr %add.ptr, ptr %arrayidx10, align 4
  %19 = load ptr, ptr %iov, align 4
  %20 = load i32, ptr %i, align 4
  %iov_len14 = getelementptr %struct.kvec, ptr %19, i32 %20, i32 1
  %21 = ptrtoint ptr %iov_len14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iov_len14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not = icmp eq i32 %22, 0
  br i1 %tobool15.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %consumed, align 4
  %25 = ptrtoint ptr %iov_len14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %iov_len14, align 4
  %26 = load i32, ptr %consumed, align 4
  %27 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iov, align 4
  %29 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i, align 4
  %arrayidx24 = getelementptr %struct.kvec, ptr %28, i32 %30
  %31 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx24, align 4
  %idx.neg = sub i32 0, %26
  %add.ptr26 = getelementptr i8, ptr %32, i32 %idx.neg
  store ptr %add.ptr26, ptr %arrayidx24, align 4
  store i32 0, ptr %consumed, align 4
  %33 = load i32, ptr %i, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %sub29 = sub i32 %len.addr.057, %8
  %tobool.not = icmp eq i32 %sub29, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_init_user(ptr nocapture noundef writeonly %vrh, i64 noundef %features, i32 noundef %num, i1 noundef zeroext %weak_barriers, ptr noundef %desc, ptr noundef %avail, ptr noundef %used) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %num, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %0)
  %1 = icmp ult i32 %0, 65535
  %2 = tail call i32 @llvm.ctpop.i32(i32 %num), !range !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %tobool2.not = icmp ult i32 %2, 2
  %or.cond34 = and i1 %1, %tobool2.not
  br i1 %or.cond34, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str, i32 noundef %num) #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %frombool = zext i1 %weak_barriers to i8
  %and3 = lshr i64 %features, 32
  %3 = trunc i64 %and3 to i8
  %4 = and i8 %3, 1
  %5 = ptrtoint ptr %vrh to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %vrh, align 4
  %event_indices = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 1
  %and6 = lshr i64 %features, 29
  %6 = trunc i64 %and6 to i8
  %7 = and i8 %6, 1
  %8 = ptrtoint ptr %event_indices to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %event_indices, align 1
  %weak_barriers10 = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 2
  %9 = ptrtoint ptr %weak_barriers10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %weak_barriers10, align 2
  %last_avail_idx = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 3
  %vring = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %10 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %last_avail_idx, align 4
  %11 = ptrtoint ptr %vring to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %num, ptr %vring, align 4
  %desc14 = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %desc14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %desc, ptr %desc14, align 4
  %avail16 = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %avail16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %avail, ptr %avail16, align 4
  %used18 = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %used18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %used, ptr %used18, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vringh_bad(ptr noundef %fmt, ...) unnamed_addr #3 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @vringh_bad.vringh_rs, ptr noundef nonnull @__func__.vringh_bad) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #15
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !133
  call void @llvm.va_start(ptr nonnull %ap)
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #19
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call2 = call i32 @vprintk(ptr noundef %fmt, [1 x i32] %.fca.0.insert) #15
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_getdesc_user(ptr noundef %vrh, ptr noundef %riov, ptr noundef %wiov, ptr noundef %getrange, ptr nocapture noundef writeonly %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vring = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %0 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vring, align 4
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %head to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %head, align 2
  %last_avail_idx = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 3
  %avail.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 2
  %3 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %avail.i, align 4
  %idx.i = getelementptr inbounds %struct.vring_avail, ptr %4, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 586) #15
  %5 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i50 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i50 to ptr
  %cpu_domain.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i51) #11, !srcloc !134
  %and.i.i52 = and i32 %7, -13
  %or.i.i53 = or i32 %and.i.i52, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i53) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  %8 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %idx.i, i32 -1226833921) #15, !srcloc !137
  %asmresult.i54 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i54)
  %tobool.not.i = icmp eq i32 %asmresult.i54, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %avail.i, align 4
  %idx3.i = getelementptr inbounds %struct.vring_avail, ptr %10, i32 0, i32 1
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.4, ptr noundef %idx3.i) #19
  br label %__vringh_get_head.exit

if.end.i:                                         ; preds = %entry
  %11 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.not.i.i57 = icmp eq i8 %12, 0
  %asmresult1.i55 = extractvalue { i32, i32 } %8, 1
  %conv.i56 = trunc i32 %asmresult1.i55 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv.i56) #15
  %retval.0.i.i.i58 = select i1 %tobool.not.i.not.i.i57, i16 %conv.i56, i16 %13
  %14 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %last_avail_idx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %retval.0.i.i.i58)
  %cmp.i = icmp eq i16 %15, %retval.0.i.i.i58
  br i1 %cmp.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vring, align 4
  br label %__vringh_get_head.exit

if.end8.i:                                        ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15
  %18 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %last_avail_idx, align 2
  %20 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vring, align 4
  %22 = trunc i32 %21 to i16
  %23 = add i16 %22, -1
  %conv13.i = and i16 %23, %19
  %24 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %avail.i, align 4
  %idxprom.i = zext i16 %conv13.i to i32
  %arrayidx.i = getelementptr %struct.vring_avail, ptr %25, i32 0, i32 2, i32 %idxprom.i
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 586) #15
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #11, !srcloc !134
  %and.i.i = and i32 %28, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  %29 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx.i, i32 -1226833921) #15, !srcloc !137
  %asmresult.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool17.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool17.not.i, label %if.end25.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %last_avail_idx, align 2
  %conv19.i = zext i16 %31 to i32
  %32 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %avail.i, align 4
  %arrayidx24.i = getelementptr %struct.vring_avail, ptr %33, i32 0, i32 2, i32 %idxprom.i
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.5, i32 noundef %conv19.i, ptr noundef %arrayidx24.i) #19
  br label %__vringh_get_head.exit

if.end25.i:                                       ; preds = %if.end8.i
  %34 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.not.i.i = icmp eq i8 %35, 0
  %asmresult1.i = extractvalue { i32, i32 } %29, 1
  %conv.i = trunc i32 %asmresult1.i to i16
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #15
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 %conv.i, i16 %36
  %conv26.i = zext i16 %retval.0.i.i.i to i32
  %37 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vring, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv26.i)
  %cmp29.not.i = icmp ugt i32 %38, %conv26.i
  br i1 %cmp29.not.i, label %__vringh_get_head.exit.thread61, label %__vringh_get_head.exit.thread

__vringh_get_head.exit.thread:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.6, i32 noundef %conv26.i, i32 noundef %38) #19
  br label %cleanup

__vringh_get_head.exit.thread61:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %last_avail_idx, align 2
  %inc.i = add i16 %40, 1
  store i16 %inc.i, ptr %last_avail_idx, align 2
  br label %if.end

__vringh_get_head.exit:                           ; preds = %if.then18.i, %if.then6.i, %if.then.i
  %retval.0.i = phi i32 [ %asmresult.i54, %if.then.i ], [ %17, %if.then6.i ], [ %asmresult.i, %if.then18.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %__vringh_get_head.exit.cleanup_crit_edge, label %__vringh_get_head.exit.if.end_crit_edge

__vringh_get_head.exit.if.end_crit_edge:          ; preds = %__vringh_get_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

__vringh_get_head.exit.cleanup_crit_edge:         ; preds = %__vringh_get_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %__vringh_get_head.exit.if.end_crit_edge, %__vringh_get_head.exit.thread61
  %retval.0.i64 = phi i32 [ %conv26.i, %__vringh_get_head.exit.thread61 ], [ %retval.0.i, %__vringh_get_head.exit.if.end_crit_edge ]
  %41 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vring, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i64, i32 %42)
  %cmp4 = icmp eq i32 %retval.0.i64, %42
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %do.end34

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv35 = trunc i32 %retval.0.i64 to i16
  %43 = ptrtoint ptr %head to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv35, ptr %head, align 2
  %call36 = tail call fastcc i32 @__vringh_iov(ptr noundef %vrh, i16 noundef zeroext %conv35, ptr noundef %riov, ptr noundef %wiov, ptr noundef nonnull @range_check, ptr noundef %getrange, i32 noundef 3264, ptr noundef nonnull @copydesc_user)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool.not = icmp eq i32 %call36, 0
  %.call36 = select i1 %tobool.not, i32 1, i32 %call36
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.end.cleanup_crit_edge, %__vringh_get_head.exit.cleanup_crit_edge, %__vringh_get_head.exit.thread
  %retval.0 = phi i32 [ %retval.0.i, %__vringh_get_head.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %.call36, %do.end34 ], [ -22, %__vringh_get_head.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__vringh_iov(ptr noundef %vrh, i16 noundef zeroext %i, ptr noundef %riov, ptr noundef %wiov, ptr nocapture noundef readonly %rcheck, ptr noundef %getrange, i32 noundef %gfp, ptr nocapture noundef readonly %copy) unnamed_addr #4 align 64 {
entry:
  %i.addr = alloca i16, align 2
  %up_next = alloca i32, align 4
  %desc_max = alloca i32, align 4
  %desc = alloca %struct.vring_desc, align 8
  %descs = alloca ptr, align 4
  %range = alloca %struct.vringh_range, align 8
  %slowrange = alloca %struct.vringh_range, align 8
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %i.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %i, ptr %i.addr, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %up_next) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_max) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc) #15
  %1 = getelementptr inbounds %struct.vring_desc, ptr %desc, i32 0, i32 1
  %2 = getelementptr inbounds %struct.vring_desc, ptr %desc, i32 0, i32 2
  %3 = getelementptr inbounds %struct.vring_desc, ptr %desc, i32 0, i32 3
  %4 = call ptr @memset(ptr %desc, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %descs) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %range) #15
  %5 = call ptr @memcpy(ptr %range, ptr @__const.__vringh_iov.range, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %slowrange) #15
  %vring = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %desc1 = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 1
  %6 = call ptr @memset(ptr %slowrange, i32 255, i32 24)
  %7 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc1, align 4
  %9 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %descs, align 4
  %10 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vring, align 4
  %12 = ptrtoint ptr %desc_max to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %desc_max, align 4
  %13 = ptrtoint ptr %up_next to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %up_next, align 4
  %tobool.not = icmp eq ptr %riov, null
  %tobool3.not = icmp eq ptr %wiov, null
  %spec.select = and i1 %tobool.not, %tobool3.not
  br i1 %spec.select, label %do.end, label %if.end26, !prof !139

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 306, i32 noundef 9, ptr noundef null) #15
  br label %cleanup217

if.end26:                                         ; preds = %entry
  br i1 %tobool.not, label %if.end26.if.end30_crit_edge, label %if.then28

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %consumed = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 1
  %14 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %consumed, align 4
  %used = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 3
  %15 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %used, align 4
  %i29 = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 2
  %16 = ptrtoint ptr %i29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %i29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  br i1 %tobool3.not, label %if.end30.if.end36_crit_edge, label %if.then32

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %consumed33 = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 1
  %17 = ptrtoint ptr %consumed33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %consumed33, align 4
  %used34 = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 3
  %18 = ptrtoint ptr %used34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %used34, align 4
  %i35 = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 2
  %19 = ptrtoint ptr %i35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %i35, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end30.if.end36_crit_edge
  %offset = getelementptr inbounds %struct.vringh_range, ptr %range, i32 0, i32 2
  %used108 = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %cleanup214, %if.end36
  %count.0 = phi i32 [ 0, %if.end36 ], [ %count.1, %cleanup214 ]
  %slow.0.off0 = phi i1 [ false, %if.end36 ], [ %slow.4.off0, %cleanup214 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #15
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %len, align 4, !annotation !133
  %21 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %descs, align 4
  %23 = ptrtoint ptr %i.addr to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %i.addr, align 2
  %idxprom = zext i16 %24 to i32
  %arrayidx = getelementptr %struct.vring_desc, ptr %22, i32 %idxprom
  br i1 %slow.0.off0, label %if.then44, label %if.else, !prof !139

if.then44:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  %call = call fastcc i32 @slow_copy(ptr noundef %vrh, ptr noundef nonnull %desc, ptr noundef %arrayidx, ptr noundef %rcheck, ptr noundef %getrange, ptr noundef nonnull %slowrange, ptr noundef %copy)
  br label %if.end48

if.else:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  %call47 = call i32 %copy(ptr noundef %vrh, ptr noundef nonnull %desc, ptr noundef %arrayidx, i32 noundef 16) #15, !callees !140
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then44
  %err.0 = phi i32 [ %call, %if.then44 ], [ %call47, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool49.not = icmp eq i32 %err.0, 0
  br i1 %tobool49.not, label %if.end57, label %if.end48.fail_crit_edge, !prof !141

if.end48.fail_crit_edge:                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end57:                                         ; preds = %if.end48
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %2, align 4
  %27 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.not.i = icmp eq i8 %28, 0
  %retval.0.i.i = select i1 %tobool.not.i.not.i, i16 4, i16 1024
  %and296 = and i16 %retval.0.i.i, %26
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and296)
  %tobool60.not = icmp eq i16 %and296, 0
  br i1 %tobool60.not, label %if.end91, label %if.then67, !prof !141

if.then67:                                        ; preds = %if.end57
  %29 = ptrtoint ptr %desc to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %desc, align 8
  %31 = call i64 @llvm.bswap.i64(i64 %30) #15
  %retval.0.i.i300 = select i1 %tobool.not.i.not.i, i64 %30, i64 %31
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 8
  %34 = call i32 @llvm.bswap.i32(i32 %33) #15
  %retval.0.i.i302 = select i1 %tobool.not.i.not.i, i32 %33, i32 %34
  %35 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i302, ptr %len, align 4
  %call72 = call zeroext i1 %rcheck(ptr noundef %vrh, i64 noundef %retval.0.i.i300, ptr noundef nonnull %len, ptr noundef nonnull %range, ptr noundef %getrange) #15, !callees !142
  br i1 %call72, label %if.end74, label %if.then67.fail_crit_edge

if.then67.fail_crit_edge:                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end74:                                         ; preds = %if.then67
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 8
  %40 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.not.i303 = icmp eq i8 %41, 0
  %42 = call i32 @llvm.bswap.i32(i32 %39) #15
  %retval.0.i.i304 = select i1 %tobool.not.i.not.i303, i32 %39, i32 %42
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %retval.0.i.i304)
  %cmp.not = icmp eq i32 %37, %retval.0.i.i304
  br i1 %cmp.not, label %if.end74.if.end85_crit_edge, label %if.then84, !prof !141

if.end74.if.end85_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85

if.then84:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  %43 = call ptr @memcpy(ptr %slowrange, ptr %range, i32 24)
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end74.if.end85_crit_edge
  %slow.1.off0 = phi i1 [ true, %if.then84 ], [ %slow.0.off0, %if.end74.if.end85_crit_edge ]
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %offset, align 8
  %add = add i64 %45, %retval.0.i.i300
  %conv86 = trunc i64 %add to i32
  %46 = inttoptr i32 %conv86 to ptr
  %call87 = call fastcc i32 @move_to_indirect(ptr noundef %vrh, ptr noundef nonnull %up_next, ptr noundef nonnull %i.addr, ptr noundef %46, ptr noundef nonnull %desc, ptr noundef nonnull %descs, ptr noundef nonnull %desc_max)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end85.cleanup214_crit_edge, label %if.end85.fail_crit_edge

if.end85.fail_crit_edge:                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end85.cleanup214_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup214

if.end91:                                         ; preds = %if.end57
  %inc = add i32 %count.0, 1
  %47 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vring, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0, i32 %48)
  %cmp94 = icmp eq i32 %count.0, %48
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %descs, align 4
  call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.7, ptr noundef %50) #18
  br label %fail

if.end97:                                         ; preds = %if.end91
  %retval.0.i.i306 = select i1 %tobool.not.i.not.i, i16 2, i16 512
  %and102297 = and i16 %retval.0.i.i306, %26
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and102297)
  %tobool103.not = icmp ne i16 %and102297, 0
  %brmerge = or i1 %tobool3.not, %tobool103.not
  %wiov.mux = select i1 %tobool103.not, ptr %wiov, ptr %riov
  br i1 %brmerge, label %if.end97.if.end121_crit_edge, label %land.rhs107

if.end97.if.end121_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end121

land.rhs107:                                      ; preds = %if.end97
  %51 = ptrtoint ptr %used108 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %used108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool109.not = icmp eq i32 %52, 0
  br i1 %tobool109.not, label %land.rhs107.if.end121_crit_edge, label %if.then117, !prof !141

land.rhs107.if.end121_crit_edge:                  ; preds = %land.rhs107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end121

if.then117:                                       ; preds = %land.rhs107
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %descs, align 4
  %55 = ptrtoint ptr %i.addr to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %i.addr, align 2
  %idxprom118 = zext i16 %56 to i32
  %arrayidx119 = getelementptr %struct.vring_desc, ptr %54, i32 %idxprom118
  call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.8, ptr noundef %arrayidx119) #18
  br label %fail

if.end121:                                        ; preds = %land.rhs107.if.end121_crit_edge, %if.end97.if.end121_crit_edge
  %iov.0 = phi ptr [ %riov, %land.rhs107.if.end121_crit_edge ], [ %wiov.mux, %if.end97.if.end121_crit_edge ]
  %tobool122.not = icmp eq ptr %iov.0, null
  br i1 %tobool122.not, label %if.then123, label %again.preheader

again.preheader:                                  ; preds = %if.end121
  %used140 = getelementptr inbounds %struct.vringh_kiov, ptr %iov.0, i32 0, i32 3
  %max_num = getelementptr inbounds %struct.vringh_kiov, ptr %iov.0, i32 0, i32 4
  br label %again

if.then123:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #17
  %cond = select i1 %tobool3.not, ptr @.str.10, ptr @.str.11
  call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.9, ptr noundef nonnull %cond) #18
  br label %fail

again:                                            ; preds = %if.then174, %again.preheader
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %1, align 8
  %59 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i.not.i307 = icmp eq i8 %60, 0
  %61 = call i32 @llvm.bswap.i32(i32 %58) #15
  %retval.0.i.i308 = select i1 %tobool.not.i.not.i307, i32 %58, i32 %61
  %62 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %retval.0.i.i308, ptr %len, align 4
  %63 = ptrtoint ptr %desc to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %desc, align 8
  %65 = call i64 @llvm.bswap.i64(i64 %64) #15
  %retval.0.i.i310 = select i1 %tobool.not.i.not.i307, i64 %64, i64 %65
  %call132 = call zeroext i1 %rcheck(ptr noundef %vrh, i64 noundef %retval.0.i.i310, ptr noundef nonnull %len, ptr noundef nonnull %range, ptr noundef %getrange) #15, !callees !142
  br i1 %call132, label %if.end134, label %again.fail_crit_edge

again.fail_crit_edge:                             ; preds = %again
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end134:                                        ; preds = %again
  %66 = ptrtoint ptr %desc to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %desc, align 8
  %68 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i.not.i311 = icmp eq i8 %69, 0
  %70 = call i64 @llvm.bswap.i64(i64 %67) #15
  %retval.0.i.i312 = select i1 %tobool.not.i.not.i311, i64 %67, i64 %70
  %71 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %offset, align 8
  %add138 = add i64 %retval.0.i.i312, %72
  %conv139 = trunc i64 %add138 to i32
  %73 = inttoptr i32 %conv139 to ptr
  %74 = ptrtoint ptr %used140 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %used140, align 4
  %76 = ptrtoint ptr %max_num to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %max_num, align 4
  %and141 = and i32 %77, -134217729
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %and141)
  %cmp142 = icmp eq i32 %75, %and141
  br i1 %cmp142, label %if.then150, label %if.end134.if.end155_crit_edge, !prof !139

if.end134.if.end155_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155

if.then150:                                       ; preds = %if.end134
  %call151 = call fastcc i32 @resize_iovec(ptr noundef nonnull %iov.0, i32 noundef %gfp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then150.if.end155_crit_edge, label %if.then150.fail_crit_edge

if.then150.fail_crit_edge:                        ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.then150.if.end155_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155

if.end155:                                        ; preds = %if.then150.if.end155_crit_edge, %if.end134.if.end155_crit_edge
  %78 = ptrtoint ptr %iov.0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %iov.0, align 4
  %80 = ptrtoint ptr %used140 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %used140, align 4
  %arrayidx158 = getelementptr %struct.kvec, ptr %79, i32 %81
  %82 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %73, ptr %arrayidx158, align 4
  %83 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len, align 4
  %85 = load ptr, ptr %iov.0, align 4
  %86 = load i32, ptr %used140, align 4
  %iov_len = getelementptr %struct.kvec, ptr %85, i32 %86, i32 1
  %87 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %84, ptr %iov_len, align 4
  %88 = load i32, ptr %used140, align 4
  %inc163 = add i32 %88, 1
  store i32 %inc163, ptr %used140, align 4
  %89 = load i32, ptr %len, align 4
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %1, align 8
  %92 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i.not.i313 = icmp eq i8 %93, 0
  %94 = call i32 @llvm.bswap.i32(i32 %91) #15
  %retval.0.i.i314 = select i1 %tobool.not.i.not.i313, i32 %91, i32 %94
  %cmp166.not = icmp eq i32 %retval.0.i.i314, %89
  br i1 %cmp166.not, label %if.end185, label %if.then174, !prof !141

if.then174:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #17
  %sub = sub i32 %retval.0.i.i314, %89
  %95 = call i32 @llvm.bswap.i32(i32 %sub) #15
  %retval.0.i.i318 = select i1 %tobool.not.i.not.i313, i32 %sub, i32 %95
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %retval.0.i.i318, ptr %1, align 8
  %97 = ptrtoint ptr %desc to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %desc, align 8
  %99 = call i64 @llvm.bswap.i64(i64 %98) #15
  %retval.0.i.i320 = select i1 %tobool.not.i.not.i313, i64 %98, i64 %99
  %conv181 = zext i32 %89 to i64
  %add182 = add i64 %retval.0.i.i320, %conv181
  %100 = call i64 @llvm.bswap.i64(i64 %add182) #15
  %retval.0.i.i322 = select i1 %tobool.not.i.not.i313, i64 %add182, i64 %100
  %101 = ptrtoint ptr %desc to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %retval.0.i.i322, ptr %desc, align 8
  br label %again

if.end185:                                        ; preds = %if.end155
  %102 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %2, align 4
  %retval.0.i.i324 = select i1 %tobool.not.i.not.i313, i16 1, i16 256
  %and190298 = and i16 %103, %retval.0.i.i324
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and190298)
  %tobool191.not = icmp eq i16 %and190298, 0
  br i1 %tobool191.not, label %if.else194, label %if.then192

if.then192:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #17
  %104 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %3, align 2
  %106 = call i16 @llvm.bswap.i16(i16 %105) #15
  %retval.0.i.i326 = select i1 %tobool.not.i.not.i313, i16 %105, i16 %106
  br label %if.end207

if.else194:                                       ; preds = %if.end185
  %107 = ptrtoint ptr %up_next to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %up_next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp195 = icmp sgt i32 %108, 0
  br i1 %cmp195, label %if.then203, label %cleanup214.thread332, !prof !139

cleanup214.thread332:                             ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #15
  br label %cleanup217

if.then203:                                       ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i = trunc i32 %108 to i16
  %109 = ptrtoint ptr %up_next to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %up_next, align 4
  %110 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %desc1, align 4
  %112 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %descs, align 4
  %113 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %vring, align 4
  %115 = ptrtoint ptr %desc_max to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %desc_max, align 4
  br label %if.end207

if.end207:                                        ; preds = %if.then203, %if.then192
  %storemerge = phi i16 [ %conv.i, %if.then203 ], [ %retval.0.i.i326, %if.then192 ]
  %slow.3.off0 = phi i1 [ false, %if.then203 ], [ %slow.0.off0, %if.then192 ]
  %116 = ptrtoint ptr %i.addr to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %storemerge, ptr %i.addr, align 2
  %conv208 = zext i16 %storemerge to i32
  %117 = ptrtoint ptr %desc_max to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %desc_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %conv208)
  %cmp209.not = icmp sgt i32 %118, %conv208
  br i1 %cmp209.not, label %if.end207.cleanup214_crit_edge, label %if.then211

if.end207.cleanup214_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup214

if.then211:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.12, i32 noundef %conv208, i32 noundef %118) #18
  br label %fail

cleanup214:                                       ; preds = %if.end207.cleanup214_crit_edge, %if.end85.cleanup214_crit_edge
  %count.1 = phi i32 [ %inc, %if.end207.cleanup214_crit_edge ], [ %count.0, %if.end85.cleanup214_crit_edge ]
  %slow.4.off0 = phi i1 [ %slow.3.off0, %if.end207.cleanup214_crit_edge ], [ %slow.1.off0, %if.end85.cleanup214_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #15
  br label %for.cond

fail:                                             ; preds = %if.then211, %if.then150.fail_crit_edge, %again.fail_crit_edge, %if.then123, %if.then117, %if.then96, %if.end85.fail_crit_edge, %if.then67.fail_crit_edge, %if.end48.fail_crit_edge
  %err.4.ph = phi i32 [ -22, %if.then117 ], [ -71, %if.then123 ], [ -22, %if.then211 ], [ -40, %if.then96 ], [ -22, %again.fail_crit_edge ], [ %call151, %if.then150.fail_crit_edge ], [ %err.0, %if.end48.fail_crit_edge ], [ -22, %if.then67.fail_crit_edge ], [ %call87, %if.end85.fail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #15
  br label %cleanup217

cleanup217:                                       ; preds = %fail, %cleanup214.thread332, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.4.ph, %fail ], [ 0, %cleanup214.thread332 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %slowrange) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %range) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %descs) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_max) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %up_next) #15
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @range_check(ptr noundef %vrh, i64 noundef %addr, ptr nocapture noundef %len, ptr noundef %range, ptr nocapture noundef readonly %getrange) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %range, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %addr)
  %cmp = icmp ugt i64 %1, %addr
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %end_incl = getelementptr inbounds %struct.vringh_range, ptr %range, i32 0, i32 1
  %2 = ptrtoint ptr %end_incl to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %end_incl, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %addr)
  %cmp1 = icmp ult i64 %3, %addr
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call zeroext i1 %getrange(ptr noundef %vrh, i64 noundef %addr, ptr noundef %range) #15
  br i1 %call, label %if.then.do.body_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body:                                          ; preds = %if.then.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge
  %4 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %range, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %addr)
  %cmp5 = icmp ugt i64 %5, %addr
  br i1 %cmp5, label %do.body.do.body10_crit_edge, label %lor.rhs, !prof !139

do.body.do.body10_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body10

lor.rhs:                                          ; preds = %do.body
  %end_incl6 = getelementptr inbounds %struct.vringh_range, ptr %range, i32 0, i32 1
  %6 = ptrtoint ptr %end_incl6 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %end_incl6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %addr)
  %cmp7 = icmp ult i64 %7, %addr
  br i1 %cmp7, label %lor.rhs.do.body10_crit_edge, label %do.end14, !prof !139

lor.rhs.do.body10_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body10

do.body10:                                        ; preds = %lor.rhs.do.body10_crit_edge, %do.body.do.body10_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/vhost/vringh.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #15, !srcloc !143
  unreachable

do.end14:                                         ; preds = %lor.rhs
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %conv = zext i32 %9 to i64
  %add = add i64 %conv, %addr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp15 = icmp eq i64 %add, 0
  br i1 %cmp15, label %if.then23, label %if.end29, !prof !139

if.then23:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %7)
  %cmp25 = icmp eq i64 %7, -1
  br i1 %cmp25, label %if.then23.return_crit_edge, label %if.then23.truncate_crit_edge

if.then23.truncate_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  br label %truncate

if.then23.return_crit_edge:                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end29:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %addr)
  %cmp32 = icmp ult i64 %add, %addr
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.15, i32 noundef %9, i64 noundef %addr) #18
  br label %return

if.end35:                                         ; preds = %if.end29
  %sub = add i64 %add, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %7)
  %cmp39 = icmp ugt i64 %sub, %7
  br i1 %cmp39, label %if.end35.truncate_crit_edge, label %if.end35.return_crit_edge, !prof !139

if.end35.return_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end35.truncate_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %truncate

truncate:                                         ; preds = %if.end35.truncate_crit_edge, %if.then23.truncate_crit_edge
  %add50 = sub i64 1, %addr
  %sub51 = add i64 %add50, %7
  %conv52 = trunc i64 %sub51 to i32
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv52, ptr %len, align 4
  br label %return

return:                                           ; preds = %truncate, %if.end35.return_crit_edge, %if.then34, %if.then23.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i1 [ true, %truncate ], [ false, %if.then34 ], [ false, %if.then.return_crit_edge ], [ true, %if.then23.return_crit_edge ], [ true, %if.end35.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @copydesc_user(ptr nocapture noundef readnone %vrh, ptr noundef %dst, ptr noundef %src, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_from_user.exit_crit_edge, label %if.then27.i.i, !prof !141

land.rhs16.i.i.copy_from_user.exit_crit_edge:     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_from_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_from_user.exit

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %dst, i32 noundef %len, i1 noundef zeroext false) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 156) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %src, i32 %len, i32 -1226833920) #20, !srcloc !144
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !141

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst, i32 noundef %len) #15
  %1 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !134
  %and.i.i.i.i = and i32 %3, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dst, ptr noundef %src, i32 noundef %len) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %len, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %len, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.then11.i.i, !prof !141

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %len, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %dst, i32 %sub.i.i
  %4 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_from_user.exit_crit_edge
  %5 = phi i32 [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.copy_from_user.exit_crit_edge ]
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_iov_pull_user(ptr nocapture noundef %riov, ptr noundef %dst, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i.i = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not33.i = icmp eq i32 %len, 0
  br i1 %tobool.not33.i, label %entry.vringh_iov_xfer.exit_crit_edge, label %land.rhs.lr.ph.i

entry.vringh_iov_xfer.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

land.rhs.lr.ph.i:                                 ; preds = %entry
  %used.i = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 3
  %consumed.i.i = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.backedge.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %done.036.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %add.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %ptr.addr.035.i = phi ptr [ %dst, %land.rhs.lr.ph.i ], [ %add.ptr.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %len.addr.034.i = phi i32 [ %len, %land.rhs.lr.ph.i ], [ %sub.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %0 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i.i, align 4
  %2 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp ult i32 %1, %3
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.vringh_iov_xfer.exit_crit_edge

land.rhs.i.vringh_iov_xfer.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

while.body.i:                                     ; preds = %land.rhs.i
  %4 = ptrtoint ptr %riov to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %riov, align 4
  %iov_len.i = getelementptr %struct.kvec, ptr %5, i32 %1, i32 1
  %6 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iov_len.i, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %len.addr.034.i) #15
  %arrayidx6.i = getelementptr %struct.kvec, ptr %5, i32 %1
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9.i.i.i = icmp slt i32 %8, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %while.body.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.vringh_iov_xfer.exit_crit_edge, label %if.then27.i.i.i, !prof !141

land.rhs16.i.i.i.vringh_iov_xfer.exit_crit_edge:  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %vringh_iov_xfer.exit

if.then.i.i.i.i:                                  ; preds = %while.body.i
  tail call void @__check_object_size(ptr noundef %ptr.addr.035.i, i32 noundef %8, i1 noundef zeroext false) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 156) #15
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %8, i32 -1226833920) #20, !srcloc !144
  %asmresult.i.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !141

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ptr.addr.035.i, i32 noundef %8) #15
  %12 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #11, !srcloc !134
  %and.i.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %ptr.addr.035.i, ptr noundef %10, i32 noundef %8) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %8, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %8, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.then11.i.i.i, !prof !141

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i = sub i32 %8, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ptr.addr.035.i, i32 %sub.i.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %vringh_iov_xfer.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %add.i = add i32 %8, %done.036.i
  %sub.i = sub i32 %len.addr.034.i, %8
  %add.ptr.i = getelementptr i8, ptr %ptr.addr.035.i, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not56.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not56.i.i, label %if.end.i.while.cond.backedge.i_crit_edge, label %if.end.i.land.rhs.i.i_crit_edge

if.end.i.land.rhs.i.i_crit_edge:                  ; preds = %if.end.i
  br label %land.rhs.i.i

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

land.rhs.i.i:                                     ; preds = %if.end.i.i.land.rhs.i.i_crit_edge, %if.end.i.land.rhs.i.i_crit_edge
  %len.addr.057.i.i = phi i32 [ %sub29.i.i, %if.end.i.i.land.rhs.i.i_crit_edge ], [ %8, %if.end.i.land.rhs.i.i_crit_edge ]
  %16 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i.i, align 4
  %18 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.i.i = icmp ult i32 %17, %19
  br i1 %cmp.i.i, label %while.body.i.i, label %land.rhs.i.i.while.cond.backedge.i_crit_edge

land.rhs.i.i.while.cond.backedge.i_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %20 = ptrtoint ptr %riov to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %riov, align 4
  %iov_len.i.i = getelementptr %struct.kvec, ptr %21, i32 %17, i32 1
  %22 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iov_len.i.i, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %len.addr.057.i.i) #15
  %25 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %consumed.i.i, align 4
  %add.i.i = add i32 %26, %24
  store i32 %add.i.i, ptr %consumed.i.i, align 4
  %27 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iov_len.i.i, align 4
  %sub.i.i = sub i32 %28, %24
  store i32 %sub.i.i, ptr %iov_len.i.i, align 4
  %29 = ptrtoint ptr %riov to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %riov, align 4
  %31 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i.i, align 4
  %arrayidx10.i.i = getelementptr %struct.kvec, ptr %30, i32 %32
  %33 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx10.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %24
  store ptr %add.ptr.i.i, ptr %arrayidx10.i.i, align 4
  %35 = load ptr, ptr %riov, align 4
  %36 = load i32, ptr %i.i, align 4
  %iov_len14.i.i = getelementptr %struct.kvec, ptr %35, i32 %36, i32 1
  %37 = ptrtoint ptr %iov_len14.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iov_len14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool15.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool15.not.i.i, label %if.then.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %consumed.i.i, align 4
  %41 = ptrtoint ptr %iov_len14.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %iov_len14.i.i, align 4
  %42 = load i32, ptr %consumed.i.i, align 4
  %43 = ptrtoint ptr %riov to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %riov, align 4
  %45 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i.i, align 4
  %arrayidx24.i.i = getelementptr %struct.kvec, ptr %44, i32 %46
  %47 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx24.i.i, align 4
  %idx.neg.i.i = sub i32 0, %42
  %add.ptr26.i.i = getelementptr i8, ptr %48, i32 %idx.neg.i.i
  store ptr %add.ptr26.i.i, ptr %arrayidx24.i.i, align 4
  store i32 0, ptr %consumed.i.i, align 4
  %49 = load i32, ptr %i.i, align 4
  %inc.i.i = add i32 %49, 1
  store i32 %inc.i.i, ptr %i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %sub29.i.i = sub i32 %len.addr.057.i.i, %24
  %tobool.not.i.i = icmp eq i32 %sub29.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.while.cond.backedge.i_crit_edge, label %if.end.i.i.land.rhs.i.i_crit_edge

if.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i.i

if.end.i.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i.i.while.cond.backedge.i_crit_edge, %land.rhs.i.i.while.cond.backedge.i_crit_edge, %if.end.i.while.cond.backedge.i_crit_edge
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge, label %while.cond.backedge.i.land.rhs.i_crit_edge

while.cond.backedge.i.land.rhs.i_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

vringh_iov_xfer.exit:                             ; preds = %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge, %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.vringh_iov_xfer.exit_crit_edge, %land.rhs.i.vringh_iov_xfer.exit_crit_edge, %entry.vringh_iov_xfer.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %entry.vringh_iov_xfer.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.vringh_iov_xfer.exit_crit_edge ], [ %done.036.i, %land.rhs.i.vringh_iov_xfer.exit_crit_edge ], [ %add.i, %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_iov_push_user(ptr nocapture noundef %wiov, ptr noundef %src, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not33.i = icmp eq i32 %len, 0
  br i1 %tobool.not33.i, label %entry.vringh_iov_xfer.exit_crit_edge, label %land.rhs.lr.ph.i

entry.vringh_iov_xfer.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

land.rhs.lr.ph.i:                                 ; preds = %entry
  %used.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 3
  %consumed.i.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.backedge.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %done.036.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %add.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %ptr.addr.035.i = phi ptr [ %src, %land.rhs.lr.ph.i ], [ %add.ptr.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %len.addr.034.i = phi i32 [ %len, %land.rhs.lr.ph.i ], [ %sub.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %0 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i.i, align 4
  %2 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp ult i32 %1, %3
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.vringh_iov_xfer.exit_crit_edge

land.rhs.i.vringh_iov_xfer.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

while.body.i:                                     ; preds = %land.rhs.i
  %4 = ptrtoint ptr %wiov to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiov, align 4
  %iov_len.i = getelementptr %struct.kvec, ptr %5, i32 %1, i32 1
  %6 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iov_len.i, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %len.addr.034.i) #15
  %arrayidx6.i = getelementptr %struct.kvec, ptr %5, i32 %1
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9.i.i.i = icmp slt i32 %8, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %while.body.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.vringh_iov_xfer.exit_crit_edge, label %if.then27.i.i.i, !prof !141

land.rhs16.i.i.i.vringh_iov_xfer.exit_crit_edge:  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %vringh_iov_xfer.exit

if.then.i.i.i.i:                                  ; preds = %while.body.i
  tail call void @__check_object_size(ptr noundef %ptr.addr.035.i, i32 noundef %8, i1 noundef zeroext true) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 174) #15
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %8, i32 -1226833920) #20, !srcloc !145
  %asmresult.i.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ptr.addr.035.i, i32 noundef %8) #15
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %10, ptr noundef %ptr.addr.035.i, i32 noundef %8) #15
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %8, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %8, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool.not.i2 = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool.not.i2, label %if.end.i, label %copy_to_user.exit.i.vringh_iov_xfer.exit_crit_edge

copy_to_user.exit.i.vringh_iov_xfer.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

if.end.i:                                         ; preds = %copy_to_user.exit.i
  %add.i = add i32 %8, %done.036.i
  %sub.i = sub i32 %len.addr.034.i, %8
  %add.ptr.i = getelementptr i8, ptr %ptr.addr.035.i, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not56.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not56.i.i, label %if.end.i.while.cond.backedge.i_crit_edge, label %if.end.i.land.rhs.i.i_crit_edge

if.end.i.land.rhs.i.i_crit_edge:                  ; preds = %if.end.i
  br label %land.rhs.i.i

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

land.rhs.i.i:                                     ; preds = %if.end.i.i.land.rhs.i.i_crit_edge, %if.end.i.land.rhs.i.i_crit_edge
  %len.addr.057.i.i = phi i32 [ %sub29.i.i, %if.end.i.i.land.rhs.i.i_crit_edge ], [ %8, %if.end.i.land.rhs.i.i_crit_edge ]
  %12 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i.i, align 4
  %14 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i.i = icmp ult i32 %13, %15
  br i1 %cmp.i.i, label %while.body.i.i, label %land.rhs.i.i.while.cond.backedge.i_crit_edge

land.rhs.i.i.while.cond.backedge.i_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %16 = ptrtoint ptr %wiov to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiov, align 4
  %iov_len.i.i = getelementptr %struct.kvec, ptr %17, i32 %13, i32 1
  %18 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iov_len.i.i, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %len.addr.057.i.i) #15
  %21 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %consumed.i.i, align 4
  %add.i.i = add i32 %22, %20
  store i32 %add.i.i, ptr %consumed.i.i, align 4
  %23 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iov_len.i.i, align 4
  %sub.i.i = sub i32 %24, %20
  store i32 %sub.i.i, ptr %iov_len.i.i, align 4
  %25 = ptrtoint ptr %wiov to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiov, align 4
  %27 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i.i, align 4
  %arrayidx10.i.i = getelementptr %struct.kvec, ptr %26, i32 %28
  %29 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx10.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %20
  store ptr %add.ptr.i.i, ptr %arrayidx10.i.i, align 4
  %31 = load ptr, ptr %wiov, align 4
  %32 = load i32, ptr %i.i, align 4
  %iov_len14.i.i = getelementptr %struct.kvec, ptr %31, i32 %32, i32 1
  %33 = ptrtoint ptr %iov_len14.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iov_len14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool15.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool15.not.i.i, label %if.then.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %consumed.i.i, align 4
  %37 = ptrtoint ptr %iov_len14.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %iov_len14.i.i, align 4
  %38 = load i32, ptr %consumed.i.i, align 4
  %39 = ptrtoint ptr %wiov to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wiov, align 4
  %41 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i.i, align 4
  %arrayidx24.i.i = getelementptr %struct.kvec, ptr %40, i32 %42
  %43 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx24.i.i, align 4
  %idx.neg.i.i = sub i32 0, %38
  %add.ptr26.i.i = getelementptr i8, ptr %44, i32 %idx.neg.i.i
  store ptr %add.ptr26.i.i, ptr %arrayidx24.i.i, align 4
  store i32 0, ptr %consumed.i.i, align 4
  %45 = load i32, ptr %i.i, align 4
  %inc.i.i = add i32 %45, 1
  store i32 %inc.i.i, ptr %i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %sub29.i.i = sub i32 %len.addr.057.i.i, %20
  %tobool.not.i.i = icmp eq i32 %sub29.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.while.cond.backedge.i_crit_edge, label %if.end.i.i.land.rhs.i.i_crit_edge

if.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i.i

if.end.i.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i.i.while.cond.backedge.i_crit_edge, %land.rhs.i.i.while.cond.backedge.i_crit_edge, %if.end.i.while.cond.backedge.i_crit_edge
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge, label %while.cond.backedge.i.land.rhs.i_crit_edge

while.cond.backedge.i.land.rhs.i_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

vringh_iov_xfer.exit:                             ; preds = %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge, %copy_to_user.exit.i.vringh_iov_xfer.exit_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.vringh_iov_xfer.exit_crit_edge, %land.rhs.i.vringh_iov_xfer.exit_crit_edge, %entry.vringh_iov_xfer.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %entry.vringh_iov_xfer.exit_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.vringh_iov_xfer.exit_crit_edge ], [ -14, %copy_to_user.exit.i.vringh_iov_xfer.exit_crit_edge ], [ %done.036.i, %land.rhs.i.vringh_iov_xfer.exit_crit_edge ], [ %add.i, %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vringh_abandon_user(ptr nocapture noundef %vrh, i32 noundef %num) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %last_avail_idx = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 3
  %0 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %last_avail_idx, align 4
  %2 = trunc i32 %num to i16
  %conv1 = sub i16 %1, %2
  store i16 %conv1, ptr %last_avail_idx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_complete_user(ptr nocapture noundef %vrh, i16 noundef zeroext %head, i32 noundef %len) #2 align 64 {
entry:
  %used = alloca %struct.vring_used_elem, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %used) #15
  %0 = getelementptr inbounds %struct.vring_used_elem, ptr %used, i32 0, i32 1
  %conv = zext i16 %head to i32
  %1 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.not.i = icmp eq i8 %2, 0
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv) #15
  %retval.0.i.i = select i1 %tobool.not.i.not.i, i32 %conv, i32 %3
  %4 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retval.0.i.i, ptr %used, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %len) #15
  %retval.0.i.i7 = select i1 %tobool.not.i.not.i, i32 %len, i32 %5
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i.i7, ptr %0, align 4
  %vring.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %used1.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %7 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %used1.i, align 4
  %last_used_idx.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 4
  %9 = ptrtoint ptr %last_used_idx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %last_used_idx.i, align 2
  %completed.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 5
  %11 = ptrtoint ptr %completed.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %completed.i, align 4
  %13 = trunc i32 %12 to i16
  %conv2.i = add i16 %10, %13
  %conv3.i = zext i16 %conv2.i to i32
  %14 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vring.i, align 4
  %rem.i = urem i32 %conv3.i, %15
  %arrayidx29.i = getelementptr %struct.vring_used, ptr %8, i32 0, i32 2, i32 %rem.i
  tail call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 174) #15
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i, label %entry.if.then33.i_crit_edge, label %if.end.i.i.i

entry.if.then33.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then33.i

if.end.i.i.i:                                     ; preds = %entry
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx29.i, i32 8, i32 -1226833920) #20, !srcloc !145
  %asmresult.i.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.if.then33.i_crit_edge

if.end.i.i.i.if.then33.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then33.i

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %used, i32 noundef 8) #15
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %arrayidx29.i, ptr noundef nonnull %used, i32 noundef 8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i, label %if.end38.i, label %copy_to_user.exit.i.if.then33.i_crit_edge

copy_to_user.exit.i.if.then33.i_crit_edge:        ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then33.i

if.then33.i:                                      ; preds = %copy_to_user.exit.i.if.then33.i_crit_edge, %if.end.i.i.i.if.then33.i_crit_edge, %entry.if.then33.i_crit_edge
  call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.19, i32 noundef 1, i32 noundef %rem.i, ptr noundef %arrayidx29.i) #19
  br label %__vringh_complete.exit

if.end38.i:                                       ; preds = %copy_to_user.exit.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15
  %17 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %used1.i, align 4
  %idx.i = getelementptr inbounds %struct.vring_used, ptr %18, i32 0, i32 1
  %conv44.i = add i16 %conv2.i, 1
  %19 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.not.i.i = icmp eq i8 %20, 0
  %21 = call i16 @llvm.bswap.i16(i16 %conv44.i) #15
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 %conv44.i, i16 %21
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 594) #15
  %22 = call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #11, !srcloc !134
  %and.i.i = and i32 %24, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #15, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  %25 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %idx.i, i16 %retval.0.i.i.i, i32 -1226833921) #15, !srcloc !146
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #15, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool46.not.i = icmp eq i32 %25, 0
  br i1 %tobool46.not.i, label %if.end51.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %used1.i, align 4
  %idx50.i = getelementptr inbounds %struct.vring_used, ptr %27, i32 0, i32 1
  call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.20, ptr noundef %idx50.i) #19
  br label %__vringh_complete.exit

if.end51.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %completed.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %completed.i, align 4
  %add53.i = add i32 %29, 1
  store i32 %add53.i, ptr %completed.i, align 4
  br label %__vringh_complete.exit

__vringh_complete.exit:                           ; preds = %if.end51.i, %if.then47.i, %if.then33.i
  %retval.0.i = phi i32 [ -14, %if.then33.i ], [ %25, %if.then47.i ], [ 0, %if.end51.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %used) #15
  ret i32 %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @putused_user(ptr nocapture noundef readnone %vrh, ptr noundef %dst, ptr noundef %src, i32 noundef %num) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %mul = shl i32 %num, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !141

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %src, i32 noundef %mul, i1 noundef zeroext true) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 174) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %dst, i32 %mul, i32 -1226833920) #20, !srcloc !145
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef %mul) #15
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %dst, ptr noundef %src, i32 noundef %mul) #15
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  %1 = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_complete_multi_user(ptr nocapture noundef %vrh, ptr noundef %used, i32 noundef %num_used) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vring.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %used1.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %used1.i, align 4
  %last_used_idx.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 4
  %2 = ptrtoint ptr %last_used_idx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %last_used_idx.i, align 2
  %completed.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 5
  %4 = ptrtoint ptr %completed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %completed.i, align 4
  %6 = trunc i32 %5 to i16
  %conv2.i = add i16 %3, %6
  %conv3.i = zext i16 %conv2.i to i32
  %7 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vring.i, align 4
  %rem.i = urem i32 %conv3.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_used)
  %cmp.i = icmp ult i32 %num_used, 2
  %add8.i = add i32 %rem.i, %num_used
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i, i32 %8)
  %cmp11.not.i = icmp ult i32 %add8.i, %8
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp11.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then.i, !prof !147

if.then.i:                                        ; preds = %entry
  %sub.i = sub i32 %8, %rem.i
  %arrayidx.i = getelementptr %struct.vring_used, ptr %1, i32 0, i32 2, i32 %rem.i
  %conv18.i = and i32 %sub.i, 65535
  %call.i = tail call fastcc i32 @putused_user(ptr noundef %vrh, ptr noundef %arrayidx.i, ptr noundef %used, i32 noundef %conv18.i) #15, !callees !148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.then.i.if.then33.i_crit_edge

if.then.i.if.then33.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then33.i

if.then20.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %ring.i = getelementptr inbounds %struct.vring_used, ptr %1, i32 0, i32 2
  %add.ptr.i = getelementptr %struct.vring_used_elem, ptr %used, i32 %conv18.i
  %sub25.i = sub i32 %num_used, %conv18.i
  %call26.i = tail call fastcc i32 @putused_user(ptr noundef %vrh, ptr noundef %ring.i, ptr noundef %add.ptr.i, i32 noundef %sub25.i) #15, !callees !148
  br label %if.end31.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx29.i = getelementptr %struct.vring_used, ptr %1, i32 0, i32 2, i32 %rem.i
  %call30.i = tail call fastcc i32 @putused_user(ptr noundef %vrh, ptr noundef %arrayidx29.i, ptr noundef %used, i32 noundef %num_used) #15, !callees !148
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else.i, %if.then20.i
  %err.1.i = phi i32 [ %call30.i, %if.else.i ], [ %call26.i, %if.then20.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool32.not.i = icmp eq i32 %err.1.i, 0
  br i1 %tobool32.not.i, label %if.end38.i, label %if.end31.i.if.then33.i_crit_edge

if.end31.i.if.then33.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then33.i

if.then33.i:                                      ; preds = %if.end31.i.if.then33.i_crit_edge, %if.then.i.if.then33.i_crit_edge
  %err.197.i = phi i32 [ %err.1.i, %if.end31.i.if.then33.i_crit_edge ], [ %call.i, %if.then.i.if.then33.i_crit_edge ]
  %arrayidx37.i = getelementptr %struct.vring_used, ptr %1, i32 0, i32 2, i32 %rem.i
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.19, i32 noundef %num_used, i32 noundef %rem.i, ptr noundef %arrayidx37.i) #19
  br label %__vringh_complete.exit

if.end38.i:                                       ; preds = %if.end31.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15
  %9 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %used1.i, align 4
  %idx.i = getelementptr inbounds %struct.vring_used, ptr %10, i32 0, i32 1
  %11 = trunc i32 %num_used to i16
  %conv44.i = add i16 %conv2.i, %11
  %12 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.not.i.i = icmp eq i8 %13, 0
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv44.i) #15
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 %conv44.i, i16 %14
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 594) #15
  %15 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #11, !srcloc !134
  %and.i.i = and i32 %17, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  %18 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %idx.i, i16 %retval.0.i.i.i, i32 -1226833921) #15, !srcloc !146
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool46.not.i = icmp eq i32 %18, 0
  br i1 %tobool46.not.i, label %if.end51.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %used1.i, align 4
  %idx50.i = getelementptr inbounds %struct.vring_used, ptr %20, i32 0, i32 1
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.20, ptr noundef %idx50.i) #19
  br label %__vringh_complete.exit

if.end51.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %completed.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %completed.i, align 4
  %add53.i = add i32 %22, %num_used
  store i32 %add53.i, ptr %completed.i, align 4
  br label %__vringh_complete.exit

__vringh_complete.exit:                           ; preds = %if.end51.i, %if.then47.i, %if.then33.i
  %retval.0.i = phi i32 [ %err.197.i, %if.then33.i ], [ %18, %if.then47.i ], [ 0, %if.end51.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @vringh_notify_enable_user(ptr nocapture noundef readonly %vrh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %event_indices.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 1
  %0 = ptrtoint ptr %event_indices.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %event_indices.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %used.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %used.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 594) #15
  %4 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i8 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i8 to ptr
  %cpu_domain.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i9) #11, !srcloc !134
  %and.i.i10 = and i32 %6, -13
  %or.i.i11 = or i32 %and.i.i10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i11) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  %7 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i16 0, i32 -1226833921) #15, !srcloc !146
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %if.then.i.if.end18.i_crit_edge, label %if.then1.i

if.then.i.if.end18.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %used.i, align 4
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.21, ptr noundef %9) #19
  br label %__vringh_notify_enable.exit

if.else.i:                                        ; preds = %entry
  %vring5.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %used6.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %used6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %used6.i, align 4
  %12 = ptrtoint ptr %vring5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vring5.i, align 4
  %arrayidx.i = getelementptr %struct.vring_used, ptr %11, i32 0, i32 2, i32 %13
  %last_avail_idx.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 3
  %14 = ptrtoint ptr %last_avail_idx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %last_avail_idx.i, align 4
  %16 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.not.i.i1 = icmp eq i8 %17, 0
  %18 = tail call i16 @llvm.bswap.i16(i16 %15) #15
  %retval.0.i.i.i2 = select i1 %tobool.not.i.not.i.i1, i16 %15, i16 %18
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 594) #15
  %19 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i3 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i3 to ptr
  %cpu_domain.i.i.i4 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i4) #11, !srcloc !134
  %and.i.i5 = and i32 %21, -13
  %or.i.i6 = or i32 %and.i.i5, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i6) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  %22 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arrayidx.i, i16 %retval.0.i.i.i2, i32 -1226833921) #15, !srcloc !146
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp9.not.i = icmp eq i32 %22, 0
  br i1 %cmp9.not.i, label %if.else.i.if.end18.i_crit_edge, label %if.then10.i

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %used6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %used6.i, align 4
  %25 = ptrtoint ptr %vring5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vring5.i, align 4
  %arrayidx16.i = getelementptr %struct.vring_used, ptr %24, i32 0, i32 2, i32 %26
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.22, ptr noundef %arrayidx16.i) #19
  br label %__vringh_notify_enable.exit

if.end18.i:                                       ; preds = %if.else.i.if.end18.i_crit_edge, %if.then.i.if.end18.i_crit_edge
  %weak_barriers.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 2
  %27 = ptrtoint ptr %weak_barriers.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %weak_barriers.i, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool19.not.i = icmp eq i8 %28, 0
  br i1 %tobool19.not.i, label %do.body3.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !149
  br label %virtio_mb.exit.i

do.body3.i.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !150
  tail call void @arm_heavy_mb() #15
  br label %virtio_mb.exit.i

virtio_mb.exit.i:                                 ; preds = %do.body3.i.i, %do.end.i.i
  %avail21.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 2
  %29 = ptrtoint ptr %avail21.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %avail21.i, align 4
  %idx.i = getelementptr inbounds %struct.vring_avail, ptr %30, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 586) #15
  %31 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #11, !srcloc !134
  %and.i.i = and i32 %33, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  %34 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %idx.i, i32 -1226833921) #15, !srcloc !137
  %asmresult.i = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp23.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp23.not.i, label %if.end28.i, label %if.then24.i

if.then24.i:                                      ; preds = %virtio_mb.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %avail21.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %avail21.i, align 4
  %idx27.i = getelementptr inbounds %struct.vring_avail, ptr %36, i32 0, i32 1
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.23, ptr noundef %idx27.i) #19
  br label %__vringh_notify_enable.exit

if.end28.i:                                       ; preds = %virtio_mb.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.not.i.i = icmp eq i8 %38, 0
  %asmresult1.i = extractvalue { i32, i32 } %34, 1
  %conv.i = trunc i32 %asmresult1.i to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #15
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 %conv.i, i16 %39
  %last_avail_idx29.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 3
  %40 = ptrtoint ptr %last_avail_idx29.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %last_avail_idx29.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i.i, i16 %41)
  %cmp31.i = icmp eq i16 %retval.0.i.i.i, %41
  br label %__vringh_notify_enable.exit

__vringh_notify_enable.exit:                      ; preds = %if.end28.i, %if.then24.i, %if.then10.i, %if.then1.i
  %retval.0.i = phi i1 [ true, %if.then10.i ], [ true, %if.then24.i ], [ %cmp31.i, %if.end28.i ], [ true, %if.then1.i ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vringh_notify_disable_user(ptr nocapture noundef readonly %vrh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %event_indices.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 1
  %0 = ptrtoint ptr %event_indices.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %event_indices.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.__vringh_notify_disable.exit_crit_edge

entry.__vringh_notify_disable.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vringh_notify_disable.exit

if.then.i:                                        ; preds = %entry
  %used.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %used.i, align 4
  %4 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.not.i.i = icmp eq i8 %5, 0
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 1, i16 256
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 594) #15
  %6 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #11, !srcloc !134
  %and.i.i = and i32 %8, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i16 %retval.0.i.i.i, i32 -1226833921) #15, !srcloc !146
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.not.i, label %if.then.i.__vringh_notify_disable.exit_crit_edge, label %if.then2.i

if.then.i.__vringh_notify_disable.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vringh_notify_disable.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %used.i, align 4
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.24, ptr noundef %11) #19
  br label %__vringh_notify_disable.exit

__vringh_notify_disable.exit:                     ; preds = %if.then2.i, %if.then.i.__vringh_notify_disable.exit_crit_edge, %entry.__vringh_notify_disable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_need_notify_user(ptr nocapture noundef %vrh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %weak_barriers.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 2
  %0 = ptrtoint ptr %weak_barriers.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %weak_barriers.i, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %do.body3.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !149
  br label %virtio_mb.exit.i

do.body3.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !150
  tail call void @arm_heavy_mb() #15
  br label %virtio_mb.exit.i

virtio_mb.exit.i:                                 ; preds = %do.body3.i.i, %do.end.i.i
  %event_indices.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 1
  %2 = ptrtoint ptr %event_indices.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %event_indices.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.then.i, label %if.end9.i

if.then.i:                                        ; preds = %virtio_mb.exit.i
  %avail.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %avail.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 586) #15
  %6 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i1 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i1 to ptr
  %cpu_domain.i.i.i2 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i2) #11, !srcloc !134
  %and.i.i3 = and i32 %8, -13
  %or.i.i4 = or i32 %and.i.i3, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i4) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %5, i32 -1226833921) #15, !srcloc !137
  %asmresult.i5 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i5)
  %tobool3.not.i = icmp eq i32 %asmresult.i5, 0
  br i1 %tobool3.not.i, label %if.end.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %avail.i, align 4
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.25, ptr noundef %11) #19
  br label %__vringh_need_notify.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.not.i.i8 = icmp eq i8 %13, 0
  %asmresult1.i6 = extractvalue { i32, i32 } %9, 1
  %conv.i7 = trunc i32 %asmresult1.i6 to i16
  %14 = lshr i16 %conv.i7, 8
  %retval.0.i.i.i9 = select i1 %tobool.not.i.not.i.i8, i16 %conv.i7, i16 %14
  %15 = and i16 %retval.0.i.i.i9, 1
  %16 = xor i16 %15, 1
  %17 = zext i16 %16 to i32
  br label %__vringh_need_notify.exit

if.end9.i:                                        ; preds = %virtio_mb.exit.i
  %vring10.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %avail11.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %avail11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %avail11.i, align 4
  %20 = ptrtoint ptr %vring10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vring10.i, align 4
  %arrayidx.i = getelementptr %struct.vring_avail, ptr %19, i32 0, i32 2, i32 %21
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 586) #15
  %22 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #11, !srcloc !134
  %and.i.i = and i32 %24, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  %25 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx.i, i32 -1226833921) #15, !srcloc !137
  %asmresult.i = extractvalue { i32, i32 } %25, 0
  %asmresult1.i = extractvalue { i32, i32 } %25, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #15, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  %conv.i = trunc i32 %asmresult1.i to i16
  %26 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.not.i.i = icmp eq i8 %27, 0
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #15
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 %conv.i, i16 %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool14.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool14.not.i, label %if.end22.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %avail11.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %avail11.i, align 4
  %31 = ptrtoint ptr %vring10.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vring10.i, align 4
  %arrayidx21.i = getelementptr %struct.vring_avail, ptr %30, i32 0, i32 2, i32 %32
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.26, ptr noundef %arrayidx21.i) #19
  br label %__vringh_need_notify.exit

if.end22.i:                                       ; preds = %if.end9.i
  %completed.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 5
  %33 = ptrtoint ptr %completed.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %completed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %34)
  %cmp.i = icmp ugt i32 %34, 65535
  br i1 %cmp.i, label %if.end22.if.end36_crit_edge.i, label %if.else.i, !prof !139

if.end22.if.end36_crit_edge.i:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  %.pre.i = trunc i32 %34 to i16
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  %last_used_idx.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 4
  %35 = ptrtoint ptr %last_used_idx.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %last_used_idx.i, align 2
  %37 = trunc i32 %34 to i16
  %38 = xor i16 %retval.0.i.i.i, -1
  %conv32.i = add i16 %37, %38
  %sub2.i.i = add i16 %conv32.i, %36
  call void @__sanitizer_cov_trace_cmp2(i16 %sub2.i.i, i16 %37)
  %cmp.i.i = icmp ult i16 %sub2.i.i, %37
  %conv10.i.i = zext i1 %cmp.i.i to i32
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else.i, %if.end22.if.end36_crit_edge.i
  %.pre-phi.i = phi i16 [ %.pre.i, %if.end22.if.end36_crit_edge.i ], [ %37, %if.else.i ]
  %notify.0.off0.i = phi i32 [ 1, %if.end22.if.end36_crit_edge.i ], [ %conv10.i.i, %if.else.i ]
  %last_used_idx38.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 4
  %39 = ptrtoint ptr %last_used_idx38.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %last_used_idx38.i, align 2
  %conv41.i = add i16 %40, %.pre-phi.i
  store i16 %conv41.i, ptr %last_used_idx38.i, align 2
  %41 = ptrtoint ptr %completed.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %completed.i, align 4
  br label %__vringh_need_notify.exit

__vringh_need_notify.exit:                        ; preds = %if.end36.i, %if.then15.i, %if.end.i, %if.then4.i
  %retval.1.i = phi i32 [ %asmresult.i, %if.then15.i ], [ %notify.0.off0.i, %if.end36.i ], [ %asmresult.i5, %if.then4.i ], [ %17, %if.end.i ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_init_kern(ptr nocapture noundef writeonly %vrh, i64 noundef %features, i32 noundef %num, i1 noundef zeroext %weak_barriers, ptr noundef %desc, ptr noundef %avail, ptr noundef %used) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %num, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %0)
  %1 = icmp ult i32 %0, 65535
  %2 = tail call i32 @llvm.ctpop.i32(i32 %num), !range !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %tobool2.not = icmp ult i32 %2, 2
  %or.cond34 = and i1 %1, %tobool2.not
  br i1 %or.cond34, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str, i32 noundef %num) #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %frombool = zext i1 %weak_barriers to i8
  %and3 = lshr i64 %features, 32
  %3 = trunc i64 %and3 to i8
  %4 = and i8 %3, 1
  %5 = ptrtoint ptr %vrh to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %vrh, align 4
  %event_indices = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 1
  %and6 = lshr i64 %features, 29
  %6 = trunc i64 %and6 to i8
  %7 = and i8 %6, 1
  %8 = ptrtoint ptr %event_indices to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %event_indices, align 1
  %weak_barriers10 = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 2
  %9 = ptrtoint ptr %weak_barriers10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %weak_barriers10, align 2
  %last_avail_idx = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 3
  %vring = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %10 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %last_avail_idx, align 4
  %11 = ptrtoint ptr %vring to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %num, ptr %vring, align 4
  %desc14 = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %desc14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %desc, ptr %desc14, align 4
  %avail16 = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %avail16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %avail, ptr %avail16, align 4
  %used18 = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %used18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %used, ptr %used18, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_getdesc_kern(ptr nocapture noundef %vrh, ptr noundef %riov, ptr noundef %wiov, ptr nocapture noundef writeonly %head, i32 noundef %gfp) #2 align 64 {
if.end.i:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %last_avail_idx = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 3
  %vring.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %avail.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %avail.i, align 4
  %idx.i = getelementptr inbounds %struct.vring_avail, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load volatile i16, ptr %idx.i, align 2
  %4 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.not.i.i25 = icmp eq i8 %5, 0
  %6 = tail call i16 @llvm.bswap.i16(i16 %3) #15
  %retval.0.i.i.i26 = select i1 %tobool.not.i.not.i.i25, i16 %3, i16 %6
  %7 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %last_avail_idx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %retval.0.i.i.i26)
  %cmp.i = icmp eq i16 %8, %retval.0.i.i.i26
  br i1 %cmp.i, label %__vringh_get_head.exit, label %if.end25.i

if.end25.i:                                       ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15
  %9 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %last_avail_idx, align 2
  %11 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vring.i, align 4
  %13 = trunc i32 %12 to i16
  %14 = add i16 %13, -1
  %conv13.i = and i16 %14, %10
  %15 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %avail.i, align 4
  %idxprom.i = zext i16 %conv13.i to i32
  %arrayidx.i = getelementptr %struct.vring_avail, ptr %16, i32 0, i32 2, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load volatile i16, ptr %arrayidx.i, align 2
  %19 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.not.i.i23 = icmp eq i8 %20, 0
  %21 = tail call i16 @llvm.bswap.i16(i16 %18) #15
  %retval.0.i.i.i24 = select i1 %tobool.not.i.not.i.i23, i16 %18, i16 %21
  %conv26.i = zext i16 %retval.0.i.i.i24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv26.i)
  %cmp29.not.i = icmp ugt i32 %12, %conv26.i
  br i1 %cmp29.not.i, label %__vringh_get_head.exit.thread57, label %__vringh_get_head.exit.thread

__vringh_get_head.exit.thread:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.6, i32 noundef %conv26.i, i32 noundef %12) #19
  br label %cleanup

__vringh_get_head.exit.thread57:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  %inc.i = add i16 %10, 1
  %22 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %inc.i, ptr %last_avail_idx, align 2
  br label %if.end

__vringh_get_head.exit:                           ; preds = %if.end.i
  %23 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp = icmp slt i32 %24, 0
  br i1 %cmp, label %__vringh_get_head.exit.cleanup_crit_edge, label %__vringh_get_head.exit.if.end_crit_edge

__vringh_get_head.exit.if.end_crit_edge:          ; preds = %__vringh_get_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

__vringh_get_head.exit.cleanup_crit_edge:         ; preds = %__vringh_get_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %__vringh_get_head.exit.if.end_crit_edge, %__vringh_get_head.exit.thread57
  %retval.0.i60 = phi i32 [ %conv26.i, %__vringh_get_head.exit.thread57 ], [ %24, %__vringh_get_head.exit.if.end_crit_edge ]
  %25 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vring.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i60, i32 %26)
  %cmp1 = icmp eq i32 %retval.0.i60, %26
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %conv = trunc i32 %retval.0.i60 to i16
  %27 = ptrtoint ptr %head to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv, ptr %head, align 2
  %desc1.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 1
  %28 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc1.i, align 4
  %30 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vring.i, align 4
  %tobool.not.i17 = icmp eq ptr %riov, null
  %tobool3.not.i = icmp eq ptr %wiov, null
  %spec.select.i = and i1 %tobool.not.i17, %tobool3.not.i
  br i1 %spec.select.i, label %do.end.i, label %if.end26.i, !prof !139

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 306, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end26.i:                                       ; preds = %if.end3
  br i1 %tobool.not.i17, label %if.end26.i.if.end30.i_crit_edge, label %if.then28.i

if.end26.i.if.end30.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  %consumed.i = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 1
  %32 = ptrtoint ptr %consumed.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %consumed.i, align 4
  %used.i = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 3
  %33 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %used.i, align 4
  %i29.i = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 2
  %34 = ptrtoint ptr %i29.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %i29.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %if.end26.i.if.end30.i_crit_edge
  br i1 %tobool3.not.i, label %if.end30.i.if.end36.i_crit_edge, label %if.then32.i

if.end30.i.if.end36.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i

if.then32.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  %consumed33.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 1
  %35 = ptrtoint ptr %consumed33.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %consumed33.i, align 4
  %used34.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 3
  %36 = ptrtoint ptr %used34.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %used34.i, align 4
  %i35.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 2
  %37 = ptrtoint ptr %i35.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %i35.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then32.i, %if.end30.i.if.end36.i_crit_edge
  %used108.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 3
  br label %for.cond.i.outer

for.cond.i.outer:                                 ; preds = %if.end207.i.for.cond.i.outer_crit_edge, %if.end36.i
  %up_next.i.0.ph = phi i32 [ %up_next.i.2, %if.end207.i.for.cond.i.outer_crit_edge ], [ -1, %if.end36.i ]
  %desc_max.i.0.ph = phi i32 [ %desc_max.i.2, %if.end207.i.for.cond.i.outer_crit_edge ], [ %31, %if.end36.i ]
  %descs.i.0.ph = phi ptr [ %descs.i.2, %if.end207.i.for.cond.i.outer_crit_edge ], [ %29, %if.end36.i ]
  %i.addr.i.0.ph = phi i16 [ %storemerge.i, %if.end207.i.for.cond.i.outer_crit_edge ], [ %conv, %if.end36.i ]
  %count.0.i.ph = phi i32 [ %inc.i21, %if.end207.i.for.cond.i.outer_crit_edge ], [ 0, %if.end36.i ]
  %38 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.not.i.i = icmp eq i8 %39, 0
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 4, i16 1024
  %retval.0.i.i28.i = select i1 %tobool.not.i.not.i.i, i16 1, i16 256
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end6.i, %for.cond.i.outer
  %up_next.i.0 = phi i32 [ %storemerge.i38, %if.end6.i ], [ %up_next.i.0.ph, %for.cond.i.outer ]
  %desc_max.i.0 = phi i32 [ %div26.i, %if.end6.i ], [ %desc_max.i.0.ph, %for.cond.i.outer ]
  %descs.i.0 = phi ptr [ %46, %if.end6.i ], [ %descs.i.0.ph, %for.cond.i.outer ]
  %i.addr.i.0 = phi i16 [ 0, %if.end6.i ], [ %i.addr.i.0.ph, %for.cond.i.outer ]
  %idxprom.i18 = zext i16 %i.addr.i.0 to i32
  %arrayidx.i19 = getelementptr %struct.vring_desc, ptr %descs.i.0, i32 %idxprom.i18
  %40 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %desc.i.sroa.0.0.copyload = load i64, ptr %arrayidx.i19, align 1
  %desc.i.sroa.9.0.arrayidx.i19.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i19, i32 8
  %41 = ptrtoint ptr %desc.i.sroa.9.0.arrayidx.i19.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %desc.i.sroa.9.0.copyload = load i32, ptr %desc.i.sroa.9.0.arrayidx.i19.sroa_idx, align 1
  %desc.i.sroa.13.0.arrayidx.i19.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i19, i32 12
  %42 = ptrtoint ptr %desc.i.sroa.13.0.arrayidx.i19.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %desc.i.sroa.13.0.copyload = load i16, ptr %desc.i.sroa.13.0.arrayidx.i19.sroa_idx, align 1
  %desc.i.sroa.15.0.arrayidx.i19.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i19, i32 14
  %43 = ptrtoint ptr %desc.i.sroa.15.0.arrayidx.i19.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %desc.i.sroa.15.0.copyload = load i16, ptr %desc.i.sroa.15.0.arrayidx.i19.sroa_idx, align 1
  %and296.i = and i16 %retval.0.i.i.i, %desc.i.sroa.13.0.copyload
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and296.i)
  %tobool60.not.i = icmp eq i16 %and296.i, 0
  br i1 %tobool60.not.i, label %if.end91.i, label %if.end85.i, !prof !141

if.end85.i:                                       ; preds = %for.cond.i
  %44 = tail call i64 @llvm.bswap.i64(i64 %desc.i.sroa.0.0.copyload) #15
  %retval.0.i.i300.i = select i1 %tobool.not.i.not.i.i, i64 %desc.i.sroa.0.0.copyload, i64 %44
  %45 = tail call i32 @llvm.bswap.i32(i32 %desc.i.sroa.9.0.copyload) #15
  %retval.0.i.i302.i = select i1 %tobool.not.i.not.i.i, i32 %desc.i.sroa.9.0.copyload, i32 %45
  %conv86.i = trunc i64 %retval.0.i.i300.i to i32
  %46 = inttoptr i32 %conv86.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %up_next.i.0)
  %cmp.not.i31 = icmp eq i32 %up_next.i.0, -1
  br i1 %cmp.not.i31, label %if.end.i36, label %if.then.i32

if.then.i32:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.13, i32 noundef %up_next.i.0, i32 noundef %idxprom.i18) #19
  br label %cleanup

if.end.i36:                                       ; preds = %if.end85.i
  %rem.i = and i32 %retval.0.i.i302.i, 15
  %tobool.not.i35 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i35, label %if.end6.i, label %if.then4.i, !prof !141

if.then4.i:                                       ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.14, i32 noundef %desc.i.sroa.9.0.copyload) #19
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #17
  %and25.i = and i16 %retval.0.i.i28.i, %desc.i.sroa.13.0.copyload
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and25.i)
  %tobool10.not.i = icmp eq i16 %and25.i, 0
  %47 = tail call i16 @llvm.bswap.i16(i16 %desc.i.sroa.15.0.copyload) #15
  %retval.0.i.i30.i = select i1 %tobool.not.i.not.i.i, i16 %desc.i.sroa.15.0.copyload, i16 %47
  %conv13.i37 = zext i16 %retval.0.i.i30.i to i32
  %storemerge.i38 = select i1 %tobool10.not.i, i32 -2, i32 %conv13.i37
  %div26.i = lshr i32 %retval.0.i.i302.i, 4
  br label %for.cond.i

if.end91.i:                                       ; preds = %for.cond.i
  %inc.i21 = add i32 %count.0.i.ph, 1
  %48 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vring.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.i.ph, i32 %49)
  %cmp94.i = icmp eq i32 %count.0.i.ph, %49
  br i1 %cmp94.i, label %if.then96.i, label %if.end97.i

if.then96.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.7, ptr noundef %descs.i.0) #19
  br label %cleanup

if.end97.i:                                       ; preds = %if.end91.i
  %retval.0.i.i306.i = select i1 %tobool.not.i.not.i.i, i16 2, i16 512
  %and102297.i = and i16 %retval.0.i.i306.i, %desc.i.sroa.13.0.copyload
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and102297.i)
  %tobool103.not.i = icmp ne i16 %and102297.i, 0
  %brmerge.i = or i1 %tobool3.not.i, %tobool103.not.i
  %wiov.mux.i = select i1 %tobool103.not.i, ptr %wiov, ptr %riov
  br i1 %brmerge.i, label %if.end97.i.if.end121.i_crit_edge, label %land.rhs107.i

if.end97.i.if.end121.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end121.i

land.rhs107.i:                                    ; preds = %if.end97.i
  %50 = ptrtoint ptr %used108.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %used108.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool109.not.i = icmp eq i32 %51, 0
  br i1 %tobool109.not.i, label %land.rhs107.i.if.end121.i_crit_edge, label %if.then117.i, !prof !141

land.rhs107.i.if.end121.i_crit_edge:              ; preds = %land.rhs107.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end121.i

if.then117.i:                                     ; preds = %land.rhs107.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.8, ptr noundef %arrayidx.i19) #19
  br label %cleanup

if.end121.i:                                      ; preds = %land.rhs107.i.if.end121.i_crit_edge, %if.end97.i.if.end121.i_crit_edge
  %iov.0.i = phi ptr [ %riov, %land.rhs107.i.if.end121.i_crit_edge ], [ %wiov.mux.i, %if.end97.i.if.end121.i_crit_edge ]
  %tobool122.not.i = icmp eq ptr %iov.0.i, null
  br i1 %tobool122.not.i, label %if.then123.i, label %again.preheader.i

again.preheader.i:                                ; preds = %if.end121.i
  %used140.i = getelementptr inbounds %struct.vringh_kiov, ptr %iov.0.i, i32 0, i32 3
  %max_num.i = getelementptr inbounds %struct.vringh_kiov, ptr %iov.0.i, i32 0, i32 4
  br label %if.end134.i

if.then123.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #17
  %cond.i = select i1 %tobool3.not.i, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.9, ptr noundef nonnull %cond.i) #19
  br label %cleanup

if.end134.i:                                      ; preds = %if.then174.i, %again.preheader.i
  %retval.0.i.i322.i102 = phi i64 [ %desc.i.sroa.0.0.copyload, %again.preheader.i ], [ %retval.0.i.i322.i, %if.then174.i ]
  %retval.0.i.i318.i100 = phi i32 [ %desc.i.sroa.9.0.copyload, %again.preheader.i ], [ %retval.0.i.i318.i, %if.then174.i ]
  %52 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i.not.i307.i = icmp eq i8 %53, 0
  %54 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i318.i100) #15
  %retval.0.i.i308.i = select i1 %tobool.not.i.not.i307.i, i32 %retval.0.i.i318.i100, i32 %54
  %55 = tail call i64 @llvm.bswap.i64(i64 %retval.0.i.i322.i102) #15
  %retval.0.i.i312.i = select i1 %tobool.not.i.not.i307.i, i64 %retval.0.i.i322.i102, i64 %55
  %conv139.i = trunc i64 %retval.0.i.i312.i to i32
  %56 = inttoptr i32 %conv139.i to ptr
  %57 = ptrtoint ptr %used140.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %used140.i, align 4
  %59 = ptrtoint ptr %max_num.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_num.i, align 4
  %and141.i = and i32 %60, -134217729
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %and141.i)
  %cmp142.i = icmp eq i32 %58, %and141.i
  br i1 %cmp142.i, label %if.then150.i, label %if.end134.i.if.end155.i_crit_edge, !prof !139

if.end134.i.if.end155.i_crit_edge:                ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155.i

if.then150.i:                                     ; preds = %if.end134.i
  %and.i = shl i32 %60, 1
  %mul.i = and i32 %and.i, -268435458
  %61 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 8) #15
  %and2.i = and i32 %60, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i28 = icmp eq i32 %and2.i, 0
  %62 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %61, i32 8) #15
  %63 = extractvalue { i32, i1 } %62, 1
  br i1 %tobool.not.i28, label %if.else.i29, label %if.then3.i

if.then3.i:                                       ; preds = %if.then150.i
  br i1 %63, label %if.then3.i.cleanup_crit_edge, label %if.end.i.i, !prof !139

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %iov.0.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iov.0.i, align 4
  %66 = extractvalue { i32, i1 } %62, 0
  %call5.i.i = tail call noalias ptr @krealloc(ptr noundef %65, i32 noundef %66, i32 noundef %gfp) #21
  br label %if.end12.i

if.else.i29:                                      ; preds = %if.then150.i
  br i1 %63, label %if.else.i29.cleanup_crit_edge, label %if.end7.i.i, !prof !139

if.else.i29.cleanup_crit_edge:                    ; preds = %if.else.i29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.else.i29
  %67 = extractvalue { i32, i1 } %62, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %67, i32 noundef %gfp) #22
  %tobool6.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool6.not.i, label %if.end7.i.i.cleanup_crit_edge, label %if.then7.i

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7.i:                                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %iov.0.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iov.0.i, align 4
  %70 = ptrtoint ptr %max_num.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_num.i, align 4
  %mul10.i = shl i32 %71, 3
  %72 = call ptr @memcpy(ptr %call8.i.i, ptr %69, i32 %mul10.i)
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then7.i, %if.end.i.i
  %new.0.i = phi ptr [ %call8.i.i, %if.then7.i ], [ %call5.i.i, %if.end.i.i ]
  %flag.0.i = phi i32 [ 134217728, %if.then7.i ], [ %and2.i, %if.end.i.i ]
  %tobool13.not.i = icmp eq ptr %new.0.i, null
  br i1 %tobool13.not.i, label %if.end12.i.cleanup_crit_edge, label %resize_iovec.exit

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

resize_iovec.exit:                                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %iov.0.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %new.0.i, ptr %iov.0.i, align 4
  %or.i = or i32 %flag.0.i, %61
  %74 = ptrtoint ptr %max_num.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or.i, ptr %max_num.i, align 4
  br label %if.end155.i

if.end155.i:                                      ; preds = %resize_iovec.exit, %if.end134.i.if.end155.i_crit_edge
  %75 = ptrtoint ptr %iov.0.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %iov.0.i, align 4
  %77 = ptrtoint ptr %used140.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %used140.i, align 4
  %arrayidx158.i = getelementptr %struct.kvec, ptr %76, i32 %78
  %79 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %56, ptr %arrayidx158.i, align 4
  %80 = load ptr, ptr %iov.0.i, align 4
  %81 = load i32, ptr %used140.i, align 4
  %iov_len.i = getelementptr %struct.kvec, ptr %80, i32 %81, i32 1
  %82 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i.i308.i, ptr %iov_len.i, align 4
  %83 = load i32, ptr %used140.i, align 4
  %inc163.i = add i32 %83, 1
  store i32 %inc163.i, ptr %used140.i, align 4
  %84 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.not.i313.i = icmp eq i8 %85, 0
  %retval.0.i.i314.i = select i1 %tobool.not.i.not.i313.i, i32 %retval.0.i.i318.i100, i32 %54
  %cmp166.not.i = icmp eq i32 %retval.0.i.i314.i, %retval.0.i.i308.i
  br i1 %cmp166.not.i, label %if.end185.i, label %if.then174.i, !prof !141

if.then174.i:                                     ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = sub i32 %retval.0.i.i314.i, %retval.0.i.i308.i
  %86 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #15
  %retval.0.i.i318.i = select i1 %tobool.not.i.not.i313.i, i32 %sub.i, i32 %86
  %retval.0.i.i320.i = select i1 %tobool.not.i.not.i313.i, i64 %retval.0.i.i322.i102, i64 %55
  %conv181.i = zext i32 %retval.0.i.i308.i to i64
  %add182.i = add i64 %retval.0.i.i320.i, %conv181.i
  %87 = tail call i64 @llvm.bswap.i64(i64 %add182.i) #15
  %retval.0.i.i322.i = select i1 %tobool.not.i.not.i313.i, i64 %add182.i, i64 %87
  br label %if.end134.i

if.end185.i:                                      ; preds = %if.end155.i
  %retval.0.i.i324.i = select i1 %tobool.not.i.not.i313.i, i16 1, i16 256
  %and190298.i = and i16 %desc.i.sroa.13.0.copyload, %retval.0.i.i324.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and190298.i)
  %tobool191.not.i = icmp eq i16 %and190298.i, 0
  br i1 %tobool191.not.i, label %if.else194.i, label %if.then192.i

if.then192.i:                                     ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #17
  %88 = tail call i16 @llvm.bswap.i16(i16 %desc.i.sroa.15.0.copyload) #15
  %retval.0.i.i326.i = select i1 %tobool.not.i.not.i313.i, i16 %desc.i.sroa.15.0.copyload, i16 %88
  br label %if.end207.i

if.else194.i:                                     ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up_next.i.0)
  %cmp195.i = icmp sgt i32 %up_next.i.0, 0
  br i1 %cmp195.i, label %if.then203.i, label %if.else194.i.cleanup_crit_edge, !prof !139

if.else194.i.cleanup_crit_edge:                   ; preds = %if.else194.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then203.i:                                     ; preds = %if.else194.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i = trunc i32 %up_next.i.0 to i16
  %89 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %desc1.i, align 4
  %91 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %vring.i, align 4
  br label %if.end207.i

if.end207.i:                                      ; preds = %if.then203.i, %if.then192.i
  %up_next.i.2 = phi i32 [ -1, %if.then203.i ], [ %up_next.i.0, %if.then192.i ]
  %desc_max.i.2 = phi i32 [ %92, %if.then203.i ], [ %desc_max.i.0, %if.then192.i ]
  %descs.i.2 = phi ptr [ %90, %if.then203.i ], [ %descs.i.0, %if.then192.i ]
  %storemerge.i = phi i16 [ %conv.i.i, %if.then203.i ], [ %retval.0.i.i326.i, %if.then192.i ]
  %conv208.i = zext i16 %storemerge.i to i32
  %cmp209.not.i = icmp sgt i32 %desc_max.i.2, %conv208.i
  br i1 %cmp209.not.i, label %if.end207.i.for.cond.i.outer_crit_edge, label %if.then211.i

if.end207.i.for.cond.i.outer_crit_edge:           ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.outer

if.then211.i:                                     ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.12, i32 noundef %conv208.i, i32 noundef %desc_max.i.2) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then211.i, %if.else194.i.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %if.else.i29.cleanup_crit_edge, %if.then3.i.cleanup_crit_edge, %if.then123.i, %if.then117.i, %if.then96.i, %if.then4.i, %if.then.i32, %do.end.i, %if.end.cleanup_crit_edge, %__vringh_get_head.exit.cleanup_crit_edge, %__vringh_get_head.exit.thread
  %retval.0 = phi i32 [ %24, %__vringh_get_head.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %__vringh_get_head.exit.thread ], [ -40, %if.then96.i ], [ -22, %if.then211.i ], [ -71, %if.then123.i ], [ -22, %if.then117.i ], [ -22, %do.end.i ], [ -22, %if.then.i32 ], [ -22, %if.then4.i ], [ -12, %if.end12.i.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.then3.i.cleanup_crit_edge ], [ -12, %if.else.i29.cleanup_crit_edge ], [ 1, %if.else194.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_iov_pull_kern(ptr nocapture noundef %riov, ptr nocapture noundef writeonly %dst, i32 noundef %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i.i = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not33.i = icmp eq i32 %len, 0
  br i1 %tobool.not33.i, label %entry.vringh_iov_xfer.exit_crit_edge, label %land.rhs.lr.ph.i

entry.vringh_iov_xfer.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

land.rhs.lr.ph.i:                                 ; preds = %entry
  %used.i = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 3
  %consumed.i.i = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.backedge.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %done.036.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %add.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %ptr.addr.035.i = phi ptr [ %dst, %land.rhs.lr.ph.i ], [ %add.ptr.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %len.addr.034.i = phi i32 [ %len, %land.rhs.lr.ph.i ], [ %sub.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %0 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i.i, align 4
  %2 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp ult i32 %1, %3
  br i1 %cmp.i, label %if.end.i, label %land.rhs.i.vringh_iov_xfer.exit_crit_edge

land.rhs.i.vringh_iov_xfer.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

if.end.i:                                         ; preds = %land.rhs.i
  %4 = ptrtoint ptr %riov to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %riov, align 4
  %iov_len.i = getelementptr %struct.kvec, ptr %5, i32 %1, i32 1
  %6 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iov_len.i, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %len.addr.034.i) #15
  %arrayidx6.i = getelementptr %struct.kvec, ptr %5, i32 %1
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6.i, align 4
  %11 = call ptr @memcpy(ptr %ptr.addr.035.i, ptr %10, i32 %8)
  %add.i = add i32 %8, %done.036.i
  %sub.i = sub i32 %len.addr.034.i, %8
  %add.ptr.i = getelementptr i8, ptr %ptr.addr.035.i, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not56.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not56.i.i, label %if.end.i.while.cond.backedge.i_crit_edge, label %if.end.i.land.rhs.i.i_crit_edge

if.end.i.land.rhs.i.i_crit_edge:                  ; preds = %if.end.i
  br label %land.rhs.i.i

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

land.rhs.i.i:                                     ; preds = %if.end.i.i.land.rhs.i.i_crit_edge, %if.end.i.land.rhs.i.i_crit_edge
  %len.addr.057.i.i = phi i32 [ %sub29.i.i, %if.end.i.i.land.rhs.i.i_crit_edge ], [ %8, %if.end.i.land.rhs.i.i_crit_edge ]
  %12 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i.i, align 4
  %14 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i.i = icmp ult i32 %13, %15
  br i1 %cmp.i.i, label %while.body.i.i, label %land.rhs.i.i.while.cond.backedge.i_crit_edge

land.rhs.i.i.while.cond.backedge.i_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %16 = ptrtoint ptr %riov to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %riov, align 4
  %iov_len.i.i = getelementptr %struct.kvec, ptr %17, i32 %13, i32 1
  %18 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iov_len.i.i, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %len.addr.057.i.i) #15
  %21 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %consumed.i.i, align 4
  %add.i.i = add i32 %22, %20
  store i32 %add.i.i, ptr %consumed.i.i, align 4
  %23 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iov_len.i.i, align 4
  %sub.i.i = sub i32 %24, %20
  store i32 %sub.i.i, ptr %iov_len.i.i, align 4
  %25 = ptrtoint ptr %riov to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %riov, align 4
  %27 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i.i, align 4
  %arrayidx10.i.i = getelementptr %struct.kvec, ptr %26, i32 %28
  %29 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx10.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %20
  store ptr %add.ptr.i.i, ptr %arrayidx10.i.i, align 4
  %31 = load ptr, ptr %riov, align 4
  %32 = load i32, ptr %i.i, align 4
  %iov_len14.i.i = getelementptr %struct.kvec, ptr %31, i32 %32, i32 1
  %33 = ptrtoint ptr %iov_len14.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iov_len14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool15.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool15.not.i.i, label %if.then.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %consumed.i.i, align 4
  %37 = ptrtoint ptr %iov_len14.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %iov_len14.i.i, align 4
  %38 = load i32, ptr %consumed.i.i, align 4
  %39 = ptrtoint ptr %riov to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %riov, align 4
  %41 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i.i, align 4
  %arrayidx24.i.i = getelementptr %struct.kvec, ptr %40, i32 %42
  %43 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx24.i.i, align 4
  %idx.neg.i.i = sub i32 0, %38
  %add.ptr26.i.i = getelementptr i8, ptr %44, i32 %idx.neg.i.i
  store ptr %add.ptr26.i.i, ptr %arrayidx24.i.i, align 4
  store i32 0, ptr %consumed.i.i, align 4
  %45 = load i32, ptr %i.i, align 4
  %inc.i.i = add i32 %45, 1
  store i32 %inc.i.i, ptr %i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %sub29.i.i = sub i32 %len.addr.057.i.i, %20
  %tobool.not.i.i = icmp eq i32 %sub29.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.while.cond.backedge.i_crit_edge, label %if.end.i.i.land.rhs.i.i_crit_edge

if.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i.i

if.end.i.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i.i.while.cond.backedge.i_crit_edge, %land.rhs.i.i.while.cond.backedge.i_crit_edge, %if.end.i.while.cond.backedge.i_crit_edge
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge, label %while.cond.backedge.i.land.rhs.i_crit_edge

while.cond.backedge.i.land.rhs.i_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

vringh_iov_xfer.exit:                             ; preds = %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge, %land.rhs.i.vringh_iov_xfer.exit_crit_edge, %entry.vringh_iov_xfer.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %entry.vringh_iov_xfer.exit_crit_edge ], [ %done.036.i, %land.rhs.i.vringh_iov_xfer.exit_crit_edge ], [ %add.i, %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_iov_push_kern(ptr nocapture noundef %wiov, ptr nocapture noundef readonly %src, i32 noundef %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not33.i = icmp eq i32 %len, 0
  br i1 %tobool.not33.i, label %entry.vringh_iov_xfer.exit_crit_edge, label %land.rhs.lr.ph.i

entry.vringh_iov_xfer.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

land.rhs.lr.ph.i:                                 ; preds = %entry
  %used.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 3
  %consumed.i.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.backedge.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %done.036.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %add.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %ptr.addr.035.i = phi ptr [ %src, %land.rhs.lr.ph.i ], [ %add.ptr.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %len.addr.034.i = phi i32 [ %len, %land.rhs.lr.ph.i ], [ %sub.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %0 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i.i, align 4
  %2 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp ult i32 %1, %3
  br i1 %cmp.i, label %if.end.i, label %land.rhs.i.vringh_iov_xfer.exit_crit_edge

land.rhs.i.vringh_iov_xfer.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

if.end.i:                                         ; preds = %land.rhs.i
  %4 = ptrtoint ptr %wiov to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiov, align 4
  %iov_len.i = getelementptr %struct.kvec, ptr %5, i32 %1, i32 1
  %6 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iov_len.i, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %len.addr.034.i) #15
  %arrayidx6.i = getelementptr %struct.kvec, ptr %5, i32 %1
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6.i, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %ptr.addr.035.i, i32 %8)
  %add.i = add i32 %8, %done.036.i
  %sub.i = sub i32 %len.addr.034.i, %8
  %add.ptr.i = getelementptr i8, ptr %ptr.addr.035.i, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not56.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not56.i.i, label %if.end.i.while.cond.backedge.i_crit_edge, label %if.end.i.land.rhs.i.i_crit_edge

if.end.i.land.rhs.i.i_crit_edge:                  ; preds = %if.end.i
  br label %land.rhs.i.i

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

land.rhs.i.i:                                     ; preds = %if.end.i.i.land.rhs.i.i_crit_edge, %if.end.i.land.rhs.i.i_crit_edge
  %len.addr.057.i.i = phi i32 [ %sub29.i.i, %if.end.i.i.land.rhs.i.i_crit_edge ], [ %8, %if.end.i.land.rhs.i.i_crit_edge ]
  %12 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i.i, align 4
  %14 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i.i = icmp ult i32 %13, %15
  br i1 %cmp.i.i, label %while.body.i.i, label %land.rhs.i.i.while.cond.backedge.i_crit_edge

land.rhs.i.i.while.cond.backedge.i_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %16 = ptrtoint ptr %wiov to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiov, align 4
  %iov_len.i.i = getelementptr %struct.kvec, ptr %17, i32 %13, i32 1
  %18 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iov_len.i.i, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %len.addr.057.i.i) #15
  %21 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %consumed.i.i, align 4
  %add.i.i = add i32 %22, %20
  store i32 %add.i.i, ptr %consumed.i.i, align 4
  %23 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iov_len.i.i, align 4
  %sub.i.i = sub i32 %24, %20
  store i32 %sub.i.i, ptr %iov_len.i.i, align 4
  %25 = ptrtoint ptr %wiov to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiov, align 4
  %27 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i.i, align 4
  %arrayidx10.i.i = getelementptr %struct.kvec, ptr %26, i32 %28
  %29 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx10.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %20
  store ptr %add.ptr.i.i, ptr %arrayidx10.i.i, align 4
  %31 = load ptr, ptr %wiov, align 4
  %32 = load i32, ptr %i.i, align 4
  %iov_len14.i.i = getelementptr %struct.kvec, ptr %31, i32 %32, i32 1
  %33 = ptrtoint ptr %iov_len14.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iov_len14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool15.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool15.not.i.i, label %if.then.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %consumed.i.i, align 4
  %37 = ptrtoint ptr %iov_len14.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %iov_len14.i.i, align 4
  %38 = load i32, ptr %consumed.i.i, align 4
  %39 = ptrtoint ptr %wiov to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wiov, align 4
  %41 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i.i, align 4
  %arrayidx24.i.i = getelementptr %struct.kvec, ptr %40, i32 %42
  %43 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx24.i.i, align 4
  %idx.neg.i.i = sub i32 0, %38
  %add.ptr26.i.i = getelementptr i8, ptr %44, i32 %idx.neg.i.i
  store ptr %add.ptr26.i.i, ptr %arrayidx24.i.i, align 4
  store i32 0, ptr %consumed.i.i, align 4
  %45 = load i32, ptr %i.i, align 4
  %inc.i.i = add i32 %45, 1
  store i32 %inc.i.i, ptr %i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %sub29.i.i = sub i32 %len.addr.057.i.i, %20
  %tobool.not.i.i = icmp eq i32 %sub29.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.while.cond.backedge.i_crit_edge, label %if.end.i.i.land.rhs.i.i_crit_edge

if.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i.i

if.end.i.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i.i.while.cond.backedge.i_crit_edge, %land.rhs.i.i.while.cond.backedge.i_crit_edge, %if.end.i.while.cond.backedge.i_crit_edge
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge, label %while.cond.backedge.i.land.rhs.i_crit_edge

while.cond.backedge.i.land.rhs.i_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

vringh_iov_xfer.exit:                             ; preds = %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge, %land.rhs.i.vringh_iov_xfer.exit_crit_edge, %entry.vringh_iov_xfer.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %entry.vringh_iov_xfer.exit_crit_edge ], [ %done.036.i, %land.rhs.i.vringh_iov_xfer.exit_crit_edge ], [ %add.i, %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vringh_abandon_kern(ptr nocapture noundef %vrh, i32 noundef %num) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %last_avail_idx = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 3
  %0 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %last_avail_idx, align 4
  %2 = trunc i32 %num to i16
  %conv1 = sub i16 %1, %2
  store i16 %conv1, ptr %last_avail_idx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_complete_kern(ptr nocapture noundef %vrh, i16 noundef zeroext %head, i32 noundef %len) #2 align 64 {
__vringh_complete.exit:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %head to i32
  %0 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.not.i = icmp eq i8 %1, 0
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv) #15
  %retval.0.i.i = select i1 %tobool.not.i.not.i, i32 %conv, i32 %2
  %3 = tail call i32 @llvm.bswap.i32(i32 %len) #15
  %retval.0.i.i7 = select i1 %tobool.not.i.not.i, i32 %len, i32 %3
  %vring.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %used1.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %used1.i, align 4
  %last_used_idx.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 4
  %6 = ptrtoint ptr %last_used_idx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %last_used_idx.i, align 2
  %completed.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 5
  %8 = ptrtoint ptr %completed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %completed.i, align 4
  %10 = trunc i32 %9 to i16
  %conv2.i = add i16 %7, %10
  %conv3.i = zext i16 %conv2.i to i32
  %11 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vring.i, align 4
  %rem.i = urem i32 %conv3.i, %12
  %arrayidx29.i = getelementptr %struct.vring_used, ptr %5, i32 0, i32 2, i32 %rem.i
  %13 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i.i, ptr %arrayidx29.i, align 4
  %used.sroa.5.0.arrayidx29.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx29.i, i32 4
  %14 = ptrtoint ptr %used.sroa.5.0.arrayidx29.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i.i7, ptr %used.sroa.5.0.arrayidx29.i.sroa_idx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15
  %15 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %used1.i, align 4
  %idx.i = getelementptr inbounds %struct.vring_used, ptr %16, i32 0, i32 1
  %conv44.i = add i16 %conv2.i, 1
  %17 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.not.i.i = icmp eq i8 %18, 0
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv44.i) #15
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 %conv44.i, i16 %19
  %20 = ptrtoint ptr %idx.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store volatile i16 %retval.0.i.i.i, ptr %idx.i, align 2
  %21 = ptrtoint ptr %completed.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %completed.i, align 4
  %add53.i = add i32 %22, 1
  store i32 %add53.i, ptr %completed.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @vringh_notify_enable_kern(ptr nocapture noundef readonly %vrh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %event_indices.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 1
  %0 = ptrtoint ptr %event_indices.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %event_indices.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %used.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %used.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store volatile i16 0, ptr %3, align 2
  br label %if.end18.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %vring5.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %used6.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %used6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %used6.i, align 4
  %7 = ptrtoint ptr %vring5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vring5.i, align 4
  %arrayidx.i = getelementptr %struct.vring_used, ptr %6, i32 0, i32 2, i32 %8
  %last_avail_idx.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 3
  %9 = ptrtoint ptr %last_avail_idx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %last_avail_idx.i, align 4
  %11 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.not.i.i1 = icmp eq i8 %12, 0
  %13 = tail call i16 @llvm.bswap.i16(i16 %10) #15
  %retval.0.i.i.i2 = select i1 %tobool.not.i.not.i.i1, i16 %10, i16 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store volatile i16 %retval.0.i.i.i2, ptr %arrayidx.i, align 2
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then.i
  %weak_barriers.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 2
  %15 = ptrtoint ptr %weak_barriers.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %weak_barriers.i, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool19.not.i = icmp eq i8 %16, 0
  br i1 %tobool19.not.i, label %do.body3.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !149
  br label %__vringh_notify_enable.exit

do.body3.i.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !150
  tail call void @arm_heavy_mb() #15
  br label %__vringh_notify_enable.exit

__vringh_notify_enable.exit:                      ; preds = %do.body3.i.i, %do.end.i.i
  %avail21.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %avail21.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %avail21.i, align 4
  %idx.i = getelementptr inbounds %struct.vring_avail, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load volatile i16, ptr %idx.i, align 2
  %21 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.not.i.i = icmp eq i8 %22, 0
  %23 = tail call i16 @llvm.bswap.i16(i16 %20) #15
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 %20, i16 %23
  %last_avail_idx29.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 3
  %24 = ptrtoint ptr %last_avail_idx29.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %last_avail_idx29.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i.i, i16 %25)
  %cmp31.i = icmp eq i16 %retval.0.i.i.i, %25
  ret i1 %cmp31.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vringh_notify_disable_kern(ptr nocapture noundef readonly %vrh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %event_indices.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 1
  %0 = ptrtoint ptr %event_indices.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %event_indices.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.__vringh_notify_disable.exit_crit_edge

entry.__vringh_notify_disable.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vringh_notify_disable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %used.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %used.i, align 4
  %4 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.not.i.i = icmp eq i8 %5, 0
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 1, i16 256
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store volatile i16 %retval.0.i.i.i, ptr %3, align 2
  br label %__vringh_notify_disable.exit

__vringh_notify_disable.exit:                     ; preds = %if.then.i, %entry.__vringh_notify_disable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_need_notify_kern(ptr nocapture noundef %vrh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %weak_barriers.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 2
  %0 = ptrtoint ptr %weak_barriers.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %weak_barriers.i, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %do.body3.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !149
  br label %virtio_mb.exit.i

do.body3.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !150
  tail call void @arm_heavy_mb() #15
  br label %virtio_mb.exit.i

virtio_mb.exit.i:                                 ; preds = %do.body3.i.i, %do.end.i.i
  %event_indices.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 1
  %2 = ptrtoint ptr %event_indices.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %event_indices.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %cleanup.i, label %if.end22.i

cleanup.i:                                        ; preds = %virtio_mb.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %avail.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %avail.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load volatile i16, ptr %5, align 2
  %8 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.not.i.i1 = icmp eq i8 %9, 0
  %10 = lshr i16 %7, 8
  %retval.0.i.i.i2 = select i1 %tobool.not.i.not.i.i1, i16 %7, i16 %10
  %11 = and i16 %retval.0.i.i.i2, 1
  %12 = xor i16 %11, 1
  %13 = zext i16 %12 to i32
  br label %__vringh_need_notify.exit

if.end22.i:                                       ; preds = %virtio_mb.exit.i
  %vring10.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %avail11.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %avail11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %avail11.i, align 4
  %16 = ptrtoint ptr %vring10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vring10.i, align 4
  %arrayidx.i = getelementptr %struct.vring_avail, ptr %15, i32 0, i32 2, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load volatile i16, ptr %arrayidx.i, align 2
  %completed.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 5
  %20 = ptrtoint ptr %completed.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %completed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %21)
  %cmp.i = icmp ugt i32 %21, 65535
  br i1 %cmp.i, label %if.end22.if.end36_crit_edge.i, label %if.else.i, !prof !139

if.end22.if.end36_crit_edge.i:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  %.pre.i = trunc i32 %21 to i16
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.not.i.i = icmp eq i8 %23, 0
  %24 = tail call i16 @llvm.bswap.i16(i16 %19) #15
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 %19, i16 %24
  %last_used_idx.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 4
  %25 = ptrtoint ptr %last_used_idx.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %last_used_idx.i, align 2
  %27 = trunc i32 %21 to i16
  %28 = xor i16 %retval.0.i.i.i, -1
  %conv32.i = add i16 %26, %27
  %sub2.i.i = add i16 %conv32.i, %28
  call void @__sanitizer_cov_trace_cmp2(i16 %sub2.i.i, i16 %27)
  %cmp.i.i = icmp ult i16 %sub2.i.i, %27
  %conv10.i.i = zext i1 %cmp.i.i to i32
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else.i, %if.end22.if.end36_crit_edge.i
  %.pre-phi.i = phi i16 [ %.pre.i, %if.end22.if.end36_crit_edge.i ], [ %27, %if.else.i ]
  %notify.0.off0.i = phi i32 [ 1, %if.end22.if.end36_crit_edge.i ], [ %conv10.i.i, %if.else.i ]
  %last_used_idx38.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 4
  %29 = ptrtoint ptr %last_used_idx38.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %last_used_idx38.i, align 2
  %conv41.i = add i16 %30, %.pre-phi.i
  store i16 %conv41.i, ptr %last_used_idx38.i, align 2
  %31 = ptrtoint ptr %completed.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %completed.i, align 4
  br label %__vringh_need_notify.exit

__vringh_need_notify.exit:                        ; preds = %if.end36.i, %cleanup.i
  %retval.1.i = phi i32 [ %notify.0.off0.i, %if.end36.i ], [ %13, %cleanup.i ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_init_iotlb(ptr nocapture noundef writeonly %vrh, i64 noundef %features, i32 noundef %num, i1 noundef zeroext %weak_barriers, ptr noundef %desc, ptr noundef %avail, ptr noundef %used) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %num, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %0)
  %1 = icmp ult i32 %0, 65535
  %2 = tail call i32 @llvm.ctpop.i32(i32 %num) #15, !range !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %tobool2.not.i = icmp ult i32 %2, 2
  %or.cond34.i = and i1 %1, %tobool2.not.i
  br i1 %or.cond34.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str, i32 noundef %num) #19
  br label %vringh_init_kern.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %frombool.i = zext i1 %weak_barriers to i8
  %and3.i = lshr i64 %features, 32
  %3 = trunc i64 %and3.i to i8
  %4 = and i8 %3, 1
  %5 = ptrtoint ptr %vrh to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %vrh, align 4
  %event_indices.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 1
  %and6.i = lshr i64 %features, 29
  %6 = trunc i64 %and6.i to i8
  %7 = and i8 %6, 1
  %8 = ptrtoint ptr %event_indices.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %event_indices.i, align 1
  %weak_barriers10.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 2
  %9 = ptrtoint ptr %weak_barriers10.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool.i, ptr %weak_barriers10.i, align 2
  %last_avail_idx.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 3
  %vring.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %10 = ptrtoint ptr %last_avail_idx.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %last_avail_idx.i, align 4
  %11 = ptrtoint ptr %vring.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %num, ptr %vring.i, align 4
  %desc14.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %desc14.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %desc, ptr %desc14.i, align 4
  %avail16.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %avail16.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %avail, ptr %avail16.i, align 4
  %used18.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %used18.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %used, ptr %used18.i, align 4
  br label %vringh_init_kern.exit

vringh_init_kern.exit:                            ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ -22, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @vringh_set_iotlb(ptr nocapture noundef writeonly %vrh, ptr noundef %iotlb, ptr noundef %iotlb_lock) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %iotlb1 = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 7
  %0 = ptrtoint ptr %iotlb1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %iotlb, ptr %iotlb1, align 4
  %iotlb_lock2 = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 8
  %1 = ptrtoint ptr %iotlb_lock2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %iotlb_lock, ptr %iotlb_lock2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_getdesc_iotlb(ptr nocapture noundef %vrh, ptr noundef %riov, ptr noundef %wiov, ptr nocapture noundef writeonly %head, i32 noundef %gfp) #2 align 64 {
entry:
  %iter.i = alloca %struct.iov_iter, align 8
  %iov.i77 = alloca [16 x %struct.bio_vec], align 4
  %iov.i29 = alloca %struct.bio_vec, align 4
  %iov.i = alloca %struct.bio_vec, align 4
  %desc.i = alloca %struct.vring_desc, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %last_avail_idx = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 3
  %vring.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %avail.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %avail.i, align 4
  %idx.i = getelementptr inbounds %struct.vring_avail, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iov.i29) #15
  %2 = ptrtoint ptr %iov.i29 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov.i29, align 4, !annotation !133
  %3 = getelementptr inbounds %struct.bio_vec, ptr %iov.i29, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !133
  %5 = getelementptr inbounds %struct.bio_vec, ptr %iov.i29, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !133
  %7 = ptrtoint ptr %idx.i to i32
  %conv.i30 = zext i32 %7 to i64
  %call.i31 = call fastcc i32 @iotlb_translate(ptr noundef %vrh, i64 noundef %conv.i30, i64 noundef 2, ptr noundef nonnull %iov.i29, i32 noundef 1, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp.i32 = icmp slt i32 %call.i31, 0
  br i1 %cmp.i32, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i29) #15
  %8 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %avail.i, align 4
  %idx3.i = getelementptr inbounds %struct.vring_avail, ptr %9, i32 0, i32 1
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.4, ptr noundef %idx3.i) #19
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %iov.i29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iov.i29, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %12 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i33 = or i32 %12, 512
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i.i34 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i34 to ptr
  %preempt_count.i.i.i.i.i35 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i35, align 4
  %add.i.i.i.i36 = add i32 %16, 1
  store volatile i32 %add.i.i.i.i36, ptr %preempt_count.i.i.i.i.i35, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !151
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i.i37 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i1.i.i.i37 to ptr
  %task.i.i.i.i.i38 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i.i.i.i38, align 8
  %pagefault_disabled.i.i.i.i.i39 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 213
  %21 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pagefault_disabled.i.i.i.i.i39, align 8
  %inc.i.i.i.i.i40 = add i32 %22, 1
  store i32 %inc.i.i.i.i.i40, ptr %pagefault_disabled.i.i.i.i.i39, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !152
  %call.i.i.i41 = tail call ptr @__kmap_local_page_prot(ptr noundef %11, i32 noundef %or.i.i33) #15
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 4
  %add.ptr.i42 = getelementptr i8, ptr %call.i.i.i41, i32 %24
  %25 = ptrtoint ptr %add.ptr.i42 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load volatile i16, ptr %add.ptr.i42, align 2
  %27 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.not.i.i43 = icmp eq i8 %28, 0
  %29 = tail call i16 @llvm.bswap.i16(i16 %26) #15
  %retval.0.i.i.i44 = select i1 %tobool.not.i.not.i.i43, i16 %26, i16 %29
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i41) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !153
  %30 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i45 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i1.i.i45 to ptr
  %task.i.i.i.i46 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i.i.i46, align 8
  %pagefault_disabled.i.i.i.i47 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 213
  %34 = ptrtoint ptr %pagefault_disabled.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pagefault_disabled.i.i.i.i47, align 8
  %dec.i.i.i.i48 = add i32 %35, -1
  store i32 %dec.i.i.i.i48, ptr %pagefault_disabled.i.i.i.i47, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !154
  %36 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i49 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i49 to ptr
  %preempt_count.i.i.i.i50 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i50, align 4
  %sub.i.i.i51 = add i32 %39, -1
  store volatile i32 %sub.i.i.i51, ptr %preempt_count.i.i.i.i50, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i29) #15
  %40 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %last_avail_idx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %retval.0.i.i.i44)
  %cmp.i = icmp eq i16 %41, %retval.0.i.i.i44
  br i1 %cmp.i, label %__vringh_get_head.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15
  %42 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %last_avail_idx, align 2
  %44 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vring.i, align 4
  %46 = trunc i32 %45 to i16
  %47 = add i16 %46, -1
  %conv13.i = and i16 %47, %43
  %48 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %avail.i, align 4
  %idxprom.i = zext i16 %conv13.i to i32
  %arrayidx.i = getelementptr %struct.vring_avail, ptr %49, i32 0, i32 2, i32 %idxprom.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iov.i) #15
  %50 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov.i, align 4, !annotation !133
  %51 = getelementptr inbounds %struct.bio_vec, ptr %iov.i, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %51, align 4, !annotation !133
  %53 = getelementptr inbounds %struct.bio_vec, ptr %iov.i, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %53, align 4, !annotation !133
  %55 = ptrtoint ptr %arrayidx.i to i32
  %conv.i = zext i32 %55 to i64
  %call.i23 = call fastcc i32 @iotlb_translate(ptr noundef %vrh, i64 noundef %conv.i, i64 noundef 2, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp.i24 = icmp slt i32 %call.i23, 0
  br i1 %cmp.i24, label %if.then18.i, label %if.end25.i

if.then18.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i) #15
  %56 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %last_avail_idx, align 2
  %conv19.i = zext i16 %57 to i32
  %58 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %avail.i, align 4
  %arrayidx24.i = getelementptr %struct.vring_avail, ptr %59, i32 0, i32 2, i32 %idxprom.i
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.5, i32 noundef %conv19.i, ptr noundef %arrayidx24.i) #19
  br label %cleanup

if.end25.i:                                       ; preds = %if.end8.i
  %60 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iov.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %62 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %62, 512
  %63 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %66, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !151
  %67 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 213
  %71 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %72, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !152
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %61, i32 noundef %or.i.i) #15
  %73 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %53, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %74
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load volatile i16, ptr %add.ptr.i, align 2
  %77 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.not.i.i25 = icmp eq i8 %78, 0
  %79 = tail call i16 @llvm.bswap.i16(i16 %76) #15
  %retval.0.i.i.i26 = select i1 %tobool.not.i.not.i.i25, i16 %76, i16 %79
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !153
  %80 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 213
  %84 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %85, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !154
  %86 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %89, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i) #15
  %conv26.i = zext i16 %retval.0.i.i.i26 to i32
  %90 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %vring.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %conv26.i)
  %cmp29.not.i = icmp ugt i32 %91, %conv26.i
  br i1 %cmp29.not.i, label %__vringh_get_head.exit.thread108, label %if.then31.i

if.then31.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.6, i32 noundef %conv26.i, i32 noundef %91) #19
  br label %cleanup

__vringh_get_head.exit.thread108:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  %92 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %last_avail_idx, align 2
  %inc.i = add i16 %93, 1
  store i16 %inc.i, ptr %last_avail_idx, align 2
  br label %if.end

__vringh_get_head.exit:                           ; preds = %if.end.i
  %94 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %vring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp = icmp slt i32 %95, 0
  br i1 %cmp, label %__vringh_get_head.exit.cleanup_crit_edge, label %__vringh_get_head.exit.if.end_crit_edge

__vringh_get_head.exit.if.end_crit_edge:          ; preds = %__vringh_get_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

__vringh_get_head.exit.cleanup_crit_edge:         ; preds = %__vringh_get_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %__vringh_get_head.exit.if.end_crit_edge, %__vringh_get_head.exit.thread108
  %retval.0.i111 = phi i32 [ %conv26.i, %__vringh_get_head.exit.thread108 ], [ %95, %__vringh_get_head.exit.if.end_crit_edge ]
  %96 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %vring.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i111, i32 %97)
  %cmp1 = icmp eq i32 %retval.0.i111, %97
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %conv = trunc i32 %retval.0.i111 to i16
  %98 = ptrtoint ptr %head to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv, ptr %head, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #15
  %99 = getelementptr inbounds %struct.vring_desc, ptr %desc.i, i32 0, i32 1
  %100 = getelementptr inbounds %struct.vring_desc, ptr %desc.i, i32 0, i32 2
  %101 = getelementptr inbounds %struct.vring_desc, ptr %desc.i, i32 0, i32 3
  %102 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  %desc1.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 1
  %103 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %desc1.i, align 4
  %105 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %vring.i, align 4
  %tobool.not.i17 = icmp eq ptr %riov, null
  %tobool3.not.i = icmp eq ptr %wiov, null
  %spec.select.i = and i1 %tobool.not.i17, %tobool3.not.i
  br i1 %spec.select.i, label %do.end.i, label %if.end26.i, !prof !139

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 306, i32 noundef 9, ptr noundef null) #15
  br label %__vringh_iov.exit.thread

if.end26.i:                                       ; preds = %if.end3
  br i1 %tobool.not.i17, label %if.end26.i.if.end30.i_crit_edge, label %if.then28.i

if.end26.i.if.end30.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  %consumed.i = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 1
  %107 = ptrtoint ptr %consumed.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %consumed.i, align 4
  %used.i = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 3
  %108 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %used.i, align 4
  %i29.i = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 2
  %109 = ptrtoint ptr %i29.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %i29.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %if.end26.i.if.end30.i_crit_edge
  br i1 %tobool3.not.i, label %if.end30.i.if.end36.i_crit_edge, label %if.then32.i

if.end30.i.if.end36.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i

if.then32.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  %consumed33.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 1
  %110 = ptrtoint ptr %consumed33.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %consumed33.i, align 4
  %used34.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 3
  %111 = ptrtoint ptr %used34.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %used34.i, align 4
  %i35.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 2
  %112 = ptrtoint ptr %i35.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %i35.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then32.i, %if.end30.i.if.end36.i_crit_edge
  %used108.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 3
  %idxprom.i18171 = and i32 %retval.0.i111, 65535
  %arrayidx.i19172 = getelementptr %struct.vring_desc, ptr %104, i32 %idxprom.i18171
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #15
  %113 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %iov.i77) #15
  %114 = call ptr @memset(ptr %iov.i77, i32 255, i32 192)
  %115 = ptrtoint ptr %arrayidx.i19172 to i32
  %conv.i78173 = zext i32 %115 to i64
  %call.i79174 = call fastcc i32 @iotlb_translate(ptr noundef %vrh, i64 noundef %conv.i78173, i64 noundef 16, ptr noundef nonnull %iov.i77, i32 noundef 16, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79174)
  %cmp.i80175 = icmp slt i32 %call.i79174, 0
  br i1 %cmp.i80175, label %if.end36.i.copy_from_iotlb.exit.thread_crit_edge, label %if.end36.i.if.end.i82_crit_edge

if.end36.i.if.end.i82_crit_edge:                  ; preds = %if.end36.i
  br label %if.end.i82

if.end36.i.copy_from_iotlb.exit.thread_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_from_iotlb.exit.thread

if.end.i82:                                       ; preds = %cleanup214.i.if.end.i82_crit_edge, %if.end36.i.if.end.i82_crit_edge
  %call.i79182 = phi i32 [ %call.i79, %cleanup214.i.if.end.i82_crit_edge ], [ %call.i79174, %if.end36.i.if.end.i82_crit_edge ]
  %arrayidx.i19181 = phi ptr [ %arrayidx.i19, %cleanup214.i.if.end.i82_crit_edge ], [ %arrayidx.i19172, %if.end36.i.if.end.i82_crit_edge ]
  %idxprom.i18180 = phi i32 [ %idxprom.i18, %cleanup214.i.if.end.i82_crit_edge ], [ %idxprom.i18171, %if.end36.i.if.end.i82_crit_edge ]
  %count.0.i179 = phi i32 [ %count.1.i, %cleanup214.i.if.end.i82_crit_edge ], [ 0, %if.end36.i.if.end.i82_crit_edge ]
  %descs.i.0178 = phi ptr [ %descs.i.3, %cleanup214.i.if.end.i82_crit_edge ], [ %104, %if.end36.i.if.end.i82_crit_edge ]
  %desc_max.i.0177 = phi i32 [ %desc_max.i.3, %cleanup214.i.if.end.i82_crit_edge ], [ %106, %if.end36.i.if.end.i82_crit_edge ]
  %up_next.i.0176 = phi i32 [ %up_next.i.3, %cleanup214.i.if.end.i82_crit_edge ], [ -1, %if.end36.i.if.end.i82_crit_edge ]
  call void @iov_iter_bvec(ptr noundef nonnull %iter.i, i32 noundef 0, ptr noundef nonnull %iov.i77, i32 noundef %call.i79182, i32 noundef 16) #15
  %call3.i.i = call i32 @_copy_from_iter(ptr noundef nonnull %desc.i, i32 noundef 16, ptr noundef nonnull %iter.i) #15
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %iov.i77) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3.i.i)
  %cmp.not.i69 = icmp eq i32 %call3.i.i, 16
  br i1 %cmp.not.i69, label %if.end57.i, label %if.end.i82.__vringh_iov.exit.thread_crit_edge

if.end.i82.__vringh_iov.exit.thread_crit_edge:    ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vringh_iov.exit.thread

copy_from_iotlb.exit.thread:                      ; preds = %cleanup214.i.copy_from_iotlb.exit.thread_crit_edge, %if.end36.i.copy_from_iotlb.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %iov.i77) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #15
  br label %__vringh_iov.exit.thread

if.end57.i:                                       ; preds = %if.end.i82
  %116 = ptrtoint ptr %100 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %100, align 4
  %118 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i.not.i.i = icmp eq i8 %119, 0
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 4, i16 1024
  %and296.i = and i16 %retval.0.i.i.i, %117
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and296.i)
  %tobool60.not.i = icmp eq i16 %and296.i, 0
  br i1 %tobool60.not.i, label %if.end91.i, label %if.end85.i, !prof !141

if.end85.i:                                       ; preds = %if.end57.i
  %120 = ptrtoint ptr %desc.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %desc.i, align 8
  %122 = call i64 @llvm.bswap.i64(i64 %121) #15
  %retval.0.i.i300.i = select i1 %tobool.not.i.not.i.i, i64 %121, i64 %122
  %123 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %99, align 8
  %125 = call i32 @llvm.bswap.i32(i32 %124) #15
  %retval.0.i.i302.i = select i1 %tobool.not.i.not.i.i, i32 %124, i32 %125
  %conv86.i = trunc i64 %retval.0.i.i300.i to i32
  %126 = inttoptr i32 %conv86.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %up_next.i.0176)
  %cmp.not.i59 = icmp eq i32 %up_next.i.0176, -1
  br i1 %cmp.not.i59, label %if.end.i65, label %if.then.i61

if.then.i61:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.13, i32 noundef %up_next.i.0176, i32 noundef %idxprom.i18180) #19
  br label %__vringh_iov.exit.thread

if.end.i65:                                       ; preds = %if.end85.i
  %rem.i = and i32 %retval.0.i.i302.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i64 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i64, label %if.end6.i, label %if.then4.i, !prof !141

if.then4.i:                                       ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.14, i32 noundef %124) #19
  br label %__vringh_iov.exit.thread

if.end6.i:                                        ; preds = %if.end.i65
  %retval.0.i.i28.i = select i1 %tobool.not.i.not.i.i, i16 1, i16 256
  %and25.i = and i16 %retval.0.i.i28.i, %117
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and25.i)
  %tobool10.not.i = icmp eq i16 %and25.i, 0
  br i1 %tobool10.not.i, label %if.end6.i.move_to_indirect.exit_crit_edge, label %if.then11.i

if.end6.i.move_to_indirect.exit_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %move_to_indirect.exit

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %127 = ptrtoint ptr %101 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %101, align 2
  %129 = call i16 @llvm.bswap.i16(i16 %128) #15
  %retval.0.i.i30.i = select i1 %tobool.not.i.not.i.i, i16 %128, i16 %129
  %conv13.i66 = zext i16 %retval.0.i.i30.i to i32
  br label %move_to_indirect.exit

move_to_indirect.exit:                            ; preds = %if.then11.i, %if.end6.i.move_to_indirect.exit_crit_edge
  %storemerge.i67 = phi i32 [ %conv13.i66, %if.then11.i ], [ -2, %if.end6.i.move_to_indirect.exit_crit_edge ]
  %div26.i = lshr i32 %retval.0.i.i302.i, 4
  br label %cleanup214.i

if.end91.i:                                       ; preds = %if.end57.i
  %inc.i21 = add i32 %count.0.i179, 1
  %130 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %vring.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.i179, i32 %131)
  %cmp94.i = icmp eq i32 %count.0.i179, %131
  br i1 %cmp94.i, label %if.then96.i, label %if.end97.i

if.then96.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.7, ptr noundef %descs.i.0178) #19
  br label %__vringh_iov.exit.thread

if.end97.i:                                       ; preds = %if.end91.i
  %retval.0.i.i306.i = select i1 %tobool.not.i.not.i.i, i16 2, i16 512
  %and102297.i = and i16 %retval.0.i.i306.i, %117
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and102297.i)
  %tobool103.not.i = icmp ne i16 %and102297.i, 0
  %brmerge.i = or i1 %tobool3.not.i, %tobool103.not.i
  %wiov.mux.i = select i1 %tobool103.not.i, ptr %wiov, ptr %riov
  br i1 %brmerge.i, label %if.end97.i.if.end121.i_crit_edge, label %land.rhs107.i

if.end97.i.if.end121.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end121.i

land.rhs107.i:                                    ; preds = %if.end97.i
  %132 = ptrtoint ptr %used108.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %used108.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool109.not.i = icmp eq i32 %133, 0
  br i1 %tobool109.not.i, label %land.rhs107.i.if.end121.i_crit_edge, label %if.then117.i, !prof !141

land.rhs107.i.if.end121.i_crit_edge:              ; preds = %land.rhs107.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end121.i

if.then117.i:                                     ; preds = %land.rhs107.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.8, ptr noundef %arrayidx.i19181) #19
  br label %__vringh_iov.exit.thread

if.end121.i:                                      ; preds = %land.rhs107.i.if.end121.i_crit_edge, %if.end97.i.if.end121.i_crit_edge
  %iov.0.i = phi ptr [ %riov, %land.rhs107.i.if.end121.i_crit_edge ], [ %wiov.mux.i, %if.end97.i.if.end121.i_crit_edge ]
  %tobool122.not.i = icmp eq ptr %iov.0.i, null
  br i1 %tobool122.not.i, label %if.then123.i, label %again.preheader.i

again.preheader.i:                                ; preds = %if.end121.i
  %used140.i = getelementptr inbounds %struct.vringh_kiov, ptr %iov.0.i, i32 0, i32 3
  %max_num.i = getelementptr inbounds %struct.vringh_kiov, ptr %iov.0.i, i32 0, i32 4
  br label %if.end134.i

if.then123.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #17
  %cond.i = select i1 %tobool3.not.i, ptr @.str.10, ptr @.str.11
  call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.9, ptr noundef nonnull %cond.i) #19
  br label %__vringh_iov.exit.thread

if.end134.i:                                      ; preds = %if.then174.i, %again.preheader.i
  %134 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %99, align 8
  %136 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i.not.i307.i = icmp eq i8 %137, 0
  %138 = call i32 @llvm.bswap.i32(i32 %135) #15
  %retval.0.i.i308.i = select i1 %tobool.not.i.not.i307.i, i32 %135, i32 %138
  %139 = ptrtoint ptr %desc.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %desc.i, align 8
  %141 = call i64 @llvm.bswap.i64(i64 %140) #15
  %retval.0.i.i312.i = select i1 %tobool.not.i.not.i307.i, i64 %140, i64 %141
  %conv139.i = trunc i64 %retval.0.i.i312.i to i32
  %142 = inttoptr i32 %conv139.i to ptr
  %143 = ptrtoint ptr %used140.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %used140.i, align 4
  %145 = ptrtoint ptr %max_num.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %max_num.i, align 4
  %and141.i = and i32 %146, -134217729
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %and141.i)
  %cmp142.i = icmp eq i32 %144, %and141.i
  br i1 %cmp142.i, label %if.then150.i, label %if.end134.i.if.end155.i_crit_edge, !prof !139

if.end134.i.if.end155.i_crit_edge:                ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155.i

if.then150.i:                                     ; preds = %if.end134.i
  %and.i = shl i32 %146, 1
  %mul.i = and i32 %and.i, -268435458
  %147 = call i32 @llvm.umax.i32(i32 %mul.i, i32 8) #15
  %and2.i = and i32 %146, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i56 = icmp eq i32 %and2.i, 0
  %148 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %147, i32 8) #15
  %149 = extractvalue { i32, i1 } %148, 1
  br i1 %tobool.not.i56, label %if.else.i57, label %if.then3.i

if.then3.i:                                       ; preds = %if.then150.i
  br i1 %149, label %if.then3.i.__vringh_iov.exit.thread_crit_edge, label %if.end.i.i, !prof !139

if.then3.i.__vringh_iov.exit.thread_crit_edge:    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vringh_iov.exit.thread

if.end.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  %150 = ptrtoint ptr %iov.0.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %iov.0.i, align 4
  %152 = extractvalue { i32, i1 } %148, 0
  %call5.i.i = call noalias ptr @krealloc(ptr noundef %151, i32 noundef %152, i32 noundef %gfp) #21
  br label %if.end12.i

if.else.i57:                                      ; preds = %if.then150.i
  br i1 %149, label %if.else.i57.__vringh_iov.exit.thread_crit_edge, label %if.end7.i.i, !prof !139

if.else.i57.__vringh_iov.exit.thread_crit_edge:   ; preds = %if.else.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vringh_iov.exit.thread

if.end7.i.i:                                      ; preds = %if.else.i57
  %153 = extractvalue { i32, i1 } %148, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %153, i32 noundef %gfp) #22
  %tobool6.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool6.not.i, label %if.end7.i.i.__vringh_iov.exit.thread_crit_edge, label %if.then7.i

if.end7.i.i.__vringh_iov.exit.thread_crit_edge:   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vringh_iov.exit.thread

if.then7.i:                                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %154 = ptrtoint ptr %iov.0.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %iov.0.i, align 4
  %156 = ptrtoint ptr %max_num.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %max_num.i, align 4
  %mul10.i = shl i32 %157, 3
  %158 = call ptr @memcpy(ptr %call8.i.i, ptr %155, i32 %mul10.i)
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then7.i, %if.end.i.i
  %new.0.i = phi ptr [ %call8.i.i, %if.then7.i ], [ %call5.i.i, %if.end.i.i ]
  %flag.0.i = phi i32 [ 134217728, %if.then7.i ], [ %and2.i, %if.end.i.i ]
  %tobool13.not.i = icmp eq ptr %new.0.i, null
  br i1 %tobool13.not.i, label %if.end12.i.__vringh_iov.exit.thread_crit_edge, label %resize_iovec.exit

if.end12.i.__vringh_iov.exit.thread_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vringh_iov.exit.thread

resize_iovec.exit:                                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  %159 = ptrtoint ptr %iov.0.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %new.0.i, ptr %iov.0.i, align 4
  %or.i = or i32 %flag.0.i, %147
  %160 = ptrtoint ptr %max_num.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %or.i, ptr %max_num.i, align 4
  br label %if.end155.i

if.end155.i:                                      ; preds = %resize_iovec.exit, %if.end134.i.if.end155.i_crit_edge
  %161 = ptrtoint ptr %iov.0.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %iov.0.i, align 4
  %163 = ptrtoint ptr %used140.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %used140.i, align 4
  %arrayidx158.i = getelementptr %struct.kvec, ptr %162, i32 %164
  %165 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %142, ptr %arrayidx158.i, align 4
  %166 = load ptr, ptr %iov.0.i, align 4
  %167 = load i32, ptr %used140.i, align 4
  %iov_len.i = getelementptr %struct.kvec, ptr %166, i32 %167, i32 1
  %168 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %retval.0.i.i308.i, ptr %iov_len.i, align 4
  %169 = load i32, ptr %used140.i, align 4
  %inc163.i = add i32 %169, 1
  store i32 %inc163.i, ptr %used140.i, align 4
  %170 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %99, align 8
  %172 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool.not.i.not.i313.i = icmp eq i8 %173, 0
  %174 = call i32 @llvm.bswap.i32(i32 %171) #15
  %retval.0.i.i314.i = select i1 %tobool.not.i.not.i313.i, i32 %171, i32 %174
  %cmp166.not.i = icmp eq i32 %retval.0.i.i314.i, %retval.0.i.i308.i
  br i1 %cmp166.not.i, label %if.end185.i, label %if.then174.i, !prof !141

if.then174.i:                                     ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = sub i32 %retval.0.i.i314.i, %retval.0.i.i308.i
  %175 = call i32 @llvm.bswap.i32(i32 %sub.i) #15
  %retval.0.i.i318.i = select i1 %tobool.not.i.not.i313.i, i32 %sub.i, i32 %175
  %176 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %retval.0.i.i318.i, ptr %99, align 8
  %177 = ptrtoint ptr %desc.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %desc.i, align 8
  %179 = call i64 @llvm.bswap.i64(i64 %178) #15
  %retval.0.i.i320.i = select i1 %tobool.not.i.not.i313.i, i64 %178, i64 %179
  %conv181.i = zext i32 %retval.0.i.i308.i to i64
  %add182.i = add i64 %retval.0.i.i320.i, %conv181.i
  %180 = call i64 @llvm.bswap.i64(i64 %add182.i) #15
  %retval.0.i.i322.i = select i1 %tobool.not.i.not.i313.i, i64 %add182.i, i64 %180
  %181 = ptrtoint ptr %desc.i to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %retval.0.i.i322.i, ptr %desc.i, align 8
  br label %if.end134.i

if.end185.i:                                      ; preds = %if.end155.i
  %182 = ptrtoint ptr %100 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %100, align 4
  %retval.0.i.i324.i = select i1 %tobool.not.i.not.i313.i, i16 1, i16 256
  %and190298.i = and i16 %183, %retval.0.i.i324.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and190298.i)
  %tobool191.not.i = icmp eq i16 %and190298.i, 0
  br i1 %tobool191.not.i, label %if.else194.i, label %if.then192.i

if.then192.i:                                     ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #17
  %184 = ptrtoint ptr %101 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %101, align 2
  %186 = call i16 @llvm.bswap.i16(i16 %185) #15
  %retval.0.i.i326.i = select i1 %tobool.not.i.not.i313.i, i16 %185, i16 %186
  br label %if.end207.i

if.else194.i:                                     ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up_next.i.0176)
  %cmp195.i = icmp sgt i32 %up_next.i.0176, 0
  br i1 %cmp195.i, label %if.then203.i, label %194, !prof !139

if.then203.i:                                     ; preds = %if.else194.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i = trunc i32 %up_next.i.0176 to i16
  %187 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %desc1.i, align 4
  %189 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %vring.i, align 4
  br label %if.end207.i

if.end207.i:                                      ; preds = %if.then203.i, %if.then192.i
  %up_next.i.2 = phi i32 [ -1, %if.then203.i ], [ %up_next.i.0176, %if.then192.i ]
  %desc_max.i.2 = phi i32 [ %190, %if.then203.i ], [ %desc_max.i.0177, %if.then192.i ]
  %descs.i.2 = phi ptr [ %188, %if.then203.i ], [ %descs.i.0178, %if.then192.i ]
  %storemerge.i = phi i16 [ %conv.i.i, %if.then203.i ], [ %retval.0.i.i326.i, %if.then192.i ]
  %conv208.i = zext i16 %storemerge.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %desc_max.i.2, i32 %conv208.i)
  %cmp209.not.i = icmp sgt i32 %desc_max.i.2, %conv208.i
  br i1 %cmp209.not.i, label %if.end207.i.cleanup214.i_crit_edge, label %if.then211.i

if.end207.i.cleanup214.i_crit_edge:               ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup214.i

if.then211.i:                                     ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.12, i32 noundef %conv208.i, i32 noundef %desc_max.i.2) #19
  br label %__vringh_iov.exit.thread

cleanup214.i:                                     ; preds = %if.end207.i.cleanup214.i_crit_edge, %move_to_indirect.exit
  %up_next.i.3 = phi i32 [ %up_next.i.2, %if.end207.i.cleanup214.i_crit_edge ], [ %storemerge.i67, %move_to_indirect.exit ]
  %desc_max.i.3 = phi i32 [ %desc_max.i.2, %if.end207.i.cleanup214.i_crit_edge ], [ %div26.i, %move_to_indirect.exit ]
  %descs.i.3 = phi ptr [ %descs.i.2, %if.end207.i.cleanup214.i_crit_edge ], [ %126, %move_to_indirect.exit ]
  %i.addr.i.2 = phi i16 [ %storemerge.i, %if.end207.i.cleanup214.i_crit_edge ], [ 0, %move_to_indirect.exit ]
  %count.1.i = phi i32 [ %inc.i21, %if.end207.i.cleanup214.i_crit_edge ], [ %count.0.i179, %move_to_indirect.exit ]
  %idxprom.i18 = zext i16 %i.addr.i.2 to i32
  %arrayidx.i19 = getelementptr %struct.vring_desc, ptr %descs.i.3, i32 %idxprom.i18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #15
  %191 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %iov.i77) #15
  %192 = call ptr @memset(ptr %iov.i77, i32 255, i32 192)
  %193 = ptrtoint ptr %arrayidx.i19 to i32
  %conv.i78 = zext i32 %193 to i64
  %call.i79 = call fastcc i32 @iotlb_translate(ptr noundef %vrh, i64 noundef %conv.i78, i64 noundef 16, ptr noundef nonnull %iov.i77, i32 noundef 16, i32 noundef 1) #15
  %cmp.i80 = icmp slt i32 %call.i79, 0
  br i1 %cmp.i80, label %cleanup214.i.copy_from_iotlb.exit.thread_crit_edge, label %cleanup214.i.if.end.i82_crit_edge

cleanup214.i.if.end.i82_crit_edge:                ; preds = %cleanup214.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i82

cleanup214.i.copy_from_iotlb.exit.thread_crit_edge: ; preds = %cleanup214.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_from_iotlb.exit.thread

__vringh_iov.exit.thread:                         ; preds = %if.then211.i, %if.end12.i.__vringh_iov.exit.thread_crit_edge, %if.end7.i.i.__vringh_iov.exit.thread_crit_edge, %if.else.i57.__vringh_iov.exit.thread_crit_edge, %if.then3.i.__vringh_iov.exit.thread_crit_edge, %if.then123.i, %if.then117.i, %if.then96.i, %if.then4.i, %if.then.i61, %copy_from_iotlb.exit.thread, %if.end.i82.__vringh_iov.exit.thread_crit_edge, %do.end.i
  %retval.0.i22.ph = phi i32 [ -40, %if.then96.i ], [ -22, %if.then211.i ], [ -71, %if.then123.i ], [ -22, %if.then117.i ], [ -22, %do.end.i ], [ -14, %copy_from_iotlb.exit.thread ], [ -22, %if.then.i61 ], [ -22, %if.then4.i ], [ -12, %if.else.i57.__vringh_iov.exit.thread_crit_edge ], [ -12, %if.then3.i.__vringh_iov.exit.thread_crit_edge ], [ -12, %if.end7.i.i.__vringh_iov.exit.thread_crit_edge ], [ -12, %if.end12.i.__vringh_iov.exit.thread_crit_edge ], [ -14, %if.end.i82.__vringh_iov.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #15
  br label %cleanup

194:                                              ; preds = %if.else194.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #15
  br label %cleanup

cleanup:                                          ; preds = %194, %__vringh_iov.exit.thread, %if.end.cleanup_crit_edge, %__vringh_get_head.exit.cleanup_crit_edge, %if.then31.i, %if.then18.i, %if.then.i
  %retval.0 = phi i32 [ %95, %__vringh_get_head.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %194 ], [ %retval.0.i22.ph, %__vringh_iov.exit.thread ], [ -22, %if.then31.i ], [ %call.i23, %if.then18.i ], [ %call.i31, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_iov_pull_iotlb(ptr nocapture noundef readonly %vrh, ptr nocapture noundef %riov, ptr noundef %dst, i32 noundef %len) #2 align 64 {
entry:
  %iter.i.i = alloca %struct.iov_iter, align 8
  %iov.i.i = alloca [16 x %struct.bio_vec], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i.i = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not33.i = icmp eq i32 %len, 0
  br i1 %tobool.not33.i, label %entry.vringh_iov_xfer.exit_crit_edge, label %land.rhs.lr.ph.i

entry.vringh_iov_xfer.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

land.rhs.lr.ph.i:                                 ; preds = %entry
  %used.i = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 3
  %consumed.i.i = getelementptr inbounds %struct.vringh_kiov, ptr %riov, i32 0, i32 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.backedge.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %done.036.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %add.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %ptr.addr.035.i = phi ptr [ %dst, %land.rhs.lr.ph.i ], [ %add.ptr.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %len.addr.034.i = phi i32 [ %len, %land.rhs.lr.ph.i ], [ %sub.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %0 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i.i, align 4
  %2 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp ult i32 %1, %3
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.vringh_iov_xfer.exit_crit_edge

land.rhs.i.vringh_iov_xfer.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

while.body.i:                                     ; preds = %land.rhs.i
  %4 = ptrtoint ptr %riov to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %riov, align 4
  %iov_len.i = getelementptr %struct.kvec, ptr %5, i32 %1, i32 1
  %6 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iov_len.i, align 4
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 %len.addr.034.i) #15
  %arrayidx6.i = getelementptr %struct.kvec, ptr %5, i32 %1
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i.i) #15
  %11 = call ptr @memset(ptr %iter.i.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %iov.i.i) #15
  %12 = call ptr @memset(ptr %iov.i.i, i32 255, i32 192)
  %13 = ptrtoint ptr %10 to i32
  %conv.i.i = zext i32 %13 to i64
  %conv1.i.i = zext i32 %8 to i64
  %call.i.i = call fastcc i32 @iotlb_translate(ptr noundef %vrh, i64 noundef %conv.i.i, i64 noundef %conv1.i.i, ptr noundef nonnull %iov.i.i, i32 noundef 16, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i1 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i1, label %while.body.i.xfer_from_iotlb.exit_crit_edge, label %if.end.i.i2

while.body.i.xfer_from_iotlb.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfer_from_iotlb.exit

if.end.i.i2:                                      ; preds = %while.body.i
  call void @iov_iter_bvec(ptr noundef nonnull %iter.i.i, i32 noundef 0, ptr noundef nonnull %iov.i.i, i32 noundef %call.i.i, i32 noundef %8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9.i.i.i.i = icmp slt i32 %8, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end.i.i2
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.xfer_from_iotlb.exit_crit_edge, label %if.then27.i.i.i.i, !prof !141

land.rhs16.i.i.i.i.xfer_from_iotlb.exit_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xfer_from_iotlb.exit

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %xfer_from_iotlb.exit

if.then.i.i.i.i.i:                                ; preds = %if.end.i.i2
  call void @__sanitizer_cov_trace_pc() #17
  call void @__check_object_size(ptr noundef %ptr.addr.035.i, i32 noundef %8, i1 noundef zeroext false) #15
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %ptr.addr.035.i, i32 noundef %8, ptr noundef nonnull %iter.i.i) #15
  br label %xfer_from_iotlb.exit

xfer_from_iotlb.exit:                             ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.xfer_from_iotlb.exit_crit_edge, %while.body.i.xfer_from_iotlb.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %while.body.i.xfer_from_iotlb.exit_crit_edge ], [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.xfer_from_iotlb.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %iov.i.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %8)
  %cmp.not.i = icmp eq i32 %retval.0.i.i, %8
  br i1 %cmp.not.i, label %if.end.i, label %xfer_from_iotlb.exit.vringh_iov_xfer.exit_crit_edge

xfer_from_iotlb.exit.vringh_iov_xfer.exit_crit_edge: ; preds = %xfer_from_iotlb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

if.end.i:                                         ; preds = %xfer_from_iotlb.exit
  %add.i = add i32 %8, %done.036.i
  %sub.i = sub i32 %len.addr.034.i, %8
  %add.ptr.i = getelementptr i8, ptr %ptr.addr.035.i, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not56.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not56.i.i, label %if.end.i.while.cond.backedge.i_crit_edge, label %if.end.i.land.rhs.i.i_crit_edge

if.end.i.land.rhs.i.i_crit_edge:                  ; preds = %if.end.i
  br label %land.rhs.i.i

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

land.rhs.i.i:                                     ; preds = %if.end.i.i.land.rhs.i.i_crit_edge, %if.end.i.land.rhs.i.i_crit_edge
  %len.addr.057.i.i = phi i32 [ %sub29.i.i, %if.end.i.i.land.rhs.i.i_crit_edge ], [ %8, %if.end.i.land.rhs.i.i_crit_edge ]
  %14 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i.i, align 4
  %16 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.i.i = icmp ult i32 %15, %17
  br i1 %cmp.i.i, label %while.body.i.i, label %land.rhs.i.i.while.cond.backedge.i_crit_edge

land.rhs.i.i.while.cond.backedge.i_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %18 = ptrtoint ptr %riov to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %riov, align 4
  %iov_len.i.i = getelementptr %struct.kvec, ptr %19, i32 %15, i32 1
  %20 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iov_len.i.i, align 4
  %22 = call i32 @llvm.umin.i32(i32 %21, i32 %len.addr.057.i.i) #15
  %23 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %consumed.i.i, align 4
  %add.i.i = add i32 %24, %22
  store i32 %add.i.i, ptr %consumed.i.i, align 4
  %25 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iov_len.i.i, align 4
  %sub.i.i = sub i32 %26, %22
  store i32 %sub.i.i, ptr %iov_len.i.i, align 4
  %27 = ptrtoint ptr %riov to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %riov, align 4
  %29 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i.i, align 4
  %arrayidx10.i.i = getelementptr %struct.kvec, ptr %28, i32 %30
  %31 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx10.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %22
  store ptr %add.ptr.i.i, ptr %arrayidx10.i.i, align 4
  %33 = load ptr, ptr %riov, align 4
  %34 = load i32, ptr %i.i, align 4
  %iov_len14.i.i = getelementptr %struct.kvec, ptr %33, i32 %34, i32 1
  %35 = ptrtoint ptr %iov_len14.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iov_len14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool15.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool15.not.i.i, label %if.then.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %consumed.i.i, align 4
  %39 = ptrtoint ptr %iov_len14.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %iov_len14.i.i, align 4
  %40 = load i32, ptr %consumed.i.i, align 4
  %41 = ptrtoint ptr %riov to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %riov, align 4
  %43 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i.i, align 4
  %arrayidx24.i.i = getelementptr %struct.kvec, ptr %42, i32 %44
  %45 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx24.i.i, align 4
  %idx.neg.i.i = sub i32 0, %40
  %add.ptr26.i.i = getelementptr i8, ptr %46, i32 %idx.neg.i.i
  store ptr %add.ptr26.i.i, ptr %arrayidx24.i.i, align 4
  store i32 0, ptr %consumed.i.i, align 4
  %47 = load i32, ptr %i.i, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %sub29.i.i = sub i32 %len.addr.057.i.i, %22
  %tobool.not.i.i = icmp eq i32 %sub29.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.while.cond.backedge.i_crit_edge, label %if.end.i.i.land.rhs.i.i_crit_edge

if.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i.i

if.end.i.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i.i.while.cond.backedge.i_crit_edge, %land.rhs.i.i.while.cond.backedge.i_crit_edge, %if.end.i.while.cond.backedge.i_crit_edge
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge, label %while.cond.backedge.i.land.rhs.i_crit_edge

while.cond.backedge.i.land.rhs.i_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

vringh_iov_xfer.exit:                             ; preds = %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge, %xfer_from_iotlb.exit.vringh_iov_xfer.exit_crit_edge, %land.rhs.i.vringh_iov_xfer.exit_crit_edge, %entry.vringh_iov_xfer.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %entry.vringh_iov_xfer.exit_crit_edge ], [ -14, %xfer_from_iotlb.exit.vringh_iov_xfer.exit_crit_edge ], [ %done.036.i, %land.rhs.i.vringh_iov_xfer.exit_crit_edge ], [ %add.i, %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_iov_push_iotlb(ptr nocapture noundef readonly %vrh, ptr nocapture noundef %wiov, ptr noundef %src, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not33.i = icmp eq i32 %len, 0
  br i1 %tobool.not33.i, label %entry.vringh_iov_xfer.exit_crit_edge, label %land.rhs.lr.ph.i

entry.vringh_iov_xfer.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

land.rhs.lr.ph.i:                                 ; preds = %entry
  %used.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 3
  %consumed.i.i = getelementptr inbounds %struct.vringh_kiov, ptr %wiov, i32 0, i32 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.backedge.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %done.036.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %add.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %ptr.addr.035.i = phi ptr [ %src, %land.rhs.lr.ph.i ], [ %add.ptr.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %len.addr.034.i = phi i32 [ %len, %land.rhs.lr.ph.i ], [ %sub.i, %while.cond.backedge.i.land.rhs.i_crit_edge ]
  %0 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i.i, align 4
  %2 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp ult i32 %1, %3
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.vringh_iov_xfer.exit_crit_edge

land.rhs.i.vringh_iov_xfer.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

while.body.i:                                     ; preds = %land.rhs.i
  %4 = ptrtoint ptr %wiov to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiov, align 4
  %iov_len.i = getelementptr %struct.kvec, ptr %5, i32 %1, i32 1
  %6 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iov_len.i, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %len.addr.034.i) #15
  %arrayidx6.i = getelementptr %struct.kvec, ptr %5, i32 %1
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6.i, align 4
  %call.i1 = tail call fastcc i32 @copy_to_iotlb(ptr noundef %vrh, ptr noundef %10, ptr noundef %ptr.addr.035.i, i32 noundef %8) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i1, i32 %8)
  %cmp.not.i = icmp eq i32 %call.i1, %8
  br i1 %cmp.not.i, label %if.end.i, label %while.body.i.vringh_iov_xfer.exit_crit_edge

while.body.i.vringh_iov_xfer.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

if.end.i:                                         ; preds = %while.body.i
  %add.i = add i32 %8, %done.036.i
  %sub.i = sub i32 %len.addr.034.i, %8
  %add.ptr.i = getelementptr i8, ptr %ptr.addr.035.i, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not56.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not56.i.i, label %if.end.i.while.cond.backedge.i_crit_edge, label %if.end.i.land.rhs.i.i_crit_edge

if.end.i.land.rhs.i.i_crit_edge:                  ; preds = %if.end.i
  br label %land.rhs.i.i

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

land.rhs.i.i:                                     ; preds = %if.end.i.i.land.rhs.i.i_crit_edge, %if.end.i.land.rhs.i.i_crit_edge
  %len.addr.057.i.i = phi i32 [ %sub29.i.i, %if.end.i.i.land.rhs.i.i_crit_edge ], [ %8, %if.end.i.land.rhs.i.i_crit_edge ]
  %11 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i.i, align 4
  %13 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i.i = icmp ult i32 %12, %14
  br i1 %cmp.i.i, label %while.body.i.i, label %land.rhs.i.i.while.cond.backedge.i_crit_edge

land.rhs.i.i.while.cond.backedge.i_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %15 = ptrtoint ptr %wiov to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiov, align 4
  %iov_len.i.i = getelementptr %struct.kvec, ptr %16, i32 %12, i32 1
  %17 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iov_len.i.i, align 4
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 %len.addr.057.i.i) #15
  %20 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %consumed.i.i, align 4
  %add.i.i = add i32 %21, %19
  store i32 %add.i.i, ptr %consumed.i.i, align 4
  %22 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iov_len.i.i, align 4
  %sub.i.i = sub i32 %23, %19
  store i32 %sub.i.i, ptr %iov_len.i.i, align 4
  %24 = ptrtoint ptr %wiov to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wiov, align 4
  %26 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i.i, align 4
  %arrayidx10.i.i = getelementptr %struct.kvec, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx10.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %19
  store ptr %add.ptr.i.i, ptr %arrayidx10.i.i, align 4
  %30 = load ptr, ptr %wiov, align 4
  %31 = load i32, ptr %i.i, align 4
  %iov_len14.i.i = getelementptr %struct.kvec, ptr %30, i32 %31, i32 1
  %32 = ptrtoint ptr %iov_len14.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iov_len14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool15.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool15.not.i.i, label %if.then.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %consumed.i.i, align 4
  %36 = ptrtoint ptr %iov_len14.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %iov_len14.i.i, align 4
  %37 = load i32, ptr %consumed.i.i, align 4
  %38 = ptrtoint ptr %wiov to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiov, align 4
  %40 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i.i, align 4
  %arrayidx24.i.i = getelementptr %struct.kvec, ptr %39, i32 %41
  %42 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx24.i.i, align 4
  %idx.neg.i.i = sub i32 0, %37
  %add.ptr26.i.i = getelementptr i8, ptr %43, i32 %idx.neg.i.i
  store ptr %add.ptr26.i.i, ptr %arrayidx24.i.i, align 4
  store i32 0, ptr %consumed.i.i, align 4
  %44 = load i32, ptr %i.i, align 4
  %inc.i.i = add i32 %44, 1
  store i32 %inc.i.i, ptr %i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %sub29.i.i = sub i32 %len.addr.057.i.i, %19
  %tobool.not.i.i = icmp eq i32 %sub29.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.while.cond.backedge.i_crit_edge, label %if.end.i.i.land.rhs.i.i_crit_edge

if.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i.i

if.end.i.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i.i.while.cond.backedge.i_crit_edge, %land.rhs.i.i.while.cond.backedge.i_crit_edge, %if.end.i.while.cond.backedge.i_crit_edge
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge, label %while.cond.backedge.i.land.rhs.i_crit_edge

while.cond.backedge.i.land.rhs.i_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vringh_iov_xfer.exit

vringh_iov_xfer.exit:                             ; preds = %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge, %while.body.i.vringh_iov_xfer.exit_crit_edge, %land.rhs.i.vringh_iov_xfer.exit_crit_edge, %entry.vringh_iov_xfer.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %entry.vringh_iov_xfer.exit_crit_edge ], [ -14, %while.body.i.vringh_iov_xfer.exit_crit_edge ], [ %done.036.i, %land.rhs.i.vringh_iov_xfer.exit_crit_edge ], [ %add.i, %while.cond.backedge.i.vringh_iov_xfer.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vringh_abandon_iotlb(ptr nocapture noundef %vrh, i32 noundef %num) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %last_avail_idx = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 3
  %0 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %last_avail_idx, align 4
  %2 = trunc i32 %num to i16
  %conv1 = sub i16 %1, %2
  store i16 %conv1, ptr %last_avail_idx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_complete_iotlb(ptr nocapture noundef %vrh, i16 noundef zeroext %head, i32 noundef %len) #2 align 64 {
entry:
  %iter.i = alloca %struct.iov_iter, align 8
  %iov.i10 = alloca [16 x %struct.bio_vec], align 4
  %iov.i = alloca %struct.bio_vec, align 4
  %used = alloca %struct.vring_used_elem, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %used) #15
  %0 = getelementptr inbounds %struct.vring_used_elem, ptr %used, i32 0, i32 1
  %conv = zext i16 %head to i32
  %1 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.not.i = icmp eq i8 %2, 0
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv) #15
  %retval.0.i.i = select i1 %tobool.not.i.not.i, i32 %conv, i32 %3
  %4 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retval.0.i.i, ptr %used, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %len) #15
  %retval.0.i.i7 = select i1 %tobool.not.i.not.i, i32 %len, i32 %5
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i.i7, ptr %0, align 4
  %vring.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %used1.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %7 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %used1.i, align 4
  %last_used_idx.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 4
  %9 = ptrtoint ptr %last_used_idx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %last_used_idx.i, align 2
  %completed.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 5
  %11 = ptrtoint ptr %completed.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %completed.i, align 4
  %13 = trunc i32 %12 to i16
  %conv2.i = add i16 %10, %13
  %conv3.i = zext i16 %conv2.i to i32
  %14 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vring.i, align 4
  %rem.i = urem i32 %conv3.i, %15
  %arrayidx29.i = getelementptr %struct.vring_used, ptr %8, i32 0, i32 2, i32 %rem.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #15
  %16 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %iov.i10) #15
  %17 = call ptr @memset(ptr %iov.i10, i32 255, i32 192)
  %18 = ptrtoint ptr %arrayidx29.i to i32
  %conv.i11 = zext i32 %18 to i64
  %call.i12 = call fastcc i32 @iotlb_translate(ptr noundef %vrh, i64 noundef %conv.i11, i64 noundef 8, ptr noundef nonnull %iov.i10, i32 noundef 16, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %cmp.i13 = icmp slt i32 %call.i12, 0
  br i1 %cmp.i13, label %19, label %if.end.i14

if.end.i14:                                       ; preds = %entry
  call void @iov_iter_bvec(ptr noundef nonnull %iter.i, i32 noundef 1, ptr noundef nonnull %iov.i10, i32 noundef %call.i12, i32 noundef 8) #15
  %call3.i.i = call i32 @_copy_to_iter(ptr noundef nonnull %used, i32 noundef 8, ptr noundef nonnull %iter.i) #15
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %iov.i10) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call3.i.i)
  %cmp.not.i = icmp eq i32 %call3.i.i, 8
  br i1 %cmp.not.i, label %if.end38.i, label %if.end.i14.if.then33.i_crit_edge

if.end.i14.if.then33.i_crit_edge:                 ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then33.i

19:                                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %iov.i10) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #15
  br label %if.then33.i

if.then33.i:                                      ; preds = %19, %if.end.i14.if.then33.i_crit_edge
  call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.19, i32 noundef 1, i32 noundef %rem.i, ptr noundef %arrayidx29.i) #19
  br label %__vringh_complete.exit

if.end38.i:                                       ; preds = %if.end.i14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15
  %20 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %used1.i, align 4
  %idx.i = getelementptr inbounds %struct.vring_used, ptr %21, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iov.i) #15
  %22 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov.i, align 4, !annotation !133
  %23 = getelementptr inbounds %struct.bio_vec, ptr %iov.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4, !annotation !133
  %25 = getelementptr inbounds %struct.bio_vec, ptr %iov.i, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %25, align 4, !annotation !133
  %27 = ptrtoint ptr %idx.i to i32
  %conv.i = zext i32 %27 to i64
  %call.i = call fastcc i32 @iotlb_translate(ptr noundef %vrh, i64 noundef %conv.i, i64 noundef 2, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then47.i, label %if.end51.i

if.then47.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i) #15
  %28 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %used1.i, align 4
  %idx50.i = getelementptr inbounds %struct.vring_used, ptr %29, i32 0, i32 1
  call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.20, ptr noundef %idx50.i) #19
  br label %__vringh_complete.exit

if.end51.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv44.i = add i16 %conv2.i, 1
  %30 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iov.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %32 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %32, 512
  %33 = call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !151
  %37 = call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 213
  %41 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !152
  %call.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %31, i32 noundef %or.i.i) #15
  %43 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %25, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %44
  %45 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.not.i.i = icmp eq i8 %46, 0
  %47 = call i16 @llvm.bswap.i16(i16 %conv44.i) #15
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 %conv44.i, i16 %47
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store volatile i16 %retval.0.i.i.i, ptr %add.ptr.i, align 2
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !153
  %49 = call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 213
  %53 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %54, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !154
  %55 = call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %58, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i) #15
  %59 = ptrtoint ptr %completed.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %completed.i, align 4
  %add53.i = add i32 %60, 1
  store i32 %add53.i, ptr %completed.i, align 4
  br label %__vringh_complete.exit

__vringh_complete.exit:                           ; preds = %if.end51.i, %if.then47.i, %if.then33.i
  %retval.0.i = phi i32 [ -14, %if.then33.i ], [ %call.i, %if.then47.i ], [ 0, %if.end51.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %used) #15
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @vringh_notify_enable_iotlb(ptr nocapture noundef readonly %vrh) #2 align 64 {
entry:
  %iov.i28 = alloca %struct.bio_vec, align 4
  %iov.i3 = alloca %struct.bio_vec, align 4
  %iov.i = alloca %struct.bio_vec, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %event_indices.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 1
  %0 = ptrtoint ptr %event_indices.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %event_indices.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %used.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %used.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iov.i28) #15
  %4 = ptrtoint ptr %iov.i28 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov.i28, align 4, !annotation !133
  %5 = getelementptr inbounds %struct.bio_vec, ptr %iov.i28, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !133
  %7 = getelementptr inbounds %struct.bio_vec, ptr %iov.i28, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !133
  %9 = ptrtoint ptr %3 to i32
  %conv.i29 = zext i32 %9 to i64
  %call.i30 = call fastcc i32 @iotlb_translate(ptr noundef %vrh, i64 noundef %conv.i29, i64 noundef 2, ptr noundef nonnull %iov.i28, i32 noundef 1, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp.i31 = icmp slt i32 %call.i30, 0
  br i1 %cmp.i31, label %if.then1.i, label %putu16_iotlb.exit52.thread

putu16_iotlb.exit52.thread:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %iov.i28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iov.i28, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %12 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i32 = or i32 %12, 512
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i.i33 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i34, align 4
  %add.i.i.i.i35 = add i32 %16, 1
  store volatile i32 %add.i.i.i.i35, ptr %preempt_count.i.i.i.i.i34, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !151
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i.i36 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i1.i.i.i36 to ptr
  %task.i.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i.i.i.i37, align 8
  %pagefault_disabled.i.i.i.i.i38 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 213
  %21 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pagefault_disabled.i.i.i.i.i38, align 8
  %inc.i.i.i.i.i39 = add i32 %22, 1
  store i32 %inc.i.i.i.i.i39, ptr %pagefault_disabled.i.i.i.i.i38, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !152
  %call.i.i.i40 = tail call ptr @__kmap_local_page_prot(ptr noundef %11, i32 noundef %or.i.i32) #15
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %7, align 4
  %add.ptr.i41 = getelementptr i8, ptr %call.i.i.i40, i32 %24
  %25 = ptrtoint ptr %add.ptr.i41 to i32
  call void @__asan_store2_noabort(i32 %25)
  store volatile i16 0, ptr %add.ptr.i41, align 2
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i40) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !153
  %26 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i43 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i1.i.i43 to ptr
  %task.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i.i.i.i44, align 8
  %pagefault_disabled.i.i.i.i45 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 213
  %30 = ptrtoint ptr %pagefault_disabled.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pagefault_disabled.i.i.i.i45, align 8
  %dec.i.i.i.i46 = add i32 %31, -1
  store i32 %dec.i.i.i.i46, ptr %pagefault_disabled.i.i.i.i45, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !154
  %32 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i47 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i49 = add i32 %35, -1
  store volatile i32 %sub.i.i.i49, ptr %preempt_count.i.i.i.i48, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i28) #15
  br label %if.end18.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i28) #15
  %36 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %used.i, align 4
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.21, ptr noundef %37) #19
  br label %__vringh_notify_enable.exit

if.else.i:                                        ; preds = %entry
  %vring5.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %used6.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %38 = ptrtoint ptr %used6.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %used6.i, align 4
  %40 = ptrtoint ptr %vring5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vring5.i, align 4
  %arrayidx.i = getelementptr %struct.vring_used, ptr %39, i32 0, i32 2, i32 %41
  %last_avail_idx.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 3
  %42 = ptrtoint ptr %last_avail_idx.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %last_avail_idx.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iov.i3) #15
  %44 = ptrtoint ptr %iov.i3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov.i3, align 4, !annotation !133
  %45 = getelementptr inbounds %struct.bio_vec, ptr %iov.i3, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %45, align 4, !annotation !133
  %47 = getelementptr inbounds %struct.bio_vec, ptr %iov.i3, i32 0, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %47, align 4, !annotation !133
  %49 = ptrtoint ptr %arrayidx.i to i32
  %conv.i4 = zext i32 %49 to i64
  %call.i5 = call fastcc i32 @iotlb_translate(ptr noundef %vrh, i64 noundef %conv.i4, i64 noundef 2, ptr noundef nonnull %iov.i3, i32 noundef 1, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %cmp.i6 = icmp slt i32 %call.i5, 0
  br i1 %cmp.i6, label %if.then10.i, label %putu16_iotlb.exit.thread

putu16_iotlb.exit.thread:                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %iov.i3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iov.i3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %52 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i7 = or i32 %52, 512
  %53 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i.i8 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i.i9, align 4
  %add.i.i.i.i10 = add i32 %56, 1
  store volatile i32 %add.i.i.i.i10, ptr %preempt_count.i.i.i.i.i9, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !151
  %57 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i.i11 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i1.i.i.i11 to ptr
  %task.i.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task.i.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task.i.i.i.i.i12, align 8
  %pagefault_disabled.i.i.i.i.i13 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 213
  %61 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pagefault_disabled.i.i.i.i.i13, align 8
  %inc.i.i.i.i.i14 = add i32 %62, 1
  store i32 %inc.i.i.i.i.i14, ptr %pagefault_disabled.i.i.i.i.i13, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !152
  %call.i.i.i15 = tail call ptr @__kmap_local_page_prot(ptr noundef %51, i32 noundef %or.i.i7) #15
  %63 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %47, align 4
  %add.ptr.i16 = getelementptr i8, ptr %call.i.i.i15, i32 %64
  %65 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i.not.i.i17 = icmp eq i8 %66, 0
  %67 = tail call i16 @llvm.bswap.i16(i16 %43) #15
  %retval.0.i.i.i18 = select i1 %tobool.not.i.not.i.i17, i16 %43, i16 %67
  %68 = ptrtoint ptr %add.ptr.i16 to i32
  call void @__asan_store2_noabort(i32 %68)
  store volatile i16 %retval.0.i.i.i18, ptr %add.ptr.i16, align 2
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i15) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !153
  %69 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i19 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i1.i.i19 to ptr
  %task.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task.i.i.i.i20, align 8
  %pagefault_disabled.i.i.i.i21 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 213
  %73 = ptrtoint ptr %pagefault_disabled.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pagefault_disabled.i.i.i.i21, align 8
  %dec.i.i.i.i22 = add i32 %74, -1
  store i32 %dec.i.i.i.i22, ptr %pagefault_disabled.i.i.i.i21, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !154
  %75 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i23 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i25 = add i32 %78, -1
  store volatile i32 %sub.i.i.i25, ptr %preempt_count.i.i.i.i24, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i3) #15
  br label %if.end18.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i3) #15
  %79 = ptrtoint ptr %used6.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %used6.i, align 4
  %81 = ptrtoint ptr %vring5.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vring5.i, align 4
  %arrayidx16.i = getelementptr %struct.vring_used, ptr %80, i32 0, i32 2, i32 %82
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.22, ptr noundef %arrayidx16.i) #19
  br label %__vringh_notify_enable.exit

if.end18.i:                                       ; preds = %putu16_iotlb.exit.thread, %putu16_iotlb.exit52.thread
  %weak_barriers.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 2
  %83 = ptrtoint ptr %weak_barriers.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %weak_barriers.i, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool19.not.i = icmp eq i8 %84, 0
  br i1 %tobool19.not.i, label %do.body3.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !149
  br label %virtio_mb.exit.i

do.body3.i.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !150
  tail call void @arm_heavy_mb() #15
  br label %virtio_mb.exit.i

virtio_mb.exit.i:                                 ; preds = %do.body3.i.i, %do.end.i.i
  %avail21.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 2
  %85 = ptrtoint ptr %avail21.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %avail21.i, align 4
  %idx.i = getelementptr inbounds %struct.vring_avail, ptr %86, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iov.i) #15
  %87 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov.i, align 4, !annotation !133
  %88 = getelementptr inbounds %struct.bio_vec, ptr %iov.i, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %88, align 4, !annotation !133
  %90 = getelementptr inbounds %struct.bio_vec, ptr %iov.i, i32 0, i32 2
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %90, align 4, !annotation !133
  %92 = ptrtoint ptr %idx.i to i32
  %conv.i = zext i32 %92 to i64
  %call.i1 = call fastcc i32 @iotlb_translate(ptr noundef %vrh, i64 noundef %conv.i, i64 noundef 2, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp.i = icmp slt i32 %call.i1, 0
  br i1 %cmp.i, label %if.then24.i, label %if.end28.i

if.then24.i:                                      ; preds = %virtio_mb.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i) #15
  %93 = ptrtoint ptr %avail21.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %avail21.i, align 4
  %idx27.i = getelementptr inbounds %struct.vring_avail, ptr %94, i32 0, i32 1
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.23, ptr noundef %idx27.i) #19
  br label %__vringh_notify_enable.exit

if.end28.i:                                       ; preds = %virtio_mb.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %95 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %iov.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %97 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %97, 512
  %98 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %101, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !151
  %102 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 213
  %106 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %107, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !152
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %96, i32 noundef %or.i.i) #15
  %108 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %90, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %109
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load volatile i16, ptr %add.ptr.i, align 2
  %112 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i.not.i.i = icmp eq i8 %113, 0
  %114 = tail call i16 @llvm.bswap.i16(i16 %111) #15
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 %111, i16 %114
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !153
  %115 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %118, i32 0, i32 213
  %119 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %120, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !154
  %121 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %124, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i) #15
  %last_avail_idx29.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 3
  %125 = ptrtoint ptr %last_avail_idx29.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %last_avail_idx29.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i.i.i, i16 %126)
  %cmp31.i = icmp eq i16 %retval.0.i.i.i, %126
  br label %__vringh_notify_enable.exit

__vringh_notify_enable.exit:                      ; preds = %if.end28.i, %if.then24.i, %if.then10.i, %if.then1.i
  %retval.0.i = phi i1 [ true, %if.then10.i ], [ true, %if.then24.i ], [ %cmp31.i, %if.end28.i ], [ true, %if.then1.i ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vringh_notify_disable_iotlb(ptr nocapture noundef readonly %vrh) #2 align 64 {
entry:
  %iov.i = alloca %struct.bio_vec, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %event_indices.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 1
  %0 = ptrtoint ptr %event_indices.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %event_indices.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.__vringh_notify_disable.exit_crit_edge

entry.__vringh_notify_disable.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vringh_notify_disable.exit

if.then.i:                                        ; preds = %entry
  %used.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %used.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iov.i) #15
  %4 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov.i, align 4, !annotation !133
  %5 = getelementptr inbounds %struct.bio_vec, ptr %iov.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !133
  %7 = getelementptr inbounds %struct.bio_vec, ptr %iov.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !133
  %9 = ptrtoint ptr %3 to i32
  %conv.i = zext i32 %9 to i64
  %call.i1 = call fastcc i32 @iotlb_translate(ptr noundef %vrh, i64 noundef %conv.i, i64 noundef 2, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp.i = icmp slt i32 %call.i1, 0
  br i1 %cmp.i, label %if.then2.i, label %putu16_iotlb.exit.thread

putu16_iotlb.exit.thread:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iov.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %12 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %12, 512
  %13 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !151
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 213
  %21 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %22, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !152
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %11, i32 noundef %or.i.i) #15
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %7, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %24
  %25 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.not.i.i = icmp eq i8 %26, 0
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 1, i16 256
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store volatile i16 %retval.0.i.i.i, ptr %add.ptr.i, align 2
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !153
  %28 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 213
  %32 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %33, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !154
  %34 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i) #15
  br label %__vringh_notify_disable.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i) #15
  %38 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %used.i, align 4
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.24, ptr noundef %39) #19
  br label %__vringh_notify_disable.exit

__vringh_notify_disable.exit:                     ; preds = %if.then2.i, %putu16_iotlb.exit.thread, %entry.__vringh_notify_disable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vringh_need_notify_iotlb(ptr nocapture noundef %vrh) #2 align 64 {
entry:
  %iov.i6 = alloca %struct.bio_vec, align 4
  %iov.i = alloca %struct.bio_vec, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %weak_barriers.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 2
  %0 = ptrtoint ptr %weak_barriers.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %weak_barriers.i, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %do.body3.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !149
  br label %virtio_mb.exit.i

do.body3.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !150
  tail call void @arm_heavy_mb() #15
  br label %virtio_mb.exit.i

virtio_mb.exit.i:                                 ; preds = %do.body3.i.i, %do.end.i.i
  %event_indices.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 1
  %2 = ptrtoint ptr %event_indices.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %event_indices.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.then.i, label %if.end9.i

if.then.i:                                        ; preds = %virtio_mb.exit.i
  %avail.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %avail.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iov.i6) #15
  %6 = ptrtoint ptr %iov.i6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov.i6, align 4, !annotation !133
  %7 = getelementptr inbounds %struct.bio_vec, ptr %iov.i6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !133
  %9 = getelementptr inbounds %struct.bio_vec, ptr %iov.i6, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !133
  %11 = ptrtoint ptr %5 to i32
  %conv.i7 = zext i32 %11 to i64
  %call.i8 = call fastcc i32 @iotlb_translate(ptr noundef %vrh, i64 noundef %conv.i7, i64 noundef 2, ptr noundef nonnull %iov.i6, i32 noundef 1, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %cmp.i9 = icmp slt i32 %call.i8, 0
  br i1 %cmp.i9, label %if.then4.i, label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i6) #15
  %12 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %avail.i, align 4
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.25, ptr noundef %13) #19
  br label %__vringh_need_notify.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %iov.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iov.i6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %16 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i10 = or i32 %16, 512
  %17 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i.i11 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i.i12, align 4
  %add.i.i.i.i13 = add i32 %20, 1
  store volatile i32 %add.i.i.i.i13, ptr %preempt_count.i.i.i.i.i12, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !151
  %21 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i.i14 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i1.i.i.i14 to ptr
  %task.i.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i.i.i.i15, align 8
  %pagefault_disabled.i.i.i.i.i16 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 213
  %25 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pagefault_disabled.i.i.i.i.i16, align 8
  %inc.i.i.i.i.i17 = add i32 %26, 1
  store i32 %inc.i.i.i.i.i17, ptr %pagefault_disabled.i.i.i.i.i16, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !152
  %call.i.i.i18 = tail call ptr @__kmap_local_page_prot(ptr noundef %15, i32 noundef %or.i.i10) #15
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %9, align 4
  %add.ptr.i19 = getelementptr i8, ptr %call.i.i.i18, i32 %28
  %29 = ptrtoint ptr %add.ptr.i19 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load volatile i16, ptr %add.ptr.i19, align 2
  %31 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.not.i.i20 = icmp eq i8 %32, 0
  %33 = lshr i16 %30, 8
  %retval.0.i.i.i21 = select i1 %tobool.not.i.not.i.i20, i16 %30, i16 %33
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i18) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !153
  %34 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i22 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i1.i.i22 to ptr
  %task.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i.i.i.i23, align 8
  %pagefault_disabled.i.i.i.i24 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 213
  %38 = ptrtoint ptr %pagefault_disabled.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pagefault_disabled.i.i.i.i24, align 8
  %dec.i.i.i.i25 = add i32 %39, -1
  store i32 %dec.i.i.i.i25, ptr %pagefault_disabled.i.i.i.i24, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !154
  %40 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i26 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i28 = add i32 %43, -1
  store volatile i32 %sub.i.i.i28, ptr %preempt_count.i.i.i.i27, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i6) #15
  %44 = and i16 %retval.0.i.i.i21, 1
  %45 = xor i16 %44, 1
  %46 = zext i16 %45 to i32
  br label %__vringh_need_notify.exit

if.end9.i:                                        ; preds = %virtio_mb.exit.i
  %vring10.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6
  %avail11.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 6, i32 2
  %47 = ptrtoint ptr %avail11.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %avail11.i, align 4
  %49 = ptrtoint ptr %vring10.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vring10.i, align 4
  %arrayidx.i = getelementptr %struct.vring_avail, ptr %48, i32 0, i32 2, i32 %50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iov.i) #15
  %51 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov.i, align 4, !annotation !133
  %52 = getelementptr inbounds %struct.bio_vec, ptr %iov.i, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %52, align 4, !annotation !133
  %54 = getelementptr inbounds %struct.bio_vec, ptr %iov.i, i32 0, i32 2
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %54, align 4, !annotation !133
  %56 = ptrtoint ptr %arrayidx.i to i32
  %conv.i = zext i32 %56 to i64
  %call.i1 = call fastcc i32 @iotlb_translate(ptr noundef %vrh, i64 noundef %conv.i, i64 noundef 2, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp.i2 = icmp slt i32 %call.i1, 0
  br i1 %cmp.i2, label %if.then15.i, label %if.end22.i

if.then15.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i) #15
  %57 = ptrtoint ptr %avail11.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %avail11.i, align 4
  %59 = ptrtoint ptr %vring10.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vring10.i, align 4
  %arrayidx21.i = getelementptr %struct.vring_avail, ptr %58, i32 0, i32 2, i32 %60
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.26, ptr noundef %arrayidx21.i) #19
  br label %__vringh_need_notify.exit

if.end22.i:                                       ; preds = %if.end9.i
  %61 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iov.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %63 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %63, 512
  %64 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %67, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !151
  %68 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 213
  %72 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %73, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !152
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %62, i32 noundef %or.i.i) #15
  %74 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %54, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %75
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load volatile i16, ptr %add.ptr.i, align 2
  %78 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %vrh, align 4, !range !138
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !153
  %80 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i1.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 213
  %84 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %85, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !154
  %86 = tail call i32 @llvm.read_register.i32(metadata !122) #15
  %and.i.i.i.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %89, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iov.i) #15
  %completed.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 5
  %90 = ptrtoint ptr %completed.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %completed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %91)
  %cmp.i = icmp ugt i32 %91, 65535
  br i1 %cmp.i, label %if.end22.if.end36_crit_edge.i, label %if.else.i, !prof !139

if.end22.if.end36_crit_edge.i:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  %.pre.i = trunc i32 %91 to i16
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i.not.i.i = icmp eq i8 %79, 0
  %92 = tail call i16 @llvm.bswap.i16(i16 %77) #15
  %retval.0.i.i.i = select i1 %tobool.not.i.not.i.i, i16 %77, i16 %92
  %last_used_idx.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 4
  %93 = ptrtoint ptr %last_used_idx.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %last_used_idx.i, align 2
  %95 = trunc i32 %91 to i16
  %96 = xor i16 %retval.0.i.i.i, -1
  %conv32.i = add i16 %95, %96
  %sub2.i.i = add i16 %conv32.i, %94
  call void @__sanitizer_cov_trace_cmp2(i16 %sub2.i.i, i16 %95)
  %cmp.i.i = icmp ult i16 %sub2.i.i, %95
  %conv10.i.i = zext i1 %cmp.i.i to i32
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else.i, %if.end22.if.end36_crit_edge.i
  %.pre-phi.i = phi i16 [ %.pre.i, %if.end22.if.end36_crit_edge.i ], [ %95, %if.else.i ]
  %notify.0.off0.i = phi i32 [ 1, %if.end22.if.end36_crit_edge.i ], [ %conv10.i.i, %if.else.i ]
  %last_used_idx38.i = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 4
  %97 = ptrtoint ptr %last_used_idx38.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %last_used_idx38.i, align 2
  %conv41.i = add i16 %98, %.pre-phi.i
  store i16 %conv41.i, ptr %last_used_idx38.i, align 2
  %99 = ptrtoint ptr %completed.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %completed.i, align 4
  br label %__vringh_need_notify.exit

__vringh_need_notify.exit:                        ; preds = %if.end36.i, %if.then15.i, %if.end.i, %if.then4.i
  %retval.1.i = phi i32 [ %call.i1, %if.then15.i ], [ %notify.0.off0.i, %if.end36.i ], [ %call.i8, %if.then4.i ], [ %46, %if.end.i ]
  ret i32 %retval.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk(ptr noundef, [1 x i32]) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @slow_copy(ptr noundef %vrh, ptr noundef %dst, ptr noundef %src, ptr nocapture noundef readonly %rcheck, ptr noundef %getrange, ptr noundef %range, ptr nocapture noundef readonly %copy) unnamed_addr #2 align 64 {
entry:
  %part = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %part) #15
  %offset = getelementptr inbounds %struct.vringh_range, ptr %range, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %src.addr.0 = phi ptr [ %src, %entry ], [ %add.ptr4, %do.cond.do.body_crit_edge ]
  %dst.addr.0 = phi ptr [ %dst, %entry ], [ %add.ptr, %do.cond.do.body_crit_edge ]
  %len.0 = phi i32 [ 16, %entry ], [ %sub5, %do.cond.do.body_crit_edge ]
  %0 = ptrtoint ptr %part to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %len.0, ptr %part, align 4
  %1 = ptrtoint ptr %src.addr.0 to i32
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  %sub = sub i64 %conv, %3
  %call = call zeroext i1 %rcheck(ptr noundef %vrh, i64 noundef %sub, ptr noundef nonnull %part, ptr noundef %range, ptr noundef %getrange) #15, !callees !142
  br i1 %call, label %if.end, label %do.body.cleanup8_crit_edge

do.body.cleanup8_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup8

if.end:                                           ; preds = %do.body
  %4 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %part, align 4
  %call1 = call i32 %copy(ptr noundef %vrh, ptr noundef %dst.addr.0, ptr noundef %src.addr.0, i32 noundef %5) #15, !callees !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.cond, label %if.end.cleanup8_crit_edge

if.end.cleanup8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup8

do.cond:                                          ; preds = %if.end
  %6 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %part, align 4
  %add.ptr = getelementptr i8, ptr %dst.addr.0, i32 %7
  %add.ptr4 = getelementptr i8, ptr %src.addr.0, i32 %7
  %sub5 = sub i32 %len.0, %7
  %tobool7.not = icmp eq i32 %sub5, 0
  br i1 %tobool7.not, label %do.cond.cleanup8_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.cond.cleanup8_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup8

cleanup8:                                         ; preds = %do.cond.cleanup8_crit_edge, %if.end.cleanup8_crit_edge, %do.body.cleanup8_crit_edge
  %retval.2 = phi i32 [ 0, %do.cond.cleanup8_crit_edge ], [ %call1, %if.end.cleanup8_crit_edge ], [ -22, %do.body.cleanup8_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %part) #15
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @move_to_indirect(ptr nocapture noundef readonly %vrh, ptr nocapture noundef %up_next, ptr nocapture noundef %i, ptr noundef %addr, ptr nocapture noundef readonly %desc, ptr nocapture noundef writeonly %descs, ptr nocapture noundef writeonly %desc_max) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %up_next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %up_next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i, align 2
  %conv = zext i16 %3 to i32
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.13, i32 noundef %1, i32 noundef %conv) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %len1 = getelementptr inbounds %struct.vring_desc, ptr %desc, i32 0, i32 1
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1, align 8
  %6 = ptrtoint ptr %vrh to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vrh, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.not.i = icmp eq i8 %7, 0
  %8 = tail call i32 @llvm.bswap.i32(i32 %5) #15
  %retval.0.i.i = select i1 %tobool.not.i.not.i, i32 %5, i32 %8
  %rem = and i32 %retval.0.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end6, label %if.then4, !prof !141

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @vringh_bad(ptr noundef nonnull @.str.14, i32 noundef %5) #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.vring_desc, ptr %desc, i32 0, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags, align 4
  %retval.0.i.i28 = select i1 %tobool.not.i.not.i, i16 1, i16 256
  %and25 = and i16 %10, %retval.0.i.i28
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and25)
  %tobool10.not = icmp eq i16 %and25, 0
  br i1 %tobool10.not, label %if.end6.if.end14_crit_edge, label %if.then11

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %next = getelementptr inbounds %struct.vring_desc, ptr %desc, i32 0, i32 3
  %11 = ptrtoint ptr %next to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %next, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #15
  %retval.0.i.i30 = select i1 %tobool.not.i.not.i, i16 %12, i16 %13
  %conv13 = zext i16 %retval.0.i.i30 to i32
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end6.if.end14_crit_edge
  %storemerge = phi i32 [ %conv13, %if.then11 ], [ -2, %if.end6.if.end14_crit_edge ]
  %14 = ptrtoint ptr %up_next to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %up_next, align 4
  %15 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %addr, ptr %descs, align 4
  %div26 = lshr i32 %retval.0.i.i, 4
  %16 = ptrtoint ptr %desc_max to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div26, ptr %desc_max, align 4
  %17 = ptrtoint ptr %i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then4, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then4 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @resize_iovec(ptr nocapture noundef %iov, i32 noundef %gfp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %max_num = getelementptr inbounds %struct.vringh_kiov, ptr %iov, i32 0, i32 4
  %0 = ptrtoint ptr %max_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_num, align 4
  %and = shl i32 %1, 1
  %mul = and i32 %and, -268435458
  %2 = tail call i32 @llvm.umax.i32(i32 %mul, i32 8)
  %and2 = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 8) #15
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %entry
  br i1 %4, label %if.then3.cleanup_crit_edge, label %if.end.i, !prof !139

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iov, align 4
  %7 = extractvalue { i32, i1 } %3, 0
  %call5.i = tail call noalias ptr @krealloc(ptr noundef %6, i32 noundef %7, i32 noundef %gfp) #21
  br label %if.end12

if.else:                                          ; preds = %entry
  br i1 %4, label %if.else.cleanup_crit_edge, label %if.end7.i, !prof !139

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7.i:                                        ; preds = %if.else
  %8 = extractvalue { i32, i1 } %3, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef %gfp) #22
  %tobool6.not = icmp eq ptr %call8.i, null
  br i1 %tobool6.not, label %if.end7.i.cleanup_crit_edge, label %if.then7

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iov, align 4
  %11 = ptrtoint ptr %max_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_num, align 4
  %mul10 = shl i32 %12, 3
  %13 = call ptr @memcpy(ptr %call8.i, ptr %10, i32 %mul10)
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.i
  %new.0 = phi ptr [ %call8.i, %if.then7 ], [ %call5.i, %if.end.i ]
  %flag.0 = phi i32 [ 134217728, %if.then7 ], [ %and2, %if.end.i ]
  %tobool13.not = icmp eq ptr %new.0, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %new.0, ptr %iov, align 4
  %or = or i32 %flag.0, %2
  %15 = ptrtoint ptr %max_num to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %max_num, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end12.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -12, %if.end12.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.then3.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iotlb_translate(ptr nocapture noundef readonly %vrh, i64 noundef %addr, i64 noundef %len, ptr nocapture noundef writeonly %iov, i32 noundef %iov_size, i32 noundef %perm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %iotlb1 = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 7
  %0 = ptrtoint ptr %iotlb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iotlb1, align 4
  %iotlb_lock = getelementptr inbounds %struct.vringh, ptr %vrh, i32 0, i32 8
  %2 = ptrtoint ptr %iotlb_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iotlb_lock, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #15
  %add = add i64 %len, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %cmp73.not = icmp eq i64 %len, 0
  br i1 %cmp73.not, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %smax = call i32 @llvm.smax.i32(i32 %iov_size, i32 0)
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %addr.addr.076 = phi i64 [ %add30, %cleanup.while.body_crit_edge ], [ %addr, %while.body.preheader ]
  %s.075 = phi i64 [ %add29, %cleanup.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %ret.074 = phi i32 [ %inc, %cleanup.while.body_crit_edge ], [ 0, %while.body.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.074, i32 %smax)
  %exitcond.not = icmp eq i32 %ret.074, %smax
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %if.end, !prof !139

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end:                                           ; preds = %while.body
  %sub = add i64 %add, %addr.addr.076
  %call = tail call ptr @vhost_iotlb_itree_first(ptr noundef %1, i64 noundef %addr.addr.076, i64 noundef %sub) #15
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.while.end_crit_edge, label %lor.lhs.false

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

lor.lhs.false:                                    ; preds = %if.end
  %start = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %addr.addr.076, i64 %5)
  %cmp5 = icmp ult i64 %addr.addr.076, %5
  br i1 %cmp5, label %lor.lhs.false.while.end_crit_edge, label %if.else

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.else:                                          ; preds = %lor.lhs.false
  %perm7 = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %perm7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %perm7, align 8
  %and = and i32 %7, %perm
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else.while.end_crit_edge, label %cleanup

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

cleanup:                                          ; preds = %if.else
  %size12 = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %size12 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size12, align 8
  %sub13 = sub i64 %9, %addr.addr.076
  %add15 = add i64 %sub13, %5
  %addr16 = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %addr16 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %addr16, align 8
  %add17 = sub i64 %addr.addr.076, %5
  %sub19 = add i64 %add17, %11
  %shr = lshr i64 %sub19, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = trunc i64 %shr to i32
  %idx.ext = sub i32 %14, %13
  %add.ptr = getelementptr %struct.page, ptr %12, i32 %idx.ext
  %arrayidx = getelementptr %struct.bio_vec, ptr %iov, i32 %ret.074
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %arrayidx, align 4
  %sub21 = sub i64 %len, %s.075
  %16 = tail call i64 @llvm.umin.i64(i64 %sub21, i64 %add15)
  %cond.off0 = trunc i64 %16 to i32
  %bv_len = getelementptr %struct.bio_vec, ptr %iov, i32 %ret.074, i32 1
  %17 = ptrtoint ptr %bv_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.off0, ptr %bv_len, align 4
  %18 = trunc i64 %sub19 to i32
  %conv27 = and i32 %18, 4095
  %bv_offset = getelementptr %struct.bio_vec, ptr %iov, i32 %ret.074, i32 2
  %19 = ptrtoint ptr %bv_offset to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv27, ptr %bv_offset, align 4
  %add29 = add i64 %add15, %s.075
  %add30 = add i64 %9, %5
  %inc = add nuw i32 %ret.074, 1
  %cmp = icmp ult i64 %add29, %len
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.else.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.2 = phi i32 [ 0, %entry.while.end_crit_edge ], [ -1, %if.else.while.end_crit_edge ], [ -22, %if.end.while.end_crit_edge ], [ -22, %lor.lhs.false.while.end_crit_edge ], [ -105, %while.body.while.end_crit_edge ], [ %inc, %cleanup.while.end_crit_edge ]
  %20 = ptrtoint ptr %iotlb_lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iotlb_lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %21) #15
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vhost_iotlb_itree_first(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #8 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #8 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_to_iotlb(ptr nocapture noundef readonly %vrh, ptr noundef %dst, ptr noundef %src, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  %iter = alloca %struct.iov_iter, align 8
  %iov = alloca [16 x %struct.bio_vec], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #15
  %0 = call ptr @memset(ptr %iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %iov) #15
  %1 = call ptr @memset(ptr %iov, i32 255, i32 192)
  %2 = ptrtoint ptr %dst to i32
  %conv = zext i32 %2 to i64
  %conv1 = zext i32 %len to i64
  %call = call fastcc i32 @iotlb_translate(ptr noundef %vrh, i64 noundef %conv, i64 noundef %conv1, ptr noundef nonnull %iov, i32 noundef 16, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @iov_iter_bvec(ptr noundef nonnull %iter, i32 noundef 1, ptr noundef nonnull %iov, i32 noundef %call, i32 noundef %len) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !141

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__check_object_size(ptr noundef %src, i32 noundef %len, i1 noundef zeroext true) #15
  %call3.i = call i32 @_copy_to_iter(ptr noundef %src, i32 noundef %len, ptr noundef nonnull %iter) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3.i, %if.then.i.i.i ], [ 0, %if.then27.i.i ], [ 0, %land.rhs16.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %iov) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind allocsize(1) }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !67, !68, !70, !72, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120}
!llvm.named.register.sp = !{!122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__ksymtab_vringh_kiov_advance, !1, !"__ksymtab_vringh_kiov_advance", i1 false, i1 false}
!1 = !{!"../drivers/vhost/vringh.c", i32 104, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/vhost/vringh.c", i32 648, i32 14}
!4 = !{ptr @__ksymtab_vringh_init_user, !5, !"__ksymtab_vringh_init_user", i1 false, i1 false}
!5 = !{!"../drivers/vhost/vringh.c", i32 665, i32 1}
!6 = !{ptr @__ksymtab_vringh_getdesc_user, !7, !"__ksymtab_vringh_getdesc_user", i1 false, i1 false}
!7 = !{!"../drivers/vhost/vringh.c", i32 734, i32 1}
!8 = !{ptr @__ksymtab_vringh_iov_pull_user, !9, !"__ksymtab_vringh_iov_pull_user", i1 false, i1 false}
!9 = !{!"../drivers/vhost/vringh.c", i32 749, i32 1}
!10 = !{ptr @__ksymtab_vringh_iov_push_user, !11, !"__ksymtab_vringh_iov_push_user", i1 false, i1 false}
!11 = !{!"../drivers/vhost/vringh.c", i32 765, i32 1}
!12 = !{ptr @__ksymtab_vringh_abandon_user, !13, !"__ksymtab_vringh_abandon_user", i1 false, i1 false}
!13 = !{!"../drivers/vhost/vringh.c", i32 781, i32 1}
!14 = !{ptr @__ksymtab_vringh_complete_user, !15, !"__ksymtab_vringh_complete_user", i1 false, i1 false}
!15 = !{!"../drivers/vhost/vringh.c", i32 800, i32 1}
!16 = !{ptr @__ksymtab_vringh_complete_multi_user, !17, !"__ksymtab_vringh_complete_multi_user", i1 false, i1 false}
!17 = !{!"../drivers/vhost/vringh.c", i32 818, i32 1}
!18 = !{ptr @__ksymtab_vringh_notify_enable_user, !19, !"__ksymtab_vringh_notify_enable_user", i1 false, i1 false}
!19 = !{!"../drivers/vhost/vringh.c", i32 831, i32 1}
!20 = !{ptr @__ksymtab_vringh_notify_disable_user, !21, !"__ksymtab_vringh_notify_disable_user", i1 false, i1 false}
!21 = !{!"../drivers/vhost/vringh.c", i32 844, i32 1}
!22 = !{ptr @__ksymtab_vringh_need_notify_user, !23, !"__ksymtab_vringh_need_notify_user", i1 false, i1 false}
!23 = !{!"../drivers/vhost/vringh.c", i32 856, i32 1}
!24 = !{ptr @__ksymtab_vringh_init_kern, !25, !"__ksymtab_vringh_init_kern", i1 false, i1 false}
!25 = !{!"../drivers/vhost/vringh.c", i32 938, i32 1}
!26 = !{ptr @__ksymtab_vringh_getdesc_kern, !27, !"__ksymtab_vringh_getdesc_kern", i1 false, i1 false}
!27 = !{!"../drivers/vhost/vringh.c", i32 984, i32 1}
!28 = !{ptr @__ksymtab_vringh_iov_pull_kern, !29, !"__ksymtab_vringh_iov_pull_kern", i1 false, i1 false}
!29 = !{!"../drivers/vhost/vringh.c", i32 998, i32 1}
!30 = !{ptr @__ksymtab_vringh_iov_push_kern, !31, !"__ksymtab_vringh_iov_push_kern", i1 false, i1 false}
!31 = !{!"../drivers/vhost/vringh.c", i32 1013, i32 1}
!32 = !{ptr @__ksymtab_vringh_abandon_kern, !33, !"__ksymtab_vringh_abandon_kern", i1 false, i1 false}
!33 = !{!"../drivers/vhost/vringh.c", i32 1029, i32 1}
!34 = !{ptr @__ksymtab_vringh_complete_kern, !35, !"__ksymtab_vringh_complete_kern", i1 false, i1 false}
!35 = !{!"../drivers/vhost/vringh.c", i32 1049, i32 1}
!36 = !{ptr @__ksymtab_vringh_notify_enable_kern, !37, !"__ksymtab_vringh_notify_enable_kern", i1 false, i1 false}
!37 = !{!"../drivers/vhost/vringh.c", i32 1062, i32 1}
!38 = !{ptr @__ksymtab_vringh_notify_disable_kern, !39, !"__ksymtab_vringh_notify_disable_kern", i1 false, i1 false}
!39 = !{!"../drivers/vhost/vringh.c", i32 1075, i32 1}
!40 = !{ptr @__ksymtab_vringh_need_notify_kern, !41, !"__ksymtab_vringh_need_notify_kern", i1 false, i1 false}
!41 = !{!"../drivers/vhost/vringh.c", i32 1087, i32 1}
!42 = !{ptr @__ksymtab_vringh_init_iotlb, !43, !"__ksymtab_vringh_init_iotlb", i1 false, i1 false}
!43 = !{!"../drivers/vhost/vringh.c", i32 1286, i32 1}
!44 = !{ptr @__ksymtab_vringh_set_iotlb, !45, !"__ksymtab_vringh_set_iotlb", i1 false, i1 false}
!45 = !{!"../drivers/vhost/vringh.c", i32 1300, i32 1}
!46 = !{ptr @__ksymtab_vringh_getdesc_iotlb, !47, !"__ksymtab_vringh_getdesc_iotlb", i1 false, i1 false}
!47 = !{!"../drivers/vhost/vringh.c", i32 1347, i32 1}
!48 = !{ptr @__ksymtab_vringh_iov_pull_iotlb, !49, !"__ksymtab_vringh_iov_pull_iotlb", i1 false, i1 false}
!49 = !{!"../drivers/vhost/vringh.c", i32 1364, i32 1}
!50 = !{ptr @__ksymtab_vringh_iov_push_iotlb, !51, !"__ksymtab_vringh_iov_push_iotlb", i1 false, i1 false}
!51 = !{!"../drivers/vhost/vringh.c", i32 1381, i32 1}
!52 = !{ptr @__ksymtab_vringh_abandon_iotlb, !53, !"__ksymtab_vringh_abandon_iotlb", i1 false, i1 false}
!53 = !{!"../drivers/vhost/vringh.c", i32 1398, i32 1}
!54 = !{ptr @__ksymtab_vringh_complete_iotlb, !55, !"__ksymtab_vringh_complete_iotlb", i1 false, i1 false}
!55 = !{!"../drivers/vhost/vringh.c", i32 1418, i32 1}
!56 = !{ptr @__ksymtab_vringh_notify_enable_iotlb, !57, !"__ksymtab_vringh_notify_enable_iotlb", i1 false, i1 false}
!57 = !{!"../drivers/vhost/vringh.c", i32 1431, i32 1}
!58 = !{ptr @__ksymtab_vringh_notify_disable_iotlb, !59, !"__ksymtab_vringh_notify_disable_iotlb", i1 false, i1 false}
!59 = !{!"../drivers/vhost/vringh.c", i32 1444, i32 1}
!60 = !{ptr @__ksymtab_vringh_need_notify_iotlb, !61, !"__ksymtab_vringh_need_notify_iotlb", i1 false, i1 false}
!61 = !{!"../drivers/vhost/vringh.c", i32 1456, i32 1}
!62 = !{ptr @__UNIQUE_ID_file279, !63, !"__UNIQUE_ID_file279", i1 false, i1 false}
!63 = !{!"../drivers/vhost/vringh.c", i32 1460, i32 1}
!64 = !{ptr @__UNIQUE_ID_license280, !63, !"__UNIQUE_ID_license280", i1 false, i1 false}
!65 = !{ptr @.str.1, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/vhost/vringh.c", i32 25, i32 9}
!67 = !{ptr @vringh_bad.vringh_rs, !66, !"vringh_rs", i1 false, i1 false}
!68 = !{ptr @__func__.vringh_bad, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/vhost/vringh.c", i32 28, i32 6}
!70 = !{ptr @.str.2, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/vhost/vringh.c", i32 31, i32 3}
!72 = !{ptr @.str.3, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vringh_bad._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @vringh_bad._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.4, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/vhost/vringh.c", i32 48, i32 14}
!77 = !{ptr @.str.5, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/vhost/vringh.c", i32 63, i32 14}
!79 = !{ptr @.str.6, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/vhost/vringh.c", i32 69, i32 14}
!81 = !{ptr @.str.7, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/vhost/vringh.c", i32 353, i32 15}
!83 = !{ptr @.str.8, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/vhost/vringh.c", i32 363, i32 16}
!85 = !{ptr @.str.9, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/vhost/vringh.c", i32 371, i32 15}
!87 = !{ptr @.str.10, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/vhost/vringh.c", i32 372, i32 16}
!89 = !{ptr @.str.11, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/vhost/vringh.c", i32 372, i32 29}
!91 = !{ptr @.str.12, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/vhost/vringh.c", i32 419, i32 15}
!93 = !{ptr @.str.13, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/vhost/vringh.c", i32 185, i32 14}
!95 = !{ptr @.str.14, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/vhost/vringh.c", i32 191, i32 14}
!97 = !{ptr @.str.15, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/vhost/vringh.c", i32 153, i32 14}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!101 = !{ptr @.str.16, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.17, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!104 = !{ptr @.str.18, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!106 = !{ptr @.str.19, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/vhost/vringh.c", i32 461, i32 14}
!108 = !{ptr @.str.20, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/vhost/vringh.c", i32 471, i32 14}
!110 = !{ptr @.str.21, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/vhost/vringh.c", i32 539, i32 15}
!112 = !{ptr @.str.22, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/vhost/vringh.c", i32 546, i32 15}
!114 = !{ptr @.str.23, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/vhost/vringh.c", i32 557, i32 14}
!116 = !{ptr @.str.24, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/vhost/vringh.c", i32 576, i32 15}
!118 = !{ptr @.str.25, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/vhost/vringh.c", i32 500, i32 15}
!120 = !{ptr @.str.26, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/vhost/vringh.c", i32 510, i32 14}
!122 = !{!"sp"}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i32 0, i32 33}
!133 = !{!"auto-init"}
!134 = !{i64 5106362}
!135 = !{i64 5106559}
!136 = !{i64 2152591792}
!137 = !{i64 2153980145, i64 2153980425, i64 2153980759, i64 2153981093}
!138 = !{i8 0, i8 2}
!139 = !{!"branch_weights", i32 1, i32 2000}
!140 = distinct !{null, null, ptr @copydesc_user}
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = distinct !{null, ptr @range_check}
!143 = !{i64 2153970049, i64 2153970536, i64 2153970086, i64 2153970142, i64 2153970176, i64 2153970200, i64 2153970241, i64 2153970262, i64 2153970290, i64 2153970324}
!144 = !{i64 2152610807, i64 2152610832}
!145 = !{i64 2152611488, i64 2152611513}
!146 = !{i64 2153990488, i64 2153990768, i64 2153991102, i64 2153991436}
!147 = !{!"branch_weights", i32 4001, i32 1}
!148 = distinct !{null, null, ptr @putused_user}
!149 = !{i64 2152550531}
!150 = !{i64 2152550674}
!151 = !{i64 2153911631}
!152 = !{i64 2152613624}
!153 = !{i64 2152613831}
!154 = !{i64 2153914402}
