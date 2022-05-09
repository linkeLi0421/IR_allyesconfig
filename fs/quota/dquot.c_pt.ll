; ModuleID = '/llk/IR_all_yes/fs/quota/dquot.c_pt.bc'
source_filename = "../fs/quota/dquot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dq_data_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_dq_data_lock\09\09\09\09"
module asm "\09.long\09__crc_dq_data_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dq_data_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22dq_data_lock\22\09\09\09\09\09"
module asm "__kstrtabns_dq_data_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__quota_error\22, \22a\22\09"
module asm "\09.weak\09__crc___quota_error\09\09\09\09"
module asm "\09.long\09__crc___quota_error\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___quota_error:\09\09\09\09\09"
module asm "\09.asciz \09\22__quota_error\22\09\09\09\09\09"
module asm "__kstrtabns___quota_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+register_quota_format\22, \22a\22\09"
module asm "\09.weak\09__crc_register_quota_format\09\09\09\09"
module asm "\09.long\09__crc_register_quota_format\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_quota_format:\09\09\09\09\09"
module asm "\09.asciz \09\22register_quota_format\22\09\09\09\09\09"
module asm "__kstrtabns_register_quota_format:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_quota_format\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_quota_format\09\09\09\09"
module asm "\09.long\09__crc_unregister_quota_format\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_quota_format:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_quota_format\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_quota_format:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dqstats\22, \22a\22\09"
module asm "\09.weak\09__crc_dqstats\09\09\09\09"
module asm "\09.long\09__crc_dqstats\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dqstats:\09\09\09\09\09"
module asm "\09.asciz \09\22dqstats\22\09\09\09\09\09"
module asm "__kstrtabns_dqstats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_mark_dquot_dirty\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_mark_dquot_dirty\09\09\09\09"
module asm "\09.long\09__crc_dquot_mark_dquot_dirty\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_mark_dquot_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_mark_dquot_dirty\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_mark_dquot_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mark_info_dirty\22, \22a\22\09"
module asm "\09.weak\09__crc_mark_info_dirty\09\09\09\09"
module asm "\09.long\09__crc_mark_info_dirty\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mark_info_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22mark_info_dirty\22\09\09\09\09\09"
module asm "__kstrtabns_mark_info_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_acquire\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_acquire\09\09\09\09"
module asm "\09.long\09__crc_dquot_acquire\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_acquire:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_acquire\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_acquire:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_commit\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_commit\09\09\09\09"
module asm "\09.long\09__crc_dquot_commit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_commit\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_release\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_release\09\09\09\09"
module asm "\09.long\09__crc_dquot_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_release:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_release\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_destroy\09\09\09\09"
module asm "\09.long\09__crc_dquot_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_scan_active\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_scan_active\09\09\09\09"
module asm "\09.long\09__crc_dquot_scan_active\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_scan_active:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_scan_active\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_scan_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_writeback_dquots\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_writeback_dquots\09\09\09\09"
module asm "\09.long\09__crc_dquot_writeback_dquots\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_writeback_dquots:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_writeback_dquots\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_writeback_dquots:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_quota_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_quota_sync\09\09\09\09"
module asm "\09.long\09__crc_dquot_quota_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_quota_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_quota_sync\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_quota_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dqput\22, \22a\22\09"
module asm "\09.weak\09__crc_dqput\09\09\09\09"
module asm "\09.long\09__crc_dqput\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dqput:\09\09\09\09\09"
module asm "\09.asciz \09\22dqput\22\09\09\09\09\09"
module asm "__kstrtabns_dqput:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_alloc\09\09\09\09"
module asm "\09.long\09__crc_dquot_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dqget\22, \22a\22\09"
module asm "\09.weak\09__crc_dqget\09\09\09\09"
module asm "\09.long\09__crc_dqget\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dqget:\09\09\09\09\09"
module asm "\09.asciz \09\22dqget\22\09\09\09\09\09"
module asm "__kstrtabns_dqget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_initialize\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_initialize\09\09\09\09"
module asm "\09.long\09__crc_dquot_initialize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_initialize:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_initialize\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_initialize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_initialize_needed\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_initialize_needed\09\09\09\09"
module asm "\09.long\09__crc_dquot_initialize_needed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_initialize_needed:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_initialize_needed\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_initialize_needed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_drop\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_drop\09\09\09\09"
module asm "\09.long\09__crc_dquot_drop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_drop\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__dquot_alloc_space\22, \22a\22\09"
module asm "\09.weak\09__crc___dquot_alloc_space\09\09\09\09"
module asm "\09.long\09__crc___dquot_alloc_space\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dquot_alloc_space:\09\09\09\09\09"
module asm "\09.asciz \09\22__dquot_alloc_space\22\09\09\09\09\09"
module asm "__kstrtabns___dquot_alloc_space:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_alloc_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_alloc_inode\09\09\09\09"
module asm "\09.long\09__crc_dquot_alloc_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_alloc_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_alloc_inode\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_alloc_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_claim_space_nodirty\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_claim_space_nodirty\09\09\09\09"
module asm "\09.long\09__crc_dquot_claim_space_nodirty\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_claim_space_nodirty:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_claim_space_nodirty\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_claim_space_nodirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_reclaim_space_nodirty\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_reclaim_space_nodirty\09\09\09\09"
module asm "\09.long\09__crc_dquot_reclaim_space_nodirty\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_reclaim_space_nodirty:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_reclaim_space_nodirty\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_reclaim_space_nodirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__dquot_free_space\22, \22a\22\09"
module asm "\09.weak\09__crc___dquot_free_space\09\09\09\09"
module asm "\09.long\09__crc___dquot_free_space\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dquot_free_space:\09\09\09\09\09"
module asm "\09.asciz \09\22__dquot_free_space\22\09\09\09\09\09"
module asm "__kstrtabns___dquot_free_space:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_free_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_free_inode\09\09\09\09"
module asm "\09.long\09__crc_dquot_free_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_free_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_free_inode\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_free_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__dquot_transfer\22, \22a\22\09"
module asm "\09.weak\09__crc___dquot_transfer\09\09\09\09"
module asm "\09.long\09__crc___dquot_transfer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dquot_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22__dquot_transfer\22\09\09\09\09\09"
module asm "__kstrtabns___dquot_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_transfer\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_transfer\09\09\09\09"
module asm "\09.long\09__crc_dquot_transfer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_transfer\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_commit_info\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_commit_info\09\09\09\09"
module asm "\09.long\09__crc_dquot_commit_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_commit_info:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_commit_info\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_commit_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_get_next_id\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_get_next_id\09\09\09\09"
module asm "\09.long\09__crc_dquot_get_next_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_get_next_id:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_get_next_id\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_get_next_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_operations\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_operations\09\09\09\09"
module asm "\09.long\09__crc_dquot_operations\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_operations\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_file_open\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_file_open\09\09\09\09"
module asm "\09.long\09__crc_dquot_file_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_file_open:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_file_open\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_file_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_disable\09\09\09\09"
module asm "\09.long\09__crc_dquot_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_disable\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_quota_off\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_quota_off\09\09\09\09"
module asm "\09.long\09__crc_dquot_quota_off\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_quota_off:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_quota_off\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_quota_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_load_quota_sb\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_load_quota_sb\09\09\09\09"
module asm "\09.long\09__crc_dquot_load_quota_sb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_load_quota_sb:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_load_quota_sb\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_load_quota_sb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_load_quota_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_load_quota_inode\09\09\09\09"
module asm "\09.long\09__crc_dquot_load_quota_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_load_quota_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_load_quota_inode\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_load_quota_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_resume\09\09\09\09"
module asm "\09.long\09__crc_dquot_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_resume\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_quota_on\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_quota_on\09\09\09\09"
module asm "\09.long\09__crc_dquot_quota_on\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_quota_on:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_quota_on\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_quota_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_quota_on_mount\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_quota_on_mount\09\09\09\09"
module asm "\09.long\09__crc_dquot_quota_on_mount\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_quota_on_mount:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_quota_on_mount\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_quota_on_mount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_get_dqblk\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_get_dqblk\09\09\09\09"
module asm "\09.long\09__crc_dquot_get_dqblk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_get_dqblk:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_get_dqblk\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_get_dqblk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_get_next_dqblk\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_get_next_dqblk\09\09\09\09"
module asm "\09.long\09__crc_dquot_get_next_dqblk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_get_next_dqblk:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_get_next_dqblk\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_get_next_dqblk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_set_dqblk\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_set_dqblk\09\09\09\09"
module asm "\09.long\09__crc_dquot_set_dqblk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_set_dqblk:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_set_dqblk\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_set_dqblk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_get_state\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_get_state\09\09\09\09"
module asm "\09.long\09__crc_dquot_get_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_get_state:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_get_state\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_get_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_set_dqinfo\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_set_dqinfo\09\09\09\09"
module asm "\09.long\09__crc_dquot_set_dqinfo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_set_dqinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_set_dqinfo\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_set_dqinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dquot_quotactl_sysfile_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_dquot_quotactl_sysfile_ops\09\09\09\09"
module asm "\09.long\09__crc_dquot_quotactl_sysfile_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dquot_quotactl_sysfile_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22dquot_quotactl_sysfile_ops\22\09\09\09\09\09"
module asm "__kstrtabns_dquot_quotactl_sysfile_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dqstats = type { [8 x i32], [8 x %struct.percpu_counter] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.user_namespace = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dquot_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.quotactl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.srcu_data = type { [2 x i32], [2 x i32], [112 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [24 x i8] }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], %struct.atomic_t, [4 x i32], i8 }
%struct.callback_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.quota_module_name = type { i32, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.__va_list = type { ptr }
%struct.va_format = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.quota_format_type = type { i32, ptr, ptr, ptr }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, ptr, %struct.kqid, i64, i32, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.77, i32 }
%union.anon.77 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.quota_format_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.70 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.kprojid_t = type { i32 }
%struct.dquot_warn = type { ptr, %struct.kqid, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.33 = type { %struct.callback_head }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.73 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { %struct.spinlock, i32 }
%union.anon.75 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dq_data_lock\00", [19 x i8] zeroinitializer }, align 32
@dq_data_lock = dso_local global %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, section ".data..cacheline_aligned", align 128
@__kstrtab_dq_data_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_dq_data_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_dq_data_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dq_data_lock to i32), ptr @__kstrtab_dq_data_lock, ptr @__kstrtabns_dq_data_lock }, section "___ksymtab+dq_data_lock", align 4
@__func__.__quota_error = private unnamed_addr constant [14 x i8] c"__quota_error\00", align 1
@__quota_error._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @__func__.__quota_error, ptr @.str.2, i32 149, ptr null, ptr null }, align 1
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Quota error (device %s): %s: %pV\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/quota/dquot.c\00", [47 x i8] zeroinitializer }, align 32
@__quota_error._entry_ptr = internal global ptr @__quota_error._entry, section ".printk_index", align 4
@__kstrtab___quota_error = external dso_local constant [0 x i8], align 1
@__kstrtabns___quota_error = external dso_local constant [0 x i8], align 1
@__ksymtab___quota_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__quota_error to i32), ptr @__kstrtab___quota_error, ptr @__kstrtabns___quota_error }, section "___ksymtab+__quota_error", align 4
@dq_list_lock = internal global %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, section ".data..cacheline_aligned", align 128
@quota_formats = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_register_quota_format = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_quota_format = external dso_local constant [0 x i8], align 1
@__ksymtab_register_quota_format = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_quota_format to i32), ptr @__kstrtab_register_quota_format, ptr @__kstrtabns_register_quota_format }, section "___ksymtab+register_quota_format", align 4
@__kstrtab_unregister_quota_format = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_quota_format = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_quota_format = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_quota_format to i32), ptr @__kstrtab_unregister_quota_format, ptr @__kstrtabns_unregister_quota_format }, section "___ksymtab+unregister_quota_format", align 4
@dqstats = dso_local global { %struct.dqstats, [128 x i8] } zeroinitializer, align 32
@__kstrtab_dqstats = external dso_local constant [0 x i8], align 1
@__kstrtabns_dqstats = external dso_local constant [0 x i8], align 1
@__ksymtab_dqstats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dqstats to i32), ptr @__kstrtab_dqstats, ptr @__kstrtabns_dqstats }, section "___ksymtab+dqstats", align 4
@__kstrtab_dquot_mark_dquot_dirty = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_mark_dquot_dirty = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_mark_dquot_dirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_mark_dquot_dirty to i32), ptr @__kstrtab_dquot_mark_dquot_dirty, ptr @__kstrtabns_dquot_mark_dquot_dirty }, section "___ksymtab+dquot_mark_dquot_dirty", align 4
@__kstrtab_mark_info_dirty = external dso_local constant [0 x i8], align 1
@__kstrtabns_mark_info_dirty = external dso_local constant [0 x i8], align 1
@__ksymtab_mark_info_dirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mark_info_dirty to i32), ptr @__kstrtab_mark_info_dirty, ptr @__kstrtabns_mark_info_dirty }, section "___ksymtab+mark_info_dirty", align 4
@__kstrtab_dquot_acquire = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_acquire = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_acquire = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_acquire to i32), ptr @__kstrtab_dquot_acquire, ptr @__kstrtabns_dquot_acquire }, section "___ksymtab+dquot_acquire", align 4
@__kstrtab_dquot_commit = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_commit = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_commit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_commit to i32), ptr @__kstrtab_dquot_commit, ptr @__kstrtabns_dquot_commit }, section "___ksymtab+dquot_commit", align 4
@__kstrtab_dquot_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_release = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_release to i32), ptr @__kstrtab_dquot_release, ptr @__kstrtabns_dquot_release }, section "___ksymtab+dquot_release", align 4
@dquot_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_dquot_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_destroy to i32), ptr @__kstrtab_dquot_destroy, ptr @__kstrtabns_dquot_destroy }, section "___ksymtab+dquot_destroy", align 4
@dquot_scan_active.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@inuse_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @inuse_list, ptr @inuse_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_dquot_scan_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_scan_active = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_scan_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_scan_active to i32), ptr @__kstrtab_dquot_scan_active, ptr @__kstrtabns_dquot_scan_active }, section "___ksymtab+dquot_scan_active", align 4
@dquot_writeback_dquots.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_dquot_writeback_dquots = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_writeback_dquots = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_writeback_dquots = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_writeback_dquots to i32), ptr @__kstrtab_dquot_writeback_dquots, ptr @__kstrtabns_dquot_writeback_dquots }, section "___ksymtab+dquot_writeback_dquots", align 4
@__kstrtab_dquot_quota_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_quota_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_quota_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_quota_sync to i32), ptr @__kstrtab_dquot_quota_sync, ptr @__kstrtabns_dquot_quota_sync }, section "___ksymtab+dquot_quota_sync", align 4
@__func__.dqput = private unnamed_addr constant [6 x i8] c"dqput\00", align 1
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"trying to free free dquot of %s %d\00", [61 x i8] zeroinitializer }, align 32
@quotatypes = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], [16 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@dquot_ref_wq = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @dquot_ref_wq, i64 44), ptr getelementptr (i8, ptr @dquot_ref_wq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Can't write quota structure (error %d). Quota may get out of sync!\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_dqput = external dso_local constant [0 x i8], align 1
@__kstrtabns_dqput = external dso_local constant [0 x i8], align 1
@__ksymtab_dqput = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dqput to i32), ptr @__kstrtab_dqput, ptr @__kstrtabns_dqput }, section "___ksymtab+dqput", align 4
@__kstrtab_dquot_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_alloc to i32), ptr @__kstrtab_dquot_alloc, ptr @__kstrtabns_dquot_alloc }, section "___ksymtab+dquot_alloc", align 4
@dq_state_lock = internal global %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, section ".data..cacheline_aligned", align 128
@__kstrtab_dqget = external dso_local constant [0 x i8], align 1
@__kstrtabns_dqget = external dso_local constant [0 x i8], align 1
@__ksymtab_dqget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dqget to i32), ptr @__kstrtab_dqget, ptr @__kstrtabns_dqget }, section "___ksymtab+dqget", align 4
@__kstrtab_dquot_initialize = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_initialize = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_initialize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_initialize to i32), ptr @__kstrtab_dquot_initialize, ptr @__kstrtabns_dquot_initialize }, section "___ksymtab+dquot_initialize", align 4
@__kstrtab_dquot_initialize_needed = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_initialize_needed = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_initialize_needed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_initialize_needed to i32), ptr @__kstrtab_dquot_initialize_needed, ptr @__kstrtabns_dquot_initialize_needed }, section "___ksymtab+dquot_initialize_needed", align 4
@__kstrtab_dquot_drop = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_drop = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_drop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_drop to i32), ptr @__kstrtab_dquot_drop, ptr @__kstrtabns_dquot_drop }, section "___ksymtab+dquot_drop", align 4
@dquot_srcu = internal global { %struct.srcu_struct, [200 x i8] } { %struct.srcu_struct { [3 x %struct.srcu_node] zeroinitializer, [3 x ptr] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.mutex zeroinitializer, i32 0, i32 0, i32 -1, i32 0, i32 0, ptr @dquot_srcu_srcu_data, i32 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @dquot_srcu, i64 700), ptr getelementptr (i8, ptr @dquot_srcu, i64 700) }, ptr null, %struct.lockdep_map { ptr getelementptr (i8, ptr @dquot_srcu, i64 696), [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.19, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [200 x i8] zeroinitializer }, align 32
@__kstrtab___dquot_alloc_space = external dso_local constant [0 x i8], align 1
@__kstrtabns___dquot_alloc_space = external dso_local constant [0 x i8], align 1
@__ksymtab___dquot_alloc_space = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dquot_alloc_space to i32), ptr @__kstrtab___dquot_alloc_space, ptr @__kstrtabns___dquot_alloc_space }, section "___ksymtab+__dquot_alloc_space", align 4
@__kstrtab_dquot_alloc_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_alloc_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_alloc_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_alloc_inode to i32), ptr @__kstrtab_dquot_alloc_inode, ptr @__kstrtabns_dquot_alloc_inode }, section "___ksymtab+dquot_alloc_inode", align 4
@dquot_claim_space_nodirty.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_dquot_claim_space_nodirty = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_claim_space_nodirty = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_claim_space_nodirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_claim_space_nodirty to i32), ptr @__kstrtab_dquot_claim_space_nodirty, ptr @__kstrtabns_dquot_claim_space_nodirty }, section "___ksymtab+dquot_claim_space_nodirty", align 4
@dquot_reclaim_space_nodirty.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_dquot_reclaim_space_nodirty = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_reclaim_space_nodirty = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_reclaim_space_nodirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_reclaim_space_nodirty to i32), ptr @__kstrtab_dquot_reclaim_space_nodirty, ptr @__kstrtabns_dquot_reclaim_space_nodirty }, section "___ksymtab+dquot_reclaim_space_nodirty", align 4
@__kstrtab___dquot_free_space = external dso_local constant [0 x i8], align 1
@__kstrtabns___dquot_free_space = external dso_local constant [0 x i8], align 1
@__ksymtab___dquot_free_space = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dquot_free_space to i32), ptr @__kstrtab___dquot_free_space, ptr @__kstrtabns___dquot_free_space }, section "___ksymtab+__dquot_free_space", align 4
@__kstrtab_dquot_free_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_free_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_free_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_free_inode to i32), ptr @__kstrtab_dquot_free_inode, ptr @__kstrtabns_dquot_free_inode }, section "___ksymtab+dquot_free_inode", align 4
@__kstrtab___dquot_transfer = external dso_local constant [0 x i8], align 1
@__kstrtabns___dquot_transfer = external dso_local constant [0 x i8], align 1
@__ksymtab___dquot_transfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dquot_transfer to i32), ptr @__kstrtab___dquot_transfer, ptr @__kstrtabns___dquot_transfer }, section "___ksymtab+__dquot_transfer", align 4
@__kstrtab_dquot_transfer = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_transfer = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_transfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_transfer to i32), ptr @__kstrtab_dquot_transfer, ptr @__kstrtabns_dquot_transfer }, section "___ksymtab+dquot_transfer", align 4
@__kstrtab_dquot_commit_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_commit_info = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_commit_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_commit_info to i32), ptr @__kstrtab_dquot_commit_info, ptr @__kstrtabns_dquot_commit_info }, section "___ksymtab+dquot_commit_info", align 4
@__kstrtab_dquot_get_next_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_get_next_id = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_get_next_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_get_next_id to i32), ptr @__kstrtab_dquot_get_next_id, ptr @__kstrtabns_dquot_get_next_id }, section "___ksymtab+dquot_get_next_id", align 4
@dquot_operations = dso_local constant { %struct.dquot_operations, [52 x i8] } { %struct.dquot_operations { ptr @dquot_commit, ptr @dquot_alloc, ptr @dquot_destroy, ptr @dquot_acquire, ptr @dquot_release, ptr @dquot_mark_dquot_dirty, ptr @dquot_commit_info, ptr null, ptr null, ptr null, ptr @dquot_get_next_id }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_dquot_operations = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_operations = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_operations = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_operations to i32), ptr @__kstrtab_dquot_operations, ptr @__kstrtabns_dquot_operations }, section "___ksymtab+dquot_operations", align 4
@__kstrtab_dquot_file_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_file_open = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_file_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_file_open to i32), ptr @__kstrtab_dquot_file_open, ptr @__kstrtabns_dquot_file_open }, section "___ksymtab+dquot_file_open", align 4
@dquot_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_dquot_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_disable to i32), ptr @__kstrtab_dquot_disable, ptr @__kstrtabns_dquot_disable }, section "___ksymtab+dquot_disable", align 4
@__kstrtab_dquot_quota_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_quota_off = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_quota_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_quota_off to i32), ptr @__kstrtab_dquot_quota_off, ptr @__kstrtabns_dquot_quota_off }, section "___ksymtab+dquot_quota_off", align 4
@dquot_load_quota_sb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_dquot_load_quota_sb = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_load_quota_sb = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_load_quota_sb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_load_quota_sb to i32), ptr @__kstrtab_dquot_load_quota_sb, ptr @__kstrtabns_dquot_load_quota_sb }, section "___ksymtab+dquot_load_quota_sb", align 4
@__kstrtab_dquot_load_quota_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_load_quota_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_load_quota_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_load_quota_inode to i32), ptr @__kstrtab_dquot_load_quota_inode, ptr @__kstrtabns_dquot_load_quota_inode }, section "___ksymtab+dquot_load_quota_inode", align 4
@dquot_resume.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_dquot_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_resume to i32), ptr @__kstrtab_dquot_resume, ptr @__kstrtabns_dquot_resume }, section "___ksymtab+dquot_resume", align 4
@__kstrtab_dquot_quota_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_quota_on = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_quota_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_quota_on to i32), ptr @__kstrtab_dquot_quota_on, ptr @__kstrtabns_dquot_quota_on }, section "___ksymtab+dquot_quota_on", align 4
@__kstrtab_dquot_quota_on_mount = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_quota_on_mount = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_quota_on_mount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_quota_on_mount to i32), ptr @__kstrtab_dquot_quota_on_mount, ptr @__kstrtabns_dquot_quota_on_mount }, section "___ksymtab+dquot_quota_on_mount", align 4
@__kstrtab_dquot_get_dqblk = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_get_dqblk = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_get_dqblk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_get_dqblk to i32), ptr @__kstrtab_dquot_get_dqblk, ptr @__kstrtabns_dquot_get_dqblk }, section "___ksymtab+dquot_get_dqblk", align 4
@__kstrtab_dquot_get_next_dqblk = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_get_next_dqblk = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_get_next_dqblk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_get_next_dqblk to i32), ptr @__kstrtab_dquot_get_next_dqblk, ptr @__kstrtabns_dquot_get_next_dqblk }, section "___ksymtab+dquot_get_next_dqblk", align 4
@__kstrtab_dquot_set_dqblk = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_set_dqblk = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_set_dqblk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_set_dqblk to i32), ptr @__kstrtab_dquot_set_dqblk, ptr @__kstrtabns_dquot_set_dqblk }, section "___ksymtab+dquot_set_dqblk", align 4
@__kstrtab_dquot_get_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_get_state = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_get_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_get_state to i32), ptr @__kstrtab_dquot_get_state, ptr @__kstrtabns_dquot_get_state }, section "___ksymtab+dquot_get_state", align 4
@__kstrtab_dquot_set_dqinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_set_dqinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_set_dqinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_set_dqinfo to i32), ptr @__kstrtab_dquot_set_dqinfo, ptr @__kstrtabns_dquot_set_dqinfo }, section "___ksymtab+dquot_set_dqinfo", align 4
@dquot_quotactl_sysfile_ops = dso_local constant { %struct.quotactl_ops, [52 x i8] } { %struct.quotactl_ops { ptr null, ptr null, ptr @dquot_quota_enable, ptr @dquot_quota_disable, ptr @dquot_quota_sync, ptr @dquot_set_dqinfo, ptr @dquot_get_dqblk, ptr @dquot_get_next_dqblk, ptr @dquot_set_dqblk, ptr @dquot_get_state, ptr null }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_dquot_quotactl_sysfile_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_dquot_quotactl_sysfile_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_dquot_quotactl_sysfile_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dquot_quotactl_sysfile_ops to i32), ptr @__kstrtab_dquot_quotactl_sysfile_ops, ptr @__kstrtabns_dquot_quotactl_sysfile_ops }, section "___ksymtab+dquot_quotactl_sysfile_ops", align 4
@__initcall__kmod_dquot__269_2993_dquot_init5 = internal global ptr @dquot_init, section ".initcall5.init", align 4
@__pcpu_unique_dquot_srcu_srcu_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@dquot_srcu_srcu_data = weak dso_local global %struct.srcu_data zeroinitializer, section ".data..percpu", align 128
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dq_list_lock\00", [19 x i8] zeroinitializer }, align 32
@dqgrab.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/quotaops.h\00", [39 x i8] zeroinitializer }, align 32
@dqgrab.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"group\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"project\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"undefined\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dquot_ref_wq.lock\00", [46 x i8] zeroinitializer }, align 32
@free_dquots = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @free_dquots, ptr @free_dquots }, [24 x i8] zeroinitializer }, align 32
@dq_hash_bits = internal global { i1, [31 x i8] } zeroinitializer, align 32
@dq_hash_mask = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dq_state_lock\00", [18 x i8] zeroinitializer }, align 32
@dquot_hash = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@get_empty_dquot.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dquot->dq_lock\00", [16 x i8] zeroinitializer }, align 32
@get_empty_dquot.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dquot->dq_dqb_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dquot_srcu.lock\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(dquot_srcu.work).work\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/quota/dquot.c:132\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dquot_srcu\00", [21 x i8] zeroinitializer }, align 32
@dquot_free_reserved_space.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c": warning, \00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c": write failed, \00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" file limit reached.\0D\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" file quota exceeded too long.\0D\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" file quota exceeded.\0D\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" block limit reached.\0D\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" block quota exceeded too long.\0D\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" block quota exceeded.\0D\0A\00", [39 x i8] zeroinitializer }, align 32
@flag_print_warnings = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@remove_dquot_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [129 x i8], [63 x i8] } { [129 x i8] c"\014VFS (%s): Writes happened after quota was disabled thus quota information is probably inconsistent. Please run quotacheck(8).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"remove_dquot_ref\00", [47 x i8] zeroinitializer }, align 32
@remove_dquot_ref._entry_ptr = internal global ptr @remove_dquot_ref._entry, section ".printk_index", align 4
@module_names = internal constant { [4 x %struct.quota_module_name], [32 x i8] } { [4 x %struct.quota_module_name] [%struct.quota_module_name { i32 1, ptr @.str.32 }, %struct.quota_module_name { i32 2, ptr @.str.33 }, %struct.quota_module_name { i32 4, ptr @.str.33 }, %struct.quota_module_name zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"quota_v1\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"quota_v2\00", [23 x i8] zeroinitializer }, align 32
@__func__.add_dquot_ref = private unnamed_addr constant [14 x i8] c"add_dquot_ref\00", align 1
@.str.34 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"Writes happened before quota was turned on thus quota information is probably inconsistent. Please run quotacheck(8)\00", [43 x i8] zeroinitializer }, align 32
@dquot_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 2955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015VFS: Disk quotas %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dquot_init\00", [21 x i8] zeroinitializer }, align 32
@dquot_init._entry_ptr = internal global ptr @dquot_init._entry, section ".printk_index", align 4
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dquot_6.6.0\00", [20 x i8] zeroinitializer }, align 32
@sys_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.45, ptr null, i32 0, i16 365, ptr @fs_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dquot\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot create dquot hash table\00", [33 x i8] zeroinitializer }, align 32
@dquot_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot create dquot stat counters\00", [62 x i8] zeroinitializer }, align 32
@dquot_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.2, i32 2986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016VFS: Dquot-cache hash table entries: %ld (order %ld, %ld bytes)\0A\00", [61 x i8] zeroinitializer }, align 32
@dquot_init._entry_ptr.43 = internal global ptr @dquot_init._entry.41, section ".printk_index", align 4
@dqcache_shrinker = internal global { %struct.shrinker, [60 x i8] } { %struct.shrinker { ptr @dqcache_shrink_count, ptr @dqcache_shrink_scan, i32 0, i32 2, i32 0, %struct.list_head zeroinitializer, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot register dquot shrinker\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@fs_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.46, ptr null, i32 0, i16 365, ptr @fs_dqstats_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"quota\00", [26 x i8] zeroinitializer }, align 32
@fs_dqstats_table = internal global { [10 x %struct.ctl_table], [88 x i8] } { [10 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.47, ptr @dqstats, i32 4, i16 292, ptr null, ptr @do_proc_dqstats, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.48, ptr getelementptr (i8, ptr @dqstats, i64 4), i32 4, i16 292, ptr null, ptr @do_proc_dqstats, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.49, ptr getelementptr (i8, ptr @dqstats, i64 8), i32 4, i16 292, ptr null, ptr @do_proc_dqstats, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.50, ptr getelementptr (i8, ptr @dqstats, i64 12), i32 4, i16 292, ptr null, ptr @do_proc_dqstats, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.51, ptr getelementptr (i8, ptr @dqstats, i64 16), i32 4, i16 292, ptr null, ptr @do_proc_dqstats, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.52, ptr getelementptr (i8, ptr @dqstats, i64 20), i32 4, i16 292, ptr null, ptr @do_proc_dqstats, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.53, ptr getelementptr (i8, ptr @dqstats, i64 24), i32 4, i16 292, ptr null, ptr @do_proc_dqstats, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.54, ptr getelementptr (i8, ptr @dqstats, i64 28), i32 4, i16 292, ptr null, ptr @do_proc_dqstats, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.55, ptr @flag_print_warnings, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [88 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lookups\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"drops\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reads\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"writes\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache_hits\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"allocated_dquots\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"free_dquots\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"syncs\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"warnings\00", [23 x i8] zeroinitializer }, align 32
@sysctl_vfs_cache_pressure = external dso_local local_unnamed_addr global i32, align 4
@switch.table.flush_warnings = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4294967295]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4294967295]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4294967295]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4294967295]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4294967295]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 24]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 130, i32 28 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 148, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"quota_formats\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 159, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [8 x i8] c"dqstats\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 255, i32 16 }
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"dquot_cachep\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 163, i32 27 }
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"inuse_list\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 250, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 764, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [11 x i8] c"quotatypes\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 157, i32 14 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"dquot_ref_wq\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 789, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [11 x i8] c"dquot_srcu\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"dquot_operations\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2143, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"dquot_quotactl_sysfile_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2835, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 128, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant [28 x i8] c"../include/linux/quotaops.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 49, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 157, i32 29 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 134, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant [12 x i8] c"free_dquots\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 251, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant [13 x i8] c"dq_hash_bits\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [13 x i8] c"dq_hash_mask\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 129, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant [11 x i8] c"dquot_hash\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 253, i32 27 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 829, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 837, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 132, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 189, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1201, i32 26 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1203, i32 26 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1207, i32 10 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1210, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1213, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1216, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1219, i32 10 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1222, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant [20 x i8] c"flag_print_warnings\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1165, i32 12 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1087, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [13 x i8] c"module_names\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 160, i32 33 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 160, i32 50 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 999, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2955, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [10 x i8] c"sys_table\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2941, i32 25 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2959, i32 35 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2968, i32 9 }
@___asan_gen_.234 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2971, i32 9 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2973, i32 10 }
@___asan_gen_.240 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2985, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"dqcache_shrinker\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 747, i32 24 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2989, i32 9 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2943, i32 15 }
@___asan_gen_.255 = private unnamed_addr constant [9 x i8] c"fs_table\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2932, i32 25 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2934, i32 15 }
@___asan_gen_.261 = private unnamed_addr constant [17 x i8] c"fs_dqstats_table\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2863, i32 25 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2865, i32 15 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2872, i32 15 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2879, i32 15 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2886, i32 15 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2893, i32 15 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2900, i32 15 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2907, i32 15 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2914, i32 15 }
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.289 = private constant [20 x i8] c"../fs/quota/dquot.c\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 2922, i32 15 }
@___asan_gen_.291 = private unnamed_addr constant [28 x i8] c"switch.table.flush_warnings\00", align 1
@llvm.compiler.used = appending global [129 x ptr] [ptr @__initcall__kmod_dquot__269_2993_dquot_init5, ptr @__ksymtab___dquot_alloc_space, ptr @__ksymtab___dquot_free_space, ptr @__ksymtab___dquot_transfer, ptr @__ksymtab___quota_error, ptr @__ksymtab_dq_data_lock, ptr @__ksymtab_dqget, ptr @__ksymtab_dqput, ptr @__ksymtab_dqstats, ptr @__ksymtab_dquot_acquire, ptr @__ksymtab_dquot_alloc, ptr @__ksymtab_dquot_alloc_inode, ptr @__ksymtab_dquot_claim_space_nodirty, ptr @__ksymtab_dquot_commit, ptr @__ksymtab_dquot_commit_info, ptr @__ksymtab_dquot_destroy, ptr @__ksymtab_dquot_disable, ptr @__ksymtab_dquot_drop, ptr @__ksymtab_dquot_file_open, ptr @__ksymtab_dquot_free_inode, ptr @__ksymtab_dquot_get_dqblk, ptr @__ksymtab_dquot_get_next_dqblk, ptr @__ksymtab_dquot_get_next_id, ptr @__ksymtab_dquot_get_state, ptr @__ksymtab_dquot_initialize, ptr @__ksymtab_dquot_initialize_needed, ptr @__ksymtab_dquot_load_quota_inode, ptr @__ksymtab_dquot_load_quota_sb, ptr @__ksymtab_dquot_mark_dquot_dirty, ptr @__ksymtab_dquot_operations, ptr @__ksymtab_dquot_quota_off, ptr @__ksymtab_dquot_quota_on, ptr @__ksymtab_dquot_quota_on_mount, ptr @__ksymtab_dquot_quota_sync, ptr @__ksymtab_dquot_quotactl_sysfile_ops, ptr @__ksymtab_dquot_reclaim_space_nodirty, ptr @__ksymtab_dquot_release, ptr @__ksymtab_dquot_resume, ptr @__ksymtab_dquot_scan_active, ptr @__ksymtab_dquot_set_dqblk, ptr @__ksymtab_dquot_set_dqinfo, ptr @__ksymtab_dquot_transfer, ptr @__ksymtab_dquot_writeback_dquots, ptr @__ksymtab_mark_info_dirty, ptr @__ksymtab_register_quota_format, ptr @__ksymtab_unregister_quota_format, ptr @__quota_error._entry, ptr @__quota_error._entry_ptr, ptr @dquot_init._entry, ptr @dquot_init._entry.41, ptr @dquot_init._entry_ptr, ptr @dquot_init._entry_ptr.43, ptr @remove_dquot_ref._entry, ptr @remove_dquot_ref._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @quota_formats, ptr @dqstats, ptr @dquot_cachep, ptr @inuse_list, ptr @.str.3, ptr @quotatypes, ptr @dquot_ref_wq, ptr @.str.4, ptr @dquot_srcu, ptr @dquot_operations, ptr @dquot_quotactl_sysfile_ops, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @free_dquots, ptr @dq_hash_bits, ptr @dq_hash_mask, ptr @.str.13, ptr @dquot_hash, ptr @get_empty_dquot.__key, ptr @.str.14, ptr @get_empty_dquot.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @flag_print_warnings, ptr @.str.30, ptr @.str.31, ptr @module_names, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @sys_table, ptr @.str.38, ptr @.str.39, ptr @dquot_init.__key, ptr @.str.40, ptr @.str.42, ptr @dqcache_shrinker, ptr @.str.44, ptr @.str.45, ptr @fs_table, ptr @.str.46, ptr @fs_dqstats_table, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @switch.table.flush_warnings], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quota_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dqstats to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dquot_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inuse_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quotatypes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dquot_ref_wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dquot_srcu to i32), i32 824, i32 1024, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dquot_operations to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dquot_quotactl_sysfile_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_dquots to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dq_hash_bits to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dq_hash_mask to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dquot_hash to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_empty_dquot.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_empty_dquot.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flag_print_warnings to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remove_dquot_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dquot_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dquot_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dquot_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dqcache_shrinker to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_dqstats_table to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.flush_warnings to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__quota_error(ptr noundef %sb, ptr noundef %func, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %vaf = alloca %struct.va_format, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.__quota_error) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #13
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !274
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #13
  %1 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %1, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %s_id, ptr noundef %func, ptr noundef nonnull %vaf) #16
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_quota_format(ptr noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %0 = load ptr, ptr @quota_formats, align 4
  %qf_next = getelementptr inbounds %struct.quota_format_type, ptr %fmt, i32 0, i32 3
  %1 = ptrtoint ptr %qf_next to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %qf_next, align 4
  store ptr %fmt, ptr @quota_formats, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_quota_format(ptr noundef readnone %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %actqf.0 = phi ptr [ @quota_formats, %entry ], [ %qf_next, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %actqf.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %actqf.0, align 4
  %tobool.not = icmp eq ptr %1, null
  %cmp.not = icmp eq ptr %1, %fmt
  %or.cond = or i1 %tobool.not, %cmp.not
  %qf_next = getelementptr inbounds %struct.quota_format_type, ptr %1, i32 0, i32 3
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %qf_next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qf_next, align 4
  %4 = ptrtoint ptr %actqf.0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %actqf.0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_mark_dquot_dirty(ptr noundef %dquot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_flags = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  %0 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dq_flags, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %3 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dq_sb, align 4
  %s_dquot.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 31
  %5 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dquot.i, align 8
  %and = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %dq_flags) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %dq_flags, align 4
  %and1.i26 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i26)
  %tobool9.not = icmp eq i32 %and1.i26, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %call13 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %dq_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then15:                                        ; preds = %if.end11
  %dq_dirty = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 3
  %9 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dq_sb, align 4
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  %dqi_dirty_list = getelementptr %struct.super_block, ptr %10, i32 0, i32 31, i32 3, i32 %12, i32 2
  %13 = ptrtoint ptr %dqi_dirty_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dqi_dirty_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dq_dirty, ptr noundef %dqi_dirty_list, ptr noundef %14) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then15.if.end18_crit_edge

if.then15.if.end18_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dq_dirty, ptr %prev1.i.i, align 4
  %16 = ptrtoint ptr %dq_dirty to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %dq_dirty, align 4
  %prev3.i.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dqi_dirty_list, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %dqi_dirty_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %dq_dirty, ptr %dqi_dirty_list, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end.i.i, %if.then15.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %ret.0 = phi i32 [ 1, %if.end11.if.end18_crit_edge ], [ 0, %if.then15.if.end18_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end6.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then3 ], [ %ret.0, %if.end18 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mark_info_dirty(ptr nocapture noundef %sb, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #13
  %dqi_flags = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 3
  %0 = ptrtoint ptr %dqi_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dqi_flags, align 8
  %or = or i32 %1, 131072
  store i32 %or, ptr %dqi_flags, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_acquire(ptr noundef %dquot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %dq_lock = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dq_lock, i32 noundef 0) #13
  %dq_flags = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  %2 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dq_flags, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.super_block, ptr %1, i32 0, i32 31, i32 4, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %read_dqblk = getelementptr inbounds %struct.quota_format_ops, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %read_dqblk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_dqblk, align 4
  %call2 = tail call i32 %10(ptr noundef %dquot) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.out_iolock_crit_edge, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then.out_iolock_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_iolock

do.end:                                           ; preds = %if.then.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.do.end_crit_edge ], [ %call2, %if.then.do.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @_set_bit(i32 noundef 4, ptr noundef %dq_flags) #13
  %11 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dq_flags, align 4
  %13 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %land.lhs.true, label %do.end.do.end44_crit_edge

do.end.do.end44_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end44

land.lhs.true:                                    ; preds = %do.end
  %dq_off = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 9
  %14 = ptrtoint ptr %dq_off to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dq_off, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool12.not = icmp eq i64 %15, 0
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true.do.end44_crit_edge

land.lhs.true.do.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end44

if.then13:                                        ; preds = %land.lhs.true
  %type16 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type16, align 4
  %arrayidx17 = getelementptr %struct.super_block, ptr %1, i32 0, i32 31, i32 4, i32 %17
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx17, align 4
  %commit_dqblk = getelementptr inbounds %struct.quota_format_ops, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %commit_dqblk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %commit_dqblk, align 4
  %call18 = tail call i32 %21(ptr noundef %dquot) #13
  %22 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type16, align 4
  %dqi_flags.i = getelementptr %struct.super_block, ptr %1, i32 0, i32 31, i32 3, i32 %23, i32 3
  %24 = ptrtoint ptr %dqi_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %dqi_flags.i, align 4
  %26 = and i32 %25, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool23.not = icmp eq i32 %26, 0
  br i1 %tobool23.not, label %if.end33.thread, label %if.end33

if.end33:                                         ; preds = %if.then13
  %arrayidx28 = getelementptr %struct.super_block, ptr %1, i32 0, i32 31, i32 4, i32 %23
  %27 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx28, align 4
  %write_file_info = getelementptr inbounds %struct.quota_format_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %write_file_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_file_info, align 4
  %31 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dq_sb, align 4
  %call32 = tail call i32 %30(ptr noundef %32, i32 noundef %23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp34 = icmp slt i32 %call18, 0
  br i1 %cmp34, label %if.end33.out_iolock_crit_edge, label %if.end36

if.end33.out_iolock_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_iolock

if.end33.thread:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp3473 = icmp slt i32 %call18, 0
  br i1 %cmp3473, label %if.end33.thread.out_iolock_crit_edge, label %if.end33.thread.do.end44_crit_edge

if.end33.thread.do.end44_crit_edge:               ; preds = %if.end33.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end44

if.end33.thread.out_iolock_crit_edge:             ; preds = %if.end33.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_iolock

if.end36:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp37 = icmp slt i32 %call32, 0
  br i1 %cmp37, label %if.end36.out_iolock_crit_edge, label %if.end36.do.end44_crit_edge

if.end36.do.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end44

if.end36.out_iolock_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_iolock

do.end44:                                         ; preds = %if.end36.do.end44_crit_edge, %if.end33.thread.do.end44_crit_edge, %land.lhs.true.do.end44_crit_edge, %do.end.do.end44_crit_edge
  %ret.1 = phi i32 [ %ret.0, %do.end.do.end44_crit_edge ], [ %ret.0, %land.lhs.true.do.end44_crit_edge ], [ %call18, %if.end36.do.end44_crit_edge ], [ %call18, %if.end33.thread.do.end44_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !276
  tail call void @_set_bit(i32 noundef 5, ptr noundef %dq_flags) #13
  br label %out_iolock

out_iolock:                                       ; preds = %do.end44, %if.end36.out_iolock_crit_edge, %if.end33.thread.out_iolock_crit_edge, %if.end33.out_iolock_crit_edge, %if.then.out_iolock_crit_edge
  %ret.2 = phi i32 [ %ret.1, %do.end44 ], [ %call18, %if.end33.out_iolock_crit_edge ], [ %call2, %if.then.out_iolock_crit_edge ], [ %call32, %if.end36.out_iolock_crit_edge ], [ %call18, %if.end33.thread.out_iolock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dq_lock) #13
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_commit(ptr noundef %dquot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %dq_lock = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dq_lock, i32 noundef 0) #13
  %2 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dq_sb, align 4
  %s_dquot.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %s_dquot.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_dquot.i.i, align 8
  %and.i = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %clear_dquot_dirty.exit

if.end.i:                                         ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %dq_flags2.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  %call3.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %dq_flags2.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %clear_dquot_dirty.exit.thread, label %if.end6.i

clear_dquot_dirty.exit.thread:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  br label %out_lock

if.end6.i:                                        ; preds = %if.end.i
  %dq_dirty.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dq_dirty.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.clear_dquot_dirty.exit.thread16_crit_edge

if.end6.i.clear_dquot_dirty.exit.thread16_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_dquot_dirty.exit.thread16

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %dq_dirty.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dq_dirty.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %clear_dquot_dirty.exit.thread16

clear_dquot_dirty.exit.thread16:                  ; preds = %if.end.i.i.i, %if.end6.i.clear_dquot_dirty.exit.thread16_crit_edge
  %12 = ptrtoint ptr %dq_dirty.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %dq_dirty.i, ptr %dq_dirty.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dq_dirty.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  br label %if.end

clear_dquot_dirty.exit:                           ; preds = %entry
  %dq_flags.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %dq_flags.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %clear_dquot_dirty.exit.out_lock_crit_edge, label %clear_dquot_dirty.exit.if.end_crit_edge

clear_dquot_dirty.exit.if.end_crit_edge:          ; preds = %clear_dquot_dirty.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

clear_dquot_dirty.exit.out_lock_crit_edge:        ; preds = %clear_dquot_dirty.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_lock

if.end:                                           ; preds = %clear_dquot_dirty.exit.if.end_crit_edge, %clear_dquot_dirty.exit.thread16
  %dq_flags = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  %14 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %dq_flags, align 4
  %16 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not = icmp eq i32 %16, 0
  br i1 %tobool3.not, label %if.end.out_lock_crit_edge, label %if.then4

if.end.out_lock_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_lock

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.super_block, ptr %1, i32 0, i32 31, i32 4, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %commit_dqblk = getelementptr inbounds %struct.quota_format_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %commit_dqblk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %commit_dqblk, align 4
  %call5 = tail call i32 %22(ptr noundef %dquot) #13
  br label %out_lock

out_lock:                                         ; preds = %if.then4, %if.end.out_lock_crit_edge, %clear_dquot_dirty.exit.out_lock_crit_edge, %clear_dquot_dirty.exit.thread
  %ret.0 = phi i32 [ %call5, %if.then4 ], [ 0, %clear_dquot_dirty.exit.out_lock_crit_edge ], [ -5, %if.end.out_lock_crit_edge ], [ 0, %clear_dquot_dirty.exit.thread ]
  tail call void @mutex_unlock(ptr noundef %dq_lock) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_release(ptr noundef %dquot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %dq_lock = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dq_lock, i32 noundef 0) #13
  %dq_flags.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  %2 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dq_flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %dquot_is_busy.exit, label %entry.out_dqlock_crit_edge

entry.out_dqlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dqlock

dquot_is_busy.exit:                               ; preds = %entry
  %dq_count.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dq_count.i, i32 noundef 4) #13
  %4 = ptrtoint ptr %dq_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp sgt i32 %5, 1
  br i1 %cmp.i, label %dquot_is_busy.exit.out_dqlock_crit_edge, label %if.end

dquot_is_busy.exit.out_dqlock_crit_edge:          ; preds = %dquot_is_busy.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dqlock

if.end:                                           ; preds = %dquot_is_busy.exit
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.super_block, ptr %1, i32 0, i32 31, i32 4, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %release_dqblk = getelementptr inbounds %struct.quota_format_ops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %release_dqblk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %release_dqblk, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.end26_crit_edge, label %if.then2

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then2:                                         ; preds = %if.end
  %call8 = tail call i32 %11(ptr noundef %dquot) #13
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %dqi_flags.i = getelementptr %struct.super_block, ptr %1, i32 0, i32 31, i32 3, i32 %13, i32 3
  %14 = ptrtoint ptr %dqi_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %dqi_flags.i, align 4
  %16 = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %if.then2.if.end23_crit_edge, label %if.then14

if.then2.if.end23_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then14:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx18 = getelementptr %struct.super_block, ptr %1, i32 0, i32 31, i32 4, i32 %13
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx18, align 4
  %write_file_info = getelementptr inbounds %struct.quota_format_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %write_file_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_file_info, align 4
  %21 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dq_sb, align 4
  %call22 = tail call i32 %20(ptr noundef %22, i32 noundef %13) #13
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %if.then2.if.end23_crit_edge
  %ret2.0 = phi i32 [ %call22, %if.then14 ], [ 0, %if.then2.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp45 = icmp slt i32 %call8, 0
  %spec.select = select i1 %cmp45, i32 %call8, i32 %ret2.0
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %if.end.if.end26_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end26_crit_edge ], [ %spec.select, %if.end23 ]
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %dq_flags.i) #13
  br label %out_dqlock

out_dqlock:                                       ; preds = %if.end26, %dquot_is_busy.exit.out_dqlock_crit_edge, %entry.out_dqlock_crit_edge
  %ret.1 = phi i32 [ 0, %dquot_is_busy.exit.out_dqlock_crit_edge ], [ %ret.0, %if.end26 ], [ 0, %entry.out_dqlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dq_lock) #13
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dquot_destroy(ptr noundef %dquot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dquot_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %dquot) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_scan_active(ptr noundef %sb, ptr nocapture noundef readonly %fn, i32 noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_umount, i32 noundef 4) #13
  %0 = ptrtoint ptr %s_umount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %s_umount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b73 = load i1, ptr @dquot_scan_active.__already_done, align 1
  br i1 %.b73, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !277

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_scan_active.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 586, i32 noundef 9, ptr noundef null) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %.pn79 = load ptr, ptr @inuse_list, align 4
  %cmp.not81 = icmp eq ptr %.pn79, @inuse_list
  br i1 %cmp.not81, label %if.end29.for.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end29.for.body_crit_edge
  %.pn84 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn79, %if.end29.for.body_crit_edge ]
  %old_dquot.083 = phi ptr [ %old_dquot.1, %for.inc.for.body_crit_edge ], [ null, %if.end29.for.body_crit_edge ]
  %ret.082 = phi i32 [ %ret.2, %for.inc.for.body_crit_edge ], [ 0, %if.end29.for.body_crit_edge ]
  %dquot.085 = getelementptr i8, ptr %.pn84, i32 -8
  %dq_flags = getelementptr i8, ptr %.pn84, i32 184
  %2 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dq_flags, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool41.not = icmp eq i32 %4, 0
  br i1 %tobool41.not, label %for.body.for.inc_crit_edge, label %if.end43

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end43:                                         ; preds = %for.body
  %dq_sb = getelementptr i8, ptr %.pn84, i32 164
  %5 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dq_sb, align 4
  %cmp44.not = icmp eq ptr %6, %sb
  br i1 %cmp44.not, label %if.end46, label %if.end43.for.inc_crit_edge

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end46:                                         ; preds = %if.end43
  %dq_count = getelementptr i8, ptr %.pn84, i32 160
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dq_count, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %dq_count, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dq_count, ptr %dq_count, i32 1, ptr elementtype(i32) %dq_count) #13, !srcloc !278
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  tail call void @dqput(ptr noundef %old_dquot.083)
  %dq_lock.i = getelementptr i8, ptr %.pn84, i32 24
  tail call void @mutex_lock_nested(ptr noundef %dq_lock.i, i32 noundef 0) #13
  tail call void @mutex_unlock(ptr noundef %dq_lock.i) #13
  %8 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dq_flags, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool49.not = icmp eq i32 %10, 0
  br i1 %tobool49.not, label %if.end46.if.end55_crit_edge, label %if.then50

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then50:                                        ; preds = %if.end46
  %call51 = tail call i32 %fn(ptr noundef %dquot.085, i32 noundef %priv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then50.out_crit_edge, label %if.then50.if.end55_crit_edge

if.then50.if.end55_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then50.out_crit_edge:                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end55:                                         ; preds = %if.then50.if.end55_crit_edge, %if.end46.if.end55_crit_edge
  %ret.1 = phi i32 [ %call51, %if.then50.if.end55_crit_edge ], [ %ret.082, %if.end46.if.end55_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end55, %if.end43.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.2 = phi i32 [ %ret.082, %if.end43.for.inc_crit_edge ], [ %ret.1, %if.end55 ], [ %ret.082, %for.body.for.inc_crit_edge ]
  %old_dquot.1 = phi ptr [ %old_dquot.083, %if.end43.for.inc_crit_edge ], [ %dquot.085, %if.end55 ], [ %old_dquot.083, %for.body.for.inc_crit_edge ]
  %11 = ptrtoint ptr %.pn84 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn84, align 4
  %cmp.not = icmp eq ptr %.pn, @inuse_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end29.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %if.end29.for.end_crit_edge ], [ %ret.2, %for.inc.for.end_crit_edge ]
  %old_dquot.0.lcssa = phi ptr [ null, %if.end29.for.end_crit_edge ], [ %old_dquot.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  br label %out

out:                                              ; preds = %for.end, %if.then50.out_crit_edge
  %ret.3 = phi i32 [ %ret.0.lcssa, %for.end ], [ %call51, %if.then50.out_crit_edge ]
  %old_dquot.2 = phi ptr [ %old_dquot.0.lcssa, %for.end ], [ %dquot.085, %if.then50.out_crit_edge ]
  tail call void @dqput(ptr noundef %old_dquot.2)
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dqput(ptr noundef %dquot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dquot, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dq_count = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dq_count, i32 noundef 4) #13
  %0 = ptrtoint ptr %dq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %2 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dq_sb, align 4
  %dq_id = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @quotatypes, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %dq_id, align 8
  %9 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %10 = insertvalue [2 x i32] %9, i32 %5, 1
  %call4 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %10) #13
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %3, ptr noundef nonnull @__func__.dqput, ptr noundef nonnull @.str.3, ptr noundef %7, i32 noundef %call4)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/dquot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 767, 0\0A.popsection", ""() #13, !srcloc !279
  unreachable

if.end8:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %11 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 1), i64 noundef 1, i32 noundef %11) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %call.i.i8188 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dq_count, i32 noundef 4) #13
  %12 = ptrtoint ptr %dq_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %dq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp89 = icmp sgt i32 %13, 1
  br i1 %cmp89, label %if.end8.if.then11_crit_edge, label %if.end22.lr.ph

if.end8.if.then11_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

if.end22.lr.ph:                                   ; preds = %if.end8
  %dq_flags.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  %dq_sb26 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %dq_dirty.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 3
  %prev.i.i.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 3, i32 1
  br label %if.end22

if.then11:                                        ; preds = %we_slept.backedge.if.then11_crit_edge, %if.end8.if.then11_crit_edge
  %call.i.i82 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dq_count, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %dq_count, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dq_count, ptr %dq_count, i32 1, ptr elementtype(i32) %dq_count) #13, !srcloc !280
  %dq_sb13 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %15 = ptrtoint ptr %dq_sb13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dq_sb13, align 4
  %type15 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %type15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type15, align 4
  %s_dquot.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 31
  %19 = ptrtoint ptr %s_dquot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_dquot.i.i.i.i, align 8
  %shl.i.i.i.i = shl nuw i32 1, %18
  %and.i.i.i = and i32 %20, %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0
  %shl.i.i.i = shl i32 64, %18
  %and.i.i = and i32 %20, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %21 = select i1 %tobool.i.i.i, i1 %tobool.i.not.i, i1 false
  br i1 %21, label %if.then11.cleanup.sink.split_crit_edge, label %land.lhs.true

if.then11.cleanup.sink.split_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %if.then11
  %call.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dq_count, i32 noundef 4) #13
  %22 = ptrtoint ptr %dq_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp19 = icmp eq i32 %23, 1
  br i1 %cmp19, label %if.then20, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__wake_up(ptr noundef nonnull @dquot_ref_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup.sink.split

if.end22:                                         ; preds = %we_slept.backedge.if.end22_crit_edge, %if.end22.lr.ph
  %24 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %dq_flags.i, align 4
  %and1.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool24.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool24.not, label %if.end33, label %if.then25

if.then25:                                        ; preds = %if.end22
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  %26 = ptrtoint ptr %dq_sb26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dq_sb26, align 4
  %dq_op = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %dq_op to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dq_op, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call27 = tail call i32 %31(ptr noundef nonnull %dquot) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.then25.we_slept.backedge_crit_edge

if.then25.we_slept.backedge_crit_edge:            ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %we_slept.backedge

if.then29:                                        ; preds = %if.then25
  %32 = ptrtoint ptr %dq_sb26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dq_sb26, align 4
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %33, ptr noundef nonnull @__func__.dqput, ptr noundef nonnull @.str.4, i32 noundef %call27)
  %34 = ptrtoint ptr %dq_sb26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dq_sb26, align 4
  %s_dquot.i.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 31
  %36 = ptrtoint ptr %s_dquot.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_dquot.i.i, align 8
  %and.i = and i32 %37, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %dq_flags.i) #13
  br label %we_slept.backedge

if.end.i:                                         ; preds = %if.then29
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %call3.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %dq_flags.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  br label %we_slept.backedge

if.end6.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dq_dirty.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.list_del_init.exit.i_crit_edge

if.end6.i.list_del_init.exit.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %dq_dirty.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dq_dirty.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end6.i.list_del_init.exit.i_crit_edge
  %44 = ptrtoint ptr %dq_dirty.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %dq_dirty.i, ptr %dq_dirty.i, align 4
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dq_dirty.i, ptr %prev.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  br label %we_slept.backedge

we_slept.backedge:                                ; preds = %if.then36, %list_del_init.exit.i, %if.then5.i, %if.then.i, %if.then25.we_slept.backedge_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %call.i.i81 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dq_count, i32 noundef 4) #13
  %46 = ptrtoint ptr %dq_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %dq_count, align 4
  %cmp = icmp sgt i32 %47, 1
  br i1 %cmp, label %we_slept.backedge.if.then11_crit_edge, label %we_slept.backedge.if.end22_crit_edge

we_slept.backedge.if.end22_crit_edge:             ; preds = %we_slept.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

we_slept.backedge.if.then11_crit_edge:            ; preds = %we_slept.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

if.end33:                                         ; preds = %if.end22
  %48 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %dq_flags.i, align 4
  %50 = and i32 %49, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool35.not = icmp eq i32 %50, 0
  br i1 %tobool35.not, label %if.end40, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  %51 = ptrtoint ptr %dq_sb26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dq_sb26, align 4
  %dq_op38 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %dq_op38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dq_op38, align 8
  %release_dquot = getelementptr inbounds %struct.dquot_operations, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %release_dquot to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %release_dquot, align 4
  %call39 = tail call i32 %56(ptr noundef nonnull %dquot) #13
  br label %we_slept.backedge

if.end40:                                         ; preds = %if.end33
  %call.i.i84 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dq_count, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %dq_count, i32 1, i32 3, i32 1) #13
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dq_count, ptr %dq_count, i32 1, ptr elementtype(i32) %dq_count) #13, !srcloc !280
  %dq_free = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 2
  %58 = ptrtoint ptr %dq_free to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %dq_free, align 4
  %cmp.i.not = icmp eq ptr %59, %dq_free
  br i1 %cmp.i.not, label %do.end57, label %do.body49, !prof !277

do.body49:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/dquot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 808, 0\0A.popsection", ""() #13, !srcloc !281
  unreachable

do.end57:                                         ; preds = %if.end40
  %60 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @free_dquots, i32 0, i32 1), align 4
  %call.i.i.i86 = tail call zeroext i1 @__list_add_valid(ptr noundef %dq_free, ptr noundef %60, ptr noundef nonnull @free_dquots) #13
  br i1 %call.i.i.i86, label %if.end.i.i.i87, label %do.end57.put_dquot_last.exit_crit_edge

do.end57.put_dquot_last.exit_crit_edge:           ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_dquot_last.exit

if.end.i.i.i87:                                   ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %dq_free, ptr getelementptr inbounds (%struct.list_head, ptr @free_dquots, i32 0, i32 1), align 4
  %61 = ptrtoint ptr %dq_free to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @free_dquots, ptr %dq_free, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %60, ptr %prev3.i.i.i, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %dq_free, ptr %60, align 4
  br label %put_dquot_last.exit

put_dquot_last.exit:                              ; preds = %if.end.i.i.i87, %do.end57.put_dquot_last.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %64 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 6), i64 noundef 1, i32 noundef %64) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %put_dquot_last.exit, %if.then20, %land.lhs.true.cleanup.sink.split_crit_edge, %if.then11.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_writeback_dquots(ptr noundef %sb, i32 noundef %type) #0 align 64 {
entry:
  %dirty = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dirty) #13
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dirty, align 4, !annotation !274
  %1 = getelementptr inbounds %struct.list_head, ptr %dirty, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !274
  %s_dquot.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_umount, i32 noundef 4) #13
  %3 = ptrtoint ptr %s_umount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %s_umount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 0
  br i1 %cmp.i.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b141 = load i1, ptr @dquot_writeback_dquots.__already_done, align 1
  br i1 %.b141, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !277

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_writeback_dquots.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 630, i32 noundef 9, ptr noundef null) #13
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %type)
  %cmp38.not = icmp eq i32 %type, -1
  %dq_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 7
  br label %for.body

for.cond93.preheader:                             ; preds = %for.inc
  %5 = add i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %land.lhs.true98, label %for.cond93.preheader.for.inc109_crit_edge

for.cond93.preheader.for.inc109_crit_edge:        ; preds = %for.cond93.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc109

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end30
  %cnt.0160 = phi i32 [ 0, %if.end30 ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.0159 = phi i32 [ 0, %if.end30 ], [ %ret.3, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0160, i32 %type)
  %cmp39.not = icmp eq i32 %cnt.0160, %type
  %or.cond = select i1 %cmp38.not, i1 true, i1 %cmp39.not
  br i1 %or.cond, label %if.end41, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end41:                                         ; preds = %for.body
  %7 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_dquot.i, align 8
  %shl.i.i.i.i = shl nuw nsw i32 1, %cnt.0160
  %and.i.i.i = and i32 %8, %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0
  %shl.i.i.i = shl nuw nsw i32 64, %cnt.0160
  %and.i.i = and i32 %8, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %9 = select i1 %tobool.i.i.i, i1 %tobool.i.not.i, i1 false
  br i1 %9, label %if.end44, label %if.end41.for.inc_crit_edge

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end44:                                         ; preds = %if.end41
  call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %dqi_dirty_list = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %cnt.0160, i32 2
  %10 = ptrtoint ptr %dqi_dirty_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dqi_dirty_list, align 4
  %12 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %dirty, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dirty, ptr %prev.i.i, align 4
  %prev3.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %cnt.0160, i32 2, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %1, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dirty, ptr %15, align 4
  store volatile ptr %dqi_dirty_list, ptr %dqi_dirty_list, align 4
  store ptr %dqi_dirty_list, ptr %prev3.i.i, align 4
  %18 = load volatile ptr, ptr %dirty, align 4
  %cmp.i143.not157 = icmp eq ptr %18, %dirty
  br i1 %cmp.i143.not157, label %if.end44.while.end_crit_edge, label %if.end44.while.body_crit_edge

if.end44.while.body_crit_edge:                    ; preds = %if.end44
  br label %while.body

if.end44.while.end_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %if.end92.while.body_crit_edge, %if.end44.while.body_crit_edge
  %19 = phi ptr [ %46, %if.end92.while.body_crit_edge ], [ %18, %if.end44.while.body_crit_edge ]
  %ret.1158 = phi i32 [ %ret.2, %if.end92.while.body_crit_edge ], [ %ret.0159, %if.end44.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %19, i32 -24
  %dq_flags = getelementptr i8, ptr %19, i32 168
  %20 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %dq_flags, align 4
  %22 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool52.not = icmp eq i32 %22, 0
  br i1 %tobool52.not, label %do.end70, label %while.body.if.end76_crit_edge, !prof !282

while.body.if.end76_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

do.end70:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 644, i32 noundef 9, ptr noundef null) #13
  br label %if.end76

if.end76:                                         ; preds = %do.end70, %while.body.if.end76_crit_edge
  %dq_count.i = getelementptr i8, ptr %19, i32 144
  %call.i.i.i145 = call zeroext i1 @__kasan_check_read(ptr noundef %dq_count.i, i32 noundef 4) #13
  %23 = ptrtoint ptr %dq_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %dq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end76.if.end29.i_crit_edge

if.end76.if.end29.i_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.end76
  %.b2.i = load i1, ptr @dqgrab.__already_done, align 1
  br i1 %.b2.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !277

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dqgrab.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 49, i32 noundef 9, ptr noundef null) #13
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %if.end76.if.end29.i_crit_edge
  %25 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %dq_flags, align 4
  %27 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool39.not.i = icmp eq i32 %27, 0
  br i1 %tobool39.not.i, label %land.rhs48.i, label %if.end29.i.dqgrab.exit_crit_edge

if.end29.i.dqgrab.exit_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dqgrab.exit

land.rhs48.i:                                     ; preds = %if.end29.i
  %.b1021.i = load i1, ptr @dqgrab.__already_done.7, align 1
  br i1 %.b1021.i, label %land.rhs48.i.dqgrab.exit_crit_edge, label %if.then59.i, !prof !277

land.rhs48.i.dqgrab.exit_crit_edge:               ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dqgrab.exit

if.then59.i:                                      ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dqgrab.__already_done.7, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 50, i32 noundef 9, ptr noundef null) #13
  br label %dqgrab.exit

dqgrab.exit:                                      ; preds = %if.then59.i, %land.rhs48.i.dqgrab.exit_crit_edge, %if.end29.i.dqgrab.exit_crit_edge
  %call.i.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef %dq_count.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %dq_count.i, i32 1, i32 3, i32 1) #13
  %28 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dq_count.i, ptr %dq_count.i, i32 1, ptr elementtype(i32) %dq_count.i) #13, !srcloc !278
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  %29 = ptrtoint ptr %dq_op to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dq_op, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call85 = call i32 %32(ptr noundef %add.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %dqgrab.exit.if.end92_crit_edge, label %if.then87

dqgrab.exit.if.end92_crit_edge:                   ; preds = %dqgrab.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.then87:                                        ; preds = %dqgrab.exit
  %dq_sb.i = getelementptr i8, ptr %19, i32 148
  %33 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dq_sb.i, align 4
  %s_dquot.i.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 31
  %35 = ptrtoint ptr %s_dquot.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_dquot.i.i, align 8
  %and.i = and i32 %36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i146 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i146, label %if.end.i, label %if.then.i148

if.then.i148:                                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %dq_flags) #13
  br label %clear_dquot_dirty.exit

if.end.i:                                         ; preds = %if.then87
  call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %call3.i = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %dq_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  br label %clear_dquot_dirty.exit

if.end6.i:                                        ; preds = %if.end.i
  %call.i.i.i149 = call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #13
  br i1 %call.i.i.i149, label %if.end.i.i.i, label %if.end6.i.list_del_init.exit.i_crit_edge

if.end6.i.list_del_init.exit.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr i8, ptr %19, i32 4
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %19, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end6.i.list_del_init.exit.i_crit_edge
  %43 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %19, ptr %19, align 4
  %prev.i3.i.i = getelementptr i8, ptr %19, i32 4
  %44 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %19, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  br label %clear_dquot_dirty.exit

clear_dquot_dirty.exit:                           ; preds = %list_del_init.exit.i, %if.then5.i, %if.then.i148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1158)
  %tobool89.not = icmp eq i32 %ret.1158, 0
  %spec.select = select i1 %tobool89.not, i32 %call85, i32 %ret.1158
  br label %if.end92

if.end92:                                         ; preds = %clear_dquot_dirty.exit, %dqgrab.exit.if.end92_crit_edge
  %ret.2 = phi i32 [ %ret.1158, %dqgrab.exit.if.end92_crit_edge ], [ %spec.select, %clear_dquot_dirty.exit ]
  call void @dqput(ptr noundef %add.ptr)
  call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %45 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %dirty, align 4
  %cmp.i143.not = icmp eq ptr %46, %dirty
  br i1 %cmp.i143.not, label %if.end92.while.end_crit_edge, label %if.end92.while.body_crit_edge

if.end92.while.body_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end92.while.end_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end92.while.end_crit_edge, %if.end44.while.end_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.0159, %if.end44.while.end_crit_edge ], [ %ret.2, %if.end92.while.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  br label %for.inc

for.inc:                                          ; preds = %while.end, %if.end41.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.3 = phi i32 [ %ret.1.lcssa, %while.end ], [ %ret.0159, %if.end41.for.inc_crit_edge ], [ %ret.0159, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %cnt.0160, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.cond93.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

land.lhs.true98:                                  ; preds = %for.cond93.preheader
  %47 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_dquot.i, align 8
  %49 = and i32 %48, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %land.lhs.true100, label %land.lhs.true98.for.inc109_crit_edge

land.lhs.true98.for.inc109_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc109

land.lhs.true100:                                 ; preds = %land.lhs.true98
  %dqi_flags.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 0, i32 3
  %51 = ptrtoint ptr %dqi_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %dqi_flags.i, align 4
  %53 = and i32 %52, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool104.not = icmp eq i32 %53, 0
  br i1 %tobool104.not, label %land.lhs.true100.for.inc109_crit_edge, label %if.then105

land.lhs.true100.for.inc109_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc109

if.then105:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %dq_op to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dq_op, align 8
  %write_info = getelementptr inbounds %struct.dquot_operations, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %write_info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_info, align 4
  %call107 = call i32 %57(ptr noundef %sb, i32 noundef 0) #13
  br label %for.inc109

for.inc109:                                       ; preds = %if.then105, %land.lhs.true100.for.inc109_crit_edge, %land.lhs.true98.for.inc109_crit_edge, %for.cond93.preheader.for.inc109_crit_edge
  %58 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %for.inc109.for.inc109.2_crit_edge [
    i32 -1, label %for.inc109.land.lhs.true98.1_crit_edge
    i32 1, label %for.inc109.land.lhs.true98.1_crit_edge165
    i32 2, label %for.inc109.land.lhs.true98.2_crit_edge
  ]

for.inc109.land.lhs.true98.2_crit_edge:           ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true98.2

for.inc109.land.lhs.true98.1_crit_edge165:        ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true98.1

for.inc109.land.lhs.true98.1_crit_edge:           ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true98.1

for.inc109.for.inc109.2_crit_edge:                ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc109.2

land.lhs.true98.1:                                ; preds = %for.inc109.land.lhs.true98.1_crit_edge, %for.inc109.land.lhs.true98.1_crit_edge165
  %59 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_dquot.i, align 8
  %61 = and i32 %60, 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %land.lhs.true100.1, label %land.lhs.true98.1.for.inc109.1_crit_edge

land.lhs.true98.1.for.inc109.1_crit_edge:         ; preds = %land.lhs.true98.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc109.1

land.lhs.true100.1:                               ; preds = %land.lhs.true98.1
  %dqi_flags.i.1 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 1, i32 3
  %63 = ptrtoint ptr %dqi_flags.i.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %dqi_flags.i.1, align 4
  %65 = and i32 %64, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool104.not.1 = icmp eq i32 %65, 0
  br i1 %tobool104.not.1, label %land.lhs.true100.1.for.inc109.1_crit_edge, label %if.then105.1

land.lhs.true100.1.for.inc109.1_crit_edge:        ; preds = %land.lhs.true100.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc109.1

if.then105.1:                                     ; preds = %land.lhs.true100.1
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %dq_op to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dq_op, align 8
  %write_info.1 = getelementptr inbounds %struct.dquot_operations, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %write_info.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_info.1, align 4
  %call107.1 = call i32 %69(ptr noundef %sb, i32 noundef 1) #13
  br label %for.inc109.1

for.inc109.1:                                     ; preds = %if.then105.1, %land.lhs.true100.1.for.inc109.1_crit_edge, %land.lhs.true98.1.for.inc109.1_crit_edge
  %70 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %type, label %for.inc109.1.for.inc109.2_crit_edge [
    i32 -1, label %for.inc109.1.land.lhs.true98.2_crit_edge
    i32 2, label %for.inc109.1.land.lhs.true98.2_crit_edge166
  ]

for.inc109.1.land.lhs.true98.2_crit_edge166:      ; preds = %for.inc109.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true98.2

for.inc109.1.land.lhs.true98.2_crit_edge:         ; preds = %for.inc109.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true98.2

for.inc109.1.for.inc109.2_crit_edge:              ; preds = %for.inc109.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc109.2

land.lhs.true98.2:                                ; preds = %for.inc109.1.land.lhs.true98.2_crit_edge, %for.inc109.1.land.lhs.true98.2_crit_edge166, %for.inc109.land.lhs.true98.2_crit_edge
  %71 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_dquot.i, align 8
  %73 = and i32 %72, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %73)
  %74 = icmp eq i32 %73, 4
  br i1 %74, label %land.lhs.true100.2, label %land.lhs.true98.2.for.inc109.2_crit_edge

land.lhs.true98.2.for.inc109.2_crit_edge:         ; preds = %land.lhs.true98.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc109.2

land.lhs.true100.2:                               ; preds = %land.lhs.true98.2
  %dqi_flags.i.2 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 2, i32 3
  %75 = ptrtoint ptr %dqi_flags.i.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %dqi_flags.i.2, align 4
  %77 = and i32 %76, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool104.not.2 = icmp eq i32 %77, 0
  br i1 %tobool104.not.2, label %land.lhs.true100.2.for.inc109.2_crit_edge, label %if.then105.2

land.lhs.true100.2.for.inc109.2_crit_edge:        ; preds = %land.lhs.true100.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc109.2

if.then105.2:                                     ; preds = %land.lhs.true100.2
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %dq_op to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dq_op, align 8
  %write_info.2 = getelementptr inbounds %struct.dquot_operations, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %write_info.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write_info.2, align 4
  %call107.2 = call i32 %81(ptr noundef %sb, i32 noundef 2) #13
  br label %for.inc109.2

for.inc109.2:                                     ; preds = %if.then105.2, %land.lhs.true100.2.for.inc109.2_crit_edge, %land.lhs.true98.2.for.inc109.2_crit_edge, %for.inc109.1.for.inc109.2_crit_edge, %for.inc109.for.inc109.2_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %82 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 7), i64 noundef 1, i32 noundef %82) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dirty) #13
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_quota_sync(ptr noundef %sb, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_dquot.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31
  %call1 = tail call i32 @dquot_writeback_dquots(ptr noundef %sb, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_dquot.i, align 8
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %2 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_op, align 4
  %sync_fs = getelementptr inbounds %struct.super_operations, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %sync_fs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sync_fs, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.if.end13_crit_edge, label %if.then6

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then6:                                         ; preds = %if.end4
  %call9 = tail call i32 %5(ptr noundef %sb, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then6.if.end13_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end13:                                         ; preds = %if.then6.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev, align 4
  %call14 = tail call i32 @sync_blockdev(ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond.preheader, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end13
  %8 = add i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %if.end21, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end21:                                         ; preds = %for.cond.preheader
  %10 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_dquot.i, align 8
  %12 = and i32 %11, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %if.end24, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end24:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #13
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %i_data = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 46
  tail call void @truncate_inode_pages(ptr noundef %i_data, i64 noundef 0) #13
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %i_rwsem.i53 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i53) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %if.end21.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %20 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %type, label %for.inc.cleanup_crit_edge [
    i32 -1, label %for.inc.if.end21.1_crit_edge
    i32 1, label %for.inc.if.end21.1_crit_edge56
    i32 2, label %for.inc.if.end21.2_crit_edge
  ]

for.inc.if.end21.2_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.2

for.inc.if.end21.1_crit_edge56:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.1

for.inc.if.end21.1_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21.1:                                       ; preds = %for.inc.if.end21.1_crit_edge, %for.inc.if.end21.1_crit_edge56
  %21 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_dquot.i, align 8
  %23 = and i32 %22, 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %if.end24.1, label %if.end21.1.for.inc.1_crit_edge

if.end21.1.for.inc.1_crit_edge:                   ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.end24.1:                                       ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.1 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.1, align 4
  %i_rwsem.i.1 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.1) #13
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.1, align 4
  %i_data.1 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 46
  tail call void @truncate_inode_pages(ptr noundef %i_data.1, i64 noundef 0) #13
  %29 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.1, align 4
  %i_rwsem.i53.1 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i53.1) #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end24.1, %if.end21.1.for.inc.1_crit_edge
  %31 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %type, label %for.inc.1.cleanup_crit_edge [
    i32 -1, label %for.inc.1.if.end21.2_crit_edge
    i32 2, label %for.inc.1.if.end21.2_crit_edge57
  ]

for.inc.1.if.end21.2_crit_edge57:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.2

for.inc.1.if.end21.2_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21.2:                                       ; preds = %for.inc.1.if.end21.2_crit_edge, %for.inc.1.if.end21.2_crit_edge57, %for.inc.if.end21.2_crit_edge
  %32 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_dquot.i, align 8
  %34 = and i32 %33, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %if.end24.2, label %if.end21.2.cleanup_crit_edge

if.end21.2.cleanup_crit_edge:                     ; preds = %if.end21.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24.2:                                       ; preds = %if.end21.2
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.2 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 2
  %36 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.2, align 4
  %i_rwsem.i.2 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.2) #13
  %38 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.2, align 4
  %i_data.2 = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 46
  tail call void @truncate_inode_pages(ptr noundef %i_data.2, i64 noundef 0) #13
  %40 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.2, align 4
  %i_rwsem.i53.2 = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i53.2) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end24.2, %if.end21.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call9, %if.then6.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ 0, %if.end24.2 ], [ 0, %if.end21.2.cleanup_crit_edge ], [ 0, %for.inc.1.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kqid(ptr noundef, [2 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @dquot_alloc(ptr nocapture readnone %sb, i32 %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dquot_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3392) #13
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dqget(ptr noundef %sb, [2 x i32] %qid.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qid.coerce.fca.0.extract = extractvalue [2 x i32] %qid.coerce, 0
  %qid.coerce.fca.1.extract = extractvalue [2 x i32] %qid.coerce, 1
  %call.i = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %qid.coerce) #13
  %0 = ptrtoint ptr %sb to i32
  %shr.i101 = lshr i32 %0, 7
  %xor.i = xor i32 %call.i, %shr.i101
  %sub.i = sub i32 3, %qid.coerce.fca.1.extract
  %mul.i = mul i32 %xor.i, %sub.i
  %.b.i = load i1, ptr @dq_hash_bits, align 4
  %1 = select i1 %.b.i, i32 10, i32 0
  %shr2.i = lshr i32 %mul.i, %1
  %add.i = add i32 %shr2.i, %mul.i
  %.b5.i = load i1, ptr @dq_hash_mask, align 4
  %2 = select i1 %.b5.i, i32 1023, i32 0
  %and.i = and i32 %add.i, %2
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 53
  %3 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_user_ns, align 8
  %call.i102 = tail call i32 @from_kqid(ptr noundef %4, [2 x i32] %qid.coerce) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i102)
  %cmp.i.not = icmp eq i32 %call.i102, -1
  br i1 %cmp.i.not, label %entry.cleanup57_crit_edge, label %if.end

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup57

if.end:                                           ; preds = %entry
  %s_dquot.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31
  %5 = ptrtoint ptr %s_dquot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dquot.i.i.i.i, align 8
  %shl.i.i.i.i = shl nuw i32 1, %qid.coerce.fca.1.extract
  %and.i.i.i = and i32 %6, %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0
  %shl.i.i.i = shl i32 64, %qid.coerce.fca.1.extract
  %and.i.i = and i32 %6, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %7 = select i1 %tobool.i.i.i, i1 %tobool.i.not.i, i1 false
  br i1 %7, label %we_slept.preheader, label %if.end.cleanup57_crit_edge

if.end.cleanup57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup57

we_slept.preheader:                               ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_state_lock) #13
  %8 = ptrtoint ptr %s_dquot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_dquot.i.i.i.i, align 8
  %and.i.i.i105138 = and i32 %9, %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i105138)
  %tobool.i.i.i106139 = icmp ne i32 %and.i.i.i105138, 0
  %and.i.i108140 = and i32 %9, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i108140)
  %tobool.i.not.i109141 = icmp eq i32 %and.i.i108140, 0
  %10 = select i1 %tobool.i.i.i106139, i1 %tobool.i.not.i109141, i1 false
  br i1 %10, label %if.end11.lr.ph, label %we_slept.preheader.if.then9_crit_edge

we_slept.preheader.if.then9_crit_edge:            ; preds = %we_slept.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.end11.lr.ph:                                   ; preds = %we_slept.preheader
  %dq_op.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %qid.coerce.fca.1.extract)
  %switch.i.i = icmp ult i32 %qid.coerce.fca.1.extract, 3
  %tmp.sroa.4.0.insert.ext.i = zext i32 %qid.coerce.fca.1.extract to i64
  %tmp.sroa.0.0.insert.insert.i = or i64 %tmp.sroa.4.0.insert.ext.i, -4294967296
  br label %if.end11

if.then9:                                         ; preds = %if.end20.if.then9_crit_edge, %we_slept.preheader.if.then9_crit_edge
  %empty.0.lcssa = phi ptr [ null, %we_slept.preheader.if.then9_crit_edge ], [ %call.i112, %if.end20.if.then9_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_state_lock) #13
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  br label %out

if.end11:                                         ; preds = %if.end20.if.end11_crit_edge, %if.end11.lr.ph
  %empty.0142 = phi ptr [ null, %if.end11.lr.ph ], [ %call.i112, %if.end20.if.end11_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_state_lock) #13
  %11 = load ptr, ptr @dquot_hash, align 4
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %11, i32 %and.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %dquot.024.i = load ptr, ptr %add.ptr.i, align 4
  %tobool3.not25.i = icmp eq ptr %dquot.024.i, null
  br i1 %tobool3.not25.i, label %if.end11.if.then13_crit_edge, label %if.end11.for.body.i_crit_edge

if.end11.for.body.i_crit_edge:                    ; preds = %if.end11
  br label %for.body.i

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end11.for.body.i_crit_edge
  %dquot.026.i = phi ptr [ %dquot.0.i, %for.inc.i.for.body.i_crit_edge ], [ %dquot.024.i, %if.end11.for.body.i_crit_edge ]
  %dq_sb.i = getelementptr inbounds %struct.dquot, ptr %dquot.026.i, i32 0, i32 7
  %13 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dq_sb.i, align 4
  %cmp.i110 = icmp eq ptr %14, %sb
  br i1 %cmp.i110, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dq_id.i = getelementptr inbounds %struct.dquot, ptr %dquot.026.i, i32 0, i32 8
  %15 = ptrtoint ptr %dq_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack.i = load i32, ptr %dq_id.i, align 8
  %16 = insertvalue [2 x i32] undef, i32 %.unpack.i, 0
  %.elt21.i = getelementptr inbounds %struct.dquot, ptr %dquot.026.i, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %.elt21.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack22.i = load i32, ptr %.elt21.i, align 4
  %18 = insertvalue [2 x i32] %16, i32 %.unpack22.i, 1
  %call.i111 = tail call zeroext i1 @qid_eq([2 x i32] %18, [2 x i32] %qid.coerce) #13
  br i1 %call.i111, label %if.else, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %19 = ptrtoint ptr %dquot.026.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %dquot.0.i = load ptr, ptr %dquot.026.i, align 4
  %tobool3.not.i = icmp eq ptr %dquot.0.i, null
  br i1 %tobool3.not.i, label %for.inc.i.if.then13_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.then13_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then13:                                        ; preds = %for.inc.i.if.then13_crit_edge, %if.end11.if.then13_crit_edge
  %tobool14.not = icmp eq ptr %empty.0142, null
  br i1 %tobool14.not, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.then13
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  %20 = ptrtoint ptr %dq_op.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dq_op.i, align 8
  %alloc_dquot.i = getelementptr inbounds %struct.dquot_operations, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %alloc_dquot.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %alloc_dquot.i, align 4
  %call.i112 = tail call ptr %23(ptr noundef %sb, i32 noundef %qid.coerce.fca.1.extract) #13
  %tobool.not.i = icmp eq ptr %call.i112, null
  br i1 %tobool.not.i, label %if.then19, label %do.body.i

do.body.i:                                        ; preds = %if.then15
  %dq_lock.i = getelementptr inbounds %struct.dquot, ptr %call.i112, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %dq_lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @get_empty_dquot.__key) #13
  %dq_free.i = getelementptr inbounds %struct.dquot, ptr %call.i112, i32 0, i32 2
  %24 = ptrtoint ptr %dq_free.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %dq_free.i, ptr %dq_free.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dquot, ptr %call.i112, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dq_free.i, ptr %prev.i.i, align 4
  %dq_inuse.i = getelementptr inbounds %struct.dquot, ptr %call.i112, i32 0, i32 1
  %26 = ptrtoint ptr %dq_inuse.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %dq_inuse.i, ptr %dq_inuse.i, align 4
  %prev.i18.i = getelementptr inbounds %struct.dquot, ptr %call.i112, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i18.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dq_inuse.i, ptr %prev.i18.i, align 4
  %28 = ptrtoint ptr %call.i112 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %call.i112, align 4
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call.i112, i32 0, i32 1
  %29 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %pprev.i.i, align 4
  %dq_dirty.i = getelementptr inbounds %struct.dquot, ptr %call.i112, i32 0, i32 3
  %30 = ptrtoint ptr %dq_dirty.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %dq_dirty.i, ptr %dq_dirty.i, align 4
  %prev.i19.i = getelementptr inbounds %struct.dquot, ptr %call.i112, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %prev.i19.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dq_dirty.i, ptr %prev.i19.i, align 4
  %dq_sb.i113 = getelementptr inbounds %struct.dquot, ptr %call.i112, i32 0, i32 7
  %32 = ptrtoint ptr %dq_sb.i113 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %sb, ptr %dq_sb.i113, align 4
  br i1 %switch.i.i, label %get_empty_dquot.exit, label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/quota.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #13, !noalias !283, !srcloc !286
  unreachable

get_empty_dquot.exit:                             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %dq_id.i114 = getelementptr inbounds %struct.dquot, ptr %call.i112, i32 0, i32 8
  %33 = ptrtoint ptr %dq_id.i114 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %tmp.sroa.0.0.insert.insert.i, ptr %dq_id.i114, align 8
  %dq_count.i = getelementptr inbounds %struct.dquot, ptr %call.i112, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dq_count.i, i32 noundef 4) #13
  %34 = ptrtoint ptr %dq_count.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 1, ptr %dq_count.i, align 4
  %dq_dqb_lock.i = getelementptr inbounds %struct.dquot, ptr %call.i112, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %dq_dqb_lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @get_empty_dquot.__key.15, i16 noundef signext 3) #13
  br label %if.end20

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @schedule() #13
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %get_empty_dquot.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_state_lock) #13
  %35 = ptrtoint ptr %s_dquot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_dquot.i.i.i.i, align 8
  %and.i.i.i105 = and i32 %36, %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i105)
  %tobool.i.i.i106 = icmp ne i32 %and.i.i.i105, 0
  %and.i.i108 = and i32 %36, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i108)
  %tobool.i.not.i109 = icmp eq i32 %and.i.i108, 0
  %37 = select i1 %tobool.i.i.i106, i1 %tobool.i.not.i109, i1 false
  br i1 %37, label %if.end20.if.end11_crit_edge, label %if.end20.if.then9_crit_edge

if.end20.if.then9_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.end20.if.end11_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end21:                                         ; preds = %if.then13
  %dq_id = getelementptr inbounds %struct.dquot, ptr %empty.0142, i32 0, i32 8
  %38 = ptrtoint ptr %dq_id to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %qid.coerce.fca.0.extract, ptr %dq_id, align 8
  %qid.sroa.5.0.dq_id.sroa_idx = getelementptr inbounds %struct.dquot, ptr %empty.0142, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %qid.sroa.5.0.dq_id.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %qid.coerce.fca.1.extract, ptr %qid.sroa.5.0.dq_id.sroa_idx, align 4
  %dq_inuse.i115 = getelementptr inbounds %struct.dquot, ptr %empty.0142, i32 0, i32 1
  %40 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @inuse_list, i32 0, i32 1), align 4
  %call.i.i.i116 = tail call zeroext i1 @__list_add_valid(ptr noundef %dq_inuse.i115, ptr noundef %40, ptr noundef nonnull @inuse_list) #13
  br i1 %call.i.i.i116, label %if.end.i.i.i, label %if.end21.put_inuse.exit_crit_edge

if.end21.put_inuse.exit_crit_edge:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_inuse.exit

if.end.i.i.i:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %dq_inuse.i115, ptr getelementptr inbounds (%struct.list_head, ptr @inuse_list, i32 0, i32 1), align 4
  %41 = ptrtoint ptr %dq_inuse.i115 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @inuse_list, ptr %dq_inuse.i115, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dquot, ptr %empty.0142, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %prev3.i.i.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %dq_inuse.i115, ptr %40, align 4
  br label %put_inuse.exit

put_inuse.exit:                                   ; preds = %if.end.i.i.i, %if.end21.put_inuse.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %44 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 5), i64 noundef 1, i32 noundef %44) #13
  %45 = load ptr, ptr @dquot_hash, align 4
  %dq_sb.i117 = getelementptr inbounds %struct.dquot, ptr %empty.0142, i32 0, i32 7
  %46 = ptrtoint ptr %dq_sb.i117 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dq_sb.i117, align 4
  %48 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %.unpack.i119 = load i32, ptr %dq_id, align 8
  %49 = insertvalue [2 x i32] undef, i32 %.unpack.i119, 0
  %50 = ptrtoint ptr %qid.sroa.5.0.dq_id.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack4.i = load i32, ptr %qid.sroa.5.0.dq_id.sroa_idx, align 4
  %51 = insertvalue [2 x i32] %49, i32 %.unpack4.i, 1
  %call.i.i120 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %51) #13
  %52 = ptrtoint ptr %47 to i32
  %shr.i.i = lshr i32 %52, 7
  %xor.i.i = xor i32 %call.i.i120, %shr.i.i
  %sub.i.i = sub i32 3, %.unpack4.i
  %mul.i.i = mul i32 %xor.i.i, %sub.i.i
  %.b.i.i = load i1, ptr @dq_hash_bits, align 4
  %53 = select i1 %.b.i.i, i32 10, i32 0
  %shr2.i.i = lshr i32 %mul.i.i, %53
  %add.i.i = add i32 %shr2.i.i, %mul.i.i
  %.b5.i.i = load i1, ptr @dq_hash_mask, align 4
  %54 = select i1 %.b5.i.i, i32 1023, i32 0
  %and.i.i121 = and i32 %add.i.i, %54
  %add.ptr.i122 = getelementptr %struct.hlist_head, ptr %45, i32 %and.i.i121
  %55 = ptrtoint ptr %add.ptr.i122 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i122, align 4
  %57 = ptrtoint ptr %empty.0142 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %56, ptr %empty.0142, align 4
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %put_inuse.exit.insert_dquot_hash.exit_crit_edge, label %do.body12.i.i

put_inuse.exit.insert_dquot_hash.exit_crit_edge:  ; preds = %put_inuse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %insert_dquot_hash.exit

do.body12.i.i:                                    ; preds = %put_inuse.exit
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i.i123 = getelementptr inbounds %struct.hlist_node, ptr %56, i32 0, i32 1
  %58 = ptrtoint ptr %pprev.i.i123 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %empty.0142, ptr %pprev.i.i123, align 4
  br label %insert_dquot_hash.exit

insert_dquot_hash.exit:                           ; preds = %do.body12.i.i, %put_inuse.exit.insert_dquot_hash.exit_crit_edge
  %59 = ptrtoint ptr %add.ptr.i122 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %empty.0142, ptr %add.ptr.i122, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %empty.0142, i32 0, i32 1
  %60 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %add.ptr.i122, ptr %pprev34.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  br label %if.end27

if.else:                                          ; preds = %land.lhs.true.i
  %dq_count = getelementptr inbounds %struct.dquot, ptr %dquot.026.i, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dq_count, i32 noundef 4) #13
  %61 = ptrtoint ptr %dq_count to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %dq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool23.not = icmp eq i32 %62, 0
  br i1 %tobool23.not, label %if.then24, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then24:                                        ; preds = %if.else
  %dq_free.i124 = getelementptr inbounds %struct.dquot, ptr %dquot.026.i, i32 0, i32 2
  %63 = ptrtoint ptr %dq_free.i124 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %dq_free.i124, align 4
  %cmp.i.not.i = icmp eq ptr %64, %dq_free.i124
  br i1 %cmp.i.not.i, label %if.then24.if.end25_crit_edge, label %if.end.i

if.then24.if.end25_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.end.i:                                         ; preds = %if.then24
  %call.i.i.i125 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dq_free.i124) #13
  br i1 %call.i.i.i125, label %if.end.i.i.i126, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i126:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.dquot, ptr %dquot.026.i, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i.i, align 4
  %67 = ptrtoint ptr %dq_free.i124 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dq_free.i124, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev1.i.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %66, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i126, %if.end.i.list_del_init.exit.i_crit_edge
  %71 = ptrtoint ptr %dq_free.i124 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %dq_free.i124, ptr %dq_free.i124, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.dquot, ptr %dquot.026.i, i32 0, i32 2, i32 1
  %72 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %dq_free.i124, ptr %prev.i3.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %73 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 6), i64 noundef -1, i32 noundef %73) #13
  br label %if.end25

if.end25:                                         ; preds = %list_del_init.exit.i, %if.then24.if.end25_crit_edge, %if.else.if.end25_crit_edge
  %call.i.i100 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dq_count, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %dq_count, i32 1, i32 3, i32 1) #13
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dq_count, ptr %dq_count, i32 1, ptr elementtype(i32) %dq_count) #13, !srcloc !278
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %75 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 4), i64 noundef 1, i32 noundef %75) #13
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %insert_dquot_hash.exit
  %dquot.0 = phi ptr [ %dquot.026.i, %if.end25 ], [ %empty.0142, %insert_dquot_hash.exit ]
  %empty.1 = phi ptr [ %empty.0142, %if.end25 ], [ null, %insert_dquot_hash.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %76 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 0), i64 noundef 1, i32 noundef %76) #13
  %dq_lock.i127 = getelementptr inbounds %struct.dquot, ptr %dquot.0, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dq_lock.i127, i32 noundef 0) #13
  tail call void @mutex_unlock(ptr noundef %dq_lock.i127) #13
  %dq_flags = getelementptr inbounds %struct.dquot, ptr %dquot.0, i32 0, i32 10
  %77 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %dq_flags, align 4
  %79 = and i32 %78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool29.not = icmp eq i32 %79, 0
  br i1 %tobool29.not, label %if.then30, label %if.end27.do.end_crit_edge

if.end27.do.end_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then30:                                        ; preds = %if.end27
  %80 = ptrtoint ptr %dq_op.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dq_op.i, align 8
  %acquire_dquot = getelementptr inbounds %struct.dquot_operations, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %acquire_dquot to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %acquire_dquot, align 4
  %call31 = tail call i32 %83(ptr noundef nonnull %dquot.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %cleanup, label %if.then30.do.end_crit_edge

if.then30.do.end_crit_edge:                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

cleanup:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dqput(ptr noundef nonnull %dquot.0)
  %84 = inttoptr i32 %call31 to ptr
  br label %out

do.end:                                           ; preds = %if.then30.do.end_crit_edge, %if.end27.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !287
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot.0, i32 0, i32 7
  %85 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dq_sb, align 4
  %tobool40.not = icmp eq ptr %86, null
  br i1 %tobool40.not, label %do.body45, label %do.end.out_crit_edge, !prof !282

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body45:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/dquot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 917, 0\0A.popsection", ""() #13, !srcloc !288
  unreachable

out:                                              ; preds = %do.end.out_crit_edge, %cleanup, %if.then9
  %dquot.3 = phi ptr [ %dquot.0, %do.end.out_crit_edge ], [ %84, %cleanup ], [ inttoptr (i32 -3 to ptr), %if.then9 ]
  %empty.2 = phi ptr [ %empty.1, %do.end.out_crit_edge ], [ %empty.1, %cleanup ], [ %empty.0.lcssa, %if.then9 ]
  %tobool54.not = icmp eq ptr %empty.2, null
  br i1 %tobool54.not, label %out.cleanup57_crit_edge, label %if.then55

out.cleanup57_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup57

if.then55:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i128 = getelementptr inbounds %struct.dquot, ptr %empty.2, i32 0, i32 7
  %87 = ptrtoint ptr %dq_sb.i128 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dq_sb.i128, align 4
  %dq_op.i129 = getelementptr inbounds %struct.super_block, ptr %88, i32 0, i32 7
  %89 = ptrtoint ptr %dq_op.i129 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dq_op.i129, align 8
  %destroy_dquot.i = getelementptr inbounds %struct.dquot_operations, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %destroy_dquot.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %destroy_dquot.i, align 4
  tail call void %92(ptr noundef nonnull %empty.2) #13
  br label %cleanup57

cleanup57:                                        ; preds = %if.then55, %out.cleanup57_crit_edge, %if.end.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.0 = phi ptr [ %dquot.3, %if.then55 ], [ %dquot.3, %out.cleanup57_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup57_crit_edge ], [ inttoptr (i32 -3 to ptr), %if.end.cleanup57_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_initialize(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__dquot_initialize(ptr noundef %inode, i32 noundef -1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dquot_initialize(ptr noundef %inode, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %got = alloca [3 x ptr], align 4
  %projid = alloca %struct.kprojid_t, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %got) #13
  %0 = call ptr @memset(ptr %got, i32 0, i32 12)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %3 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %dquot_active.exit, label %entry.cleanup79_crit_edge

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

dquot_active.exit:                                ; preds = %entry
  %s_dquot.i.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 31
  %5 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dquot.i.i.i, align 8
  %and2.i.i.i = and i32 %6, 7
  %div.i2.i.i = lshr i32 %6, 6
  %and2.i.i6.i = and i32 %div.i2.i.i, 7
  %neg.i = xor i32 %and2.i.i6.i, -1
  %and2.i = and i32 %and2.i.i.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  br i1 %tobool.not, label %dquot_active.exit.cleanup79_crit_edge, label %if.end

dquot_active.exit.cleanup79_crit_edge:            ; preds = %dquot_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end:                                           ; preds = %dquot_active.exit
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 6
  %7 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_op.i, align 4
  %get_dquots.i = getelementptr inbounds %struct.super_operations, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %get_dquots.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_dquots.i, align 4
  %call.i = tail call ptr %10(ptr noundef %inode) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %type)
  %cmp2.not = icmp eq i32 %type, -1
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %projid) #13
  %11 = add i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %if.end5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %if.end8, label %if.end5.for.inc_crit_edge

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end8:                                          ; preds = %if.end5
  %15 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_dquot.i.i.i, align 8
  %17 = and i32 %16, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %sw.epilog, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.epilog:                                        ; preds = %if.end8
  %19 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack136 = load i32, ptr %i_uid, align 4
  %.fca.0.insert91 = insertvalue [2 x i32] poison, i32 %.unpack136, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert91, i32 0, 1
  %call23 = call ptr @dqget(ptr noundef %2, [2 x i32] %.fca.1.insert)
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %sw.epilog.if.end31_crit_edge

sw.epilog.if.end31_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then25:                                        ; preds = %sw.epilog
  %cmp27.not = icmp eq ptr %call23, inttoptr (i32 -3 to ptr)
  br i1 %cmp27.not, label %if.then25.if.end31_crit_edge, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.end31:                                         ; preds = %if.then25.if.end31_crit_edge, %sw.epilog.if.end31_crit_edge
  %dquot.0 = phi ptr [ %call23, %sw.epilog.if.end31_crit_edge ], [ null, %if.then25.if.end31_crit_edge ]
  %20 = ptrtoint ptr %got to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dquot.0, ptr %got, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.then25.2.cleanup_crit_edge, %if.then25.1.cleanup_crit_edge, %if.then25.cleanup_crit_edge
  %call23.lcssa = phi ptr [ %call23, %if.then25.cleanup_crit_edge ], [ %call23.1, %if.then25.1.cleanup_crit_edge ], [ %call23.2, %if.then25.2.cleanup_crit_edge ]
  %21 = ptrtoint ptr %call23.lcssa to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %projid) #13
  br label %out_put

for.inc:                                          ; preds = %if.end31, %if.end8.for.inc_crit_edge, %if.end5.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %init_needed.1.ph = phi i32 [ 0, %if.end8.for.inc_crit_edge ], [ 0, %if.end5.for.inc_crit_edge ], [ 0, %if.end.for.inc_crit_edge ], [ 1, %if.end31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %projid) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %projid) #13
  %22 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %type, label %for.inc.for.inc.1_crit_edge [
    i32 -1, label %for.inc.if.end5.1_crit_edge
    i32 1, label %for.inc.if.end5.1_crit_edge175
  ]

for.inc.if.end5.1_crit_edge175:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.1

for.inc.if.end5.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.end5.1:                                        ; preds = %for.inc.if.end5.1_crit_edge, %for.inc.if.end5.1_crit_edge175
  %arrayidx.1 = getelementptr ptr, ptr %call.i, i32 1
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.1, align 4
  %tobool6.not.1 = icmp eq ptr %24, null
  br i1 %tobool6.not.1, label %if.end8.1, label %if.end5.1.for.inc.1_crit_edge

if.end5.1.for.inc.1_crit_edge:                    ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.end8.1:                                        ; preds = %if.end5.1
  %25 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_dquot.i.i.i, align 8
  %27 = and i32 %26, 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %sw.epilog.1, label %if.end8.1.for.inc.1_crit_edge

if.end8.1.for.inc.1_crit_edge:                    ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

sw.epilog.1:                                      ; preds = %if.end8.1
  %29 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack.1 = load i32, ptr %i_gid, align 8
  %.fca.0.insert91.1 = insertvalue [2 x i32] poison, i32 %.unpack.1, 0
  %.fca.1.insert.1 = insertvalue [2 x i32] %.fca.0.insert91.1, i32 1, 1
  %call23.1 = call ptr @dqget(ptr noundef %2, [2 x i32] %.fca.1.insert.1)
  %cmp.i.1 = icmp ugt ptr %call23.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.then25.1, label %sw.epilog.1.if.end31.1_crit_edge

sw.epilog.1.if.end31.1_crit_edge:                 ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.1

if.then25.1:                                      ; preds = %sw.epilog.1
  %cmp27.not.1 = icmp eq ptr %call23.1, inttoptr (i32 -3 to ptr)
  br i1 %cmp27.not.1, label %if.then25.1.if.end31.1_crit_edge, label %if.then25.1.cleanup_crit_edge

if.then25.1.cleanup_crit_edge:                    ; preds = %if.then25.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then25.1.if.end31.1_crit_edge:                 ; preds = %if.then25.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.1

if.end31.1:                                       ; preds = %if.then25.1.if.end31.1_crit_edge, %sw.epilog.1.if.end31.1_crit_edge
  %dquot.0.1 = phi ptr [ %call23.1, %sw.epilog.1.if.end31.1_crit_edge ], [ null, %if.then25.1.if.end31.1_crit_edge ]
  %arrayidx32.1 = getelementptr inbounds [3 x ptr], ptr %got, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dquot.0.1, ptr %arrayidx32.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end31.1, %if.end8.1.for.inc.1_crit_edge, %if.end5.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %init_needed.1.ph.1 = phi i32 [ %init_needed.1.ph, %if.end8.1.for.inc.1_crit_edge ], [ %init_needed.1.ph, %if.end5.1.for.inc.1_crit_edge ], [ %init_needed.1.ph, %for.inc.for.inc.1_crit_edge ], [ 1, %if.end31.1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %projid) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %projid) #13
  %31 = ptrtoint ptr %projid to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %projid, align 4, !annotation !274
  %32 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %type, label %for.inc.1.for.inc.2_crit_edge [
    i32 -1, label %for.inc.1.if.end5.2_crit_edge
    i32 2, label %for.inc.1.if.end5.2_crit_edge176
  ]

for.inc.1.if.end5.2_crit_edge176:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.2

for.inc.1.if.end5.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.end5.2:                                        ; preds = %for.inc.1.if.end5.2_crit_edge, %for.inc.1.if.end5.2_crit_edge176
  %arrayidx.2 = getelementptr ptr, ptr %call.i, i32 2
  %33 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.2, align 4
  %tobool6.not.2 = icmp eq ptr %34, null
  br i1 %tobool6.not.2, label %if.end8.2, label %if.end5.2.for.inc.2_crit_edge

if.end5.2.for.inc.2_crit_edge:                    ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.end8.2:                                        ; preds = %if.end5.2
  %35 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_dquot.i.i.i, align 8
  %37 = and i32 %36, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %sw.bb15.2, label %if.end8.2.for.inc.2_crit_edge

if.end8.2.for.inc.2_crit_edge:                    ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

sw.bb15.2:                                        ; preds = %if.end8.2
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %dq_op.2 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %dq_op.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dq_op.2, align 8
  %get_projid.2 = getelementptr inbounds %struct.dquot_operations, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %get_projid.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %get_projid.2, align 4
  %call17.2 = call i32 %44(ptr noundef %inode, ptr noundef nonnull %projid) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.2)
  %tobool18.not.2 = icmp eq i32 %call17.2, 0
  br i1 %tobool18.not.2, label %sw.epilog.2, label %sw.bb15.2.for.inc.2.thread_crit_edge

sw.bb15.2.for.inc.2.thread_crit_edge:             ; preds = %sw.bb15.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.thread

sw.epilog.2:                                      ; preds = %sw.bb15.2
  %45 = ptrtoint ptr %projid to i32
  call void @__asan_load4_noabort(i32 %45)
  %.fca.0.load.2 = load i32, ptr %projid, align 4
  %.fca.0.insert91.2 = insertvalue [2 x i32] poison, i32 %.fca.0.load.2, 0
  %.fca.1.insert.2 = insertvalue [2 x i32] %.fca.0.insert91.2, i32 2, 1
  %call23.2 = call ptr @dqget(ptr noundef %2, [2 x i32] %.fca.1.insert.2)
  %cmp.i.2 = icmp ugt ptr %call23.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.then25.2, label %sw.epilog.2.if.end31.2_crit_edge

sw.epilog.2.if.end31.2_crit_edge:                 ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.2

if.then25.2:                                      ; preds = %sw.epilog.2
  %cmp27.not.2 = icmp eq ptr %call23.2, inttoptr (i32 -3 to ptr)
  br i1 %cmp27.not.2, label %if.then25.2.if.end31.2_crit_edge, label %if.then25.2.cleanup_crit_edge

if.then25.2.cleanup_crit_edge:                    ; preds = %if.then25.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then25.2.if.end31.2_crit_edge:                 ; preds = %if.then25.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.2

if.end31.2:                                       ; preds = %if.then25.2.if.end31.2_crit_edge, %sw.epilog.2.if.end31.2_crit_edge
  %dquot.0.2 = phi ptr [ %call23.2, %sw.epilog.2.if.end31.2_crit_edge ], [ null, %if.then25.2.if.end31.2_crit_edge ]
  %arrayidx32.2 = getelementptr inbounds [3 x ptr], ptr %got, i32 0, i32 2
  %46 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dquot.0.2, ptr %arrayidx32.2, align 4
  br label %for.inc.2.thread

for.inc.2.thread:                                 ; preds = %if.end31.2, %sw.bb15.2.for.inc.2.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %projid) #13
  br label %if.end38

for.inc.2:                                        ; preds = %if.end8.2.for.inc.2_crit_edge, %if.end5.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %projid) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init_needed.1.ph.1)
  %tobool36.not = icmp eq i32 %init_needed.1.ph.1, 0
  br i1 %tobool36.not, label %for.inc.2.cleanup79_crit_edge, label %for.inc.2.if.end38_crit_edge

for.inc.2.if.end38_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

for.inc.2.cleanup79_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end38:                                         ; preds = %for.inc.2.if.end38_crit_edge, %for.inc.2.thread
  call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #13
  %47 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_flags.i, align 4
  %and = and i32 %48, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %for.cond42.preheader, label %if.end38.out_lock_crit_edge

if.end38.out_lock_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_lock

for.cond42.preheader:                             ; preds = %if.end38
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  br label %for.body44

for.body44:                                       ; preds = %for.inc76.for.body44_crit_edge, %for.cond42.preheader
  %cnt.1171 = phi i32 [ 0, %for.cond42.preheader ], [ %inc77, %for.inc76.for.body44_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.1171, i32 %type)
  %cmp47.not = icmp eq i32 %cnt.1171, %type
  %or.cond137 = select i1 %cmp2.not, i1 true, i1 %cmp47.not
  br i1 %or.cond137, label %if.end49, label %for.body44.for.inc76_crit_edge

for.body44.for.inc76_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc76

if.end49:                                         ; preds = %for.body44
  %49 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_dquot.i.i.i, align 8
  %shl.i.i.i.i140 = shl nuw nsw i32 1, %cnt.1171
  %and.i.i.i141 = and i32 %50, %shl.i.i.i.i140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i141)
  %tobool.i.i.i142 = icmp ne i32 %and.i.i.i141, 0
  %shl.i.i.i143 = shl nuw nsw i32 64, %cnt.1171
  %and.i.i144 = and i32 %50, %shl.i.i.i143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i144)
  %tobool.i.not.i145 = icmp eq i32 %and.i.i144, 0
  %51 = select i1 %tobool.i.i.i142, i1 %tobool.i.not.i145, i1 false
  br i1 %51, label %if.end52, label %if.end49.for.inc76_crit_edge

if.end49.for.inc76_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc76

if.end52:                                         ; preds = %if.end49
  %arrayidx53 = getelementptr [3 x ptr], ptr %got, i32 0, i32 %cnt.1171
  %52 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx53, align 4
  %tobool54.not = icmp eq ptr %53, null
  br i1 %tobool54.not, label %if.end52.for.inc76_crit_edge, label %if.end56

if.end52.for.inc76_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc76

if.end56:                                         ; preds = %if.end52
  %arrayidx57 = getelementptr ptr, ptr %call.i, i32 %cnt.1171
  %54 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx57, align 4
  %tobool58.not = icmp eq ptr %55, null
  br i1 %tobool58.not, label %if.then59, label %if.end56.for.inc76_crit_edge

if.end56.for.inc76_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc76

if.then59:                                        ; preds = %if.end56
  %56 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %arrayidx57, align 4
  %57 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx53, align 4
  %58 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i_sb, align 4
  %dq_op.i = getelementptr inbounds %struct.super_block, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %dq_op.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dq_op.i, align 8
  %get_reserved_space.i = getelementptr inbounds %struct.dquot_operations, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %get_reserved_space.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %get_reserved_space.i, align 4
  %tobool.not.i147 = icmp eq ptr %63, null
  br i1 %tobool.not.i147, label %if.then59.for.inc76_crit_edge, label %if.end.i148

if.then59.for.inc76_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc76

if.end.i148:                                      ; preds = %if.then59
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #13
  %64 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_sb, align 4
  %dq_op.i.i = getelementptr inbounds %struct.super_block, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %dq_op.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dq_op.i.i, align 8
  %get_reserved_space.i.i = getelementptr inbounds %struct.dquot_operations, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %get_reserved_space.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %get_reserved_space.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i, label %if.end.i148.for.inc76.sink.split_crit_edge, label %inode_get_rsv_space.exit

if.end.i148.for.inc76.sink.split_crit_edge:       ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc76.sink.split

inode_get_rsv_space.exit:                         ; preds = %if.end.i148
  %call.i.i.i = call ptr %69(ptr noundef %inode) #13
  %70 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %call.i.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %71)
  %tobool64.not = icmp eq i64 %71, 0
  br i1 %tobool64.not, label %inode_get_rsv_space.exit.for.inc76_crit_edge, label %if.then67, !prof !277

inode_get_rsv_space.exit.for.inc76_crit_edge:     ; preds = %inode_get_rsv_space.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc76

if.then67:                                        ; preds = %inode_get_rsv_space.exit
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #13
  %72 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb, align 4
  %dq_op.i151 = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %dq_op.i151 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dq_op.i151, align 8
  %get_reserved_space.i152 = getelementptr inbounds %struct.dquot_operations, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %get_reserved_space.i152 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %get_reserved_space.i152, align 4
  %tobool.not.i153 = icmp eq ptr %77, null
  br i1 %tobool.not.i153, label %if.then67.__inode_get_rsv_space.exit_crit_edge, label %inode_reserved_space.exit.i

if.then67.__inode_get_rsv_space.exit_crit_edge:   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #15
  br label %__inode_get_rsv_space.exit

inode_reserved_space.exit.i:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = call ptr %77(ptr noundef %inode) #13
  %78 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %call.i.i, align 8
  br label %__inode_get_rsv_space.exit

__inode_get_rsv_space.exit:                       ; preds = %inode_reserved_space.exit.i, %if.then67.__inode_get_rsv_space.exit_crit_edge
  %retval.0.i154 = phi i64 [ %79, %inode_reserved_space.exit.i ], [ 0, %if.then67.__inode_get_rsv_space.exit_crit_edge ]
  %80 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx57, align 4
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %81, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %dq_dqb_lock) #13
  %82 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx57, align 4
  %dqb_rsvspace = getelementptr inbounds %struct.dquot, ptr %83, i32 0, i32 11, i32 3
  %84 = ptrtoint ptr %dqb_rsvspace to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %dqb_rsvspace, align 8
  %add = add i64 %85, %retval.0.i154
  store i64 %add, ptr %dqb_rsvspace, align 8
  %86 = load ptr, ptr %arrayidx57, align 4
  %dq_dqb_lock72 = getelementptr inbounds %struct.dquot, ptr %86, i32 0, i32 5
  call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock72) #13
  br label %for.inc76.sink.split

for.inc76.sink.split:                             ; preds = %__inode_get_rsv_space.exit, %if.end.i148.for.inc76.sink.split_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #13
  br label %for.inc76

for.inc76:                                        ; preds = %for.inc76.sink.split, %inode_get_rsv_space.exit.for.inc76_crit_edge, %if.then59.for.inc76_crit_edge, %if.end56.for.inc76_crit_edge, %if.end52.for.inc76_crit_edge, %if.end49.for.inc76_crit_edge, %for.body44.for.inc76_crit_edge
  %inc77 = add nuw nsw i32 %cnt.1171, 1
  %exitcond.not = icmp eq i32 %inc77, 3
  br i1 %exitcond.not, label %for.inc76.out_lock_crit_edge, label %for.inc76.for.body44_crit_edge

for.inc76.for.body44_crit_edge:                   ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body44

for.inc76.out_lock_crit_edge:                     ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_lock

out_lock:                                         ; preds = %for.inc76.out_lock_crit_edge, %if.end38.out_lock_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #13
  br label %out_put

out_put:                                          ; preds = %out_lock, %cleanup
  %ret.2 = phi i32 [ %21, %cleanup ], [ 0, %out_lock ]
  %87 = ptrtoint ptr %got to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %got, align 4
  call void @dqput(ptr noundef %88) #13
  %arrayidx.1.i = getelementptr inbounds ptr, ptr %got, i32 1
  %89 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.1.i, align 4
  call void @dqput(ptr noundef %90) #13
  %arrayidx.2.i = getelementptr inbounds ptr, ptr %got, i32 2
  %91 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.2.i, align 4
  call void @dqput(ptr noundef %92) #13
  br label %cleanup79

cleanup79:                                        ; preds = %out_put, %for.inc.2.cleanup79_crit_edge, %dquot_active.exit.cleanup79_crit_edge, %entry.cleanup79_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_put ], [ 0, %dquot_active.exit.cleanup79_crit_edge ], [ 0, %for.inc.2.cleanup79_crit_edge ], [ 0, %entry.cleanup79_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %got) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dquot_initialize_needed(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %dquot_active.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

dquot_active.exit:                                ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_dquot.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_dquot.i.i.i, align 8
  %and2.i.i.i = and i32 %5, 7
  %div.i2.i.i = lshr i32 %5, 6
  %and2.i.i6.i = and i32 %div.i2.i.i, 7
  %neg.i = xor i32 %and2.i.i6.i, -1
  %and2.i = and i32 %and2.i.i.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  br i1 %tobool.not, label %dquot_active.exit.cleanup_crit_edge, label %if.end

dquot_active.exit.cleanup_crit_edge:              ; preds = %dquot_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dquot_active.exit
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_op.i, align 4
  %get_dquots.i = getelementptr inbounds %struct.super_operations, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %get_dquots.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_dquots.i, align 4
  %call.i = tail call ptr %11(ptr noundef %inode) #13
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_dquot.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 31
  %16 = ptrtoint ptr %s_dquot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_dquot.i.i.i.i, align 8
  %18 = and i32 %17, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr ptr, ptr %call.i, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1, align 4
  %tobool2.not.1 = icmp eq ptr %21, null
  br i1 %tobool2.not.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %22 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i, align 4
  %s_dquot.i.i.i.i.1 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 31
  %24 = ptrtoint ptr %s_dquot.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_dquot.i.i.i.i.1, align 8
  %26 = and i32 %25, 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %land.lhs.true.1.cleanup_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr ptr, ptr %call.i, i32 2
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.2, align 4
  %tobool2.not.2 = icmp eq ptr %29, null
  br i1 %tobool2.not.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %30 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i, align 4
  %s_dquot.i.i.i.i.2 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 31
  %32 = ptrtoint ptr %s_dquot.i.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_dquot.i.i.i.i.2, align 8
  %34 = and i32 %33, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %land.lhs.true.2.cleanup_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.2, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %dquot_active.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %dquot_active.exit.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %land.lhs.true.1.cleanup_crit_edge ], [ true, %land.lhs.true.2.cleanup_crit_edge ], [ false, %for.inc.2 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dquot_drop(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_op.i, align 4
  %get_dquots.i = getelementptr inbounds %struct.super_operations, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %get_dquots.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_dquots.i, align 4
  %call.i = tail call ptr %7(ptr noundef %inode) #13
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %for.cond, label %if.end.if.then5.critedge_crit_edge

if.end.if.then5.critedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.critedge

for.cond:                                         ; preds = %if.end
  %arrayidx.1 = getelementptr ptr, ptr %call.i, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool1.not.1 = icmp eq ptr %11, null
  br i1 %tobool1.not.1, label %for.cond.1, label %for.cond.if.then5.critedge_crit_edge

for.cond.if.then5.critedge_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.critedge

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr ptr, ptr %call.i, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool1.not.2 = icmp eq ptr %13, null
  br i1 %tobool1.not.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.1.if.then5.critedge_crit_edge

for.cond.1.if.then5.critedge_crit_edge:           ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.critedge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5.critedge:                                ; preds = %for.cond.1.if.then5.critedge_crit_edge, %for.cond.if.then5.critedge_crit_edge, %if.end.if.then5.critedge_crit_edge
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_op.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %s_op.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_op.i.i, align 4
  %get_dquots.i.i = getelementptr inbounds %struct.super_operations, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %get_dquots.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_dquots.i.i, align 4
  %call.i.i = tail call ptr %19(ptr noundef %inode) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #13
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i.i, align 4
  store ptr null, ptr %call.i.i, align 4
  %arrayidx.1.i = getelementptr ptr, ptr %call.i.i, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.1.i, align 4
  store ptr null, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr ptr, ptr %call.i.i, i32 2
  %24 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.2.i, align 4
  store ptr null, ptr %arrayidx.2.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #13
  tail call void @dqput(ptr noundef %21) #13
  tail call void @dqput(ptr noundef %23) #13
  tail call void @dqput(ptr noundef %25) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then5.critedge, %for.cond.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__dquot_alloc_space(ptr noundef %inode, i64 noundef %number, i32 noundef %flags) #0 align 64 {
entry:
  %warn = alloca [3 x %struct.dquot_warn], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %warn) #13
  %0 = call ptr @memset(ptr %warn, i32 255, i32 48)
  %and = and i32 %flags, 2
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %1 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %dquot_active.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

dquot_active.exit:                                ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_dquot.i.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 31
  %5 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dquot.i.i.i, align 8
  %and2.i.i.i = and i32 %6, 7
  %div.i2.i.i = lshr i32 %6, 6
  %and2.i.i6.i = and i32 %div.i2.i.i, 7
  %neg.i = xor i32 %and2.i.i6.i, -1
  %and2.i = and i32 %and2.i.i.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  br i1 %tobool.not, label %dquot_active.exit.if.then_crit_edge, label %for.body.preheader

dquot_active.exit.if.then_crit_edge:              ; preds = %dquot_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.body.preheader:                               ; preds = %dquot_active.exit
  %w_type = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %w_type to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %w_type, align 4
  %w_type.1 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %w_type.1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %w_type.1, align 4
  %w_type.2 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %w_type.2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %w_type.2, align 4
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_op.i, align 4
  %get_dquots.i = getelementptr inbounds %struct.super_operations, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %get_dquots.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_dquots.i, align 4
  %call.i116 = tail call ptr %15(ptr noundef %inode) #13
  %call.i117 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @dquot_srcu) #13
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dquot_srcu, i32 0, i32 16)) #13
  %i_lock8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  %16 = ptrtoint ptr %call.i116 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i116, align 4
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %for.body.preheader.for.inc49_crit_edge, label %if.end15

for.body.preheader.for.inc49_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc49

if.then:                                          ; preds = %dquot_active.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #13
  %i_sb.i113 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i113 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i113, align 4
  %dq_op.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %dq_op.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dq_op.i, align 8
  %get_reserved_space.i = getelementptr inbounds %struct.dquot_operations, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %get_reserved_space.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_reserved_space.i, align 4
  %tobool.not.i114 = icmp eq ptr %23, null
  br i1 %tobool.not.i114, label %do.body4.i, label %inode_reserved_space.exit, !prof !282

do.body4.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/dquot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1617, 0\0A.popsection", ""() #13, !srcloc !289
  unreachable

inode_reserved_space.exit:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr %23(ptr noundef %inode) #13
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %call.i, align 8
  %add = add i64 %25, %number
  store i64 %add, ptr %call.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  br label %out

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @inode_add_bytes(ptr noundef %inode, i64 noundef %number) #13
  br label %out

if.end15:                                         ; preds = %for.body.preheader
  br i1 %tobool16.not, label %if.else21, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = call fastcc i32 @dquot_add_space(ptr noundef nonnull %17, i64 noundef 0, i64 noundef %number, i32 noundef %flags, ptr noundef nonnull %warn)
  br label %if.end25

if.else21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = call fastcc i32 @dquot_add_space(ptr noundef nonnull %17, i64 noundef %number, i64 noundef 0, i32 noundef %flags, ptr noundef nonnull %warn)
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then17
  %ret.1 = phi i32 [ %call20, %if.then17 ], [ %call24, %if.else21 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool26.not = icmp eq i32 %ret.1, 0
  br i1 %tobool26.not, label %if.end25.for.inc49_crit_edge, label %if.end25.for.end46_crit_edge

if.end25.for.end46_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end46

if.end25.for.inc49_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc49

for.body30:                                       ; preds = %if.end25.2.for.body30_crit_edge, %if.end25.1.for.body30_crit_edge
  %cmp29 = phi i1 [ true, %if.end25.2.for.body30_crit_edge ], [ false, %if.end25.1.for.body30_crit_edge ]
  %cnt.1146.lcssa.ph = phi i32 [ 1, %if.end25.2.for.body30_crit_edge ], [ 0, %if.end25.1.for.body30_crit_edge ]
  %ret.1.lcssa.ph = phi i32 [ %ret.1.2, %if.end25.2.for.body30_crit_edge ], [ %ret.1.1, %if.end25.1.for.body30_crit_edge ]
  %arrayidx31 = getelementptr ptr, ptr %call.i116, i32 %cnt.1146.lcssa.ph
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %27, null
  br i1 %tobool32.not, label %for.body30.for.inc44_crit_edge, label %if.end34

for.body30.for.inc44_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc44

if.end34:                                         ; preds = %for.body30
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %27, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock) #13
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx31, align 4
  br i1 %tobool16.not, label %if.else39, label %if.then37

if.then37:                                        ; preds = %if.end34
  %dqb_rsvspace.i = getelementptr inbounds %struct.dquot, ptr %29, i32 0, i32 11, i32 3
  %30 = ptrtoint ptr %dqb_rsvspace.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %dqb_rsvspace.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %number)
  %cmp.not.i = icmp slt i64 %31, %number
  br i1 %cmp.not.i, label %land.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i64 %31, %number
  br label %if.end38.i

land.end.i:                                       ; preds = %if.then37
  %.b57.i = load i1, ptr @dquot_free_reserved_space.__already_done, align 1
  br i1 %.b57.i, label %land.end.i.if.end38.i_crit_edge, label %if.then7.i, !prof !277

land.end.i.if.end38.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_free_reserved_space.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1112, i32 noundef 9, ptr noundef null) #13
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then7.i, %land.end.i.if.end38.i_crit_edge, %if.then.i
  %storemerge.i = phi i64 [ %sub.i, %if.then.i ], [ 0, %if.then7.i ], [ 0, %land.end.i.if.end38.i_crit_edge ]
  %32 = ptrtoint ptr %dqb_rsvspace.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %storemerge.i, ptr %dqb_rsvspace.i, align 8
  %dqb_curspace.i = getelementptr inbounds %struct.dquot, ptr %29, i32 0, i32 11, i32 2
  %33 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %dqb_curspace.i, align 8
  %add.i = add i64 %34, %storemerge.i
  %dqb_bsoftlimit.i = getelementptr inbounds %struct.dquot, ptr %29, i32 0, i32 11, i32 1
  %35 = ptrtoint ptr %dqb_bsoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %dqb_bsoftlimit.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %36)
  %cmp43.not.i = icmp sgt i64 %add.i, %36
  br i1 %cmp43.not.i, label %if.end38.i.if.end41_crit_edge, label %if.end38.i.if.end41.sink.split_crit_edge

if.end38.i.if.end41.sink.split_crit_edge:         ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.sink.split

if.end38.i.if.end41_crit_edge:                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.else39:                                        ; preds = %if.end34
  %dq_sb.i = getelementptr inbounds %struct.dquot, ptr %29, i32 0, i32 7
  %37 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dq_sb.i, align 4
  %s_dquot.i.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 31
  %39 = ptrtoint ptr %s_dquot.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_dquot.i.i, align 8
  %and.i118 = and i32 %40, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118)
  %tobool.not.i119 = icmp eq i32 %and.i118, 0
  br i1 %tobool.not.i119, label %lor.lhs.false.i, label %if.else39.if.then.i123_crit_edge

if.else39.if.then.i123_crit_edge:                 ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i123

lor.lhs.false.i:                                  ; preds = %if.else39
  %dqb_curspace.i120 = getelementptr inbounds %struct.dquot, ptr %29, i32 0, i32 11, i32 2
  %41 = ptrtoint ptr %dqb_curspace.i120 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %dqb_curspace.i120, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %number)
  %cmp.not.i121 = icmp slt i64 %42, %number
  br i1 %cmp.not.i121, label %if.else.i, label %lor.lhs.false.i.if.then.i123_crit_edge

lor.lhs.false.i.if.then.i123_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i123

if.then.i123:                                     ; preds = %lor.lhs.false.i.if.then.i123_crit_edge, %if.else39.if.then.i123_crit_edge
  %dqb_curspace2.i = getelementptr inbounds %struct.dquot, ptr %29, i32 0, i32 11, i32 2
  %43 = ptrtoint ptr %dqb_curspace2.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %dqb_curspace2.i, align 8
  %sub.i122 = sub i64 %44, %number
  store i64 %sub.i122, ptr %dqb_curspace2.i, align 8
  br label %if.end.i127

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %dqb_curspace.i120 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %dqb_curspace.i120, align 8
  br label %if.end.i127

if.end.i127:                                      ; preds = %if.else.i, %if.then.i123
  %dqb_curspace6.i = getelementptr inbounds %struct.dquot, ptr %29, i32 0, i32 11, i32 2
  %46 = ptrtoint ptr %dqb_curspace6.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %dqb_curspace6.i, align 8
  %dqb_rsvspace.i124 = getelementptr inbounds %struct.dquot, ptr %29, i32 0, i32 11, i32 3
  %48 = ptrtoint ptr %dqb_rsvspace.i124 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %dqb_rsvspace.i124, align 8
  %add.i125 = add i64 %49, %47
  %dqb_bsoftlimit.i126 = getelementptr inbounds %struct.dquot, ptr %29, i32 0, i32 11, i32 1
  %50 = ptrtoint ptr %dqb_bsoftlimit.i126 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %dqb_bsoftlimit.i126, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i125, i64 %51)
  %cmp9.not.i = icmp sgt i64 %add.i125, %51
  br i1 %cmp9.not.i, label %if.end.i127.if.end41_crit_edge, label %if.end.i127.if.end41.sink.split_crit_edge

if.end.i127.if.end41.sink.split_crit_edge:        ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.sink.split

if.end.i127.if.end41_crit_edge:                   ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.end41.sink.split:                              ; preds = %if.end.i127.if.end41.sink.split_crit_edge, %if.end38.i.if.end41.sink.split_crit_edge
  %dqb_btime.i128 = getelementptr inbounds %struct.dquot, ptr %29, i32 0, i32 11, i32 7
  %52 = ptrtoint ptr %dqb_btime.i128 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %dqb_btime.i128, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.end.i127.if.end41_crit_edge, %if.end38.i.if.end41_crit_edge
  %dq_flags.i129 = getelementptr inbounds %struct.dquot, ptr %29, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %dq_flags.i129) #13
  %53 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx31, align 4
  %dq_dqb_lock43 = getelementptr inbounds %struct.dquot, ptr %54, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock43) #13
  br label %for.inc44

for.inc44:                                        ; preds = %if.end41, %for.body30.for.inc44_crit_edge
  br i1 %cmp29, label %for.body30.1, label %for.inc44.for.end46_crit_edge

for.inc44.for.end46_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end46

for.body30.1:                                     ; preds = %for.inc44
  %cnt.2 = add nsw i32 %cnt.1146.lcssa.ph, -1
  %arrayidx31.1 = getelementptr ptr, ptr %call.i116, i32 %cnt.2
  %55 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx31.1, align 4
  %tobool32.not.1 = icmp eq ptr %56, null
  br i1 %tobool32.not.1, label %for.body30.1.for.end46_crit_edge, label %if.end34.1

for.body30.1.for.end46_crit_edge:                 ; preds = %for.body30.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end46

if.end34.1:                                       ; preds = %for.body30.1
  %dq_dqb_lock.1 = getelementptr inbounds %struct.dquot, ptr %56, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock.1) #13
  %57 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx31.1, align 4
  br i1 %tobool16.not, label %if.else39.1, label %if.then37.1

if.then37.1:                                      ; preds = %if.end34.1
  %dqb_rsvspace.i.1 = getelementptr inbounds %struct.dquot, ptr %58, i32 0, i32 11, i32 3
  %59 = ptrtoint ptr %dqb_rsvspace.i.1 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %dqb_rsvspace.i.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %number)
  %cmp.not.i.1 = icmp slt i64 %60, %number
  br i1 %cmp.not.i.1, label %land.end.i.1, label %if.then.i.1

if.then.i.1:                                      ; preds = %if.then37.1
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.1 = sub i64 %60, %number
  br label %if.end38.i.1

land.end.i.1:                                     ; preds = %if.then37.1
  %.b57.i.1 = load i1, ptr @dquot_free_reserved_space.__already_done, align 1
  br i1 %.b57.i.1, label %land.end.i.1.if.end38.i.1_crit_edge, label %if.then7.i.1, !prof !277

land.end.i.1.if.end38.i.1_crit_edge:              ; preds = %land.end.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i.1

if.then7.i.1:                                     ; preds = %land.end.i.1
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_free_reserved_space.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1112, i32 noundef 9, ptr noundef null) #13
  br label %if.end38.i.1

if.end38.i.1:                                     ; preds = %if.then7.i.1, %land.end.i.1.if.end38.i.1_crit_edge, %if.then.i.1
  %storemerge.i.1 = phi i64 [ %sub.i.1, %if.then.i.1 ], [ 0, %if.then7.i.1 ], [ 0, %land.end.i.1.if.end38.i.1_crit_edge ]
  %61 = ptrtoint ptr %dqb_rsvspace.i.1 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %storemerge.i.1, ptr %dqb_rsvspace.i.1, align 8
  %dqb_curspace.i.1 = getelementptr inbounds %struct.dquot, ptr %58, i32 0, i32 11, i32 2
  %62 = ptrtoint ptr %dqb_curspace.i.1 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %dqb_curspace.i.1, align 8
  %add.i.1 = add i64 %63, %storemerge.i.1
  %dqb_bsoftlimit.i.1 = getelementptr inbounds %struct.dquot, ptr %58, i32 0, i32 11, i32 1
  %64 = ptrtoint ptr %dqb_bsoftlimit.i.1 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %dqb_bsoftlimit.i.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.1, i64 %65)
  %cmp43.not.i.1 = icmp sgt i64 %add.i.1, %65
  br i1 %cmp43.not.i.1, label %if.end38.i.1.if.end41.1_crit_edge, label %if.end38.i.1.if.end41.sink.split.1_crit_edge

if.end38.i.1.if.end41.sink.split.1_crit_edge:     ; preds = %if.end38.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.sink.split.1

if.end38.i.1.if.end41.1_crit_edge:                ; preds = %if.end38.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.1

if.else39.1:                                      ; preds = %if.end34.1
  %dq_sb.i.1 = getelementptr inbounds %struct.dquot, ptr %58, i32 0, i32 7
  %66 = ptrtoint ptr %dq_sb.i.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dq_sb.i.1, align 4
  %s_dquot.i.i.1 = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 31
  %68 = ptrtoint ptr %s_dquot.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_dquot.i.i.1, align 8
  %and.i118.1 = and i32 %69, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118.1)
  %tobool.not.i119.1 = icmp eq i32 %and.i118.1, 0
  br i1 %tobool.not.i119.1, label %lor.lhs.false.i.1, label %if.else39.1.if.then.i123.1_crit_edge

if.else39.1.if.then.i123.1_crit_edge:             ; preds = %if.else39.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i123.1

lor.lhs.false.i.1:                                ; preds = %if.else39.1
  %dqb_curspace.i120.1 = getelementptr inbounds %struct.dquot, ptr %58, i32 0, i32 11, i32 2
  %70 = ptrtoint ptr %dqb_curspace.i120.1 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %dqb_curspace.i120.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %number)
  %cmp.not.i121.1 = icmp slt i64 %71, %number
  br i1 %cmp.not.i121.1, label %if.else.i.1, label %lor.lhs.false.i.1.if.then.i123.1_crit_edge

lor.lhs.false.i.1.if.then.i123.1_crit_edge:       ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i123.1

if.then.i123.1:                                   ; preds = %lor.lhs.false.i.1.if.then.i123.1_crit_edge, %if.else39.1.if.then.i123.1_crit_edge
  %dqb_curspace2.i.1 = getelementptr inbounds %struct.dquot, ptr %58, i32 0, i32 11, i32 2
  %72 = ptrtoint ptr %dqb_curspace2.i.1 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %dqb_curspace2.i.1, align 8
  %sub.i122.1 = sub i64 %73, %number
  store i64 %sub.i122.1, ptr %dqb_curspace2.i.1, align 8
  br label %if.end.i127.1

if.else.i.1:                                      ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %dqb_curspace.i120.1 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %dqb_curspace.i120.1, align 8
  br label %if.end.i127.1

if.end.i127.1:                                    ; preds = %if.else.i.1, %if.then.i123.1
  %dqb_curspace6.i.1 = getelementptr inbounds %struct.dquot, ptr %58, i32 0, i32 11, i32 2
  %75 = ptrtoint ptr %dqb_curspace6.i.1 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %dqb_curspace6.i.1, align 8
  %dqb_rsvspace.i124.1 = getelementptr inbounds %struct.dquot, ptr %58, i32 0, i32 11, i32 3
  %77 = ptrtoint ptr %dqb_rsvspace.i124.1 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %dqb_rsvspace.i124.1, align 8
  %add.i125.1 = add i64 %78, %76
  %dqb_bsoftlimit.i126.1 = getelementptr inbounds %struct.dquot, ptr %58, i32 0, i32 11, i32 1
  %79 = ptrtoint ptr %dqb_bsoftlimit.i126.1 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %dqb_bsoftlimit.i126.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i125.1, i64 %80)
  %cmp9.not.i.1 = icmp sgt i64 %add.i125.1, %80
  br i1 %cmp9.not.i.1, label %if.end.i127.1.if.end41.1_crit_edge, label %if.end.i127.1.if.end41.sink.split.1_crit_edge

if.end.i127.1.if.end41.sink.split.1_crit_edge:    ; preds = %if.end.i127.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.sink.split.1

if.end.i127.1.if.end41.1_crit_edge:               ; preds = %if.end.i127.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.1

if.end41.sink.split.1:                            ; preds = %if.end.i127.1.if.end41.sink.split.1_crit_edge, %if.end38.i.1.if.end41.sink.split.1_crit_edge
  %dqb_btime.i128.1 = getelementptr inbounds %struct.dquot, ptr %58, i32 0, i32 11, i32 7
  %81 = ptrtoint ptr %dqb_btime.i128.1 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 0, ptr %dqb_btime.i128.1, align 8
  br label %if.end41.1

if.end41.1:                                       ; preds = %if.end41.sink.split.1, %if.end.i127.1.if.end41.1_crit_edge, %if.end38.i.1.if.end41.1_crit_edge
  %dq_flags.i129.1 = getelementptr inbounds %struct.dquot, ptr %58, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %dq_flags.i129.1) #13
  %82 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx31.1, align 4
  %dq_dqb_lock43.1 = getelementptr inbounds %struct.dquot, ptr %83, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock43.1) #13
  br label %for.end46

for.end46:                                        ; preds = %if.end41.1, %for.body30.1.for.end46_crit_edge, %for.inc44.for.end46_crit_edge, %if.end25.for.end46_crit_edge
  %ret.1.lcssa157 = phi i32 [ %ret.1, %if.end25.for.end46_crit_edge ], [ %ret.1.lcssa.ph, %for.body30.1.for.end46_crit_edge ], [ %ret.1.lcssa.ph, %if.end41.1 ], [ %ret.1.lcssa.ph, %for.inc44.for.end46_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i_lock8) #13
  br label %out_flush_warn

for.inc49:                                        ; preds = %if.end25.for.inc49_crit_edge, %for.body.preheader.for.inc49_crit_edge
  %arrayidx12.1 = getelementptr ptr, ptr %call.i116, i32 1
  %84 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx12.1, align 4
  %tobool13.not.1 = icmp eq ptr %85, null
  br i1 %tobool13.not.1, label %for.inc49.for.inc49.1_crit_edge, label %if.end15.1

for.inc49.for.inc49.1_crit_edge:                  ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc49.1

if.end15.1:                                       ; preds = %for.inc49
  %arrayidx23.1 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 1
  br i1 %tobool16.not, label %if.else21.1, label %if.then17.1

if.then17.1:                                      ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #15
  %call20.1 = call fastcc i32 @dquot_add_space(ptr noundef nonnull %85, i64 noundef 0, i64 noundef %number, i32 noundef %flags, ptr noundef %arrayidx23.1)
  br label %if.end25.1

if.else21.1:                                      ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #15
  %call24.1 = call fastcc i32 @dquot_add_space(ptr noundef nonnull %85, i64 noundef %number, i64 noundef 0, i32 noundef %flags, ptr noundef %arrayidx23.1)
  br label %if.end25.1

if.end25.1:                                       ; preds = %if.else21.1, %if.then17.1
  %ret.1.1 = phi i32 [ %call20.1, %if.then17.1 ], [ %call24.1, %if.else21.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.1)
  %tobool26.not.1 = icmp eq i32 %ret.1.1, 0
  br i1 %tobool26.not.1, label %if.end25.1.for.inc49.1_crit_edge, label %if.end25.1.for.body30_crit_edge

if.end25.1.for.body30_crit_edge:                  ; preds = %if.end25.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body30

if.end25.1.for.inc49.1_crit_edge:                 ; preds = %if.end25.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc49.1

for.inc49.1:                                      ; preds = %if.end25.1.for.inc49.1_crit_edge, %for.inc49.for.inc49.1_crit_edge
  %arrayidx12.2 = getelementptr ptr, ptr %call.i116, i32 2
  %86 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx12.2, align 4
  %tobool13.not.2 = icmp eq ptr %87, null
  br i1 %tobool13.not.2, label %for.inc49.1.for.inc49.2_crit_edge, label %if.end15.2

for.inc49.1.for.inc49.2_crit_edge:                ; preds = %for.inc49.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc49.2

if.end15.2:                                       ; preds = %for.inc49.1
  %arrayidx23.2 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 2
  br i1 %tobool16.not, label %if.else21.2, label %if.then17.2

if.then17.2:                                      ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #15
  %call20.2 = call fastcc i32 @dquot_add_space(ptr noundef nonnull %87, i64 noundef 0, i64 noundef %number, i32 noundef %flags, ptr noundef %arrayidx23.2)
  br label %if.end25.2

if.else21.2:                                      ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #15
  %call24.2 = call fastcc i32 @dquot_add_space(ptr noundef nonnull %87, i64 noundef %number, i64 noundef 0, i32 noundef %flags, ptr noundef %arrayidx23.2)
  br label %if.end25.2

if.end25.2:                                       ; preds = %if.else21.2, %if.then17.2
  %ret.1.2 = phi i32 [ %call20.2, %if.then17.2 ], [ %call24.2, %if.else21.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.2)
  %tobool26.not.2 = icmp eq i32 %ret.1.2, 0
  br i1 %tobool26.not.2, label %if.end25.2.for.inc49.2_crit_edge, label %if.end25.2.for.body30_crit_edge

if.end25.2.for.body30_crit_edge:                  ; preds = %if.end25.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body30

if.end25.2.for.inc49.2_crit_edge:                 ; preds = %if.end25.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc49.2

for.inc49.2:                                      ; preds = %if.end25.2.for.inc49.2_crit_edge, %for.inc49.1.for.inc49.2_crit_edge
  br i1 %tobool16.not, label %if.else56, label %if.then53

if.then53:                                        ; preds = %for.inc49.2
  %88 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i_sb.i, align 4
  %dq_op.i131 = getelementptr inbounds %struct.super_block, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %dq_op.i131 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dq_op.i131, align 8
  %get_reserved_space.i132 = getelementptr inbounds %struct.dquot_operations, ptr %91, i32 0, i32 7
  %92 = ptrtoint ptr %get_reserved_space.i132 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %get_reserved_space.i132, align 4
  %tobool.not.i133 = icmp eq ptr %93, null
  br i1 %tobool.not.i133, label %do.body4.i134, label %inode_reserved_space.exit136, !prof !282

do.body4.i134:                                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/dquot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1617, 0\0A.popsection", ""() #13, !srcloc !289
  unreachable

inode_reserved_space.exit136:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  %call.i135 = tail call ptr %93(ptr noundef %inode) #13
  %94 = ptrtoint ptr %call.i135 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %call.i135, align 8
  %add55 = add i64 %95, %number
  store i64 %add55, ptr %call.i135, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock8) #13
  br label %out_flush_warn

if.else56:                                        ; preds = %for.inc49.2
  tail call void @__inode_add_bytes(ptr noundef %inode, i64 noundef %number) #13
  tail call void @_raw_spin_unlock(ptr noundef %i_lock8) #13
  %96 = ptrtoint ptr %call.i116 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call.i116, align 4
  %tobool.not.i137 = icmp eq ptr %97, null
  br i1 %tobool.not.i137, label %if.else56.if.end.i139_crit_edge, label %if.then.i138

if.else56.if.end.i139_crit_edge:                  ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i139

if.then.i138:                                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.i = getelementptr inbounds %struct.dquot, ptr %97, i32 0, i32 7
  %98 = ptrtoint ptr %dq_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dq_sb.i.i, align 4
  %dq_op.i.i = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 7
  %100 = ptrtoint ptr %dq_op.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dq_op.i.i, align 8
  %mark_dirty.i.i = getelementptr inbounds %struct.dquot_operations, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %mark_dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mark_dirty.i.i, align 4
  %call.i.i = tail call i32 %103(ptr noundef nonnull %97) #13
  br label %if.end.i139

if.end.i139:                                      ; preds = %if.then.i138, %if.else56.if.end.i139_crit_edge
  %104 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx12.1, align 4
  %tobool.not.1.i = icmp eq ptr %105, null
  br i1 %tobool.not.1.i, label %if.end.i139.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i139.if.end.1.i_crit_edge:                 ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.1.i = getelementptr inbounds %struct.dquot, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %dq_sb.i.1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dq_sb.i.1.i, align 4
  %dq_op.i.1.i = getelementptr inbounds %struct.super_block, ptr %107, i32 0, i32 7
  %108 = ptrtoint ptr %dq_op.i.1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dq_op.i.1.i, align 8
  %mark_dirty.i.1.i = getelementptr inbounds %struct.dquot_operations, ptr %109, i32 0, i32 5
  %110 = ptrtoint ptr %mark_dirty.i.1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mark_dirty.i.1.i, align 4
  %call.i.1.i = tail call i32 %111(ptr noundef nonnull %105) #13
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i139.if.end.1.i_crit_edge
  %112 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx12.2, align 4
  %tobool.not.2.i = icmp eq ptr %113, null
  br i1 %tobool.not.2.i, label %if.end.1.i.out_flush_warn_crit_edge, label %if.then.2.i

if.end.1.i.out_flush_warn_crit_edge:              ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_flush_warn

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.2.i = getelementptr inbounds %struct.dquot, ptr %113, i32 0, i32 7
  %114 = ptrtoint ptr %dq_sb.i.2.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dq_sb.i.2.i, align 4
  %dq_op.i.2.i = getelementptr inbounds %struct.super_block, ptr %115, i32 0, i32 7
  %116 = ptrtoint ptr %dq_op.i.2.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dq_op.i.2.i, align 8
  %mark_dirty.i.2.i = getelementptr inbounds %struct.dquot_operations, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %mark_dirty.i.2.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mark_dirty.i.2.i, align 4
  %call.i.2.i = tail call i32 %119(ptr noundef nonnull %113) #13
  br label %out_flush_warn

out_flush_warn:                                   ; preds = %if.then.2.i, %if.end.1.i.out_flush_warn_crit_edge, %inode_reserved_space.exit136, %for.end46
  %ret.3 = phi i32 [ %ret.1.lcssa157, %for.end46 ], [ 0, %inode_reserved_space.exit136 ], [ 0, %if.end.1.i.out_flush_warn_crit_edge ], [ 0, %if.then.2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i117)
  %tobool.not.i140 = icmp ult i32 %call.i117, 2
  br i1 %tobool.not.i140, label %out_flush_warn.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

out_flush_warn.srcu_read_unlock.exit_crit_edge:   ; preds = %out_flush_warn
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %out_flush_warn
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i141, !prof !277

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

if.then.i141:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i141, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %out_flush_warn.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dquot_srcu, i32 0, i32 16)) #13
  tail call void @__srcu_read_unlock(ptr noundef nonnull @dquot_srcu, i32 noundef %call.i117) #13
  call fastcc void @flush_warnings(ptr noundef nonnull %warn)
  br label %out

out:                                              ; preds = %srcu_read_unlock.exit, %if.else, %inode_reserved_space.exit
  %ret.4 = phi i32 [ %ret.3, %srcu_read_unlock.exit ], [ 0, %inode_reserved_space.exit ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %warn) #13
  ret i32 %ret.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dquot_add_space(ptr noundef %dquot, i64 noundef %space, i64 noundef %rsv_space, i32 noundef %flags, ptr nocapture noundef writeonly %warn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock) #13
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %s_dquot.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %s_dquot.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_dquot.i.i, align 8
  %shl.i.i = shl i32 8, %3
  %and.i = and i32 %5, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.finish_crit_edge, label %lor.lhs.false

entry.finish_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %finish

lor.lhs.false:                                    ; preds = %entry
  %dq_flags = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  %6 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dq_flags, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.finish_crit_edge

lor.lhs.false.finish_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %finish

if.end:                                           ; preds = %lor.lhs.false
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11
  %dqb_curspace = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 2
  %9 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dqb_curspace, align 8
  %dqb_rsvspace = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 3
  %11 = ptrtoint ptr %dqb_rsvspace to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dqb_rsvspace, align 8
  %add = add i64 %rsv_space, %space
  %add3 = add i64 %add, %10
  %add4 = add i64 %add3, %12
  %13 = ptrtoint ptr %dq_dqb to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dq_dqb, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool6.not = icmp ne i64 %14, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add4, i64 %14)
  %cmp = icmp sgt i64 %add4, %14
  %or.cond = select i1 %tobool6.not, i1 %cmp, i1 false
  br i1 %or.cond, label %land.lhs.true9, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

land.lhs.true9:                                   ; preds = %if.end
  %15 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dq_sb, align 4
  %call2.i = tail call zeroext i1 @capable(i32 noundef 24) #13
  br i1 %call2.i, label %land.rhs.i, label %land.lhs.true9.if.then12_crit_edge

land.lhs.true9.if.then12_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

land.rhs.i:                                       ; preds = %land.lhs.true9
  %arrayidx.i = getelementptr %struct.super_block, ptr %16, i32 0, i32 31, i32 3, i32 %3
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 1
  br i1 %cmp.not.i, label %ignore_hardlimit.exit, label %land.rhs.i.if.end16_crit_edge

land.rhs.i.if.end16_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

ignore_hardlimit.exit:                            ; preds = %land.rhs.i
  %dqi_flags.i = getelementptr %struct.super_block, ptr %16, i32 0, i32 31, i32 3, i32 %3, i32 3
  %21 = ptrtoint ptr %dqi_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dqi_flags.i, align 8
  %and.i117 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117)
  %tobool11.not.not = icmp eq i32 %and.i117, 0
  br i1 %tobool11.not.not, label %ignore_hardlimit.exit.if.end16_crit_edge, label %ignore_hardlimit.exit.if.then12_crit_edge

ignore_hardlimit.exit.if.then12_crit_edge:        ; preds = %ignore_hardlimit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

ignore_hardlimit.exit.if.end16_crit_edge:         ; preds = %ignore_hardlimit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then12:                                        ; preds = %ignore_hardlimit.exit.if.then12_crit_edge, %land.lhs.true9.if.then12_crit_edge
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then12.finish_crit_edge, label %if.then14

if.then12.finish_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %finish

if.then14:                                        ; preds = %if.then12
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %dq_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then14.finish_crit_edge

if.then14.finish_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %finish

if.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %w_type.i = getelementptr inbounds %struct.dquot_warn, ptr %warn, i32 0, i32 2
  %23 = ptrtoint ptr %w_type.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 4, ptr %w_type.i, align 4
  %24 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dq_sb, align 4
  %26 = ptrtoint ptr %warn to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %warn, align 4
  %w_dq_id.i = getelementptr inbounds %struct.dquot_warn, ptr %warn, i32 0, i32 1
  %dq_id.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %27 = ptrtoint ptr %dq_id.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dq_id.i, align 8
  %29 = ptrtoint ptr %w_dq_id.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %w_dq_id.i, align 4
  br label %finish

if.end16:                                         ; preds = %ignore_hardlimit.exit.if.end16_crit_edge, %land.rhs.i.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %dqb_bsoftlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 1
  %30 = ptrtoint ptr %dqb_bsoftlimit to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %dqb_bsoftlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool18.not = icmp ne i64 %31, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add4, i64 %31)
  %cmp22 = icmp sgt i64 %add4, %31
  %or.cond115 = select i1 %tobool18.not, i1 %cmp22, i1 false
  br i1 %or.cond115, label %land.lhs.true23, label %if.end16.if.end39_crit_edge

if.end16.if.end39_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

land.lhs.true23:                                  ; preds = %if.end16
  %dqb_btime = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 7
  %32 = ptrtoint ptr %dqb_btime to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %dqb_btime, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool25.not = icmp eq i64 %33, 0
  br i1 %tobool25.not, label %land.lhs.true23.if.end39_crit_edge, label %land.lhs.true26

land.lhs.true23.if.end39_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %call27 = tail call i64 @ktime_get_real_seconds() #13
  %34 = ptrtoint ptr %dqb_btime to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dqb_btime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call27, i64 %35)
  %cmp30.not = icmp slt i64 %call27, %35
  br i1 %cmp30.not, label %land.lhs.true26.if.end39_crit_edge, label %land.lhs.true31

land.lhs.true26.if.end39_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %36 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dq_sb, align 4
  %38 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type, align 4
  %call2.i121 = tail call zeroext i1 @capable(i32 noundef 24) #13
  br i1 %call2.i121, label %land.rhs.i124, label %land.lhs.true31.if.then34_crit_edge

land.lhs.true31.if.then34_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

land.rhs.i124:                                    ; preds = %land.lhs.true31
  %arrayidx.i122 = getelementptr %struct.super_block, ptr %37, i32 0, i32 31, i32 3, i32 %39
  %40 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i122, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.not.i123 = icmp eq i32 %43, 1
  br i1 %cmp.not.i123, label %ignore_hardlimit.exit128, label %land.rhs.i124.if.end39_crit_edge

land.rhs.i124.if.end39_crit_edge:                 ; preds = %land.rhs.i124
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

ignore_hardlimit.exit128:                         ; preds = %land.rhs.i124
  %dqi_flags.i125 = getelementptr %struct.super_block, ptr %37, i32 0, i32 31, i32 3, i32 %39, i32 3
  %44 = ptrtoint ptr %dqi_flags.i125 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dqi_flags.i125, align 8
  %and.i126 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %tobool33.not.not = icmp eq i32 %and.i126, 0
  br i1 %tobool33.not.not, label %ignore_hardlimit.exit128.if.end39_crit_edge, label %ignore_hardlimit.exit128.if.then34_crit_edge

ignore_hardlimit.exit128.if.then34_crit_edge:     ; preds = %ignore_hardlimit.exit128
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

ignore_hardlimit.exit128.if.end39_crit_edge:      ; preds = %ignore_hardlimit.exit128
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then34:                                        ; preds = %ignore_hardlimit.exit128.if.then34_crit_edge, %land.lhs.true31.if.then34_crit_edge
  %and35 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then34.finish_crit_edge, label %if.then37

if.then34.finish_crit_edge:                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %finish

if.then37:                                        ; preds = %if.then34
  %call.i.i130 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %dq_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i130)
  %tobool.not.i131 = icmp eq i32 %call.i.i130, 0
  br i1 %tobool.not.i131, label %if.end.i136, label %if.then37.finish_crit_edge

if.then37.finish_crit_edge:                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %finish

if.end.i136:                                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  %w_type.i132 = getelementptr inbounds %struct.dquot_warn, ptr %warn, i32 0, i32 2
  %46 = ptrtoint ptr %w_type.i132 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 5, ptr %w_type.i132, align 4
  %47 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dq_sb, align 4
  %49 = ptrtoint ptr %warn to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %warn, align 4
  %w_dq_id.i134 = getelementptr inbounds %struct.dquot_warn, ptr %warn, i32 0, i32 1
  %dq_id.i135 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %50 = ptrtoint ptr %dq_id.i135 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %dq_id.i135, align 8
  %52 = ptrtoint ptr %w_dq_id.i134 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %51, ptr %w_dq_id.i134, align 4
  br label %finish

if.end39:                                         ; preds = %ignore_hardlimit.exit128.if.end39_crit_edge, %land.rhs.i124.if.end39_crit_edge, %land.lhs.true26.if.end39_crit_edge, %land.lhs.true23.if.end39_crit_edge, %if.end16.if.end39_crit_edge
  %53 = ptrtoint ptr %dqb_bsoftlimit to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %dqb_bsoftlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %54)
  %tobool42.not = icmp ne i64 %54, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add4, i64 %54)
  %cmp46 = icmp sgt i64 %add4, %54
  %or.cond116 = select i1 %tobool42.not, i1 %cmp46, i1 false
  br i1 %or.cond116, label %land.lhs.true47, label %if.end39.finish_crit_edge

if.end39.finish_crit_edge:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %finish

land.lhs.true47:                                  ; preds = %if.end39
  %dqb_btime49 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 7
  %55 = ptrtoint ptr %dqb_btime49 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %dqb_btime49, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %cmp50 = icmp eq i64 %56, 0
  br i1 %cmp50, label %if.then51, label %land.lhs.true47.finish_crit_edge

land.lhs.true47.finish_crit_edge:                 ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #15
  br label %finish

if.then51:                                        ; preds = %land.lhs.true47
  %and52 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then51.finish_crit_edge, label %if.then54

if.then51.finish_crit_edge:                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  br label %finish

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  %w_type.i138 = getelementptr inbounds %struct.dquot_warn, ptr %warn, i32 0, i32 2
  %57 = ptrtoint ptr %w_type.i138 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 6, ptr %w_type.i138, align 4
  %58 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dq_sb, align 4
  %60 = ptrtoint ptr %warn to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %warn, align 4
  %w_dq_id.i140 = getelementptr inbounds %struct.dquot_warn, ptr %warn, i32 0, i32 1
  %dq_id.i141 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %61 = ptrtoint ptr %dq_id.i141 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %dq_id.i141, align 8
  %63 = ptrtoint ptr %w_dq_id.i140 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %62, ptr %w_dq_id.i140, align 4
  %call55 = tail call i64 @ktime_get_real_seconds() #13
  %64 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type, align 4
  %dqi_bgrace = getelementptr %struct.super_block, ptr %1, i32 0, i32 31, i32 3, i32 %65, i32 4
  %66 = ptrtoint ptr %dqi_bgrace to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dqi_bgrace, align 4
  %conv = zext i32 %67 to i64
  %add59 = add i64 %call55, %conv
  %68 = ptrtoint ptr %dqb_btime49 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %add59, ptr %dqb_btime49, align 8
  br label %finish

finish:                                           ; preds = %if.then54, %if.then51.finish_crit_edge, %land.lhs.true47.finish_crit_edge, %if.end39.finish_crit_edge, %if.end.i136, %if.then37.finish_crit_edge, %if.then34.finish_crit_edge, %if.end.i, %if.then14.finish_crit_edge, %if.then12.finish_crit_edge, %lor.lhs.false.finish_crit_edge, %entry.finish_crit_edge
  %ret.0 = phi i32 [ 0, %lor.lhs.false.finish_crit_edge ], [ 0, %if.then54 ], [ 0, %land.lhs.true47.finish_crit_edge ], [ 0, %if.end39.finish_crit_edge ], [ 0, %entry.finish_crit_edge ], [ -122, %if.then12.finish_crit_edge ], [ -122, %if.then34.finish_crit_edge ], [ -122, %if.then51.finish_crit_edge ], [ -122, %if.then14.finish_crit_edge ], [ -122, %if.end.i ], [ -122, %if.then37.finish_crit_edge ], [ -122, %if.end.i136 ]
  %and64 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %spec.select = select i1 %tobool65.not, i32 %ret.0, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool68.not = icmp eq i32 %spec.select, 0
  br i1 %tobool68.not, label %if.then69, label %finish.if.end76_crit_edge

finish.if.end76_crit_edge:                        ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

if.then69:                                        ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #15
  %dqb_rsvspace71 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 3
  %69 = ptrtoint ptr %dqb_rsvspace71 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %dqb_rsvspace71, align 8
  %add72 = add i64 %70, %rsv_space
  store i64 %add72, ptr %dqb_rsvspace71, align 8
  %dqb_curspace74 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 2
  %71 = ptrtoint ptr %dqb_curspace74 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %dqb_curspace74, align 8
  %add75 = add i64 %72, %space
  store i64 %add75, ptr %dqb_curspace74, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then69, %finish.if.end76_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock) #13
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_warnings(ptr nocapture noundef readonly %warn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.021 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %w_type = getelementptr %struct.dquot_warn, ptr %warn, i32 %i.021, i32 2
  %0 = ptrtoint ptr %w_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %w_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp1 = icmp eq i16 %1, 0
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.dquot_warn, ptr %warn, i32 %i.021
  %2 = ptrtoint ptr %w_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %w_type, align 4
  %conv.i = sext i16 %3 to i32
  %.off.i = add i16 %3, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 4
  br i1 %switch.i, label %if.end.print_warning.exit_crit_edge, label %lor.lhs.false10.i

if.end.print_warning.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %print_warning.exit

lor.lhs.false10.i:                                ; preds = %if.end
  %4 = load i32, ptr @flag_print_warnings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false10.i.print_warning.exit_crit_edge, label %if.end.i.i

lor.lhs.false10.i.print_warning.exit_crit_edge:   ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %print_warning.exit

if.end.i.i:                                       ; preds = %lor.lhs.false10.i
  %w_dq_id.i.i = getelementptr %struct.dquot_warn, ptr %warn, i32 %i.021, i32 1
  %type.i.i = getelementptr %struct.dquot_warn, ptr %warn, i32 %i.021, i32 1, i32 1
  %5 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %6, label %if.end.i.i.print_warning.exit_crit_edge [
    i32 0, label %do.end.i.i
    i32 1, label %sw.bb4.i.i
    i32 2, label %if.end.i.i.if.end.i_crit_edge
  ]

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i.i.print_warning.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %print_warning.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %8 = tail call i32 @llvm.read_register.i32(metadata !264) #13
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred.i.i, align 16
  %fsuid.i.i = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %fsuid.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload.i.i = load i32, ptr %fsuid.i.i, align 4
  %15 = ptrtoint ptr %w_dq_id.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack11.i.i = load i32, ptr %w_dq_id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload.i.i, i32 %.unpack11.i.i)
  %cmp.i.i.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload.i.i, %.unpack11.i.i
  %conv.i.i = zext i1 %cmp.i.i.i to i32
  br label %need_print_warning.exit.i

sw.bb4.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %w_dq_id.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack.i.i = load i32, ptr %w_dq_id.i.i, align 4
  %17 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call7.i.i = tail call i32 @in_group_p([1 x i32] %17) #13
  br label %need_print_warning.exit.i

need_print_warning.exit.i:                        ; preds = %sw.bb4.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call7.i.i, %sw.bb4.i.i ], [ %conv.i.i, %do.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %need_print_warning.exit.i.print_warning.exit_crit_edge, label %need_print_warning.exit.i.if.end.i_crit_edge

need_print_warning.exit.i.if.end.i_crit_edge:     ; preds = %need_print_warning.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

need_print_warning.exit.i.print_warning.exit_crit_edge: ; preds = %need_print_warning.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %print_warning.exit

if.end.i:                                         ; preds = %need_print_warning.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %call11.i = tail call ptr @get_current_tty() #13
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end.i.print_warning.exit_crit_edge, label %if.end14.i

if.end.i.print_warning.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %print_warning.exit

if.end14.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 39
  tail call void @tty_write_message(ptr noundef nonnull %call11.i, ptr noundef %s_id.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %switch.selectcmp.case1.i = icmp eq i16 %3, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %3)
  %switch.selectcmp.case2.i = icmp eq i16 %3, 6
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %20 = select i1 %switch.selectcmp.i, ptr @.str.22, ptr @.str.23
  tail call void @tty_write_message(ptr noundef nonnull %call11.i, ptr noundef nonnull %20) #13
  %21 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i.i, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @quotatypes, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  tail call void @tty_write_message(ptr noundef nonnull %call11.i, ptr noundef %24) #13
  %switch.tableidx = add nsw i32 %conv.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %25 = icmp ult i32 %switch.tableidx, 6
  br i1 %25, label %switch.lookup, label %if.end14.i.sw.epilog.i_crit_edge

if.end14.i.sw.epilog.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.flush_warnings, i32 0, i32 %switch.tableidx
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end14.i.sw.epilog.i_crit_edge
  %msg.0.i = phi ptr [ null, %if.end14.i.sw.epilog.i_crit_edge ], [ %switch.load, %switch.lookup ]
  tail call void @tty_write_message(ptr noundef nonnull %call11.i, ptr noundef %msg.0.i) #13
  tail call void @tty_kref_put(ptr noundef nonnull %call11.i) #13
  br label %print_warning.exit

print_warning.exit:                               ; preds = %sw.epilog.i, %if.end.i.print_warning.exit_crit_edge, %need_print_warning.exit.i.print_warning.exit_crit_edge, %if.end.i.i.print_warning.exit_crit_edge, %lor.lhs.false10.i.print_warning.exit_crit_edge, %if.end.print_warning.exit_crit_edge
  %w_dq_id = getelementptr %struct.dquot_warn, ptr %warn, i32 %i.021, i32 1
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_dev, align 8
  %31 = ptrtoint ptr %w_type to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %w_type, align 4
  %conv8 = trunc i16 %32 to i8
  %33 = ptrtoint ptr %w_dq_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack = load i32, ptr %w_dq_id, align 4
  %34 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt19 = getelementptr inbounds [2 x i32], ptr %w_dq_id, i32 0, i32 1
  %35 = ptrtoint ptr %.elt19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack20 = load i32, ptr %.elt19, align 4
  %36 = insertvalue [2 x i32] %34, i32 %.unpack20, 1
  tail call void @quota_send_warning([2 x i32] %36, i32 noundef %30, i8 noundef zeroext %conv8) #13
  br label %for.inc

for.inc:                                          ; preds = %print_warning.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_alloc_inode(ptr noundef %inode) #0 align 64 {
entry:
  %warn = alloca [3 x %struct.dquot_warn], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %warn) #13
  %0 = call ptr @memset(ptr %warn, i32 255, i32 48)
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %1 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %dquot_active.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

dquot_active.exit:                                ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_dquot.i.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 31
  %5 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dquot.i.i.i, align 8
  %and2.i.i.i = and i32 %6, 7
  %div.i2.i.i = lshr i32 %6, 6
  %and2.i.i6.i = and i32 %div.i2.i.i, 7
  %neg.i = xor i32 %and2.i.i6.i, -1
  %and2.i = and i32 %and2.i.i.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  br i1 %tobool.not, label %dquot_active.exit.cleanup_crit_edge, label %for.body.preheader

dquot_active.exit.cleanup_crit_edge:              ; preds = %dquot_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader:                               ; preds = %dquot_active.exit
  %w_type = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %w_type to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %w_type, align 4
  %w_type.1 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %w_type.1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %w_type.1, align 4
  %w_type.2 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %w_type.2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %w_type.2, align 4
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_op.i, align 4
  %get_dquots.i = getelementptr inbounds %struct.super_operations, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %get_dquots.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_dquots.i, align 4
  %call.i = tail call ptr %15(ptr noundef %inode) #13
  %call.i69 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @dquot_srcu) #13
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dquot_srcu, i32 0, i32 16)) #13
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #13
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %for.body.preheader.for.inc30_crit_edge, label %if.end9

for.body.preheader.for.inc30_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30

if.end9:                                          ; preds = %for.body.preheader
  %call12 = call fastcc i32 @dquot_add_inodes(ptr noundef nonnull %17, i64 noundef 1, ptr noundef nonnull %warn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end9.for.inc30_crit_edge, label %if.end9.warn_put_all_crit_edge

if.end9.warn_put_all_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %warn_put_all

if.end9.for.inc30_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30

for.body17:                                       ; preds = %if.end9.2.for.body17_crit_edge, %if.end9.1.for.body17_crit_edge
  %cmp16 = phi i1 [ true, %if.end9.2.for.body17_crit_edge ], [ false, %if.end9.1.for.body17_crit_edge ]
  %cnt.186.lcssa.ph = phi i32 [ 1, %if.end9.2.for.body17_crit_edge ], [ 0, %if.end9.1.for.body17_crit_edge ]
  %call12.lcssa.ph = phi i32 [ %call12.2, %if.end9.2.for.body17_crit_edge ], [ %call12.1, %if.end9.1.for.body17_crit_edge ]
  %arrayidx18 = getelementptr ptr, ptr %call.i, i32 %cnt.186.lcssa.ph
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %for.body17.for.inc26_crit_edge, label %if.end21

for.body17.for.inc26_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc26

if.end21:                                         ; preds = %for.body17
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %19, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock) #13
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx18, align 4
  %dq_sb.i = getelementptr inbounds %struct.dquot, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dq_sb.i, align 4
  %s_dquot.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 31
  %24 = ptrtoint ptr %s_dquot.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_dquot.i.i, align 8
  %and.i70 = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %tobool.not.i71 = icmp eq i32 %and.i70, 0
  br i1 %tobool.not.i71, label %lor.lhs.false.i, label %if.end21.if.then.i_crit_edge

if.end21.if.then.i_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end21
  %dqb_curinodes.i = getelementptr inbounds %struct.dquot, ptr %21, i32 0, i32 11, i32 6
  %26 = ptrtoint ptr %dqb_curinodes.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dqb_curinodes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %27)
  %cmp.not.i = icmp slt i64 %27, 1
  br i1 %cmp.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end21.if.then.i_crit_edge
  %dqb_curinodes2.i = getelementptr inbounds %struct.dquot, ptr %21, i32 0, i32 11, i32 6
  %28 = ptrtoint ptr %dqb_curinodes2.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dqb_curinodes2.i, align 8
  %sub.i = add i64 %29, -1
  store i64 %sub.i, ptr %dqb_curinodes2.i, align 8
  br label %if.end.i72

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %dqb_curinodes.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %dqb_curinodes.i, align 8
  br label %if.end.i72

if.end.i72:                                       ; preds = %if.else.i, %if.then.i
  %dqb_curinodes6.i = getelementptr inbounds %struct.dquot, ptr %21, i32 0, i32 11, i32 6
  %31 = ptrtoint ptr %dqb_curinodes6.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %dqb_curinodes6.i, align 8
  %dqb_isoftlimit.i = getelementptr inbounds %struct.dquot, ptr %21, i32 0, i32 11, i32 5
  %33 = ptrtoint ptr %dqb_isoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %dqb_isoftlimit.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %34)
  %cmp8.not.i = icmp sgt i64 %32, %34
  br i1 %cmp8.not.i, label %if.end.i72.dquot_decr_inodes.exit_crit_edge, label %if.then9.i

if.end.i72.dquot_decr_inodes.exit_crit_edge:      ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #15
  br label %dquot_decr_inodes.exit

if.then9.i:                                       ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #15
  %dqb_itime.i = getelementptr inbounds %struct.dquot, ptr %21, i32 0, i32 11, i32 8
  %35 = ptrtoint ptr %dqb_itime.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %dqb_itime.i, align 8
  br label %dquot_decr_inodes.exit

dquot_decr_inodes.exit:                           ; preds = %if.then9.i, %if.end.i72.dquot_decr_inodes.exit_crit_edge
  %dq_flags.i = getelementptr inbounds %struct.dquot, ptr %21, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %dq_flags.i) #13
  %36 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx18, align 4
  %dq_dqb_lock25 = getelementptr inbounds %struct.dquot, ptr %37, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock25) #13
  br label %for.inc26

for.inc26:                                        ; preds = %dquot_decr_inodes.exit, %for.body17.for.inc26_crit_edge
  br i1 %cmp16, label %for.body17.1, label %for.inc26.warn_put_all_crit_edge

for.inc26.warn_put_all_crit_edge:                 ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #15
  br label %warn_put_all

for.body17.1:                                     ; preds = %for.inc26
  %cnt.2 = add nsw i32 %cnt.186.lcssa.ph, -1
  %arrayidx18.1 = getelementptr ptr, ptr %call.i, i32 %cnt.2
  %38 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx18.1, align 4
  %tobool19.not.1 = icmp eq ptr %39, null
  br i1 %tobool19.not.1, label %for.body17.1.warn_put_all_crit_edge, label %if.end21.1

for.body17.1.warn_put_all_crit_edge:              ; preds = %for.body17.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %warn_put_all

if.end21.1:                                       ; preds = %for.body17.1
  %dq_dqb_lock.1 = getelementptr inbounds %struct.dquot, ptr %39, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock.1) #13
  %40 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx18.1, align 4
  %dq_sb.i.1 = getelementptr inbounds %struct.dquot, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %dq_sb.i.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dq_sb.i.1, align 4
  %s_dquot.i.i.1 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 31
  %44 = ptrtoint ptr %s_dquot.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_dquot.i.i.1, align 8
  %and.i70.1 = and i32 %45, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70.1)
  %tobool.not.i71.1 = icmp eq i32 %and.i70.1, 0
  br i1 %tobool.not.i71.1, label %lor.lhs.false.i.1, label %if.end21.1.if.then.i.1_crit_edge

if.end21.1.if.then.i.1_crit_edge:                 ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.1

lor.lhs.false.i.1:                                ; preds = %if.end21.1
  %dqb_curinodes.i.1 = getelementptr inbounds %struct.dquot, ptr %41, i32 0, i32 11, i32 6
  %46 = ptrtoint ptr %dqb_curinodes.i.1 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %dqb_curinodes.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %47)
  %cmp.not.i.1 = icmp slt i64 %47, 1
  br i1 %cmp.not.i.1, label %if.else.i.1, label %lor.lhs.false.i.1.if.then.i.1_crit_edge

lor.lhs.false.i.1.if.then.i.1_crit_edge:          ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.1

if.then.i.1:                                      ; preds = %lor.lhs.false.i.1.if.then.i.1_crit_edge, %if.end21.1.if.then.i.1_crit_edge
  %dqb_curinodes2.i.1 = getelementptr inbounds %struct.dquot, ptr %41, i32 0, i32 11, i32 6
  %48 = ptrtoint ptr %dqb_curinodes2.i.1 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %dqb_curinodes2.i.1, align 8
  %sub.i.1 = add i64 %49, -1
  store i64 %sub.i.1, ptr %dqb_curinodes2.i.1, align 8
  br label %if.end.i72.1

if.else.i.1:                                      ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %dqb_curinodes.i.1 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %dqb_curinodes.i.1, align 8
  br label %if.end.i72.1

if.end.i72.1:                                     ; preds = %if.else.i.1, %if.then.i.1
  %dqb_curinodes6.i.1 = getelementptr inbounds %struct.dquot, ptr %41, i32 0, i32 11, i32 6
  %51 = ptrtoint ptr %dqb_curinodes6.i.1 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %dqb_curinodes6.i.1, align 8
  %dqb_isoftlimit.i.1 = getelementptr inbounds %struct.dquot, ptr %41, i32 0, i32 11, i32 5
  %53 = ptrtoint ptr %dqb_isoftlimit.i.1 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %dqb_isoftlimit.i.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %54)
  %cmp8.not.i.1 = icmp sgt i64 %52, %54
  br i1 %cmp8.not.i.1, label %if.end.i72.1.dquot_decr_inodes.exit.1_crit_edge, label %if.then9.i.1

if.end.i72.1.dquot_decr_inodes.exit.1_crit_edge:  ; preds = %if.end.i72.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %dquot_decr_inodes.exit.1

if.then9.i.1:                                     ; preds = %if.end.i72.1
  call void @__sanitizer_cov_trace_pc() #15
  %dqb_itime.i.1 = getelementptr inbounds %struct.dquot, ptr %41, i32 0, i32 11, i32 8
  %55 = ptrtoint ptr %dqb_itime.i.1 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %dqb_itime.i.1, align 8
  br label %dquot_decr_inodes.exit.1

dquot_decr_inodes.exit.1:                         ; preds = %if.then9.i.1, %if.end.i72.1.dquot_decr_inodes.exit.1_crit_edge
  %dq_flags.i.1 = getelementptr inbounds %struct.dquot, ptr %41, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %dq_flags.i.1) #13
  %56 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx18.1, align 4
  %dq_dqb_lock25.1 = getelementptr inbounds %struct.dquot, ptr %57, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock25.1) #13
  br label %warn_put_all

for.inc30:                                        ; preds = %if.end9.for.inc30_crit_edge, %for.body.preheader.for.inc30_crit_edge
  %arrayidx6.1 = getelementptr ptr, ptr %call.i, i32 1
  %58 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx6.1, align 4
  %tobool7.not.1 = icmp eq ptr %59, null
  br i1 %tobool7.not.1, label %for.inc30.for.inc30.1_crit_edge, label %if.end9.1

for.inc30.for.inc30.1_crit_edge:                  ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.1

if.end9.1:                                        ; preds = %for.inc30
  %arrayidx11.1 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 1
  %call12.1 = call fastcc i32 @dquot_add_inodes(ptr noundef nonnull %59, i64 noundef 1, ptr noundef %arrayidx11.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1)
  %tobool13.not.1 = icmp eq i32 %call12.1, 0
  br i1 %tobool13.not.1, label %if.end9.1.for.inc30.1_crit_edge, label %if.end9.1.for.body17_crit_edge

if.end9.1.for.body17_crit_edge:                   ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17

if.end9.1.for.inc30.1_crit_edge:                  ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.1

for.inc30.1:                                      ; preds = %if.end9.1.for.inc30.1_crit_edge, %for.inc30.for.inc30.1_crit_edge
  %arrayidx6.2 = getelementptr ptr, ptr %call.i, i32 2
  %60 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx6.2, align 4
  %tobool7.not.2 = icmp eq ptr %61, null
  br i1 %tobool7.not.2, label %for.inc30.1.for.inc30.2_crit_edge, label %if.end9.2

for.inc30.1.for.inc30.2_crit_edge:                ; preds = %for.inc30.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.2

if.end9.2:                                        ; preds = %for.inc30.1
  %arrayidx11.2 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 2
  %call12.2 = call fastcc i32 @dquot_add_inodes(ptr noundef nonnull %61, i64 noundef 1, ptr noundef %arrayidx11.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2)
  %tobool13.not.2 = icmp eq i32 %call12.2, 0
  br i1 %tobool13.not.2, label %if.end9.2.for.inc30.2_crit_edge, label %if.end9.2.for.body17_crit_edge

if.end9.2.for.body17_crit_edge:                   ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17

if.end9.2.for.inc30.2_crit_edge:                  ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30.2

for.inc30.2:                                      ; preds = %if.end9.2.for.inc30.2_crit_edge, %for.inc30.1.for.inc30.2_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  %tobool.not.i73 = icmp eq ptr %63, null
  br i1 %tobool.not.i73, label %for.inc30.2.if.end.i75_crit_edge, label %if.then.i74

for.inc30.2.if.end.i75_crit_edge:                 ; preds = %for.inc30.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i75

warn_put_all:                                     ; preds = %dquot_decr_inodes.exit.1, %for.body17.1.warn_put_all_crit_edge, %for.inc26.warn_put_all_crit_edge, %if.end9.warn_put_all_crit_edge
  %call12.lcssa97 = phi i32 [ %call12, %if.end9.warn_put_all_crit_edge ], [ %call12.lcssa.ph, %for.body17.1.warn_put_all_crit_edge ], [ %call12.lcssa.ph, %dquot_decr_inodes.exit.1 ], [ %call12.lcssa.ph, %for.inc26.warn_put_all_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  br label %if.end37

if.then.i74:                                      ; preds = %for.inc30.2
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.i = getelementptr inbounds %struct.dquot, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %dq_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dq_sb.i.i, align 4
  %dq_op.i.i = getelementptr inbounds %struct.super_block, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %dq_op.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dq_op.i.i, align 8
  %mark_dirty.i.i = getelementptr inbounds %struct.dquot_operations, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %mark_dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mark_dirty.i.i, align 4
  %call.i.i = tail call i32 %69(ptr noundef nonnull %63) #13
  br label %if.end.i75

if.end.i75:                                       ; preds = %if.then.i74, %for.inc30.2.if.end.i75_crit_edge
  %70 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx6.1, align 4
  %tobool.not.1.i = icmp eq ptr %71, null
  br i1 %tobool.not.1.i, label %if.end.i75.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i75.if.end.1.i_crit_edge:                  ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.1.i = getelementptr inbounds %struct.dquot, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %dq_sb.i.1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dq_sb.i.1.i, align 4
  %dq_op.i.1.i = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %dq_op.i.1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dq_op.i.1.i, align 8
  %mark_dirty.i.1.i = getelementptr inbounds %struct.dquot_operations, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %mark_dirty.i.1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mark_dirty.i.1.i, align 4
  %call.i.1.i = tail call i32 %77(ptr noundef nonnull %71) #13
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i75.if.end.1.i_crit_edge
  %78 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx6.2, align 4
  %tobool.not.2.i = icmp eq ptr %79, null
  br i1 %tobool.not.2.i, label %if.end.1.i.if.end37_crit_edge, label %if.then.2.i

if.end.1.i.if.end37_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.2.i = getelementptr inbounds %struct.dquot, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %dq_sb.i.2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dq_sb.i.2.i, align 4
  %dq_op.i.2.i = getelementptr inbounds %struct.super_block, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %dq_op.i.2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dq_op.i.2.i, align 8
  %mark_dirty.i.2.i = getelementptr inbounds %struct.dquot_operations, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %mark_dirty.i.2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mark_dirty.i.2.i, align 4
  %call.i.2.i = tail call i32 %85(ptr noundef nonnull %79) #13
  br label %if.end37

if.end37:                                         ; preds = %if.then.2.i, %if.end.1.i.if.end37_crit_edge, %warn_put_all
  %ret.282 = phi i32 [ %call12.lcssa97, %warn_put_all ], [ 0, %if.end.1.i.if.end37_crit_edge ], [ 0, %if.then.2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i69)
  %tobool.not.i76 = icmp ult i32 %call.i69, 2
  br i1 %tobool.not.i76, label %if.end37.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

if.end37.srcu_read_unlock.exit_crit_edge:         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %if.end37
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i77, !prof !277

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

if.then.i77:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i77, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %if.end37.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dquot_srcu, i32 0, i32 16)) #13
  tail call void @__srcu_read_unlock(ptr noundef nonnull @dquot_srcu, i32 noundef %call.i69) #13
  call fastcc void @flush_warnings(ptr noundef nonnull %warn)
  br label %cleanup

cleanup:                                          ; preds = %srcu_read_unlock.exit, %dquot_active.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.282, %srcu_read_unlock.exit ], [ 0, %dquot_active.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %warn) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dquot_add_inodes(ptr noundef %dquot, i64 noundef %inodes, ptr nocapture noundef writeonly %warn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock) #13
  %dqb_curinodes = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 6
  %0 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dqb_curinodes, align 8
  %add = add i64 %1, %inodes
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %2 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dq_sb, align 4
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %s_dquot.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %s_dquot.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_dquot.i.i, align 8
  %shl.i.i = shl i32 8, %5
  %and.i = and i32 %7, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.add51_crit_edge, label %lor.lhs.false

entry.add51_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %add51

lor.lhs.false:                                    ; preds = %entry
  %dq_flags = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 10
  %8 = ptrtoint ptr %dq_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dq_flags, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.add51_crit_edge

lor.lhs.false.add51_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %add51

if.end:                                           ; preds = %lor.lhs.false
  %dqb_ihardlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 4
  %11 = ptrtoint ptr %dqb_ihardlimit to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dqb_ihardlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool3.not = icmp ne i64 %12, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %12)
  %cmp = icmp sgt i64 %add, %12
  %or.cond = select i1 %tobool3.not, i1 %cmp, i1 false
  br i1 %or.cond, label %land.lhs.true6, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

land.lhs.true6:                                   ; preds = %if.end
  %call2.i = tail call zeroext i1 @capable(i32 noundef 24) #13
  br i1 %call2.i, label %land.rhs.i, label %land.lhs.true6.if.then9_crit_edge

land.lhs.true6.if.then9_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

land.rhs.i:                                       ; preds = %land.lhs.true6
  %arrayidx.i = getelementptr %struct.super_block, ptr %3, i32 0, i32 31, i32 3, i32 %5
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 1
  br i1 %cmp.not.i, label %ignore_hardlimit.exit, label %land.rhs.i.if.end10_crit_edge

land.rhs.i.if.end10_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

ignore_hardlimit.exit:                            ; preds = %land.rhs.i
  %dqi_flags.i = getelementptr %struct.super_block, ptr %3, i32 0, i32 31, i32 3, i32 %5, i32 3
  %17 = ptrtoint ptr %dqi_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dqi_flags.i, align 8
  %and.i87 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %tobool8.not.not = icmp eq i32 %and.i87, 0
  br i1 %tobool8.not.not, label %ignore_hardlimit.exit.if.end10_crit_edge, label %ignore_hardlimit.exit.if.then9_crit_edge

ignore_hardlimit.exit.if.then9_crit_edge:         ; preds = %ignore_hardlimit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

ignore_hardlimit.exit.if.end10_crit_edge:         ; preds = %ignore_hardlimit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then9:                                         ; preds = %ignore_hardlimit.exit.if.then9_crit_edge, %land.lhs.true6.if.then9_crit_edge
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %dq_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then9.out_crit_edge

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %w_type.i = getelementptr inbounds %struct.dquot_warn, ptr %warn, i32 0, i32 2
  %19 = ptrtoint ptr %w_type.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %w_type.i, align 4
  %20 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dq_sb, align 4
  %22 = ptrtoint ptr %warn to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %warn, align 4
  %w_dq_id.i = getelementptr inbounds %struct.dquot_warn, ptr %warn, i32 0, i32 1
  %dq_id.i = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %23 = ptrtoint ptr %dq_id.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %dq_id.i, align 8
  %25 = ptrtoint ptr %w_dq_id.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %w_dq_id.i, align 4
  br label %out

if.end10:                                         ; preds = %ignore_hardlimit.exit.if.end10_crit_edge, %land.rhs.i.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %dqb_isoftlimit = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 5
  %26 = ptrtoint ptr %dqb_isoftlimit to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dqb_isoftlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool12.not = icmp ne i64 %27, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %27)
  %cmp16 = icmp sgt i64 %add, %27
  %or.cond85 = select i1 %tobool12.not, i1 %cmp16, i1 false
  br i1 %or.cond85, label %land.lhs.true17, label %if.end10.if.end29_crit_edge

if.end10.if.end29_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true17:                                  ; preds = %if.end10
  %dqb_itime = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 8
  %28 = ptrtoint ptr %dqb_itime to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dqb_itime, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool19.not = icmp eq i64 %29, 0
  br i1 %tobool19.not, label %land.lhs.true17.if.end29_crit_edge, label %land.lhs.true20

land.lhs.true17.if.end29_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %call21 = tail call i64 @ktime_get_real_seconds() #13
  %30 = ptrtoint ptr %dqb_itime to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %dqb_itime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call21, i64 %31)
  %cmp24.not = icmp slt i64 %call21, %31
  br i1 %cmp24.not, label %land.lhs.true20.if.end29_crit_edge, label %land.lhs.true25

land.lhs.true20.if.end29_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %32 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dq_sb, align 4
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 4
  %call2.i91 = tail call zeroext i1 @capable(i32 noundef 24) #13
  br i1 %call2.i91, label %land.rhs.i94, label %land.lhs.true25.if.then28_crit_edge

land.lhs.true25.if.then28_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then28

land.rhs.i94:                                     ; preds = %land.lhs.true25
  %arrayidx.i92 = getelementptr %struct.super_block, ptr %33, i32 0, i32 31, i32 3, i32 %35
  %36 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i92, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.not.i93 = icmp eq i32 %39, 1
  br i1 %cmp.not.i93, label %ignore_hardlimit.exit98, label %land.rhs.i94.if.end29_crit_edge

land.rhs.i94.if.end29_crit_edge:                  ; preds = %land.rhs.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

ignore_hardlimit.exit98:                          ; preds = %land.rhs.i94
  %dqi_flags.i95 = getelementptr %struct.super_block, ptr %33, i32 0, i32 31, i32 3, i32 %35, i32 3
  %40 = ptrtoint ptr %dqi_flags.i95 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dqi_flags.i95, align 8
  %and.i96 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %tobool27.not.not = icmp eq i32 %and.i96, 0
  br i1 %tobool27.not.not, label %ignore_hardlimit.exit98.if.end29_crit_edge, label %ignore_hardlimit.exit98.if.then28_crit_edge

ignore_hardlimit.exit98.if.then28_crit_edge:      ; preds = %ignore_hardlimit.exit98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then28

ignore_hardlimit.exit98.if.end29_crit_edge:       ; preds = %ignore_hardlimit.exit98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then28:                                        ; preds = %ignore_hardlimit.exit98.if.then28_crit_edge, %land.lhs.true25.if.then28_crit_edge
  %call.i.i100 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %dq_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100)
  %tobool.not.i101 = icmp eq i32 %call.i.i100, 0
  br i1 %tobool.not.i101, label %if.end.i106, label %if.then28.out_crit_edge

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i106:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  %w_type.i102 = getelementptr inbounds %struct.dquot_warn, ptr %warn, i32 0, i32 2
  %42 = ptrtoint ptr %w_type.i102 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 2, ptr %w_type.i102, align 4
  %43 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dq_sb, align 4
  %45 = ptrtoint ptr %warn to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %warn, align 4
  %w_dq_id.i104 = getelementptr inbounds %struct.dquot_warn, ptr %warn, i32 0, i32 1
  %dq_id.i105 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %46 = ptrtoint ptr %dq_id.i105 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %dq_id.i105, align 8
  %48 = ptrtoint ptr %w_dq_id.i104 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %47, ptr %w_dq_id.i104, align 4
  br label %out

if.end29:                                         ; preds = %ignore_hardlimit.exit98.if.end29_crit_edge, %land.rhs.i94.if.end29_crit_edge, %land.lhs.true20.if.end29_crit_edge, %land.lhs.true17.if.end29_crit_edge, %if.end10.if.end29_crit_edge
  %49 = ptrtoint ptr %dqb_isoftlimit to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %dqb_isoftlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %tobool32.not = icmp ne i64 %50, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %50)
  %cmp36 = icmp sgt i64 %add, %50
  %or.cond86 = select i1 %tobool32.not, i1 %cmp36, i1 false
  br i1 %or.cond86, label %land.lhs.true37, label %if.end29.add51_crit_edge

if.end29.add51_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %add51

land.lhs.true37:                                  ; preds = %if.end29
  %dqb_itime39 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 11, i32 8
  %51 = ptrtoint ptr %dqb_itime39 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %dqb_itime39, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %cmp40 = icmp eq i64 %52, 0
  br i1 %cmp40, label %if.then41, label %land.lhs.true37.add51_crit_edge

land.lhs.true37.add51_crit_edge:                  ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #15
  br label %add51

if.then41:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #15
  %w_type.i108 = getelementptr inbounds %struct.dquot_warn, ptr %warn, i32 0, i32 2
  %53 = ptrtoint ptr %w_type.i108 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 3, ptr %w_type.i108, align 4
  %54 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dq_sb, align 4
  %56 = ptrtoint ptr %warn to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %warn, align 4
  %w_dq_id.i110 = getelementptr inbounds %struct.dquot_warn, ptr %warn, i32 0, i32 1
  %dq_id.i111 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8
  %57 = ptrtoint ptr %dq_id.i111 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %dq_id.i111, align 8
  %59 = ptrtoint ptr %w_dq_id.i110 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %w_dq_id.i110, align 4
  %call42 = tail call i64 @ktime_get_real_seconds() #13
  %60 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dq_sb, align 4
  %62 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type, align 4
  %dqi_igrace = getelementptr %struct.super_block, ptr %61, i32 0, i32 31, i32 3, i32 %63, i32 5
  %64 = ptrtoint ptr %dqi_igrace to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dqi_igrace, align 8
  %conv = zext i32 %65 to i64
  %add47 = add i64 %call42, %conv
  %66 = ptrtoint ptr %dqb_itime39 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %add47, ptr %dqb_itime39, align 8
  br label %add51

add51:                                            ; preds = %if.then41, %land.lhs.true37.add51_crit_edge, %if.end29.add51_crit_edge, %lor.lhs.false.add51_crit_edge, %entry.add51_crit_edge
  %67 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %add, ptr %dqb_curinodes, align 8
  br label %out

out:                                              ; preds = %add51, %if.end.i106, %if.then28.out_crit_edge, %if.end.i, %if.then9.out_crit_edge
  %ret.0 = phi i32 [ 0, %add51 ], [ -122, %if.then9.out_crit_edge ], [ -122, %if.end.i ], [ -122, %if.then28.out_crit_edge ], [ -122, %if.end.i106 ]
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_claim_space_nodirty(ptr noundef %inode, i64 noundef %number) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %dquot_active.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

dquot_active.exit:                                ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_dquot.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_dquot.i.i.i, align 8
  %and2.i.i.i = and i32 %5, 7
  %div.i2.i.i = lshr i32 %5, 6
  %and2.i.i6.i = and i32 %div.i2.i.i, 7
  %neg.i = xor i32 %and2.i.i6.i, -1
  %and2.i = and i32 %and2.i.i.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  br i1 %tobool.not, label %dquot_active.exit.if.then_crit_edge, label %if.end

dquot_active.exit.if.then_crit_edge:              ; preds = %dquot_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %dquot_active.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #13
  %i_sb.i93 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i93 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i93, align 4
  %dq_op.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %dq_op.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dq_op.i, align 8
  %get_reserved_space.i = getelementptr inbounds %struct.dquot_operations, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %get_reserved_space.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_reserved_space.i, align 4
  %tobool.not.i94 = icmp eq ptr %11, null
  br i1 %tobool.not.i94, label %do.body4.i, label %inode_reserved_space.exit, !prof !282

do.body4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/dquot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1617, 0\0A.popsection", ""() #13, !srcloc !289
  unreachable

inode_reserved_space.exit:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr %11(ptr noundef %inode) #13
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %call.i, align 8
  %sub = sub i64 %13, %number
  store i64 %sub, ptr %call.i, align 8
  tail call void @__inode_add_bytes(ptr noundef %inode, i64 noundef %number) #13
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  br label %cleanup

if.end:                                           ; preds = %dquot_active.exit
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_op.i, align 4
  %get_dquots.i = getelementptr inbounds %struct.super_operations, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %get_dquots.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_dquots.i, align 4
  %call.i96 = tail call ptr %19(ptr noundef %inode) #13
  %call.i97 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @dquot_srcu) #13
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dquot_srcu, i32 0, i32 16)) #13
  %i_lock5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock5) #13
  %20 = ptrtoint ptr %call.i96 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i96, align 4
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %if.end.for.inc_crit_edge, label %if.then7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then7:                                         ; preds = %if.end
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %21, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock) #13
  %dqb_rsvspace = getelementptr inbounds %struct.dquot, ptr %21, i32 0, i32 11, i32 3
  %22 = ptrtoint ptr %dqb_rsvspace to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dqb_rsvspace, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %number)
  %cmp9 = icmp slt i64 %23, %number
  br i1 %cmp9, label %land.rhs, label %if.then7.if.end51_crit_edge

if.then7.if.end51_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

land.rhs:                                         ; preds = %if.then7
  %.b91 = load i1, ptr @dquot_claim_space_nodirty.__already_done, align 1
  br i1 %.b91, label %land.rhs.if.then48_crit_edge, label %if.then17, !prof !277

land.rhs.if.then48_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_claim_space_nodirty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1790, i32 noundef 9, ptr noundef null) #13
  br label %if.then48

if.then48:                                        ; preds = %if.then17, %land.rhs.if.then48_crit_edge
  %24 = ptrtoint ptr %dqb_rsvspace to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dqb_rsvspace, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.then7.if.end51_crit_edge
  %number.addr.1 = phi i64 [ %25, %if.then48 ], [ %number, %if.then7.if.end51_crit_edge ]
  %dqb_curspace = getelementptr inbounds %struct.dquot, ptr %21, i32 0, i32 11, i32 2
  %26 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dqb_curspace, align 8
  %add = add i64 %27, %number.addr.1
  store i64 %add, ptr %dqb_curspace, align 8
  %28 = ptrtoint ptr %dqb_rsvspace to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dqb_rsvspace, align 8
  %sub55 = sub i64 %29, %number.addr.1
  store i64 %sub55, ptr %dqb_rsvspace, align 8
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end51, %if.end.for.inc_crit_edge
  %number.addr.2 = phi i64 [ %number.addr.1, %if.end51 ], [ %number, %if.end.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr ptr, ptr %call.i96, i32 1
  %30 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.1, align 4
  %tobool6.not.1 = icmp eq ptr %31, null
  br i1 %tobool6.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then7.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then7.1:                                       ; preds = %for.inc
  %dq_dqb_lock.1 = getelementptr inbounds %struct.dquot, ptr %31, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock.1) #13
  %dqb_rsvspace.1 = getelementptr inbounds %struct.dquot, ptr %31, i32 0, i32 11, i32 3
  %32 = ptrtoint ptr %dqb_rsvspace.1 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %dqb_rsvspace.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %number.addr.2)
  %cmp9.1 = icmp slt i64 %33, %number.addr.2
  br i1 %cmp9.1, label %land.rhs.1, label %if.then7.1.if.end51.1_crit_edge

if.then7.1.if.end51.1_crit_edge:                  ; preds = %if.then7.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.1

land.rhs.1:                                       ; preds = %if.then7.1
  %.b91.1 = load i1, ptr @dquot_claim_space_nodirty.__already_done, align 1
  br i1 %.b91.1, label %land.rhs.1.if.then48.1_crit_edge, label %if.then17.1, !prof !277

land.rhs.1.if.then48.1_crit_edge:                 ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48.1

if.then17.1:                                      ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_claim_space_nodirty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1790, i32 noundef 9, ptr noundef null) #13
  br label %if.then48.1

if.then48.1:                                      ; preds = %if.then17.1, %land.rhs.1.if.then48.1_crit_edge
  %34 = ptrtoint ptr %dqb_rsvspace.1 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dqb_rsvspace.1, align 8
  br label %if.end51.1

if.end51.1:                                       ; preds = %if.then48.1, %if.then7.1.if.end51.1_crit_edge
  %number.addr.1.1 = phi i64 [ %35, %if.then48.1 ], [ %number.addr.2, %if.then7.1.if.end51.1_crit_edge ]
  %dqb_curspace.1 = getelementptr inbounds %struct.dquot, ptr %31, i32 0, i32 11, i32 2
  %36 = ptrtoint ptr %dqb_curspace.1 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %dqb_curspace.1, align 8
  %add.1 = add i64 %37, %number.addr.1.1
  store i64 %add.1, ptr %dqb_curspace.1, align 8
  %38 = ptrtoint ptr %dqb_rsvspace.1 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %dqb_rsvspace.1, align 8
  %sub55.1 = sub i64 %39, %number.addr.1.1
  store i64 %sub55.1, ptr %dqb_rsvspace.1, align 8
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock.1) #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end51.1, %for.inc.for.inc.1_crit_edge
  %number.addr.2.1 = phi i64 [ %number.addr.1.1, %if.end51.1 ], [ %number.addr.2, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr ptr, ptr %call.i96, i32 2
  %40 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.2, align 4
  %tobool6.not.2 = icmp eq ptr %41, null
  br i1 %tobool6.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then7.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then7.2:                                       ; preds = %for.inc.1
  %dq_dqb_lock.2 = getelementptr inbounds %struct.dquot, ptr %41, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock.2) #13
  %dqb_rsvspace.2 = getelementptr inbounds %struct.dquot, ptr %41, i32 0, i32 11, i32 3
  %42 = ptrtoint ptr %dqb_rsvspace.2 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %dqb_rsvspace.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %number.addr.2.1)
  %cmp9.2 = icmp slt i64 %43, %number.addr.2.1
  br i1 %cmp9.2, label %land.rhs.2, label %if.then7.2.if.end51.2_crit_edge

if.then7.2.if.end51.2_crit_edge:                  ; preds = %if.then7.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.2

land.rhs.2:                                       ; preds = %if.then7.2
  %.b91.2 = load i1, ptr @dquot_claim_space_nodirty.__already_done, align 1
  br i1 %.b91.2, label %land.rhs.2.if.then48.2_crit_edge, label %if.then17.2, !prof !277

land.rhs.2.if.then48.2_crit_edge:                 ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48.2

if.then17.2:                                      ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_claim_space_nodirty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1790, i32 noundef 9, ptr noundef null) #13
  br label %if.then48.2

if.then48.2:                                      ; preds = %if.then17.2, %land.rhs.2.if.then48.2_crit_edge
  %44 = ptrtoint ptr %dqb_rsvspace.2 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %dqb_rsvspace.2, align 8
  br label %if.end51.2

if.end51.2:                                       ; preds = %if.then48.2, %if.then7.2.if.end51.2_crit_edge
  %number.addr.1.2 = phi i64 [ %45, %if.then48.2 ], [ %number.addr.2.1, %if.then7.2.if.end51.2_crit_edge ]
  %dqb_curspace.2 = getelementptr inbounds %struct.dquot, ptr %41, i32 0, i32 11, i32 2
  %46 = ptrtoint ptr %dqb_curspace.2 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %dqb_curspace.2, align 8
  %add.2 = add i64 %47, %number.addr.1.2
  store i64 %add.2, ptr %dqb_curspace.2, align 8
  %48 = ptrtoint ptr %dqb_rsvspace.2 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %dqb_rsvspace.2, align 8
  %sub55.2 = sub i64 %49, %number.addr.1.2
  store i64 %sub55.2, ptr %dqb_rsvspace.2, align 8
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock.2) #13
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end51.2, %for.inc.1.for.inc.2_crit_edge
  %number.addr.2.2 = phi i64 [ %number.addr.1.2, %if.end51.2 ], [ %number.addr.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %50 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb.i, align 4
  %dq_op.i99 = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %dq_op.i99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dq_op.i99, align 8
  %get_reserved_space.i100 = getelementptr inbounds %struct.dquot_operations, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %get_reserved_space.i100 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_reserved_space.i100, align 4
  %tobool.not.i101 = icmp eq ptr %55, null
  br i1 %tobool.not.i101, label %do.body4.i102, label %inode_reserved_space.exit104, !prof !282

do.body4.i102:                                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/dquot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1617, 0\0A.popsection", ""() #13, !srcloc !289
  unreachable

inode_reserved_space.exit104:                     ; preds = %for.inc.2
  %call.i103 = tail call ptr %55(ptr noundef %inode) #13
  %56 = ptrtoint ptr %call.i103 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %call.i103, align 8
  %sub59 = sub i64 %57, %number.addr.2.2
  store i64 %sub59, ptr %call.i103, align 8
  tail call void @__inode_add_bytes(ptr noundef %inode, i64 noundef %number.addr.2.2) #13
  tail call void @_raw_spin_unlock(ptr noundef %i_lock5) #13
  %58 = ptrtoint ptr %call.i96 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i96, align 4
  %tobool.not.i105 = icmp eq ptr %59, null
  br i1 %tobool.not.i105, label %inode_reserved_space.exit104.if.end.i106_crit_edge, label %if.then.i

inode_reserved_space.exit104.if.end.i106_crit_edge: ; preds = %inode_reserved_space.exit104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i106

if.then.i:                                        ; preds = %inode_reserved_space.exit104
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.i = getelementptr inbounds %struct.dquot, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %dq_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dq_sb.i.i, align 4
  %dq_op.i.i = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %dq_op.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dq_op.i.i, align 8
  %mark_dirty.i.i = getelementptr inbounds %struct.dquot_operations, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %mark_dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mark_dirty.i.i, align 4
  %call.i.i = tail call i32 %65(ptr noundef nonnull %59) #13
  br label %if.end.i106

if.end.i106:                                      ; preds = %if.then.i, %inode_reserved_space.exit104.if.end.i106_crit_edge
  %66 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1.i = icmp eq ptr %67, null
  br i1 %tobool.not.1.i, label %if.end.i106.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i106.if.end.1.i_crit_edge:                 ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.1.i = getelementptr inbounds %struct.dquot, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %dq_sb.i.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dq_sb.i.1.i, align 4
  %dq_op.i.1.i = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %dq_op.i.1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dq_op.i.1.i, align 8
  %mark_dirty.i.1.i = getelementptr inbounds %struct.dquot_operations, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %mark_dirty.i.1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mark_dirty.i.1.i, align 4
  %call.i.1.i = tail call i32 %73(ptr noundef nonnull %67) #13
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i106.if.end.1.i_crit_edge
  %74 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2.i = icmp eq ptr %75, null
  br i1 %tobool.not.2.i, label %if.end.1.i.mark_all_dquot_dirty.exit_crit_edge, label %if.then.2.i

if.end.1.i.mark_all_dquot_dirty.exit_crit_edge:   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mark_all_dquot_dirty.exit

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.2.i = getelementptr inbounds %struct.dquot, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %dq_sb.i.2.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dq_sb.i.2.i, align 4
  %dq_op.i.2.i = getelementptr inbounds %struct.super_block, ptr %77, i32 0, i32 7
  %78 = ptrtoint ptr %dq_op.i.2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dq_op.i.2.i, align 8
  %mark_dirty.i.2.i = getelementptr inbounds %struct.dquot_operations, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %mark_dirty.i.2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mark_dirty.i.2.i, align 4
  %call.i.2.i = tail call i32 %81(ptr noundef nonnull %75) #13
  br label %mark_all_dquot_dirty.exit

mark_all_dquot_dirty.exit:                        ; preds = %if.then.2.i, %if.end.1.i.mark_all_dquot_dirty.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i97)
  %tobool.not.i107 = icmp ult i32 %call.i97, 2
  br i1 %tobool.not.i107, label %mark_all_dquot_dirty.exit.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

mark_all_dquot_dirty.exit.srcu_read_unlock.exit_crit_edge: ; preds = %mark_all_dquot_dirty.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %mark_all_dquot_dirty.exit
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i108, !prof !277

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

if.then.i108:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i108, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %mark_all_dquot_dirty.exit.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dquot_srcu, i32 0, i32 16)) #13
  tail call void @__srcu_read_unlock(ptr noundef nonnull @dquot_srcu, i32 noundef %call.i97) #13
  br label %cleanup

cleanup:                                          ; preds = %srcu_read_unlock.exit, %inode_reserved_space.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dquot_reclaim_space_nodirty(ptr noundef %inode, i64 noundef %number) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %dquot_active.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

dquot_active.exit:                                ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_dquot.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_dquot.i.i.i, align 8
  %and2.i.i.i = and i32 %5, 7
  %div.i2.i.i = lshr i32 %5, 6
  %and2.i.i6.i = and i32 %div.i2.i.i, 7
  %neg.i = xor i32 %and2.i.i6.i, -1
  %and2.i = and i32 %and2.i.i.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  br i1 %tobool.not, label %dquot_active.exit.if.then_crit_edge, label %if.end

dquot_active.exit.if.then_crit_edge:              ; preds = %dquot_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %dquot_active.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #13
  %i_sb.i93 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i93 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i93, align 4
  %dq_op.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %dq_op.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dq_op.i, align 8
  %get_reserved_space.i = getelementptr inbounds %struct.dquot_operations, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %get_reserved_space.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_reserved_space.i, align 4
  %tobool.not.i94 = icmp eq ptr %11, null
  br i1 %tobool.not.i94, label %do.body4.i, label %inode_reserved_space.exit, !prof !282

do.body4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/dquot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1617, 0\0A.popsection", ""() #13, !srcloc !289
  unreachable

inode_reserved_space.exit:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr %11(ptr noundef %inode) #13
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %call.i, align 8
  %add = add i64 %13, %number
  store i64 %add, ptr %call.i, align 8
  tail call void @__inode_sub_bytes(ptr noundef %inode, i64 noundef %number) #13
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  br label %cleanup

if.end:                                           ; preds = %dquot_active.exit
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_op.i, align 4
  %get_dquots.i = getelementptr inbounds %struct.super_operations, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %get_dquots.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_dquots.i, align 4
  %call.i96 = tail call ptr %19(ptr noundef %inode) #13
  %call.i97 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @dquot_srcu) #13
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dquot_srcu, i32 0, i32 16)) #13
  %i_lock5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock5) #13
  %20 = ptrtoint ptr %call.i96 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i96, align 4
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %if.end.for.inc_crit_edge, label %if.then7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then7:                                         ; preds = %if.end
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %21, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock) #13
  %dqb_curspace = getelementptr inbounds %struct.dquot, ptr %21, i32 0, i32 11, i32 2
  %22 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dqb_curspace, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %number)
  %cmp9 = icmp slt i64 %23, %number
  br i1 %cmp9, label %land.rhs, label %if.then7.if.end51_crit_edge

if.then7.if.end51_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

land.rhs:                                         ; preds = %if.then7
  %.b91 = load i1, ptr @dquot_reclaim_space_nodirty.__already_done, align 1
  br i1 %.b91, label %land.rhs.if.then48_crit_edge, label %if.then17, !prof !277

land.rhs.if.then48_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_reclaim_space_nodirty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1832, i32 noundef 9, ptr noundef null) #13
  br label %if.then48

if.then48:                                        ; preds = %if.then17, %land.rhs.if.then48_crit_edge
  %24 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dqb_curspace, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.then7.if.end51_crit_edge
  %number.addr.1 = phi i64 [ %25, %if.then48 ], [ %number, %if.then7.if.end51_crit_edge ]
  %dqb_rsvspace = getelementptr inbounds %struct.dquot, ptr %21, i32 0, i32 11, i32 3
  %26 = ptrtoint ptr %dqb_rsvspace to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dqb_rsvspace, align 8
  %add53 = add i64 %27, %number.addr.1
  store i64 %add53, ptr %dqb_rsvspace, align 8
  %28 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dqb_curspace, align 8
  %sub = sub i64 %29, %number.addr.1
  store i64 %sub, ptr %dqb_curspace, align 8
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end51, %if.end.for.inc_crit_edge
  %number.addr.2 = phi i64 [ %number.addr.1, %if.end51 ], [ %number, %if.end.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr ptr, ptr %call.i96, i32 1
  %30 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.1, align 4
  %tobool6.not.1 = icmp eq ptr %31, null
  br i1 %tobool6.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then7.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then7.1:                                       ; preds = %for.inc
  %dq_dqb_lock.1 = getelementptr inbounds %struct.dquot, ptr %31, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock.1) #13
  %dqb_curspace.1 = getelementptr inbounds %struct.dquot, ptr %31, i32 0, i32 11, i32 2
  %32 = ptrtoint ptr %dqb_curspace.1 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %dqb_curspace.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %number.addr.2)
  %cmp9.1 = icmp slt i64 %33, %number.addr.2
  br i1 %cmp9.1, label %land.rhs.1, label %if.then7.1.if.end51.1_crit_edge

if.then7.1.if.end51.1_crit_edge:                  ; preds = %if.then7.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.1

land.rhs.1:                                       ; preds = %if.then7.1
  %.b91.1 = load i1, ptr @dquot_reclaim_space_nodirty.__already_done, align 1
  br i1 %.b91.1, label %land.rhs.1.if.then48.1_crit_edge, label %if.then17.1, !prof !277

land.rhs.1.if.then48.1_crit_edge:                 ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48.1

if.then17.1:                                      ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_reclaim_space_nodirty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1832, i32 noundef 9, ptr noundef null) #13
  br label %if.then48.1

if.then48.1:                                      ; preds = %if.then17.1, %land.rhs.1.if.then48.1_crit_edge
  %34 = ptrtoint ptr %dqb_curspace.1 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dqb_curspace.1, align 8
  br label %if.end51.1

if.end51.1:                                       ; preds = %if.then48.1, %if.then7.1.if.end51.1_crit_edge
  %number.addr.1.1 = phi i64 [ %35, %if.then48.1 ], [ %number.addr.2, %if.then7.1.if.end51.1_crit_edge ]
  %dqb_rsvspace.1 = getelementptr inbounds %struct.dquot, ptr %31, i32 0, i32 11, i32 3
  %36 = ptrtoint ptr %dqb_rsvspace.1 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %dqb_rsvspace.1, align 8
  %add53.1 = add i64 %37, %number.addr.1.1
  store i64 %add53.1, ptr %dqb_rsvspace.1, align 8
  %38 = ptrtoint ptr %dqb_curspace.1 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %dqb_curspace.1, align 8
  %sub.1 = sub i64 %39, %number.addr.1.1
  store i64 %sub.1, ptr %dqb_curspace.1, align 8
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock.1) #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end51.1, %for.inc.for.inc.1_crit_edge
  %number.addr.2.1 = phi i64 [ %number.addr.1.1, %if.end51.1 ], [ %number.addr.2, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr ptr, ptr %call.i96, i32 2
  %40 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.2, align 4
  %tobool6.not.2 = icmp eq ptr %41, null
  br i1 %tobool6.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then7.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then7.2:                                       ; preds = %for.inc.1
  %dq_dqb_lock.2 = getelementptr inbounds %struct.dquot, ptr %41, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock.2) #13
  %dqb_curspace.2 = getelementptr inbounds %struct.dquot, ptr %41, i32 0, i32 11, i32 2
  %42 = ptrtoint ptr %dqb_curspace.2 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %dqb_curspace.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %number.addr.2.1)
  %cmp9.2 = icmp slt i64 %43, %number.addr.2.1
  br i1 %cmp9.2, label %land.rhs.2, label %if.then7.2.if.end51.2_crit_edge

if.then7.2.if.end51.2_crit_edge:                  ; preds = %if.then7.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.2

land.rhs.2:                                       ; preds = %if.then7.2
  %.b91.2 = load i1, ptr @dquot_reclaim_space_nodirty.__already_done, align 1
  br i1 %.b91.2, label %land.rhs.2.if.then48.2_crit_edge, label %if.then17.2, !prof !277

land.rhs.2.if.then48.2_crit_edge:                 ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48.2

if.then17.2:                                      ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_reclaim_space_nodirty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1832, i32 noundef 9, ptr noundef null) #13
  br label %if.then48.2

if.then48.2:                                      ; preds = %if.then17.2, %land.rhs.2.if.then48.2_crit_edge
  %44 = ptrtoint ptr %dqb_curspace.2 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %dqb_curspace.2, align 8
  br label %if.end51.2

if.end51.2:                                       ; preds = %if.then48.2, %if.then7.2.if.end51.2_crit_edge
  %number.addr.1.2 = phi i64 [ %45, %if.then48.2 ], [ %number.addr.2.1, %if.then7.2.if.end51.2_crit_edge ]
  %dqb_rsvspace.2 = getelementptr inbounds %struct.dquot, ptr %41, i32 0, i32 11, i32 3
  %46 = ptrtoint ptr %dqb_rsvspace.2 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %dqb_rsvspace.2, align 8
  %add53.2 = add i64 %47, %number.addr.1.2
  store i64 %add53.2, ptr %dqb_rsvspace.2, align 8
  %48 = ptrtoint ptr %dqb_curspace.2 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %dqb_curspace.2, align 8
  %sub.2 = sub i64 %49, %number.addr.1.2
  store i64 %sub.2, ptr %dqb_curspace.2, align 8
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock.2) #13
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end51.2, %for.inc.1.for.inc.2_crit_edge
  %number.addr.2.2 = phi i64 [ %number.addr.1.2, %if.end51.2 ], [ %number.addr.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %50 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb.i, align 4
  %dq_op.i99 = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %dq_op.i99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dq_op.i99, align 8
  %get_reserved_space.i100 = getelementptr inbounds %struct.dquot_operations, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %get_reserved_space.i100 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_reserved_space.i100, align 4
  %tobool.not.i101 = icmp eq ptr %55, null
  br i1 %tobool.not.i101, label %do.body4.i102, label %inode_reserved_space.exit104, !prof !282

do.body4.i102:                                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/dquot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1617, 0\0A.popsection", ""() #13, !srcloc !289
  unreachable

inode_reserved_space.exit104:                     ; preds = %for.inc.2
  %call.i103 = tail call ptr %55(ptr noundef %inode) #13
  %56 = ptrtoint ptr %call.i103 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %call.i103, align 8
  %add59 = add i64 %57, %number.addr.2.2
  store i64 %add59, ptr %call.i103, align 8
  tail call void @__inode_sub_bytes(ptr noundef %inode, i64 noundef %number.addr.2.2) #13
  tail call void @_raw_spin_unlock(ptr noundef %i_lock5) #13
  %58 = ptrtoint ptr %call.i96 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i96, align 4
  %tobool.not.i105 = icmp eq ptr %59, null
  br i1 %tobool.not.i105, label %inode_reserved_space.exit104.if.end.i106_crit_edge, label %if.then.i

inode_reserved_space.exit104.if.end.i106_crit_edge: ; preds = %inode_reserved_space.exit104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i106

if.then.i:                                        ; preds = %inode_reserved_space.exit104
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.i = getelementptr inbounds %struct.dquot, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %dq_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dq_sb.i.i, align 4
  %dq_op.i.i = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %dq_op.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dq_op.i.i, align 8
  %mark_dirty.i.i = getelementptr inbounds %struct.dquot_operations, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %mark_dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mark_dirty.i.i, align 4
  %call.i.i = tail call i32 %65(ptr noundef nonnull %59) #13
  br label %if.end.i106

if.end.i106:                                      ; preds = %if.then.i, %inode_reserved_space.exit104.if.end.i106_crit_edge
  %66 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1.i = icmp eq ptr %67, null
  br i1 %tobool.not.1.i, label %if.end.i106.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i106.if.end.1.i_crit_edge:                 ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.1.i = getelementptr inbounds %struct.dquot, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %dq_sb.i.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dq_sb.i.1.i, align 4
  %dq_op.i.1.i = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %dq_op.i.1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dq_op.i.1.i, align 8
  %mark_dirty.i.1.i = getelementptr inbounds %struct.dquot_operations, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %mark_dirty.i.1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mark_dirty.i.1.i, align 4
  %call.i.1.i = tail call i32 %73(ptr noundef nonnull %67) #13
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i106.if.end.1.i_crit_edge
  %74 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2.i = icmp eq ptr %75, null
  br i1 %tobool.not.2.i, label %if.end.1.i.mark_all_dquot_dirty.exit_crit_edge, label %if.then.2.i

if.end.1.i.mark_all_dquot_dirty.exit_crit_edge:   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mark_all_dquot_dirty.exit

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.2.i = getelementptr inbounds %struct.dquot, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %dq_sb.i.2.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dq_sb.i.2.i, align 4
  %dq_op.i.2.i = getelementptr inbounds %struct.super_block, ptr %77, i32 0, i32 7
  %78 = ptrtoint ptr %dq_op.i.2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dq_op.i.2.i, align 8
  %mark_dirty.i.2.i = getelementptr inbounds %struct.dquot_operations, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %mark_dirty.i.2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mark_dirty.i.2.i, align 4
  %call.i.2.i = tail call i32 %81(ptr noundef nonnull %75) #13
  br label %mark_all_dquot_dirty.exit

mark_all_dquot_dirty.exit:                        ; preds = %if.then.2.i, %if.end.1.i.mark_all_dquot_dirty.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i97)
  %tobool.not.i107 = icmp ult i32 %call.i97, 2
  br i1 %tobool.not.i107, label %mark_all_dquot_dirty.exit.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

mark_all_dquot_dirty.exit.srcu_read_unlock.exit_crit_edge: ; preds = %mark_all_dquot_dirty.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %mark_all_dquot_dirty.exit
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i108, !prof !277

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

if.then.i108:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i108, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %mark_all_dquot_dirty.exit.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dquot_srcu, i32 0, i32 16)) #13
  tail call void @__srcu_read_unlock(ptr noundef nonnull @dquot_srcu, i32 noundef %call.i97) #13
  br label %cleanup

cleanup:                                          ; preds = %srcu_read_unlock.exit, %inode_reserved_space.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__inode_sub_bytes(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dquot_free_space(ptr noundef %inode, i64 noundef %number, i32 noundef %flags) #0 align 64 {
entry:
  %warn = alloca [3 x %struct.dquot_warn], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %warn) #13
  %0 = call ptr @memset(ptr %warn, i32 255, i32 48)
  %and = and i32 %flags, 2
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %1 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %dquot_active.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

dquot_active.exit:                                ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_dquot.i.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 31
  %5 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dquot.i.i.i, align 8
  %and2.i.i.i = and i32 %6, 7
  %div.i2.i.i = lshr i32 %6, 6
  %and2.i.i6.i = and i32 %div.i2.i.i, 7
  %neg.i = xor i32 %and2.i.i6.i, -1
  %and2.i = and i32 %and2.i.i.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  br i1 %tobool.not, label %dquot_active.exit.if.then_crit_edge, label %if.end5

dquot_active.exit.if.then_crit_edge:              ; preds = %dquot_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %dquot_active.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #13
  %i_sb.i83 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i83 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i83, align 4
  %dq_op.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %dq_op.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dq_op.i, align 8
  %get_reserved_space.i = getelementptr inbounds %struct.dquot_operations, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %get_reserved_space.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_reserved_space.i, align 4
  %tobool.not.i84 = icmp eq ptr %12, null
  br i1 %tobool.not.i84, label %do.body4.i, label %inode_reserved_space.exit, !prof !282

do.body4.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/dquot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1617, 0\0A.popsection", ""() #13, !srcloc !289
  unreachable

inode_reserved_space.exit:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr %12(ptr noundef %inode) #13
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %call.i, align 8
  %sub = sub i64 %14, %number
  store i64 %sub, ptr %call.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  br label %cleanup40

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @inode_sub_bytes(ptr noundef %inode, i64 noundef %number) #13
  br label %cleanup40

if.end5:                                          ; preds = %dquot_active.exit
  %15 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i, align 4
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_op.i, align 4
  %get_dquots.i = getelementptr inbounds %struct.super_operations, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %get_dquots.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_dquots.i, align 4
  %call.i86 = tail call ptr %20(ptr noundef %inode) #13
  %call.i87 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @dquot_srcu) #13
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dquot_srcu, i32 0, i32 16)) #13
  %i_lock8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end5
  %cnt.0132 = phi i32 [ 0, %if.end5 ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 %cnt.0132
  %w_type = getelementptr [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 %cnt.0132, i32 2
  %21 = ptrtoint ptr %w_type to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %w_type, align 4
  %arrayidx9 = getelementptr ptr, ptr %call.i86, i32 %cnt.0132
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %23, null
  br i1 %tobool10.not, label %for.body.cleanup_crit_edge, label %if.end12

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %23, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock) #13
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx9, align 4
  %dq_dqb.i = getelementptr inbounds %struct.dquot, ptr %25, i32 0, i32 11
  %dqb_curspace.i = getelementptr inbounds %struct.dquot, ptr %25, i32 0, i32 11, i32 2
  %26 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dqb_curspace.i, align 8
  %dqb_rsvspace.i = getelementptr inbounds %struct.dquot, ptr %25, i32 0, i32 11, i32 3
  %28 = ptrtoint ptr %dqb_rsvspace.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dqb_rsvspace.i, align 8
  %add.i = add i64 %29, %27
  %dq_flags.i = getelementptr inbounds %struct.dquot, ptr %25, i32 0, i32 10
  %30 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %dq_flags.i, align 4
  %32 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i88 = icmp eq i32 %32, 0
  br i1 %tobool.not.i88, label %lor.lhs.false.i, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

lor.lhs.false.i:                                  ; preds = %if.end12
  %dqb_bsoftlimit.i = getelementptr inbounds %struct.dquot, ptr %25, i32 0, i32 11, i32 1
  %33 = ptrtoint ptr %dqb_bsoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %dqb_bsoftlimit.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %34)
  %cmp.not.i = icmp sgt i64 %add.i, %34
  br i1 %cmp.not.i, label %if.end.i89, label %lor.lhs.false.i.if.end20_crit_edge

lor.lhs.false.i.if.end20_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.end.i89:                                       ; preds = %lor.lhs.false.i
  %sub.i = sub i64 %add.i, %number
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %34)
  %cmp5.not.i = icmp sgt i64 %sub.i, %34
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end.i89.prepare_warning.exit_crit_edge

if.end.i89.prepare_warning.exit_crit_edge:        ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #15
  br label %prepare_warning.exit

if.end7.i:                                        ; preds = %if.end.i89
  %35 = ptrtoint ptr %dq_dqb.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %dq_dqb.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %36)
  %cmp9.not.i = icmp sge i64 %add.i, %36
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %36)
  %cmp13.i = icmp slt i64 %sub.i, %36
  %or.cond.i = and i1 %cmp9.not.i, %cmp13.i
  br i1 %or.cond.i, label %if.end7.i.prepare_warning.exit_crit_edge, label %if.end7.i.if.end20_crit_edge

if.end7.i.if.end20_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.end7.i.prepare_warning.exit_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %prepare_warning.exit

prepare_warning.exit:                             ; preds = %if.end7.i.prepare_warning.exit_crit_edge, %if.end.i89.prepare_warning.exit_crit_edge
  %retval.0.i90 = phi i16 [ 10, %if.end.i89.prepare_warning.exit_crit_edge ], [ 9, %if.end7.i.prepare_warning.exit_crit_edge ]
  %37 = ptrtoint ptr %w_type to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %retval.0.i90, ptr %w_type, align 4
  %dq_sb.i = getelementptr inbounds %struct.dquot, ptr %25, i32 0, i32 7
  %38 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dq_sb.i, align 4
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %arrayidx, align 4
  %w_dq_id.i = getelementptr [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 %cnt.0132, i32 1
  %dq_id.i = getelementptr inbounds %struct.dquot, ptr %25, i32 0, i32 8
  %41 = ptrtoint ptr %dq_id.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %dq_id.i, align 8
  %43 = ptrtoint ptr %w_dq_id.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %w_dq_id.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %prepare_warning.exit, %if.end7.i.if.end20_crit_edge, %lor.lhs.false.i.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %44 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx9, align 4
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.end20
  %dqb_rsvspace.i93 = getelementptr inbounds %struct.dquot, ptr %45, i32 0, i32 11, i32 3
  %46 = ptrtoint ptr %dqb_rsvspace.i93 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %dqb_rsvspace.i93, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %number)
  %cmp.not.i94 = icmp slt i64 %47, %number
  br i1 %cmp.not.i94, label %land.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i95 = sub i64 %47, %number
  br label %if.end38.i

land.end.i:                                       ; preds = %if.then22
  %.b57.i = load i1, ptr @dquot_free_reserved_space.__already_done, align 1
  br i1 %.b57.i, label %land.end.i.if.end38.i_crit_edge, label %if.then7.i, !prof !277

land.end.i.if.end38.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_free_reserved_space.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1112, i32 noundef 9, ptr noundef null) #13
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then7.i, %land.end.i.if.end38.i_crit_edge, %if.then.i
  %storemerge.i = phi i64 [ %sub.i95, %if.then.i ], [ 0, %if.then7.i ], [ 0, %land.end.i.if.end38.i_crit_edge ]
  %48 = ptrtoint ptr %dqb_rsvspace.i93 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %storemerge.i, ptr %dqb_rsvspace.i93, align 8
  %dqb_curspace.i96 = getelementptr inbounds %struct.dquot, ptr %45, i32 0, i32 11, i32 2
  %49 = ptrtoint ptr %dqb_curspace.i96 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %dqb_curspace.i96, align 8
  %add.i97 = add i64 %50, %storemerge.i
  %dqb_bsoftlimit.i98 = getelementptr inbounds %struct.dquot, ptr %45, i32 0, i32 11, i32 1
  %51 = ptrtoint ptr %dqb_bsoftlimit.i98 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %dqb_bsoftlimit.i98, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i97, i64 %52)
  %cmp43.not.i = icmp sgt i64 %add.i97, %52
  br i1 %cmp43.not.i, label %if.end38.i.if.end26_crit_edge, label %if.end38.i.if.end26.sink.split_crit_edge

if.end38.i.if.end26.sink.split_crit_edge:         ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.sink.split

if.end38.i.if.end26_crit_edge:                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.else24:                                        ; preds = %if.end20
  %dq_sb.i100 = getelementptr inbounds %struct.dquot, ptr %45, i32 0, i32 7
  %53 = ptrtoint ptr %dq_sb.i100 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dq_sb.i100, align 4
  %s_dquot.i.i = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 31
  %55 = ptrtoint ptr %s_dquot.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_dquot.i.i, align 8
  %and.i101 = and i32 %56, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101)
  %tobool.not.i102 = icmp eq i32 %and.i101, 0
  br i1 %tobool.not.i102, label %lor.lhs.false.i105, label %if.else24.if.then.i107_crit_edge

if.else24.if.then.i107_crit_edge:                 ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i107

lor.lhs.false.i105:                               ; preds = %if.else24
  %dqb_curspace.i103 = getelementptr inbounds %struct.dquot, ptr %45, i32 0, i32 11, i32 2
  %57 = ptrtoint ptr %dqb_curspace.i103 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %dqb_curspace.i103, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %number)
  %cmp.not.i104 = icmp slt i64 %58, %number
  br i1 %cmp.not.i104, label %if.else.i, label %lor.lhs.false.i105.if.then.i107_crit_edge

lor.lhs.false.i105.if.then.i107_crit_edge:        ; preds = %lor.lhs.false.i105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i107

if.then.i107:                                     ; preds = %lor.lhs.false.i105.if.then.i107_crit_edge, %if.else24.if.then.i107_crit_edge
  %dqb_curspace2.i = getelementptr inbounds %struct.dquot, ptr %45, i32 0, i32 11, i32 2
  %59 = ptrtoint ptr %dqb_curspace2.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %dqb_curspace2.i, align 8
  %sub.i106 = sub i64 %60, %number
  store i64 %sub.i106, ptr %dqb_curspace2.i, align 8
  br label %if.end.i112

if.else.i:                                        ; preds = %lor.lhs.false.i105
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %dqb_curspace.i103 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 0, ptr %dqb_curspace.i103, align 8
  br label %if.end.i112

if.end.i112:                                      ; preds = %if.else.i, %if.then.i107
  %dqb_curspace6.i = getelementptr inbounds %struct.dquot, ptr %45, i32 0, i32 11, i32 2
  %62 = ptrtoint ptr %dqb_curspace6.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %dqb_curspace6.i, align 8
  %dqb_rsvspace.i108 = getelementptr inbounds %struct.dquot, ptr %45, i32 0, i32 11, i32 3
  %64 = ptrtoint ptr %dqb_rsvspace.i108 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %dqb_rsvspace.i108, align 8
  %add.i109 = add i64 %65, %63
  %dqb_bsoftlimit.i110 = getelementptr inbounds %struct.dquot, ptr %45, i32 0, i32 11, i32 1
  %66 = ptrtoint ptr %dqb_bsoftlimit.i110 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %dqb_bsoftlimit.i110, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i109, i64 %67)
  %cmp9.not.i111 = icmp sgt i64 %add.i109, %67
  br i1 %cmp9.not.i111, label %if.end.i112.if.end26_crit_edge, label %if.end.i112.if.end26.sink.split_crit_edge

if.end.i112.if.end26.sink.split_crit_edge:        ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.sink.split

if.end.i112.if.end26_crit_edge:                   ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.end26.sink.split:                              ; preds = %if.end.i112.if.end26.sink.split_crit_edge, %if.end38.i.if.end26.sink.split_crit_edge
  %dqb_btime.i113 = getelementptr inbounds %struct.dquot, ptr %45, i32 0, i32 11, i32 7
  %68 = ptrtoint ptr %dqb_btime.i113 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 0, ptr %dqb_btime.i113, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.end.i112.if.end26_crit_edge, %if.end38.i.if.end26_crit_edge
  %dq_flags.i114 = getelementptr inbounds %struct.dquot, ptr %45, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %dq_flags.i114) #13
  %69 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx9, align 4
  %dq_dqb_lock28 = getelementptr inbounds %struct.dquot, ptr %70, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock28) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %cnt.0132, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %cleanup
  br i1 %tobool21.not, label %if.else33, label %if.then30

if.then30:                                        ; preds = %for.end
  %71 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_sb.i, align 4
  %dq_op.i116 = getelementptr inbounds %struct.super_block, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %dq_op.i116 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dq_op.i116, align 8
  %get_reserved_space.i117 = getelementptr inbounds %struct.dquot_operations, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %get_reserved_space.i117 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %get_reserved_space.i117, align 4
  %tobool.not.i118 = icmp eq ptr %76, null
  br i1 %tobool.not.i118, label %do.body4.i119, label %inode_reserved_space.exit121, !prof !282

do.body4.i119:                                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/dquot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1617, 0\0A.popsection", ""() #13, !srcloc !289
  unreachable

inode_reserved_space.exit121:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %call.i120 = tail call ptr %76(ptr noundef %inode) #13
  %77 = ptrtoint ptr %call.i120 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %call.i120, align 8
  %sub32 = sub i64 %78, %number
  store i64 %sub32, ptr %call.i120, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock8) #13
  br label %out_unlock

if.else33:                                        ; preds = %for.end
  tail call void @__inode_sub_bytes(ptr noundef %inode, i64 noundef %number) #13
  tail call void @_raw_spin_unlock(ptr noundef %i_lock8) #13
  %79 = ptrtoint ptr %call.i86 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i86, align 4
  %tobool.not.i122 = icmp eq ptr %80, null
  br i1 %tobool.not.i122, label %if.else33.if.end.i125_crit_edge, label %if.then.i124

if.else33.if.end.i125_crit_edge:                  ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i125

if.then.i124:                                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.i = getelementptr inbounds %struct.dquot, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %dq_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dq_sb.i.i, align 4
  %dq_op.i.i = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %dq_op.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dq_op.i.i, align 8
  %mark_dirty.i.i = getelementptr inbounds %struct.dquot_operations, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %mark_dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mark_dirty.i.i, align 4
  %call.i.i123 = tail call i32 %86(ptr noundef nonnull %80) #13
  br label %if.end.i125

if.end.i125:                                      ; preds = %if.then.i124, %if.else33.if.end.i125_crit_edge
  %arrayidx.1.i = getelementptr ptr, ptr %call.i86, i32 1
  %87 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %88, null
  br i1 %tobool.not.1.i, label %if.end.i125.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i125.if.end.1.i_crit_edge:                 ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.1.i = getelementptr inbounds %struct.dquot, ptr %88, i32 0, i32 7
  %89 = ptrtoint ptr %dq_sb.i.1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dq_sb.i.1.i, align 4
  %dq_op.i.1.i = getelementptr inbounds %struct.super_block, ptr %90, i32 0, i32 7
  %91 = ptrtoint ptr %dq_op.i.1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dq_op.i.1.i, align 8
  %mark_dirty.i.1.i = getelementptr inbounds %struct.dquot_operations, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %mark_dirty.i.1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mark_dirty.i.1.i, align 4
  %call.i.1.i = tail call i32 %94(ptr noundef nonnull %88) #13
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i125.if.end.1.i_crit_edge
  %arrayidx.2.i = getelementptr ptr, ptr %call.i86, i32 2
  %95 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %96, null
  br i1 %tobool.not.2.i, label %if.end.1.i.out_unlock_crit_edge, label %if.then.2.i

if.end.1.i.out_unlock_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.2.i = getelementptr inbounds %struct.dquot, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %dq_sb.i.2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dq_sb.i.2.i, align 4
  %dq_op.i.2.i = getelementptr inbounds %struct.super_block, ptr %98, i32 0, i32 7
  %99 = ptrtoint ptr %dq_op.i.2.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dq_op.i.2.i, align 8
  %mark_dirty.i.2.i = getelementptr inbounds %struct.dquot_operations, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %mark_dirty.i.2.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mark_dirty.i.2.i, align 4
  %call.i.2.i = tail call i32 %102(ptr noundef nonnull %96) #13
  br label %out_unlock

out_unlock:                                       ; preds = %if.then.2.i, %if.end.1.i.out_unlock_crit_edge, %inode_reserved_space.exit121
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i87)
  %tobool.not.i126 = icmp ult i32 %call.i87, 2
  br i1 %tobool.not.i126, label %out_unlock.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

out_unlock.srcu_read_unlock.exit_crit_edge:       ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %out_unlock
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i127, !prof !277

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

if.then.i127:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i127, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %out_unlock.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dquot_srcu, i32 0, i32 16)) #13
  tail call void @__srcu_read_unlock(ptr noundef nonnull @dquot_srcu, i32 noundef %call.i87) #13
  call fastcc void @flush_warnings(ptr noundef nonnull %warn)
  br label %cleanup40

cleanup40:                                        ; preds = %srcu_read_unlock.exit, %if.else, %inode_reserved_space.exit
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %warn) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_sub_bytes(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dquot_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  %warn = alloca [3 x %struct.dquot_warn], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %warn) #13
  %0 = call ptr @memset(ptr %warn, i32 255, i32 48)
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %1 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %dquot_active.exit, label %entry.cleanup20_crit_edge

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup20

dquot_active.exit:                                ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_dquot.i.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 31
  %5 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dquot.i.i.i, align 8
  %and2.i.i.i = and i32 %6, 7
  %div.i2.i.i = lshr i32 %6, 6
  %and2.i.i6.i = and i32 %div.i2.i.i, 7
  %neg.i = xor i32 %and2.i.i6.i, -1
  %and2.i = and i32 %and2.i.i.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  br i1 %tobool.not, label %dquot_active.exit.cleanup20_crit_edge, label %if.end

dquot_active.exit.cleanup20_crit_edge:            ; preds = %dquot_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup20

if.end:                                           ; preds = %dquot_active.exit
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_op.i, align 4
  %get_dquots.i = getelementptr inbounds %struct.super_operations, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %get_dquots.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_dquots.i, align 4
  %call.i = tail call ptr %12(ptr noundef %inode) #13
  %call.i46 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @dquot_srcu) #13
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dquot_srcu, i32 0, i32 16)) #13
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #13
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end
  %cnt.075 = phi i32 [ 0, %if.end ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 %cnt.075
  %w_type = getelementptr [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 %cnt.075, i32 2
  %13 = ptrtoint ptr %w_type to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %w_type, align 4
  %arrayidx3 = getelementptr ptr, ptr %call.i, i32 %cnt.075
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %15, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock) #13
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3, align 4
  %dq_flags.i = getelementptr inbounds %struct.dquot, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %dq_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %dq_flags.i, align 4
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i47 = icmp eq i32 %20, 0
  br i1 %tobool.not.i47, label %lor.lhs.false.i, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

lor.lhs.false.i:                                  ; preds = %if.end6
  %dqb_curinodes.i = getelementptr inbounds %struct.dquot, ptr %17, i32 0, i32 11, i32 6
  %21 = ptrtoint ptr %dqb_curinodes.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %dqb_curinodes.i, align 8
  %dqb_isoftlimit.i = getelementptr inbounds %struct.dquot, ptr %17, i32 0, i32 11, i32 5
  %23 = ptrtoint ptr %dqb_isoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %dqb_isoftlimit.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %24)
  %cmp.not.i = icmp sgt i64 %22, %24
  br i1 %cmp.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.end14_crit_edge

lor.lhs.false.i.if.end14_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %dq_sb.i = getelementptr inbounds %struct.dquot, ptr %17, i32 0, i32 7
  %25 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dq_sb.i, align 4
  %type.i = getelementptr inbounds %struct.dquot, ptr %17, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i, align 4
  %s_dquot.i.i.i48 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 31
  %29 = ptrtoint ptr %s_dquot.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_dquot.i.i.i48, align 8
  %shl.i.i.i = shl i32 8, %28
  %and.i.i = and i32 %30, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false2.i.if.end14_crit_edge, label %if.end.i49

lor.lhs.false2.i.if.end14_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end.i49:                                       ; preds = %lor.lhs.false2.i
  %sub.i = add nsw i64 %22, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %24)
  %cmp8.not.i = icmp sgt i64 %sub.i, %24
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end.i49.prepare_warning.exit_crit_edge

if.end.i49.prepare_warning.exit_crit_edge:        ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #15
  br label %prepare_warning.exit

if.end10.i:                                       ; preds = %if.end.i49
  %dqb_ihardlimit.i = getelementptr inbounds %struct.dquot, ptr %17, i32 0, i32 11, i32 4
  %31 = ptrtoint ptr %dqb_ihardlimit.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %dqb_ihardlimit.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %32)
  %33 = icmp eq i64 %22, %32
  br i1 %33, label %if.end10.i.prepare_warning.exit_crit_edge, label %if.end10.i.if.end14_crit_edge

if.end10.i.if.end14_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end10.i.prepare_warning.exit_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %prepare_warning.exit

prepare_warning.exit:                             ; preds = %if.end10.i.prepare_warning.exit_crit_edge, %if.end.i49.prepare_warning.exit_crit_edge
  %retval.0.i50 = phi i16 [ 8, %if.end.i49.prepare_warning.exit_crit_edge ], [ 7, %if.end10.i.prepare_warning.exit_crit_edge ]
  %34 = ptrtoint ptr %w_type to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %retval.0.i50, ptr %w_type, align 4
  %35 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dq_sb.i, align 4
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %arrayidx, align 4
  %w_dq_id.i = getelementptr [3 x %struct.dquot_warn], ptr %warn, i32 0, i32 %cnt.075, i32 1
  %dq_id.i = getelementptr inbounds %struct.dquot, ptr %17, i32 0, i32 8
  %38 = ptrtoint ptr %dq_id.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %dq_id.i, align 8
  %40 = ptrtoint ptr %w_dq_id.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %39, ptr %w_dq_id.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %prepare_warning.exit, %if.end10.i.if.end14_crit_edge, %lor.lhs.false2.i.if.end14_crit_edge, %lor.lhs.false.i.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %41 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx3, align 4
  %dq_sb.i54 = getelementptr inbounds %struct.dquot, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %dq_sb.i54 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dq_sb.i54, align 4
  %s_dquot.i.i = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 31
  %45 = ptrtoint ptr %s_dquot.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_dquot.i.i, align 8
  %and.i55 = and i32 %46, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.not.i56 = icmp eq i32 %and.i55, 0
  br i1 %tobool.not.i56, label %lor.lhs.false.i59, label %if.end14.if.then.i_crit_edge

if.end14.if.then.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i59:                                ; preds = %if.end14
  %dqb_curinodes.i57 = getelementptr inbounds %struct.dquot, ptr %42, i32 0, i32 11, i32 6
  %47 = ptrtoint ptr %dqb_curinodes.i57 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %dqb_curinodes.i57, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %48)
  %cmp.not.i58 = icmp slt i64 %48, 1
  br i1 %cmp.not.i58, label %if.else.i, label %lor.lhs.false.i59.if.then.i_crit_edge

lor.lhs.false.i59.if.then.i_crit_edge:            ; preds = %lor.lhs.false.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i59.if.then.i_crit_edge, %if.end14.if.then.i_crit_edge
  %dqb_curinodes2.i = getelementptr inbounds %struct.dquot, ptr %42, i32 0, i32 11, i32 6
  %49 = ptrtoint ptr %dqb_curinodes2.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %dqb_curinodes2.i, align 8
  %sub.i60 = add i64 %50, -1
  store i64 %sub.i60, ptr %dqb_curinodes2.i, align 8
  br label %if.end.i63

if.else.i:                                        ; preds = %lor.lhs.false.i59
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %dqb_curinodes.i57 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %dqb_curinodes.i57, align 8
  br label %if.end.i63

if.end.i63:                                       ; preds = %if.else.i, %if.then.i
  %dqb_curinodes6.i = getelementptr inbounds %struct.dquot, ptr %42, i32 0, i32 11, i32 6
  %52 = ptrtoint ptr %dqb_curinodes6.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %dqb_curinodes6.i, align 8
  %dqb_isoftlimit.i61 = getelementptr inbounds %struct.dquot, ptr %42, i32 0, i32 11, i32 5
  %54 = ptrtoint ptr %dqb_isoftlimit.i61 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %dqb_isoftlimit.i61, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %53, i64 %55)
  %cmp8.not.i62 = icmp sgt i64 %53, %55
  br i1 %cmp8.not.i62, label %if.end.i63.dquot_decr_inodes.exit_crit_edge, label %if.then9.i

if.end.i63.dquot_decr_inodes.exit_crit_edge:      ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %dquot_decr_inodes.exit

if.then9.i:                                       ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #15
  %dqb_itime.i = getelementptr inbounds %struct.dquot, ptr %42, i32 0, i32 11, i32 8
  %56 = ptrtoint ptr %dqb_itime.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %dqb_itime.i, align 8
  br label %dquot_decr_inodes.exit

dquot_decr_inodes.exit:                           ; preds = %if.then9.i, %if.end.i63.dquot_decr_inodes.exit_crit_edge
  %dq_flags.i64 = getelementptr inbounds %struct.dquot, ptr %42, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %dq_flags.i64) #13
  %57 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx3, align 4
  %dq_dqb_lock17 = getelementptr inbounds %struct.dquot, ptr %58, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock17) #13
  br label %cleanup

cleanup:                                          ; preds = %dquot_decr_inodes.exit, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %cnt.075, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %cleanup
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  %tobool.not.i65 = icmp eq ptr %60, null
  br i1 %tobool.not.i65, label %for.end.if.end.i68_crit_edge, label %if.then.i67

for.end.if.end.i68_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i68

if.then.i67:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.i = getelementptr inbounds %struct.dquot, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %dq_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dq_sb.i.i, align 4
  %dq_op.i.i = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %dq_op.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dq_op.i.i, align 8
  %mark_dirty.i.i = getelementptr inbounds %struct.dquot_operations, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %mark_dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mark_dirty.i.i, align 4
  %call.i.i66 = tail call i32 %66(ptr noundef nonnull %60) #13
  br label %if.end.i68

if.end.i68:                                       ; preds = %if.then.i67, %for.end.if.end.i68_crit_edge
  %arrayidx.1.i = getelementptr ptr, ptr %call.i, i32 1
  %67 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %68, null
  br i1 %tobool.not.1.i, label %if.end.i68.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i68.if.end.1.i_crit_edge:                  ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.1.i = getelementptr inbounds %struct.dquot, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %dq_sb.i.1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dq_sb.i.1.i, align 4
  %dq_op.i.1.i = getelementptr inbounds %struct.super_block, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %dq_op.i.1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dq_op.i.1.i, align 8
  %mark_dirty.i.1.i = getelementptr inbounds %struct.dquot_operations, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %mark_dirty.i.1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mark_dirty.i.1.i, align 4
  %call.i.1.i = tail call i32 %74(ptr noundef nonnull %68) #13
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i68.if.end.1.i_crit_edge
  %arrayidx.2.i = getelementptr ptr, ptr %call.i, i32 2
  %75 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %76, null
  br i1 %tobool.not.2.i, label %if.end.1.i.mark_all_dquot_dirty.exit_crit_edge, label %if.then.2.i

if.end.1.i.mark_all_dquot_dirty.exit_crit_edge:   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mark_all_dquot_dirty.exit

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.2.i = getelementptr inbounds %struct.dquot, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %dq_sb.i.2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dq_sb.i.2.i, align 4
  %dq_op.i.2.i = getelementptr inbounds %struct.super_block, ptr %78, i32 0, i32 7
  %79 = ptrtoint ptr %dq_op.i.2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dq_op.i.2.i, align 8
  %mark_dirty.i.2.i = getelementptr inbounds %struct.dquot_operations, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %mark_dirty.i.2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mark_dirty.i.2.i, align 4
  %call.i.2.i = tail call i32 %82(ptr noundef nonnull %76) #13
  br label %mark_all_dquot_dirty.exit

mark_all_dquot_dirty.exit:                        ; preds = %if.then.2.i, %if.end.1.i.mark_all_dquot_dirty.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i46)
  %tobool.not.i69 = icmp ult i32 %call.i46, 2
  br i1 %tobool.not.i69, label %mark_all_dquot_dirty.exit.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

mark_all_dquot_dirty.exit.srcu_read_unlock.exit_crit_edge: ; preds = %mark_all_dquot_dirty.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %mark_all_dquot_dirty.exit
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i70, !prof !277

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %srcu_read_unlock.exit

if.then.i70:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i70, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %mark_all_dquot_dirty.exit.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dquot_srcu, i32 0, i32 16)) #13
  tail call void @__srcu_read_unlock(ptr noundef nonnull @dquot_srcu, i32 noundef %call.i46) #13
  call fastcc void @flush_warnings(ptr noundef nonnull %warn)
  br label %cleanup20

cleanup20:                                        ; preds = %srcu_read_unlock.exit, %dquot_active.exit.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %warn) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__dquot_transfer(ptr noundef %inode, ptr nocapture noundef %transfer_to) #0 align 64 {
entry:
  %inode_usage = alloca i64, align 8
  %transfer_from = alloca [3 x ptr], align 4
  %is_valid = alloca [3 x i8], align 1
  %warn_to = alloca [3 x %struct.dquot_warn], align 4
  %warn_from_inodes = alloca [3 x %struct.dquot_warn], align 4
  %warn_from_space = alloca [3 x %struct.dquot_warn], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inode_usage) #13
  %0 = ptrtoint ptr %inode_usage to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1, ptr %inode_usage, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %transfer_from) #13
  %1 = call ptr @memset(ptr %transfer_from, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %is_valid) #13
  %2 = call ptr @memset(ptr %is_valid, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %warn_to) #13
  %3 = call ptr @memset(ptr %warn_to, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %warn_from_inodes) #13
  %4 = call ptr @memset(ptr %warn_from_inodes, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %warn_from_space) #13
  %5 = call ptr @memset(ptr %warn_from_space, i32 255, i32 48)
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %dq_op = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %dq_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dq_op, align 8
  %get_inode_usage = getelementptr inbounds %struct.dquot_operations, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %get_inode_usage to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_inode_usage, align 4
  %tobool1.not = icmp eq ptr %13, null
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %call = call i32 %13(ptr noundef %inode, ptr noundef nonnull %inode_usage) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then2.if.end9_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end9:                                          ; preds = %if.then2.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %w_type = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn_to, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %w_type to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %w_type, align 4
  %w_type11 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn_from_inodes, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %w_type11 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %w_type11, align 4
  %w_type13 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn_from_space, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %w_type13 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %w_type13, align 4
  %w_type.1 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn_to, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %w_type.1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %w_type.1, align 4
  %w_type11.1 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn_from_inodes, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %w_type11.1 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %w_type11.1, align 4
  %w_type13.1 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn_from_space, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %w_type13.1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %w_type13.1, align 4
  %w_type.2 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn_to, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %w_type.2 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %w_type.2, align 4
  %w_type11.2 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn_from_inodes, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %w_type11.2 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %w_type11.2, align 4
  %w_type13.2 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn_from_space, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %w_type13.2 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %w_type13.2, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #13
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock) #13
  %23 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_flags, align 4
  %and15 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #13
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %25 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_blocks.i, align 8
  %shl.i = shl i64 %26, 9
  %i_bytes.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 19
  %27 = ptrtoint ptr %i_bytes.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %i_bytes.i, align 4
  %conv.i = zext i16 %28 to i64
  %add.i = add i64 %shl.i, %conv.i
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %dq_op.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %dq_op.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dq_op.i, align 8
  %get_reserved_space.i = getelementptr inbounds %struct.dquot_operations, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %get_reserved_space.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_reserved_space.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end19.__inode_get_rsv_space.exit_crit_edge, label %inode_reserved_space.exit.i

if.end19.__inode_get_rsv_space.exit_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %__inode_get_rsv_space.exit

inode_reserved_space.exit.i:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = call ptr %34(ptr noundef %inode) #13
  %35 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %call.i.i, align 8
  br label %__inode_get_rsv_space.exit

__inode_get_rsv_space.exit:                       ; preds = %inode_reserved_space.exit.i, %if.end19.__inode_get_rsv_space.exit_crit_edge
  %retval.0.i = phi i64 [ %36, %inode_reserved_space.exit.i ], [ 0, %if.end19.__inode_get_rsv_space.exit_crit_edge ]
  %37 = ptrtoint ptr %transfer_to to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %transfer_to, align 4
  %tobool26.not = icmp eq ptr %38, null
  br i1 %tobool26.not, label %__inode_get_rsv_space.exit.for.inc53_crit_edge, label %if.end28

__inode_get_rsv_space.exit.for.inc53_crit_edge:   ; preds = %__inode_get_rsv_space.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc53

if.end28:                                         ; preds = %__inode_get_rsv_space.exit
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %s_dquot.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 31
  %41 = ptrtoint ptr %s_dquot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_dquot.i.i.i.i, align 8
  %43 = and i32 %42, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %if.end32, label %if.end28.for.inc53_crit_edge

if.end28.for.inc53_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc53

if.end32:                                         ; preds = %if.end28
  %45 = ptrtoint ptr %is_valid to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %is_valid, align 1
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 6
  %46 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_op.i, align 4
  %get_dquots.i = getelementptr inbounds %struct.super_operations, ptr %47, i32 0, i32 22
  %48 = ptrtoint ptr %get_dquots.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_dquots.i, align 4
  %call.i = call ptr %49(ptr noundef %inode) #13
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %52 = ptrtoint ptr %transfer_from to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %transfer_from, align 4
  %53 = ptrtoint ptr %transfer_to to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %transfer_to, align 4
  %55 = ptrtoint ptr %inode_usage to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %inode_usage, align 8
  %call39 = call fastcc i32 @dquot_add_inodes(ptr noundef %54, i64 noundef %56, ptr noundef nonnull %warn_to)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end32.for.end128_crit_edge

if.end32.for.end128_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end128

if.end42:                                         ; preds = %if.end32
  %57 = ptrtoint ptr %transfer_to to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %transfer_to, align 4
  %call45 = call fastcc i32 @dquot_add_space(ptr noundef %58, i64 noundef %add.i, i64 noundef %retval.0.i, i32 noundef 1, ptr noundef nonnull %warn_to)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end42.for.inc53_crit_edge, label %if.end42.if.then47_crit_edge

if.end42.if.then47_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47

if.end42.for.inc53_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc53

if.then47:                                        ; preds = %if.end42.2.if.then47_crit_edge, %if.end42.1.if.then47_crit_edge, %if.end42.if.then47_crit_edge
  %cmp113426.not = phi i1 [ false, %if.end42.2.if.then47_crit_edge ], [ false, %if.end42.1.if.then47_crit_edge ], [ true, %if.end42.if.then47_crit_edge ]
  %cnt.1416.lcssa431 = phi i32 [ 2, %if.end42.2.if.then47_crit_edge ], [ 1, %if.end42.1.if.then47_crit_edge ], [ 0, %if.end42.if.then47_crit_edge ]
  %arrayidx25.lcssa429 = phi ptr [ %arrayidx25.2, %if.end42.2.if.then47_crit_edge ], [ %arrayidx25.1, %if.end42.1.if.then47_crit_edge ], [ %transfer_to, %if.end42.if.then47_crit_edge ]
  %call45.lcssa = phi i32 [ %call45.2, %if.end42.2.if.then47_crit_edge ], [ %call45.1, %if.end42.1.if.then47_crit_edge ], [ %call45, %if.end42.if.then47_crit_edge ]
  %59 = ptrtoint ptr %arrayidx25.lcssa429 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx25.lcssa429, align 4
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %60, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %dq_dqb_lock) #13
  %61 = ptrtoint ptr %arrayidx25.lcssa429 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx25.lcssa429, align 4
  %63 = ptrtoint ptr %inode_usage to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %inode_usage, align 8
  %dq_sb.i = getelementptr inbounds %struct.dquot, ptr %62, i32 0, i32 7
  %65 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dq_sb.i, align 4
  %s_dquot.i.i = getelementptr inbounds %struct.super_block, ptr %66, i32 0, i32 31
  %67 = ptrtoint ptr %s_dquot.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_dquot.i.i, align 8
  %and.i = and i32 %68, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i230 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i230, label %lor.lhs.false.i, label %if.then47.if.then.i_crit_edge

if.then47.if.then.i_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then47
  %dqb_curinodes.i = getelementptr inbounds %struct.dquot, ptr %62, i32 0, i32 11, i32 6
  %69 = ptrtoint ptr %dqb_curinodes.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %dqb_curinodes.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %64)
  %cmp.not.i = icmp slt i64 %70, %64
  br i1 %cmp.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then47.if.then.i_crit_edge
  %dqb_curinodes2.i = getelementptr inbounds %struct.dquot, ptr %62, i32 0, i32 11, i32 6
  %71 = ptrtoint ptr %dqb_curinodes2.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %dqb_curinodes2.i, align 8
  %sub.i = sub i64 %72, %64
  store i64 %sub.i, ptr %dqb_curinodes2.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %dqb_curinodes.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 0, ptr %dqb_curinodes.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %dqb_curinodes6.i = getelementptr inbounds %struct.dquot, ptr %62, i32 0, i32 11, i32 6
  %74 = ptrtoint ptr %dqb_curinodes6.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %dqb_curinodes6.i, align 8
  %dqb_isoftlimit.i = getelementptr inbounds %struct.dquot, ptr %62, i32 0, i32 11, i32 5
  %76 = ptrtoint ptr %dqb_isoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %dqb_isoftlimit.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %77)
  %cmp8.not.i = icmp sgt i64 %75, %77
  br i1 %cmp8.not.i, label %if.end.i.over_quota_crit_edge, label %if.then9.i

if.end.i.over_quota_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %over_quota

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %dqb_itime.i = getelementptr inbounds %struct.dquot, ptr %62, i32 0, i32 11, i32 8
  %78 = ptrtoint ptr %dqb_itime.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 0, ptr %dqb_itime.i, align 8
  br label %over_quota

for.inc53:                                        ; preds = %if.end42.for.inc53_crit_edge, %if.end28.for.inc53_crit_edge, %__inode_get_rsv_space.exit.for.inc53_crit_edge
  %arrayidx25.1 = getelementptr ptr, ptr %transfer_to, i32 1
  %79 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx25.1, align 4
  %tobool26.not.1 = icmp eq ptr %80, null
  br i1 %tobool26.not.1, label %for.inc53.for.inc53.1_crit_edge, label %if.end28.1

for.inc53.for.inc53.1_crit_edge:                  ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc53.1

if.end28.1:                                       ; preds = %for.inc53
  %81 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i_sb, align 4
  %s_dquot.i.i.i.i.1 = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 31
  %83 = ptrtoint ptr %s_dquot.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %s_dquot.i.i.i.i.1, align 8
  %85 = and i32 %84, 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %if.end32.1, label %if.end28.1.for.inc53.1_crit_edge

if.end28.1.for.inc53.1_crit_edge:                 ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc53.1

if.end32.1:                                       ; preds = %if.end28.1
  %arrayidx33.1 = getelementptr inbounds [3 x i8], ptr %is_valid, i32 0, i32 1
  %87 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %arrayidx33.1, align 1
  %s_op.i.1 = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 6
  %88 = ptrtoint ptr %s_op.i.1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_op.i.1, align 4
  %get_dquots.i.1 = getelementptr inbounds %struct.super_operations, ptr %89, i32 0, i32 22
  %90 = ptrtoint ptr %get_dquots.i.1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %get_dquots.i.1, align 4
  %call.i.1 = call ptr %91(ptr noundef %inode) #13
  %arrayidx35.1 = getelementptr ptr, ptr %call.i.1, i32 1
  %92 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx35.1, align 4
  %arrayidx36.1 = getelementptr inbounds [3 x ptr], ptr %transfer_from, i32 0, i32 1
  %94 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %arrayidx36.1, align 4
  %95 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx25.1, align 4
  %97 = ptrtoint ptr %inode_usage to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %inode_usage, align 8
  %arrayidx38.1 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn_to, i32 0, i32 1
  %call39.1 = call fastcc i32 @dquot_add_inodes(ptr noundef %96, i64 noundef %98, ptr noundef %arrayidx38.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.1)
  %tobool40.not.1 = icmp eq i32 %call39.1, 0
  br i1 %tobool40.not.1, label %if.end42.1, label %if.end32.1.for.body114.preheader_crit_edge

if.end32.1.for.body114.preheader_crit_edge:       ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body114.preheader

if.end42.1:                                       ; preds = %if.end32.1
  %99 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx25.1, align 4
  %call45.1 = call fastcc i32 @dquot_add_space(ptr noundef %100, i64 noundef %add.i, i64 noundef %retval.0.i, i32 noundef 1, ptr noundef %arrayidx38.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.1)
  %tobool46.not.1 = icmp eq i32 %call45.1, 0
  br i1 %tobool46.not.1, label %if.end42.1.for.inc53.1_crit_edge, label %if.end42.1.if.then47_crit_edge

if.end42.1.if.then47_crit_edge:                   ; preds = %if.end42.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47

if.end42.1.for.inc53.1_crit_edge:                 ; preds = %if.end42.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc53.1

for.inc53.1:                                      ; preds = %if.end42.1.for.inc53.1_crit_edge, %if.end28.1.for.inc53.1_crit_edge, %for.inc53.for.inc53.1_crit_edge
  %arrayidx25.2 = getelementptr ptr, ptr %transfer_to, i32 2
  %101 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx25.2, align 4
  %tobool26.not.2 = icmp eq ptr %102, null
  br i1 %tobool26.not.2, label %for.inc53.1.for.inc53.2_crit_edge, label %if.end28.2

for.inc53.1.for.inc53.2_crit_edge:                ; preds = %for.inc53.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc53.2

if.end28.2:                                       ; preds = %for.inc53.1
  %103 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %i_sb, align 4
  %s_dquot.i.i.i.i.2 = getelementptr inbounds %struct.super_block, ptr %104, i32 0, i32 31
  %105 = ptrtoint ptr %s_dquot.i.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %s_dquot.i.i.i.i.2, align 8
  %107 = and i32 %106, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %107)
  %108 = icmp eq i32 %107, 4
  br i1 %108, label %if.end32.2, label %if.end28.2.for.inc53.2_crit_edge

if.end28.2.for.inc53.2_crit_edge:                 ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc53.2

if.end32.2:                                       ; preds = %if.end28.2
  %arrayidx33.2 = getelementptr inbounds [3 x i8], ptr %is_valid, i32 0, i32 2
  %109 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %arrayidx33.2, align 1
  %s_op.i.2 = getelementptr inbounds %struct.super_block, ptr %104, i32 0, i32 6
  %110 = ptrtoint ptr %s_op.i.2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %s_op.i.2, align 4
  %get_dquots.i.2 = getelementptr inbounds %struct.super_operations, ptr %111, i32 0, i32 22
  %112 = ptrtoint ptr %get_dquots.i.2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %get_dquots.i.2, align 4
  %call.i.2 = call ptr %113(ptr noundef %inode) #13
  %arrayidx35.2 = getelementptr ptr, ptr %call.i.2, i32 2
  %114 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx35.2, align 4
  %arrayidx36.2 = getelementptr inbounds [3 x ptr], ptr %transfer_from, i32 0, i32 2
  %116 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %arrayidx36.2, align 4
  %117 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx25.2, align 4
  %119 = ptrtoint ptr %inode_usage to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %inode_usage, align 8
  %arrayidx38.2 = getelementptr inbounds [3 x %struct.dquot_warn], ptr %warn_to, i32 0, i32 2
  %call39.2 = call fastcc i32 @dquot_add_inodes(ptr noundef %118, i64 noundef %120, ptr noundef %arrayidx38.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.2)
  %tobool40.not.2 = icmp eq i32 %call39.2, 0
  br i1 %tobool40.not.2, label %if.end42.2, label %if.end32.2.for.body114.preheader_crit_edge

if.end32.2.for.body114.preheader_crit_edge:       ; preds = %if.end32.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body114.preheader

if.end42.2:                                       ; preds = %if.end32.2
  %121 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx25.2, align 4
  %call45.2 = call fastcc i32 @dquot_add_space(ptr noundef %122, i64 noundef %add.i, i64 noundef %retval.0.i, i32 noundef 1, ptr noundef %arrayidx38.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.2)
  %tobool46.not.2 = icmp eq i32 %call45.2, 0
  br i1 %tobool46.not.2, label %if.end42.2.for.inc53.2_crit_edge, label %if.end42.2.if.then47_crit_edge

if.end42.2.if.then47_crit_edge:                   ; preds = %if.end42.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47

if.end42.2.for.inc53.2_crit_edge:                 ; preds = %if.end42.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc53.2

for.inc53.2:                                      ; preds = %if.end42.2.for.inc53.2_crit_edge, %if.end28.2.for.inc53.2_crit_edge, %for.inc53.1.for.inc53.2_crit_edge
  %123 = add i64 %retval.0.i, %add.i
  br label %for.body58

for.body58:                                       ; preds = %for.inc91.for.body58_crit_edge, %for.inc53.2
  %cnt.2418 = phi i32 [ 0, %for.inc53.2 ], [ %inc92, %for.inc91.for.body58_crit_edge ]
  %arrayidx59 = getelementptr [3 x i8], ptr %is_valid, i32 0, i32 %cnt.2418
  %124 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool60.not = icmp eq i8 %125, 0
  br i1 %tobool60.not, label %for.body58.for.inc91_crit_edge, label %if.end62

for.body58.for.inc91_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc91

if.end62:                                         ; preds = %for.body58
  %arrayidx63 = getelementptr [3 x ptr], ptr %transfer_from, i32 0, i32 %cnt.2418
  %126 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx63, align 4
  %tobool64.not = icmp eq ptr %127, null
  br i1 %tobool64.not, label %if.end62.if.end87_crit_edge, label %if.then65

if.end62.if.end87_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then65:                                        ; preds = %if.end62
  %dq_dqb_lock67 = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %dq_dqb_lock67) #13
  %128 = ptrtoint ptr %inode_usage to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %inode_usage, align 8
  %dq_flags.i231 = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 10
  %130 = ptrtoint ptr %dq_flags.i231 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %dq_flags.i231, align 4
  %132 = and i32 %131, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i232 = icmp eq i32 %132, 0
  br i1 %tobool.not.i232, label %lor.lhs.false.i236, label %if.then65.if.end74_crit_edge

if.then65.if.end74_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

lor.lhs.false.i236:                               ; preds = %if.then65
  %dqb_curinodes.i233 = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 11, i32 6
  %133 = ptrtoint ptr %dqb_curinodes.i233 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %dqb_curinodes.i233, align 8
  %dqb_isoftlimit.i234 = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 11, i32 5
  %135 = ptrtoint ptr %dqb_isoftlimit.i234 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %dqb_isoftlimit.i234, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %134, i64 %136)
  %cmp.not.i235 = icmp sgt i64 %134, %136
  br i1 %cmp.not.i235, label %lor.lhs.false2.i, label %lor.lhs.false.i236.if.end74_crit_edge

lor.lhs.false.i236.if.end74_crit_edge:            ; preds = %lor.lhs.false.i236
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i236
  %dq_sb.i237 = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 7
  %137 = ptrtoint ptr %dq_sb.i237 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dq_sb.i237, align 4
  %type.i = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 8, i32 1
  %139 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %type.i, align 4
  %s_dquot.i.i.i = getelementptr inbounds %struct.super_block, ptr %138, i32 0, i32 31
  %141 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %s_dquot.i.i.i, align 8
  %shl.i.i.i238 = shl i32 8, %140
  %and.i.i239 = and i32 %142, %shl.i.i.i238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i239)
  %tobool.i.not.i240 = icmp eq i32 %and.i.i239, 0
  br i1 %tobool.i.not.i240, label %lor.lhs.false2.i.if.end74_crit_edge, label %if.end.i243

lor.lhs.false2.i.if.end74_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.end.i243:                                      ; preds = %lor.lhs.false2.i
  %sub.i241 = sub i64 %134, %129
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i241, i64 %136)
  %cmp8.not.i242 = icmp sgt i64 %sub.i241, %136
  br i1 %cmp8.not.i242, label %if.end10.i, label %if.end.i243.prepare_warning.exit_crit_edge

if.end.i243.prepare_warning.exit_crit_edge:       ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #15
  br label %prepare_warning.exit

if.end10.i:                                       ; preds = %if.end.i243
  %dqb_ihardlimit.i = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 11, i32 4
  %143 = ptrtoint ptr %dqb_ihardlimit.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %dqb_ihardlimit.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %134, i64 %144)
  %cmp14.not.i = icmp sge i64 %134, %144
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i241, i64 %144)
  %cmp17.i = icmp slt i64 %sub.i241, %144
  %or.cond.i = and i1 %cmp14.not.i, %cmp17.i
  br i1 %or.cond.i, label %if.end10.i.prepare_warning.exit_crit_edge, label %if.end10.i.if.end74_crit_edge

if.end10.i.if.end74_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.end10.i.prepare_warning.exit_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %prepare_warning.exit

prepare_warning.exit:                             ; preds = %if.end10.i.prepare_warning.exit_crit_edge, %if.end.i243.prepare_warning.exit_crit_edge
  %retval.0.i244 = phi i16 [ 8, %if.end.i243.prepare_warning.exit_crit_edge ], [ 7, %if.end10.i.prepare_warning.exit_crit_edge ]
  %arrayidx72 = getelementptr [3 x %struct.dquot_warn], ptr %warn_from_inodes, i32 0, i32 %cnt.2418
  %w_type.i = getelementptr [3 x %struct.dquot_warn], ptr %warn_from_inodes, i32 0, i32 %cnt.2418, i32 2
  %145 = ptrtoint ptr %w_type.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %retval.0.i244, ptr %w_type.i, align 4
  %146 = ptrtoint ptr %dq_sb.i237 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dq_sb.i237, align 4
  %148 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %147, ptr %arrayidx72, align 4
  %w_dq_id.i = getelementptr [3 x %struct.dquot_warn], ptr %warn_from_inodes, i32 0, i32 %cnt.2418, i32 1
  %dq_id.i = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 8
  %149 = ptrtoint ptr %dq_id.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %dq_id.i, align 8
  %151 = ptrtoint ptr %w_dq_id.i to i32
  call void @__asan_storeN_noabort(i32 %151, i32 8)
  store i64 %150, ptr %w_dq_id.i, align 4
  br label %if.end74

if.end74:                                         ; preds = %prepare_warning.exit, %if.end10.i.if.end74_crit_edge, %lor.lhs.false2.i.if.end74_crit_edge, %lor.lhs.false.i236.if.end74_crit_edge, %if.then65.if.end74_crit_edge
  %dq_dqb.i = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 11
  %dqb_curspace.i = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 11, i32 2
  %152 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %dqb_curspace.i, align 8
  %dqb_rsvspace.i = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 11, i32 3
  %154 = ptrtoint ptr %dqb_rsvspace.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %dqb_rsvspace.i, align 8
  %add.i250 = add i64 %155, %153
  %156 = ptrtoint ptr %dq_flags.i231 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %dq_flags.i231, align 4
  %158 = and i32 %157, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.i252 = icmp eq i32 %158, 0
  br i1 %tobool.not.i252, label %lor.lhs.false.i254, label %if.end74.if.end81_crit_edge

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

lor.lhs.false.i254:                               ; preds = %if.end74
  %dqb_bsoftlimit.i = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 11, i32 1
  %159 = ptrtoint ptr %dqb_bsoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %dqb_bsoftlimit.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i250, i64 %160)
  %cmp.not.i253 = icmp sgt i64 %add.i250, %160
  br i1 %cmp.not.i253, label %if.end.i256, label %lor.lhs.false.i254.if.end81_crit_edge

lor.lhs.false.i254.if.end81_crit_edge:            ; preds = %lor.lhs.false.i254
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end.i256:                                      ; preds = %lor.lhs.false.i254
  %sub.i255 = sub i64 %add.i250, %123
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i255, i64 %160)
  %cmp5.not.i = icmp sgt i64 %sub.i255, %160
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end.i256.prepare_warning.exit272_crit_edge

if.end.i256.prepare_warning.exit272_crit_edge:    ; preds = %if.end.i256
  call void @__sanitizer_cov_trace_pc() #15
  br label %prepare_warning.exit272

if.end7.i:                                        ; preds = %if.end.i256
  %161 = ptrtoint ptr %dq_dqb.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %dq_dqb.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i250, i64 %162)
  %cmp9.not.i = icmp sge i64 %add.i250, %162
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i255, i64 %162)
  %cmp13.i = icmp slt i64 %sub.i255, %162
  %or.cond.i257 = and i1 %cmp9.not.i, %cmp13.i
  br i1 %or.cond.i257, label %if.end7.i.prepare_warning.exit272_crit_edge, label %if.end7.i.if.end81_crit_edge

if.end7.i.if.end81_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end7.i.prepare_warning.exit272_crit_edge:      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %prepare_warning.exit272

prepare_warning.exit272:                          ; preds = %if.end7.i.prepare_warning.exit272_crit_edge, %if.end.i256.prepare_warning.exit272_crit_edge
  %retval.0.i259 = phi i16 [ 10, %if.end.i256.prepare_warning.exit272_crit_edge ], [ 9, %if.end7.i.prepare_warning.exit272_crit_edge ]
  %arrayidx79 = getelementptr [3 x %struct.dquot_warn], ptr %warn_from_space, i32 0, i32 %cnt.2418
  %w_type.i267 = getelementptr [3 x %struct.dquot_warn], ptr %warn_from_space, i32 0, i32 %cnt.2418, i32 2
  %163 = ptrtoint ptr %w_type.i267 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %retval.0.i259, ptr %w_type.i267, align 4
  %dq_sb.i268 = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 7
  %164 = ptrtoint ptr %dq_sb.i268 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dq_sb.i268, align 4
  %166 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %165, ptr %arrayidx79, align 4
  %w_dq_id.i269 = getelementptr [3 x %struct.dquot_warn], ptr %warn_from_space, i32 0, i32 %cnt.2418, i32 1
  %dq_id.i270 = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 8
  %167 = ptrtoint ptr %dq_id.i270 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %dq_id.i270, align 8
  %169 = ptrtoint ptr %w_dq_id.i269 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 8)
  store i64 %168, ptr %w_dq_id.i269, align 4
  br label %if.end81

if.end81:                                         ; preds = %prepare_warning.exit272, %if.end7.i.if.end81_crit_edge, %lor.lhs.false.i254.if.end81_crit_edge, %if.end74.if.end81_crit_edge
  %170 = ptrtoint ptr %inode_usage to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %inode_usage, align 8
  %dq_sb.i273 = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 7
  %172 = ptrtoint ptr %dq_sb.i273 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dq_sb.i273, align 4
  %s_dquot.i.i274 = getelementptr inbounds %struct.super_block, ptr %173, i32 0, i32 31
  %174 = ptrtoint ptr %s_dquot.i.i274 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %s_dquot.i.i274, align 8
  %and.i275 = and i32 %175, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i275)
  %tobool.not.i276 = icmp eq i32 %and.i275, 0
  br i1 %tobool.not.i276, label %lor.lhs.false.i279, label %if.end81.if.then.i282_crit_edge

if.end81.if.then.i282_crit_edge:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i282

lor.lhs.false.i279:                               ; preds = %if.end81
  %dqb_curinodes.i277 = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 11, i32 6
  %176 = ptrtoint ptr %dqb_curinodes.i277 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %dqb_curinodes.i277, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %177, i64 %171)
  %cmp.not.i278 = icmp slt i64 %177, %171
  br i1 %cmp.not.i278, label %if.else.i283, label %lor.lhs.false.i279.if.then.i282_crit_edge

lor.lhs.false.i279.if.then.i282_crit_edge:        ; preds = %lor.lhs.false.i279
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i282

if.then.i282:                                     ; preds = %lor.lhs.false.i279.if.then.i282_crit_edge, %if.end81.if.then.i282_crit_edge
  %dqb_curinodes2.i280 = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 11, i32 6
  %178 = ptrtoint ptr %dqb_curinodes2.i280 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %dqb_curinodes2.i280, align 8
  %sub.i281 = sub i64 %179, %171
  store i64 %sub.i281, ptr %dqb_curinodes2.i280, align 8
  br label %if.end.i287

if.else.i283:                                     ; preds = %lor.lhs.false.i279
  call void @__sanitizer_cov_trace_pc() #15
  %180 = ptrtoint ptr %dqb_curinodes.i277 to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 0, ptr %dqb_curinodes.i277, align 8
  br label %if.end.i287

if.end.i287:                                      ; preds = %if.else.i283, %if.then.i282
  %dqb_curinodes6.i284 = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 11, i32 6
  %181 = ptrtoint ptr %dqb_curinodes6.i284 to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %dqb_curinodes6.i284, align 8
  %dqb_isoftlimit.i285 = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 11, i32 5
  %183 = ptrtoint ptr %dqb_isoftlimit.i285 to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %dqb_isoftlimit.i285, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %182, i64 %184)
  %cmp8.not.i286 = icmp sgt i64 %182, %184
  br i1 %cmp8.not.i286, label %if.end.i287.dquot_decr_inodes.exit291_crit_edge, label %if.then9.i289

if.end.i287.dquot_decr_inodes.exit291_crit_edge:  ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #15
  br label %dquot_decr_inodes.exit291

if.then9.i289:                                    ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #15
  %dqb_itime.i288 = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 11, i32 8
  %185 = ptrtoint ptr %dqb_itime.i288 to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 0, ptr %dqb_itime.i288, align 8
  br label %dquot_decr_inodes.exit291

dquot_decr_inodes.exit291:                        ; preds = %if.then9.i289, %if.end.i287.dquot_decr_inodes.exit291_crit_edge
  call void @_clear_bit(i32 noundef 2, ptr noundef %dq_flags.i231) #13
  %186 = ptrtoint ptr %dq_sb.i273 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dq_sb.i273, align 4
  %s_dquot.i.i293 = getelementptr inbounds %struct.super_block, ptr %187, i32 0, i32 31
  %188 = ptrtoint ptr %s_dquot.i.i293 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %s_dquot.i.i293, align 8
  %and.i294 = and i32 %189, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i294)
  %tobool.not.i295 = icmp eq i32 %and.i294, 0
  br i1 %tobool.not.i295, label %lor.lhs.false.i298, label %dquot_decr_inodes.exit291.if.then.i300_crit_edge

dquot_decr_inodes.exit291.if.then.i300_crit_edge: ; preds = %dquot_decr_inodes.exit291
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i300

lor.lhs.false.i298:                               ; preds = %dquot_decr_inodes.exit291
  %190 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %dqb_curspace.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %191, i64 %add.i)
  %cmp.not.i297 = icmp slt i64 %191, %add.i
  br i1 %cmp.not.i297, label %lor.lhs.false.i298.if.end.i306_crit_edge, label %lor.lhs.false.i298.if.then.i300_crit_edge

lor.lhs.false.i298.if.then.i300_crit_edge:        ; preds = %lor.lhs.false.i298
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i300

lor.lhs.false.i298.if.end.i306_crit_edge:         ; preds = %lor.lhs.false.i298
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i306

if.then.i300:                                     ; preds = %lor.lhs.false.i298.if.then.i300_crit_edge, %dquot_decr_inodes.exit291.if.then.i300_crit_edge
  %192 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %dqb_curspace.i, align 8
  %sub.i299 = sub i64 %193, %add.i
  br label %if.end.i306

if.end.i306:                                      ; preds = %if.then.i300, %lor.lhs.false.i298.if.end.i306_crit_edge
  %storemerge = phi i64 [ %sub.i299, %if.then.i300 ], [ 0, %lor.lhs.false.i298.if.end.i306_crit_edge ]
  %194 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %storemerge, ptr %dqb_curspace.i, align 8
  %195 = ptrtoint ptr %dqb_rsvspace.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %dqb_rsvspace.i, align 8
  %add.i303 = add i64 %196, %storemerge
  %dqb_bsoftlimit.i304 = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 11, i32 1
  %197 = ptrtoint ptr %dqb_bsoftlimit.i304 to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %dqb_bsoftlimit.i304, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i303, i64 %198)
  %cmp9.not.i305 = icmp sgt i64 %add.i303, %198
  br i1 %cmp9.not.i305, label %if.end.i306.dquot_decr_space.exit_crit_edge, label %if.then10.i

if.end.i306.dquot_decr_space.exit_crit_edge:      ; preds = %if.end.i306
  call void @__sanitizer_cov_trace_pc() #15
  br label %dquot_decr_space.exit

if.then10.i:                                      ; preds = %if.end.i306
  call void @__sanitizer_cov_trace_pc() #15
  %dqb_btime.i = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 11, i32 7
  %199 = ptrtoint ptr %dqb_btime.i to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 0, ptr %dqb_btime.i, align 8
  br label %dquot_decr_space.exit

dquot_decr_space.exit:                            ; preds = %if.then10.i, %if.end.i306.dquot_decr_space.exit_crit_edge
  call void @_clear_bit(i32 noundef 1, ptr noundef %dq_flags.i231) #13
  %200 = ptrtoint ptr %dqb_rsvspace.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %dqb_rsvspace.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %201, i64 %retval.0.i)
  %cmp.not.i309 = icmp slt i64 %201, %retval.0.i
  br i1 %cmp.not.i309, label %land.end.i, label %if.then.i311

if.then.i311:                                     ; preds = %dquot_decr_space.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i310 = sub i64 %201, %retval.0.i
  br label %if.end38.i

land.end.i:                                       ; preds = %dquot_decr_space.exit
  %.b57.i = load i1, ptr @dquot_free_reserved_space.__already_done, align 1
  br i1 %.b57.i, label %land.end.i.if.end38.i_crit_edge, label %if.then7.i, !prof !277

land.end.i.if.end38.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_free_reserved_space.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1112, i32 noundef 9, ptr noundef null) #13
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then7.i, %land.end.i.if.end38.i_crit_edge, %if.then.i311
  %storemerge.i = phi i64 [ %sub.i310, %if.then.i311 ], [ 0, %if.then7.i ], [ 0, %land.end.i.if.end38.i_crit_edge ]
  %202 = ptrtoint ptr %dqb_rsvspace.i to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %storemerge.i, ptr %dqb_rsvspace.i, align 8
  %203 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %dqb_curspace.i, align 8
  %add.i313 = add i64 %204, %storemerge.i
  %205 = ptrtoint ptr %dqb_bsoftlimit.i304 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %dqb_bsoftlimit.i304, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i313, i64 %206)
  %cmp43.not.i = icmp sgt i64 %add.i313, %206
  br i1 %cmp43.not.i, label %if.end38.i.dquot_free_reserved_space.exit_crit_edge, label %if.then44.i

if.end38.i.dquot_free_reserved_space.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dquot_free_reserved_space.exit

if.then44.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  %dqb_btime.i315 = getelementptr inbounds %struct.dquot, ptr %127, i32 0, i32 11, i32 7
  %207 = ptrtoint ptr %dqb_btime.i315 to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 0, ptr %dqb_btime.i315, align 8
  br label %dquot_free_reserved_space.exit

dquot_free_reserved_space.exit:                   ; preds = %if.then44.i, %if.end38.i.dquot_free_reserved_space.exit_crit_edge
  call void @_clear_bit(i32 noundef 1, ptr noundef %dq_flags.i231) #13
  call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock67) #13
  br label %if.end87

if.end87:                                         ; preds = %dquot_free_reserved_space.exit, %if.end62.if.end87_crit_edge
  %arrayidx88 = getelementptr ptr, ptr %transfer_to, i32 %cnt.2418
  %208 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx88, align 4
  %210 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %i_sb, align 4
  %s_op.i318 = getelementptr inbounds %struct.super_block, ptr %211, i32 0, i32 6
  %212 = ptrtoint ptr %s_op.i318 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %s_op.i318, align 4
  %get_dquots.i319 = getelementptr inbounds %struct.super_operations, ptr %213, i32 0, i32 22
  %214 = ptrtoint ptr %get_dquots.i319 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %get_dquots.i319, align 4
  %call.i320 = call ptr %215(ptr noundef %inode) #13
  %arrayidx90 = getelementptr ptr, ptr %call.i320, i32 %cnt.2418
  %216 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %209, ptr %arrayidx90, align 4
  br label %for.inc91

for.inc91:                                        ; preds = %if.end87, %for.body58.for.inc91_crit_edge
  %inc92 = add nuw nsw i32 %cnt.2418, 1
  %exitcond.not = icmp eq i32 %inc92, 3
  br i1 %exitcond.not, label %for.end93, label %for.inc91.for.body58_crit_edge

for.inc91.for.body58_crit_edge:                   ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body58

for.end93:                                        ; preds = %for.inc91
  call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #13
  %217 = ptrtoint ptr %transfer_from to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %transfer_from, align 4
  %tobool.not.i321 = icmp eq ptr %218, null
  br i1 %tobool.not.i321, label %for.end93.if.end.i324_crit_edge, label %if.then.i323

for.end93.if.end.i324_crit_edge:                  ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i324

if.then.i323:                                     ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.i = getelementptr inbounds %struct.dquot, ptr %218, i32 0, i32 7
  %219 = ptrtoint ptr %dq_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dq_sb.i.i, align 4
  %dq_op.i.i = getelementptr inbounds %struct.super_block, ptr %220, i32 0, i32 7
  %221 = ptrtoint ptr %dq_op.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dq_op.i.i, align 8
  %mark_dirty.i.i = getelementptr inbounds %struct.dquot_operations, ptr %222, i32 0, i32 5
  %223 = ptrtoint ptr %mark_dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %mark_dirty.i.i, align 4
  %call.i.i322 = call i32 %224(ptr noundef nonnull %218) #13
  br label %if.end.i324

if.end.i324:                                      ; preds = %if.then.i323, %for.end93.if.end.i324_crit_edge
  %arrayidx.1.i = getelementptr inbounds ptr, ptr %transfer_from, i32 1
  %225 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %226, null
  br i1 %tobool.not.1.i, label %if.end.i324.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i324.if.end.1.i_crit_edge:                 ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.1.i = getelementptr inbounds %struct.dquot, ptr %226, i32 0, i32 7
  %227 = ptrtoint ptr %dq_sb.i.1.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dq_sb.i.1.i, align 4
  %dq_op.i.1.i = getelementptr inbounds %struct.super_block, ptr %228, i32 0, i32 7
  %229 = ptrtoint ptr %dq_op.i.1.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dq_op.i.1.i, align 8
  %mark_dirty.i.1.i = getelementptr inbounds %struct.dquot_operations, ptr %230, i32 0, i32 5
  %231 = ptrtoint ptr %mark_dirty.i.1.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %mark_dirty.i.1.i, align 4
  %call.i.1.i = call i32 %232(ptr noundef nonnull %226) #13
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i324.if.end.1.i_crit_edge
  %arrayidx.2.i = getelementptr inbounds ptr, ptr %transfer_from, i32 2
  %233 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %234, null
  br i1 %tobool.not.2.i, label %if.end.1.i.mark_all_dquot_dirty.exit_crit_edge, label %if.then.2.i

if.end.1.i.mark_all_dquot_dirty.exit_crit_edge:   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mark_all_dquot_dirty.exit

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.2.i = getelementptr inbounds %struct.dquot, ptr %234, i32 0, i32 7
  %235 = ptrtoint ptr %dq_sb.i.2.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dq_sb.i.2.i, align 4
  %dq_op.i.2.i = getelementptr inbounds %struct.super_block, ptr %236, i32 0, i32 7
  %237 = ptrtoint ptr %dq_op.i.2.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dq_op.i.2.i, align 8
  %mark_dirty.i.2.i = getelementptr inbounds %struct.dquot_operations, ptr %238, i32 0, i32 5
  %239 = ptrtoint ptr %mark_dirty.i.2.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %mark_dirty.i.2.i, align 4
  %call.i.2.i = call i32 %240(ptr noundef nonnull %234) #13
  br label %mark_all_dquot_dirty.exit

mark_all_dquot_dirty.exit:                        ; preds = %if.then.2.i, %if.end.1.i.mark_all_dquot_dirty.exit_crit_edge
  %241 = ptrtoint ptr %transfer_to to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %transfer_to, align 4
  %tobool.not.i325 = icmp eq ptr %242, null
  br i1 %tobool.not.i325, label %mark_all_dquot_dirty.exit.if.end.i333_crit_edge, label %if.then.i330

mark_all_dquot_dirty.exit.if.end.i333_crit_edge:  ; preds = %mark_all_dquot_dirty.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i333

if.then.i330:                                     ; preds = %mark_all_dquot_dirty.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.i326 = getelementptr inbounds %struct.dquot, ptr %242, i32 0, i32 7
  %243 = ptrtoint ptr %dq_sb.i.i326 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dq_sb.i.i326, align 4
  %dq_op.i.i327 = getelementptr inbounds %struct.super_block, ptr %244, i32 0, i32 7
  %245 = ptrtoint ptr %dq_op.i.i327 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dq_op.i.i327, align 8
  %mark_dirty.i.i328 = getelementptr inbounds %struct.dquot_operations, ptr %246, i32 0, i32 5
  %247 = ptrtoint ptr %mark_dirty.i.i328 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %mark_dirty.i.i328, align 4
  %call.i.i329 = call i32 %248(ptr noundef nonnull %242) #13
  br label %if.end.i333

if.end.i333:                                      ; preds = %if.then.i330, %mark_all_dquot_dirty.exit.if.end.i333_crit_edge
  %249 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %arrayidx25.1, align 4
  %tobool.not.1.i332 = icmp eq ptr %250, null
  br i1 %tobool.not.1.i332, label %if.end.i333.if.end.1.i341_crit_edge, label %if.then.1.i338

if.end.i333.if.end.1.i341_crit_edge:              ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1.i341

if.then.1.i338:                                   ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.1.i334 = getelementptr inbounds %struct.dquot, ptr %250, i32 0, i32 7
  %251 = ptrtoint ptr %dq_sb.i.1.i334 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dq_sb.i.1.i334, align 4
  %dq_op.i.1.i335 = getelementptr inbounds %struct.super_block, ptr %252, i32 0, i32 7
  %253 = ptrtoint ptr %dq_op.i.1.i335 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dq_op.i.1.i335, align 8
  %mark_dirty.i.1.i336 = getelementptr inbounds %struct.dquot_operations, ptr %254, i32 0, i32 5
  %255 = ptrtoint ptr %mark_dirty.i.1.i336 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mark_dirty.i.1.i336, align 4
  %call.i.1.i337 = call i32 %256(ptr noundef nonnull %250) #13
  br label %if.end.1.i341

if.end.1.i341:                                    ; preds = %if.then.1.i338, %if.end.i333.if.end.1.i341_crit_edge
  %257 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %arrayidx25.2, align 4
  %tobool.not.2.i340 = icmp eq ptr %258, null
  br i1 %tobool.not.2.i340, label %if.end.1.i341.mark_all_dquot_dirty.exit347_crit_edge, label %if.then.2.i346

if.end.1.i341.mark_all_dquot_dirty.exit347_crit_edge: ; preds = %if.end.1.i341
  call void @__sanitizer_cov_trace_pc() #15
  br label %mark_all_dquot_dirty.exit347

if.then.2.i346:                                   ; preds = %if.end.1.i341
  call void @__sanitizer_cov_trace_pc() #15
  %dq_sb.i.2.i342 = getelementptr inbounds %struct.dquot, ptr %258, i32 0, i32 7
  %259 = ptrtoint ptr %dq_sb.i.2.i342 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dq_sb.i.2.i342, align 4
  %dq_op.i.2.i343 = getelementptr inbounds %struct.super_block, ptr %260, i32 0, i32 7
  %261 = ptrtoint ptr %dq_op.i.2.i343 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %dq_op.i.2.i343, align 8
  %mark_dirty.i.2.i344 = getelementptr inbounds %struct.dquot_operations, ptr %262, i32 0, i32 5
  %263 = ptrtoint ptr %mark_dirty.i.2.i344 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %mark_dirty.i.2.i344, align 4
  %call.i.2.i345 = call i32 %264(ptr noundef nonnull %258) #13
  br label %mark_all_dquot_dirty.exit347

mark_all_dquot_dirty.exit347:                     ; preds = %if.then.2.i346, %if.end.1.i341.mark_all_dquot_dirty.exit347_crit_edge
  call fastcc void @flush_warnings(ptr noundef nonnull %warn_to)
  call fastcc void @flush_warnings(ptr noundef nonnull %warn_from_inodes)
  call fastcc void @flush_warnings(ptr noundef nonnull %warn_from_space)
  %265 = ptrtoint ptr %is_valid to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %is_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool104.not = icmp eq i8 %266, 0
  br i1 %tobool104.not, label %mark_all_dquot_dirty.exit347.for.inc109_crit_edge, label %if.then105

mark_all_dquot_dirty.exit347.for.inc109_crit_edge: ; preds = %mark_all_dquot_dirty.exit347
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc109

if.then105:                                       ; preds = %mark_all_dquot_dirty.exit347
  call void @__sanitizer_cov_trace_pc() #15
  %267 = ptrtoint ptr %transfer_from to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %transfer_from, align 4
  %269 = ptrtoint ptr %transfer_to to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %268, ptr %transfer_to, align 4
  br label %for.inc109

for.inc109:                                       ; preds = %if.then105, %mark_all_dquot_dirty.exit347.for.inc109_crit_edge
  %arrayidx103.1 = getelementptr inbounds [3 x i8], ptr %is_valid, i32 0, i32 1
  %270 = ptrtoint ptr %arrayidx103.1 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx103.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool104.not.1 = icmp eq i8 %271, 0
  br i1 %tobool104.not.1, label %for.inc109.for.inc109.1_crit_edge, label %if.then105.1

for.inc109.for.inc109.1_crit_edge:                ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc109.1

if.then105.1:                                     ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #15
  %272 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %arrayidx.1.i, align 4
  %274 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %273, ptr %arrayidx25.1, align 4
  br label %for.inc109.1

for.inc109.1:                                     ; preds = %if.then105.1, %for.inc109.for.inc109.1_crit_edge
  %arrayidx103.2 = getelementptr inbounds [3 x i8], ptr %is_valid, i32 0, i32 2
  %275 = ptrtoint ptr %arrayidx103.2 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx103.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool104.not.2 = icmp eq i8 %276, 0
  br i1 %tobool104.not.2, label %for.inc109.1.cleanup_crit_edge, label %if.then105.2

for.inc109.1.cleanup_crit_edge:                   ; preds = %for.inc109.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then105.2:                                     ; preds = %for.inc109.1
  call void @__sanitizer_cov_trace_pc() #15
  %277 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %arrayidx.2.i, align 4
  %279 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %278, ptr %arrayidx25.2, align 4
  br label %cleanup

over_quota:                                       ; preds = %if.then9.i, %if.end.i.over_quota_crit_edge
  %dq_flags.i = getelementptr inbounds %struct.dquot, ptr %62, i32 0, i32 10
  call void @_clear_bit(i32 noundef 2, ptr noundef %dq_flags.i) #13
  %280 = ptrtoint ptr %arrayidx25.lcssa429 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %arrayidx25.lcssa429, align 4
  %dq_dqb_lock51 = getelementptr inbounds %struct.dquot, ptr %281, i32 0, i32 5
  call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock51) #13
  br i1 %cmp113426.not, label %over_quota.for.end128_crit_edge, label %over_quota.for.body114.preheader_crit_edge

over_quota.for.body114.preheader_crit_edge:       ; preds = %over_quota
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body114.preheader

over_quota.for.end128_crit_edge:                  ; preds = %over_quota
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end128

for.body114.preheader:                            ; preds = %over_quota.for.body114.preheader_crit_edge, %if.end32.2.for.body114.preheader_crit_edge, %if.end32.1.for.body114.preheader_crit_edge
  %ret.0439 = phi i32 [ %call45.lcssa, %over_quota.for.body114.preheader_crit_edge ], [ %call39.2, %if.end32.2.for.body114.preheader_crit_edge ], [ %call39.1, %if.end32.1.for.body114.preheader_crit_edge ]
  %cnt.1416433438 = phi i32 [ %cnt.1416.lcssa431, %over_quota.for.body114.preheader_crit_edge ], [ 2, %if.end32.2.for.body114.preheader_crit_edge ], [ 1, %if.end32.1.for.body114.preheader_crit_edge ]
  br label %for.body114

for.body114:                                      ; preds = %for.inc126.for.body114_crit_edge, %for.body114.preheader
  %cnt.4427.in = phi i32 [ %cnt.4427, %for.inc126.for.body114_crit_edge ], [ %cnt.1416433438, %for.body114.preheader ]
  %cnt.4427 = add nsw i32 %cnt.4427.in, -1
  %arrayidx115 = getelementptr [3 x i8], ptr %is_valid, i32 0, i32 %cnt.4427
  %282 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx115, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool116.not = icmp eq i8 %283, 0
  br i1 %tobool116.not, label %for.body114.for.inc126_crit_edge, label %if.end118

for.body114.for.inc126_crit_edge:                 ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc126

if.end118:                                        ; preds = %for.body114
  %arrayidx119 = getelementptr ptr, ptr %transfer_to, i32 %cnt.4427
  %284 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx119, align 4
  %dq_dqb_lock120 = getelementptr inbounds %struct.dquot, ptr %285, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %dq_dqb_lock120) #13
  %286 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %arrayidx119, align 4
  %288 = ptrtoint ptr %inode_usage to i32
  call void @__asan_load8_noabort(i32 %288)
  %289 = load i64, ptr %inode_usage, align 8
  %dq_sb.i348 = getelementptr inbounds %struct.dquot, ptr %287, i32 0, i32 7
  %290 = ptrtoint ptr %dq_sb.i348 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dq_sb.i348, align 4
  %s_dquot.i.i349 = getelementptr inbounds %struct.super_block, ptr %291, i32 0, i32 31
  %292 = ptrtoint ptr %s_dquot.i.i349 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %s_dquot.i.i349, align 8
  %and.i350 = and i32 %293, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i350)
  %tobool.not.i351 = icmp eq i32 %and.i350, 0
  br i1 %tobool.not.i351, label %lor.lhs.false.i354, label %if.end118.if.then.i357_crit_edge

if.end118.if.then.i357_crit_edge:                 ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i357

lor.lhs.false.i354:                               ; preds = %if.end118
  %dqb_curinodes.i352 = getelementptr inbounds %struct.dquot, ptr %287, i32 0, i32 11, i32 6
  %294 = ptrtoint ptr %dqb_curinodes.i352 to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %dqb_curinodes.i352, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %295, i64 %289)
  %cmp.not.i353 = icmp slt i64 %295, %289
  br i1 %cmp.not.i353, label %if.else.i358, label %lor.lhs.false.i354.if.then.i357_crit_edge

lor.lhs.false.i354.if.then.i357_crit_edge:        ; preds = %lor.lhs.false.i354
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i357

if.then.i357:                                     ; preds = %lor.lhs.false.i354.if.then.i357_crit_edge, %if.end118.if.then.i357_crit_edge
  %dqb_curinodes2.i355 = getelementptr inbounds %struct.dquot, ptr %287, i32 0, i32 11, i32 6
  %296 = ptrtoint ptr %dqb_curinodes2.i355 to i32
  call void @__asan_load8_noabort(i32 %296)
  %297 = load i64, ptr %dqb_curinodes2.i355, align 8
  %sub.i356 = sub i64 %297, %289
  store i64 %sub.i356, ptr %dqb_curinodes2.i355, align 8
  br label %if.end.i362

if.else.i358:                                     ; preds = %lor.lhs.false.i354
  call void @__sanitizer_cov_trace_pc() #15
  %298 = ptrtoint ptr %dqb_curinodes.i352 to i32
  call void @__asan_store8_noabort(i32 %298)
  store i64 0, ptr %dqb_curinodes.i352, align 8
  br label %if.end.i362

if.end.i362:                                      ; preds = %if.else.i358, %if.then.i357
  %dqb_curinodes6.i359 = getelementptr inbounds %struct.dquot, ptr %287, i32 0, i32 11, i32 6
  %299 = ptrtoint ptr %dqb_curinodes6.i359 to i32
  call void @__asan_load8_noabort(i32 %299)
  %300 = load i64, ptr %dqb_curinodes6.i359, align 8
  %dqb_isoftlimit.i360 = getelementptr inbounds %struct.dquot, ptr %287, i32 0, i32 11, i32 5
  %301 = ptrtoint ptr %dqb_isoftlimit.i360 to i32
  call void @__asan_load8_noabort(i32 %301)
  %302 = load i64, ptr %dqb_isoftlimit.i360, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %300, i64 %302)
  %cmp8.not.i361 = icmp sgt i64 %300, %302
  br i1 %cmp8.not.i361, label %if.end.i362.dquot_decr_inodes.exit366_crit_edge, label %if.then9.i364

if.end.i362.dquot_decr_inodes.exit366_crit_edge:  ; preds = %if.end.i362
  call void @__sanitizer_cov_trace_pc() #15
  br label %dquot_decr_inodes.exit366

if.then9.i364:                                    ; preds = %if.end.i362
  call void @__sanitizer_cov_trace_pc() #15
  %dqb_itime.i363 = getelementptr inbounds %struct.dquot, ptr %287, i32 0, i32 11, i32 8
  %303 = ptrtoint ptr %dqb_itime.i363 to i32
  call void @__asan_store8_noabort(i32 %303)
  store i64 0, ptr %dqb_itime.i363, align 8
  br label %dquot_decr_inodes.exit366

dquot_decr_inodes.exit366:                        ; preds = %if.then9.i364, %if.end.i362.dquot_decr_inodes.exit366_crit_edge
  %dq_flags.i365 = getelementptr inbounds %struct.dquot, ptr %287, i32 0, i32 10
  call void @_clear_bit(i32 noundef 2, ptr noundef %dq_flags.i365) #13
  %304 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %arrayidx119, align 4
  %dq_sb.i367 = getelementptr inbounds %struct.dquot, ptr %305, i32 0, i32 7
  %306 = ptrtoint ptr %dq_sb.i367 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dq_sb.i367, align 4
  %s_dquot.i.i368 = getelementptr inbounds %struct.super_block, ptr %307, i32 0, i32 31
  %308 = ptrtoint ptr %s_dquot.i.i368 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %s_dquot.i.i368, align 8
  %and.i369 = and i32 %309, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i369)
  %tobool.not.i370 = icmp eq i32 %and.i369, 0
  br i1 %tobool.not.i370, label %lor.lhs.false.i373, label %dquot_decr_inodes.exit366.if.then.i376_crit_edge

dquot_decr_inodes.exit366.if.then.i376_crit_edge: ; preds = %dquot_decr_inodes.exit366
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i376

lor.lhs.false.i373:                               ; preds = %dquot_decr_inodes.exit366
  %dqb_curspace.i371 = getelementptr inbounds %struct.dquot, ptr %305, i32 0, i32 11, i32 2
  %310 = ptrtoint ptr %dqb_curspace.i371 to i32
  call void @__asan_load8_noabort(i32 %310)
  %311 = load i64, ptr %dqb_curspace.i371, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %311, i64 %add.i)
  %cmp.not.i372 = icmp slt i64 %311, %add.i
  br i1 %cmp.not.i372, label %if.else.i377, label %lor.lhs.false.i373.if.then.i376_crit_edge

lor.lhs.false.i373.if.then.i376_crit_edge:        ; preds = %lor.lhs.false.i373
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i376

if.then.i376:                                     ; preds = %lor.lhs.false.i373.if.then.i376_crit_edge, %dquot_decr_inodes.exit366.if.then.i376_crit_edge
  %dqb_curspace2.i374 = getelementptr inbounds %struct.dquot, ptr %305, i32 0, i32 11, i32 2
  %312 = ptrtoint ptr %dqb_curspace2.i374 to i32
  call void @__asan_load8_noabort(i32 %312)
  %313 = load i64, ptr %dqb_curspace2.i374, align 8
  %sub.i375 = sub i64 %313, %add.i
  store i64 %sub.i375, ptr %dqb_curspace2.i374, align 8
  br label %if.end.i383

if.else.i377:                                     ; preds = %lor.lhs.false.i373
  call void @__sanitizer_cov_trace_pc() #15
  %314 = ptrtoint ptr %dqb_curspace.i371 to i32
  call void @__asan_store8_noabort(i32 %314)
  store i64 0, ptr %dqb_curspace.i371, align 8
  br label %if.end.i383

if.end.i383:                                      ; preds = %if.else.i377, %if.then.i376
  %dqb_curspace6.i378 = getelementptr inbounds %struct.dquot, ptr %305, i32 0, i32 11, i32 2
  %315 = ptrtoint ptr %dqb_curspace6.i378 to i32
  call void @__asan_load8_noabort(i32 %315)
  %316 = load i64, ptr %dqb_curspace6.i378, align 8
  %dqb_rsvspace.i379 = getelementptr inbounds %struct.dquot, ptr %305, i32 0, i32 11, i32 3
  %317 = ptrtoint ptr %dqb_rsvspace.i379 to i32
  call void @__asan_load8_noabort(i32 %317)
  %318 = load i64, ptr %dqb_rsvspace.i379, align 8
  %add.i380 = add i64 %318, %316
  %dqb_bsoftlimit.i381 = getelementptr inbounds %struct.dquot, ptr %305, i32 0, i32 11, i32 1
  %319 = ptrtoint ptr %dqb_bsoftlimit.i381 to i32
  call void @__asan_load8_noabort(i32 %319)
  %320 = load i64, ptr %dqb_bsoftlimit.i381, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i380, i64 %320)
  %cmp9.not.i382 = icmp sgt i64 %add.i380, %320
  br i1 %cmp9.not.i382, label %if.end.i383.dquot_decr_space.exit387_crit_edge, label %if.then10.i385

if.end.i383.dquot_decr_space.exit387_crit_edge:   ; preds = %if.end.i383
  call void @__sanitizer_cov_trace_pc() #15
  br label %dquot_decr_space.exit387

if.then10.i385:                                   ; preds = %if.end.i383
  call void @__sanitizer_cov_trace_pc() #15
  %dqb_btime.i384 = getelementptr inbounds %struct.dquot, ptr %305, i32 0, i32 11, i32 7
  %321 = ptrtoint ptr %dqb_btime.i384 to i32
  call void @__asan_store8_noabort(i32 %321)
  store i64 0, ptr %dqb_btime.i384, align 8
  br label %dquot_decr_space.exit387

dquot_decr_space.exit387:                         ; preds = %if.then10.i385, %if.end.i383.dquot_decr_space.exit387_crit_edge
  %dq_flags.i386 = getelementptr inbounds %struct.dquot, ptr %305, i32 0, i32 10
  call void @_clear_bit(i32 noundef 1, ptr noundef %dq_flags.i386) #13
  %322 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %arrayidx119, align 4
  %dqb_rsvspace.i388 = getelementptr inbounds %struct.dquot, ptr %323, i32 0, i32 11, i32 3
  %324 = ptrtoint ptr %dqb_rsvspace.i388 to i32
  call void @__asan_load8_noabort(i32 %324)
  %325 = load i64, ptr %dqb_rsvspace.i388, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %325, i64 %retval.0.i)
  %cmp.not.i389 = icmp slt i64 %325, %retval.0.i
  br i1 %cmp.not.i389, label %land.end.i393, label %if.then.i391

if.then.i391:                                     ; preds = %dquot_decr_space.exit387
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i390 = sub i64 %325, %retval.0.i
  br label %if.end38.i400

land.end.i393:                                    ; preds = %dquot_decr_space.exit387
  %.b57.i392 = load i1, ptr @dquot_free_reserved_space.__already_done, align 1
  br i1 %.b57.i392, label %land.end.i393.if.end38.i400_crit_edge, label %if.then7.i394, !prof !277

land.end.i393.if.end38.i400_crit_edge:            ; preds = %land.end.i393
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i400

if.then7.i394:                                    ; preds = %land.end.i393
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_free_reserved_space.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1112, i32 noundef 9, ptr noundef null) #13
  br label %if.end38.i400

if.end38.i400:                                    ; preds = %if.then7.i394, %land.end.i393.if.end38.i400_crit_edge, %if.then.i391
  %storemerge.i395 = phi i64 [ %sub.i390, %if.then.i391 ], [ 0, %if.then7.i394 ], [ 0, %land.end.i393.if.end38.i400_crit_edge ]
  %326 = ptrtoint ptr %dqb_rsvspace.i388 to i32
  call void @__asan_store8_noabort(i32 %326)
  store i64 %storemerge.i395, ptr %dqb_rsvspace.i388, align 8
  %dqb_curspace.i396 = getelementptr inbounds %struct.dquot, ptr %323, i32 0, i32 11, i32 2
  %327 = ptrtoint ptr %dqb_curspace.i396 to i32
  call void @__asan_load8_noabort(i32 %327)
  %328 = load i64, ptr %dqb_curspace.i396, align 8
  %add.i397 = add i64 %328, %storemerge.i395
  %dqb_bsoftlimit.i398 = getelementptr inbounds %struct.dquot, ptr %323, i32 0, i32 11, i32 1
  %329 = ptrtoint ptr %dqb_bsoftlimit.i398 to i32
  call void @__asan_load8_noabort(i32 %329)
  %330 = load i64, ptr %dqb_bsoftlimit.i398, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i397, i64 %330)
  %cmp43.not.i399 = icmp sgt i64 %add.i397, %330
  br i1 %cmp43.not.i399, label %if.end38.i400.dquot_free_reserved_space.exit404_crit_edge, label %if.then44.i402

if.end38.i400.dquot_free_reserved_space.exit404_crit_edge: ; preds = %if.end38.i400
  call void @__sanitizer_cov_trace_pc() #15
  br label %dquot_free_reserved_space.exit404

if.then44.i402:                                   ; preds = %if.end38.i400
  call void @__sanitizer_cov_trace_pc() #15
  %dqb_btime.i401 = getelementptr inbounds %struct.dquot, ptr %323, i32 0, i32 11, i32 7
  %331 = ptrtoint ptr %dqb_btime.i401 to i32
  call void @__asan_store8_noabort(i32 %331)
  store i64 0, ptr %dqb_btime.i401, align 8
  br label %dquot_free_reserved_space.exit404

dquot_free_reserved_space.exit404:                ; preds = %if.then44.i402, %if.end38.i400.dquot_free_reserved_space.exit404_crit_edge
  %dq_flags.i403 = getelementptr inbounds %struct.dquot, ptr %323, i32 0, i32 10
  call void @_clear_bit(i32 noundef 1, ptr noundef %dq_flags.i403) #13
  %332 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %arrayidx119, align 4
  %dq_dqb_lock125 = getelementptr inbounds %struct.dquot, ptr %333, i32 0, i32 5
  call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock125) #13
  br label %for.inc126

for.inc126:                                       ; preds = %dquot_free_reserved_space.exit404, %for.body114.for.inc126_crit_edge
  %cmp113 = icmp ugt i32 %cnt.4427.in, 1
  br i1 %cmp113, label %for.inc126.for.body114_crit_edge, label %for.inc126.for.end128_crit_edge

for.inc126.for.end128_crit_edge:                  ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end128

for.inc126.for.body114_crit_edge:                 ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body114

for.end128:                                       ; preds = %for.inc126.for.end128_crit_edge, %over_quota.for.end128_crit_edge, %if.end32.for.end128_crit_edge
  %ret.0440 = phi i32 [ %call45.lcssa, %over_quota.for.end128_crit_edge ], [ %call39, %if.end32.for.end128_crit_edge ], [ %ret.0439, %for.inc126.for.end128_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #13
  call fastcc void @flush_warnings(ptr noundef nonnull %warn_to)
  br label %cleanup

cleanup:                                          ; preds = %for.end128, %if.then105.2, %for.inc109.1.cleanup_crit_edge, %if.then17, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then17 ], [ %ret.0440, %for.end128 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then2.cleanup_crit_edge ], [ 0, %if.then105.2 ], [ 0, %for.inc109.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %warn_from_space) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %warn_from_inodes) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %warn_to) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %is_valid) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %transfer_from) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inode_usage) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_transfer(ptr noundef %inode, ptr nocapture noundef readonly %iattr) #0 align 64 {
entry:
  %transfer_to = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %transfer_to) #13
  %0 = call ptr @memset(ptr %transfer_to, i32 0, i32 12)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %3 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %dquot_active.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

dquot_active.exit:                                ; preds = %entry
  %s_dquot.i.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 31
  %5 = ptrtoint ptr %s_dquot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dquot.i.i.i, align 8
  %and2.i.i.i = and i32 %6, 7
  %div.i2.i.i = lshr i32 %6, 6
  %and2.i.i6.i = and i32 %div.i2.i.i, 7
  %neg.i = xor i32 %and2.i.i6.i, -1
  %and2.i = and i32 %and2.i.i.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  br i1 %tobool.not, label %dquot_active.exit.cleanup_crit_edge, label %if.end

dquot_active.exit.cleanup_crit_edge:              ; preds = %dquot_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dquot_active.exit
  %7 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iattr, align 8
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %9 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack68 = load i32, ptr %ia_uid, align 8
  %10 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack69 = load i32, ptr %i_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack68, i32 %.unpack69)
  %cmp.i = icmp eq i32 %.unpack68, %.unpack69
  br i1 %cmp.i, label %land.lhs.true.if.end15_crit_edge, label %if.then4

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then4:                                         ; preds = %land.lhs.true
  %.fca.0.insert45 = insertvalue [2 x i32] poison, i32 %.unpack68, 0
  %.fca.1.insert48 = insertvalue [2 x i32] %.fca.0.insert45, i32 0, 1
  %call7 = tail call ptr @dqget(ptr noundef %2, [2 x i32] %.fca.1.insert48)
  %cmp.i71 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then9, label %if.then4.if.end14_crit_edge

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then9:                                         ; preds = %if.then4
  %11 = ptrtoint ptr %call7 to i32
  %cmp.not = icmp eq ptr %call7, inttoptr (i32 -3 to ptr)
  br i1 %cmp.not, label %if.then9.if.end14_crit_edge, label %if.then9.out_put_crit_edge

if.then9.out_put_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %if.then4.if.end14_crit_edge
  %dquot.0 = phi ptr [ %call7, %if.then4.if.end14_crit_edge ], [ null, %if.then9.if.end14_crit_edge ]
  %12 = ptrtoint ptr %transfer_to to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dquot.0, ptr %transfer_to, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %13 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iattr, align 8
  %and17 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end37_crit_edge, label %land.lhs.true19

if.end15.if.end37_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

land.lhs.true19:                                  ; preds = %if.end15
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %15 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack = load i32, ptr %ia_gid, align 4
  %16 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack66 = load i32, ptr %i_gid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack66)
  %cmp.i72 = icmp eq i32 %.unpack, %.unpack66
  br i1 %cmp.i72, label %land.lhs.true19.if.end37_crit_edge, label %if.then23

land.lhs.true19.if.end37_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then23:                                        ; preds = %land.lhs.true19
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %.unpack, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 1, 1
  %call27 = tail call ptr @dqget(ptr noundef %2, [2 x i32] %.fca.1.insert)
  %cmp.i73 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then29, label %if.then23.if.end35_crit_edge

if.then23.if.end35_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then29:                                        ; preds = %if.then23
  %17 = ptrtoint ptr %call27 to i32
  %cmp31.not = icmp eq ptr %call27, inttoptr (i32 -3 to ptr)
  br i1 %cmp31.not, label %if.then29.if.end35_crit_edge, label %if.then29.out_put_crit_edge

if.then29.out_put_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.end35:                                         ; preds = %if.then29.if.end35_crit_edge, %if.then23.if.end35_crit_edge
  %dquot.1 = phi ptr [ %call27, %if.then23.if.end35_crit_edge ], [ null, %if.then29.if.end35_crit_edge ]
  %arrayidx36 = getelementptr inbounds [3 x ptr], ptr %transfer_to, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dquot.1, ptr %arrayidx36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %land.lhs.true19.if.end37_crit_edge, %if.end15.if.end37_crit_edge
  %call38 = call i32 @__dquot_transfer(ptr noundef %inode, ptr noundef nonnull %transfer_to)
  br label %out_put

out_put:                                          ; preds = %if.end37, %if.then29.out_put_crit_edge, %if.then9.out_put_crit_edge
  %ret.0 = phi i32 [ %call38, %if.end37 ], [ %11, %if.then9.out_put_crit_edge ], [ %17, %if.then29.out_put_crit_edge ]
  %19 = ptrtoint ptr %transfer_to to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transfer_to, align 4
  tail call void @dqput(ptr noundef %20) #13
  %arrayidx.1.i = getelementptr inbounds ptr, ptr %transfer_to, i32 1
  %21 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @dqput(ptr noundef %22) #13
  %arrayidx.2.i = getelementptr inbounds ptr, ptr %transfer_to, i32 2
  %23 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @dqput(ptr noundef %24) #13
  br label %cleanup

cleanup:                                          ; preds = %out_put, %dquot_active.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_put ], [ 0, %dquot_active.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %transfer_to) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_commit_info(ptr noundef %sb, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 4, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %write_file_info = getelementptr inbounds %struct.quota_format_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %write_file_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_file_info, align 4
  %call1 = tail call i32 %3(ptr noundef %sb, i32 noundef %type) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_get_next_id(ptr noundef %sb, ptr noundef %qid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_dquot.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31
  %type = getelementptr inbounds %struct.kqid, ptr %qid, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_dquot.i, align 8
  %shl.i.i.i.i = shl nuw i32 1, %1
  %and.i.i.i = and i32 %3, %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0
  %shl.i.i.i = shl i32 64, %1
  %and.i.i = and i32 %3, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %4 = select i1 %tobool.i.i.i, i1 %tobool.i.not.i, i1 false
  br i1 %4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 4, i32 %1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %get_next_id = getelementptr inbounds %struct.quota_format_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %get_next_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_next_id, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 %8(ptr noundef %sb, ptr noundef %qid) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end4 ], [ -3, %entry.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_file_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @generic_file_open(ptr noundef %inode, ptr noundef %file) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call fastcc i32 @__dquot_initialize(ptr noundef %inode, i32 noundef -1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call.i, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_disable(ptr noundef %sb, i32 noundef %type, i32 noundef %flags) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %tofree_head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_dquot.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  %call1 = tail call i32 @down_read_trylock(ptr noundef %s_umount) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %land.rhs

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

land.rhs:                                         ; preds = %entry
  %.b242 = load i1, ptr @dquot_disable.__already_done, align 1
  br i1 %.b242, label %land.rhs.if.then38_crit_edge, label %if.then, !prof !277

land.rhs.if.then38_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2194, i32 noundef 9, ptr noundef null) #13
  br label %if.then38

if.then38:                                        ; preds = %if.then, %land.rhs.if.then38_crit_edge
  tail call void @up_read(ptr noundef %s_umount) #13
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %entry.if.end40_crit_edge
  %0 = and i32 %flags, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %1 = icmp eq i32 %0, 1
  br i1 %1, label %if.end40.cleanup_crit_edge, label %lor.lhs.false

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end40
  %and44 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool48.not = icmp eq i32 %0, 0
  %or.cond244 = or i1 %tobool45.not, %tobool48.not
  br i1 %or.cond244, label %if.end50, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end50:                                         ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_dquot.i, align 8
  %and2.i.i = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool52.not = icmp eq i32 %and2.i.i, 0
  br i1 %tobool52.not, label %if.end50.cleanup_crit_edge, label %for.cond.preheader

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %type)
  %cmp55.not = icmp eq i32 %type, -1
  %4 = getelementptr inbounds %struct.list_head, ptr %tofree_head.i, i32 0, i32 1
  %dq_op.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 7
  %s_inode_list_lock.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 61
  %s_inodes.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 62
  %s_id.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %cnt.0303 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0303, i32 %type)
  %cmp57.not = icmp eq i32 %cnt.0303, %type
  %or.cond245 = select i1 %cmp55.not, i1 true, i1 %cmp57.not
  br i1 %or.cond245, label %if.end59, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end59:                                         ; preds = %for.body
  %5 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dquot.i, align 8
  %shl.i.i.i = shl nuw nsw i32 1, %cnt.0303
  %and.i.i = and i32 %6, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %if.end59.for.inc_crit_edge, label %if.end62

if.end59.for.inc_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end62:                                         ; preds = %if.end59
  call void @_raw_spin_lock(ptr noundef nonnull @dq_state_lock) #13
  br i1 %tobool45.not, label %if.else, label %if.end80.thread

if.end80.thread:                                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl nuw nsw i32 64, %cnt.0303
  %7 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_dquot.i, align 8
  %or = or i32 %8, %shl.i
  store i32 %or, ptr %s_dquot.i, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_state_lock) #13
  br label %if.end86

if.else:                                          ; preds = %if.end62
  %shl.i246 = shl i32 %flags, %cnt.0303
  %neg = xor i32 %shl.i246, -1
  %9 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_dquot.i, align 8
  %and70 = and i32 %10, %neg
  store i32 %and70, ptr %s_dquot.i, align 8
  %and.i.i249 = and i32 %and70, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i249)
  %tobool.i.i250.not = icmp eq i32 %and.i.i249, 0
  br i1 %tobool.i.i250.not, label %land.lhs.true72, label %if.else.if.end80_crit_edge

if.else.if.end80_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

land.lhs.true72:                                  ; preds = %if.else
  %shl.i.i = shl nuw nsw i32 64, %cnt.0303
  %and.i = and i32 %and70, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true72.if.end80_crit_edge, label %if.then74

land.lhs.true72.if.end80_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then74:                                        ; preds = %land.lhs.true72
  %neg76 = xor i32 %shl.i.i, -1
  %and78 = and i32 %and70, %neg76
  %11 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and78, ptr %s_dquot.i, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_state_lock) #13
  %arrayidx.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %cnt.0303
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then74.for.inc_crit_edge, label %if.end.i

if.then74.for.inc_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i:                                         ; preds = %if.then74
  %14 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_dquot.i, align 8
  %and.i254 = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i254)
  %tobool1.not.i = icmp eq i32 %and.i254, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i) #13
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_flags.i, align 4
  %and3.i = and i32 %17, -33
  store i32 %and3.i, ptr %i_flags.i, align 4
  call void @up_write(ptr noundef %i_rwsem.i.i) #13
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx.i, align 4
  call void @iput(ptr noundef nonnull %13) #13
  br label %for.inc

if.end80:                                         ; preds = %land.lhs.true72.if.end80_crit_edge, %if.else.if.end80_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_state_lock) #13
  %19 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_dquot.i, align 8
  %and.i.i257 = and i32 %20, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i257)
  %tobool.i.i258.not.not = icmp eq i32 %and.i.i257, 0
  br i1 %tobool.i.i258.not.not, label %if.end80.if.end86_crit_edge, label %if.end80.for.inc_crit_edge

if.end80.for.inc_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end80.if.end86_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.end86:                                         ; preds = %if.end80.if.end86_crit_edge, %if.end80.thread
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tofree_head.i) #13
  %21 = ptrtoint ptr %tofree_head.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tofree_head.i, ptr %tofree_head.i, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %tofree_head.i, ptr %4, align 4
  %23 = ptrtoint ptr %dq_op.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dq_op.i, align 8
  %tobool.not.i259 = icmp eq ptr %24, null
  br i1 %tobool.not.i259, label %if.end86.drop_dquot_ref.exit_crit_edge, label %if.then.i

if.end86.drop_dquot_ref.exit_crit_edge:           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_dquot_ref.exit

if.then.i:                                        ; preds = %if.end86
  call void @_raw_spin_lock(ptr noundef %s_inode_list_lock.i.i) #13
  %25 = ptrtoint ptr %s_inodes.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn35.i.i = load ptr, ptr %s_inodes.i.i, align 4
  %cmp.not37.i.i = icmp eq ptr %.pn35.i.i, %s_inodes.i.i
  br i1 %cmp.not37.i.i, label %for.end.thread.i.i, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

for.end.thread.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock.i.i) #13
  br label %remove_dquot_ref.exit.i

for.body.i.i:                                     ; preds = %if.end7.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %.pn39.i.i = phi ptr [ %.pn.i.i, %if.end7.i.i.for.body.i.i_crit_edge ], [ %.pn35.i.i, %if.then.i.for.body.i.i_crit_edge ]
  %reserved.038.i.i = phi i32 [ %reserved.2.i.i, %if.end7.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %inode.040.i.i = getelementptr i8, ptr %.pn39.i.i, i32 -344
  call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #13
  %i_flags.i.i = getelementptr i8, ptr %.pn39.i.i, i32 -332
  %26 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_flags.i.i, align 4
  %and.i.i260 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i260)
  %tobool.not.i.i = icmp eq i32 %and.i.i260, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.body.i.i.if.end7.i.i_crit_edge

for.body.i.i.if.end7.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %i_sb.i.i.i = getelementptr i8, ptr %.pn39.i.i, i32 -316
  %28 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i.i.i, align 4
  %dq_op.i.i.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %dq_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dq_op.i.i.i, align 8
  %get_reserved_space.i.i.i = getelementptr inbounds %struct.dquot_operations, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %get_reserved_space.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_reserved_space.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %i_lock.i.i.i = getelementptr i8, ptr %.pn39.i.i, i32 -232
  call void @_raw_spin_lock(ptr noundef %i_lock.i.i.i) #13
  %34 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb.i.i.i, align 4
  %dq_op.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %dq_op.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dq_op.i.i.i.i, align 8
  %get_reserved_space.i.i.i.i = getelementptr inbounds %struct.dquot_operations, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %get_reserved_space.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %get_reserved_space.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i.i, label %inode_get_rsv_space.exit.thread32.i.i, label %inode_get_rsv_space.exit.i.i

inode_get_rsv_space.exit.thread32.i.i:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock(ptr noundef %i_lock.i.i.i) #13
  br label %if.end.i.i

inode_get_rsv_space.exit.i.i:                     ; preds = %if.end.i.i.i
  %call.i.i.i.i.i = call ptr %39(ptr noundef %inode.040.i.i) #13
  %40 = ptrtoint ptr %call.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %call.i.i.i.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_lock.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %cmp2.i.i = icmp sgt i64 %41, 0
  br i1 %cmp2.i.i, label %if.then6.i.i, label %inode_get_rsv_space.exit.i.i.if.end.i.i_crit_edge, !prof !282

inode_get_rsv_space.exit.i.i.if.end.i.i_crit_edge: ; preds = %inode_get_rsv_space.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then6.i.i:                                     ; preds = %inode_get_rsv_space.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then6.i.i, %inode_get_rsv_space.exit.i.i.if.end.i.i_crit_edge, %inode_get_rsv_space.exit.thread32.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %reserved.1.i.i = phi i32 [ 1, %if.then6.i.i ], [ %reserved.038.i.i, %inode_get_rsv_space.exit.i.i.if.end.i.i_crit_edge ], [ %reserved.038.i.i, %inode_get_rsv_space.exit.thread32.i.i ], [ %reserved.038.i.i, %if.then.i.i.if.end.i.i_crit_edge ]
  %42 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_op.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %s_op.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_op.i.i.i.i, align 4
  %get_dquots.i.i.i.i = getelementptr inbounds %struct.super_operations, ptr %45, i32 0, i32 22
  %46 = ptrtoint ptr %get_dquots.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get_dquots.i.i.i.i, align 4
  %call.i.i.i.i = call ptr %47(ptr noundef %inode.040.i.i) #13
  %arrayidx.i.i.i = getelementptr ptr, ptr %call.i.i.i.i, i32 %cnt.0303
  %48 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i27.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i27.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.end.i28.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i.i

if.end.i28.i.i:                                   ; preds = %if.end.i.i
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  %dq_free.i.i.i = getelementptr inbounds %struct.dquot, ptr %49, i32 0, i32 2
  %51 = ptrtoint ptr %dq_free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %dq_free.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %52, %dq_free.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then4.i.i.i, label %if.else.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i28.i.i
  call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %53 = ptrtoint ptr %tofree_head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tofree_head.i, align 4
  %call.i.i.i29.i.i = call zeroext i1 @__list_add_valid(ptr noundef %dq_free.i.i.i, ptr noundef nonnull %tofree_head.i, ptr noundef %54) #13
  br i1 %call.i.i.i29.i.i, label %if.end.i.i.i.i.i, label %if.then4.i.i.i.list_add.exit.i.i.i_crit_edge

if.then4.i.i.i.list_add.exit.i.i.i_crit_edge:     ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dq_free.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %56 = ptrtoint ptr %dq_free.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %dq_free.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.dquot, ptr %49, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %tofree_head.i, ptr %prev3.i.i.i.i.i, align 4
  %58 = ptrtoint ptr %tofree_head.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %dq_free.i.i.i, ptr %tofree_head.i, align 4
  br label %list_add.exit.i.i.i

list_add.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %if.then4.i.i.i.list_add.exit.i.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  br label %if.end7.i.i

if.else.i.i.i:                                    ; preds = %if.end.i28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dqput(ptr noundef nonnull %49) #13
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i.i, %list_add.exit.i.i.i, %if.end.i.i.if.end7.i.i_crit_edge, %for.body.i.i.if.end7.i.i_crit_edge
  %reserved.2.i.i = phi i32 [ %reserved.038.i.i, %for.body.i.i.if.end7.i.i_crit_edge ], [ %reserved.1.i.i, %if.end.i.i.if.end7.i.i_crit_edge ], [ %reserved.1.i.i, %list_add.exit.i.i.i ], [ %reserved.1.i.i, %if.else.i.i.i ]
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #13
  %59 = ptrtoint ptr %.pn39.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn.i.i = load ptr, ptr %.pn39.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %s_inodes.i.i
  br i1 %cmp.not.i.i, label %for.end.i.i, label %if.end7.i.i.for.body.i.i_crit_edge

if.end7.i.i.for.body.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end7.i.i
  call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reserved.2.i.i)
  %tobool14.not.i.i = icmp eq i32 %reserved.2.i.i, 0
  br i1 %tobool14.not.i.i, label %for.end.i.i.remove_dquot_ref.exit.i_crit_edge, label %do.end.i.i

for.end.i.i.remove_dquot_ref.exit.i_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_dquot_ref.exit.i

do.end.i.i:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %s_id.i.i) #16
  br label %remove_dquot_ref.exit.i

remove_dquot_ref.exit.i:                          ; preds = %do.end.i.i, %for.end.i.i.remove_dquot_ref.exit.i_crit_edge, %for.end.thread.i.i
  call void @synchronize_srcu(ptr noundef nonnull @dquot_srcu) #13
  %60 = ptrtoint ptr %tofree_head.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tofree_head.i, align 4
  %cmp.not6.i.i = icmp eq ptr %61, %tofree_head.i
  br i1 %cmp.not6.i.i, label %remove_dquot_ref.exit.i.drop_dquot_ref.exit_crit_edge, label %remove_dquot_ref.exit.i.while.body.i.i_crit_edge

remove_dquot_ref.exit.i.while.body.i.i_crit_edge: ; preds = %remove_dquot_ref.exit.i
  br label %while.body.i.i

remove_dquot_ref.exit.i.drop_dquot_ref.exit_crit_edge: ; preds = %remove_dquot_ref.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_dquot_ref.exit

while.body.i.i:                                   ; preds = %list_del_init.exit.i.i.while.body.i.i_crit_edge, %remove_dquot_ref.exit.i.while.body.i.i_crit_edge
  %act_head.07.i.i = phi ptr [ %63, %list_del_init.exit.i.i.while.body.i.i_crit_edge ], [ %61, %remove_dquot_ref.exit.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %act_head.07.i.i, i32 -16
  %62 = ptrtoint ptr %act_head.07.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %act_head.07.i.i, align 4
  %call.i.i.i2.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %act_head.07.i.i) #13
  br i1 %call.i.i.i2.i, label %if.end.i.i.i.i, label %while.body.i.i.list_del_init.exit.i.i_crit_edge

while.body.i.i.list_del_init.exit.i.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %act_head.07.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i.i, align 4
  %66 = ptrtoint ptr %act_head.07.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %act_head.07.i.i, align 4
  %prev1.i.i.i.i3.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i3.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %while.body.i.i.list_del_init.exit.i.i_crit_edge
  %70 = ptrtoint ptr %act_head.07.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %act_head.07.i.i, ptr %act_head.07.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %act_head.07.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %act_head.07.i.i, ptr %prev.i3.i.i.i, align 4
  call void @dqput(ptr noundef %add.ptr.i.i) #13
  %cmp.not.i4.i = icmp eq ptr %63, %tofree_head.i
  br i1 %cmp.not.i4.i, label %list_del_init.exit.i.i.drop_dquot_ref.exit_crit_edge, label %list_del_init.exit.i.i.while.body.i.i_crit_edge

list_del_init.exit.i.i.while.body.i.i_crit_edge:  ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

list_del_init.exit.i.i.drop_dquot_ref.exit_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_dquot_ref.exit

drop_dquot_ref.exit:                              ; preds = %list_del_init.exit.i.i.drop_dquot_ref.exit_crit_edge, %remove_dquot_ref.exit.i.drop_dquot_ref.exit_crit_edge, %if.end86.drop_dquot_ref.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tofree_head.i) #13
  call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %72 = load ptr, ptr @inuse_list, align 4
  %cmp.not6678.i = icmp eq ptr %72, @inuse_list
  br i1 %cmp.not6678.i, label %drop_dquot_ref.exit.invalidate_dquots.exit_crit_edge, label %drop_dquot_ref.exit.for.body.i_crit_edge

drop_dquot_ref.exit.for.body.i_crit_edge:         ; preds = %drop_dquot_ref.exit
  br label %for.body.i

drop_dquot_ref.exit.invalidate_dquots.exit_crit_edge: ; preds = %drop_dquot_ref.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %invalidate_dquots.exit

for.body.i:                                       ; preds = %for.body.i.backedge, %drop_dquot_ref.exit.for.body.i_crit_edge
  %.pn.in67.i = phi ptr [ %.pn.in67.i.be, %for.body.i.backedge ], [ %72, %drop_dquot_ref.exit.for.body.i_crit_edge ]
  %dquot.071.i = getelementptr i8, ptr %.pn.in67.i, i32 -8
  %73 = ptrtoint ptr %.pn.in67.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn72.i = load ptr, ptr %.pn.in67.i, align 8
  %dq_sb.i = getelementptr i8, ptr %.pn.in67.i, i32 164
  %74 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dq_sb.i, align 4
  %cmp6.not.i = icmp eq ptr %75, %sb
  br i1 %cmp6.not.i, label %if.end.i262, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i262:                                      ; preds = %for.body.i
  %type7.i = getelementptr i8, ptr %.pn.in67.i, i32 172
  %76 = ptrtoint ptr %type7.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %type7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %cnt.0303)
  %cmp8.not.i = icmp eq i32 %77, %cnt.0303
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end.i262.for.inc.i_crit_edge

if.end.i262.for.inc.i_crit_edge:                  ; preds = %if.end.i262
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end.i262
  %dq_count.i = getelementptr i8, ptr %.pn.in67.i, i32 160
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dq_count.i, i32 noundef 4) #13
  %78 = ptrtoint ptr %dq_count.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %dq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i263 = icmp eq i32 %79, 0
  br i1 %tobool.not.i263, label %if.end32.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end10.i
  %call.i.i.i.i264 = call zeroext i1 @__kasan_check_read(ptr noundef %dq_count.i, i32 noundef 4) #13
  %80 = ptrtoint ptr %dq_count.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %dq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i.i265 = icmp eq i32 %81, 0
  br i1 %tobool.not.i.i265, label %land.rhs.i.i, label %if.then11.i.if.end29.i.i_crit_edge

if.then11.i.if.end29.i.i_crit_edge:               ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %if.then11.i
  %.b2.i.i = load i1, ptr @dqgrab.__already_done, align 1
  br i1 %.b2.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i.i266, !prof !277

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i

if.then.i.i266:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dqgrab.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 49, i32 noundef 9, ptr noundef null) #13
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i266, %land.rhs.i.i.if.end29.i.i_crit_edge, %if.then11.i.if.end29.i.i_crit_edge
  %dq_flags.i.i = getelementptr i8, ptr %.pn.in67.i, i32 184
  %82 = ptrtoint ptr %dq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %dq_flags.i.i, align 4
  %84 = and i32 %83, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool39.not.i.i = icmp eq i32 %84, 0
  br i1 %tobool39.not.i.i, label %land.rhs48.i.i, label %if.end29.i.i.dqgrab.exit.i_crit_edge

if.end29.i.i.dqgrab.exit.i_crit_edge:             ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dqgrab.exit.i

land.rhs48.i.i:                                   ; preds = %if.end29.i.i
  %.b1021.i.i = load i1, ptr @dqgrab.__already_done.7, align 1
  br i1 %.b1021.i.i, label %land.rhs48.i.i.dqgrab.exit.i_crit_edge, label %if.then59.i.i, !prof !277

land.rhs48.i.i.dqgrab.exit.i_crit_edge:           ; preds = %land.rhs48.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dqgrab.exit.i

if.then59.i.i:                                    ; preds = %land.rhs48.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dqgrab.__already_done.7, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 50, i32 noundef 9, ptr noundef null) #13
  br label %dqgrab.exit.i

dqgrab.exit.i:                                    ; preds = %if.then59.i.i, %land.rhs48.i.i.dqgrab.exit.i_crit_edge, %if.end29.i.i.dqgrab.exit.i_crit_edge
  %call.i.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %dq_count.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %dq_count.i, i32 1, i32 3, i32 1) #13
  %85 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dq_count.i, ptr %dq_count.i, i32 1, ptr elementtype(i32) %dq_count.i) #13, !srcloc !278
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 559) #13
  %call.i.i53.i = call zeroext i1 @__kasan_check_read(ptr noundef %dq_count.i, i32 noundef 4) #13
  %86 = ptrtoint ptr %dq_count.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %dq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp19.i = icmp eq i32 %87, 1
  br i1 %cmp19.i, label %dqgrab.exit.i.do.end31.i_crit_edge, label %if.end21.i

dqgrab.exit.i.do.end31.i_crit_edge:               ; preds = %dqgrab.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31.i

if.end21.i:                                       ; preds = %dqgrab.exit.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #13
  %88 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #13
  %call2373.i = call i32 @prepare_to_wait_event(ptr noundef nonnull @dquot_ref_wq, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #13
  %call.i.i5474.i = call zeroext i1 @__kasan_check_read(ptr noundef %dq_count.i, i32 noundef 4) #13
  %89 = ptrtoint ptr %dq_count.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %dq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp2675.i = icmp eq i32 %90, 1
  br i1 %cmp2675.i, label %if.end21.i.for.end.i_crit_edge, label %if.end21.i.cleanup.i_crit_edge

if.end21.i.cleanup.i_crit_edge:                   ; preds = %if.end21.i
  br label %cleanup.i

if.end21.i.for.end.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end21.i.cleanup.i_crit_edge
  call void @schedule() #13
  %call23.i = call i32 @prepare_to_wait_event(ptr noundef nonnull @dquot_ref_wq, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #13
  %call.i.i54.i = call zeroext i1 @__kasan_check_read(ptr noundef %dq_count.i, i32 noundef 4) #13
  %91 = ptrtoint ptr %dq_count.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %dq_count.i, align 4
  %cmp26.i = icmp eq i32 %92, 1
  br i1 %cmp26.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end21.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef nonnull @dquot_ref_wq, ptr noundef nonnull %__wq_entry.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #13
  br label %do.end31.i

do.end31.i:                                       ; preds = %for.end.i, %dqgrab.exit.i.do.end31.i_crit_edge
  call void @dqput(ptr noundef %dquot.071.i) #13
  call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %93 = load ptr, ptr @inuse_list, align 4
  %cmp.not66.i = icmp eq ptr %93, @inuse_list
  br i1 %cmp.not66.i, label %do.end31.i.invalidate_dquots.exit_crit_edge, label %do.end31.i.for.body.i.backedge_crit_edge

do.end31.i.for.body.i.backedge_crit_edge:         ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.backedge

do.end31.i.invalidate_dquots.exit_crit_edge:      ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %invalidate_dquots.exit

if.end32.i:                                       ; preds = %if.end10.i
  %pprev.i.i.i.i = getelementptr i8, ptr %.pn.in67.i, i32 -4
  %94 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %95, null
  br i1 %tobool.not.i.not.i.i.i, label %if.end32.i.remove_dquot_hash.exit.i_crit_edge, label %if.then.i.i.i

if.end32.i.remove_dquot_hash.exit.i_crit_edge:    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_dquot_hash.exit.i

if.then.i.i.i:                                    ; preds = %if.end32.i
  %96 = ptrtoint ptr %dquot.071.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dquot.071.i, align 4
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %97, ptr %95, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %97, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %97, i32 0, i32 1
  %99 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %95, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %100 = ptrtoint ptr %dquot.071.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %dquot.071.i, align 4
  %101 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %remove_dquot_hash.exit.i

remove_dquot_hash.exit.i:                         ; preds = %__hlist_del.exit.i.i.i, %if.end32.i.remove_dquot_hash.exit.i_crit_edge
  %dq_free.i.i = getelementptr i8, ptr %.pn.in67.i, i32 8
  %102 = ptrtoint ptr %dq_free.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile ptr, ptr %dq_free.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %103, %dq_free.i.i
  br i1 %cmp.i.not.i.i, label %remove_dquot_hash.exit.i.remove_free_dquot.exit.i_crit_edge, label %if.end.i.i267

remove_dquot_hash.exit.i.remove_free_dquot.exit.i_crit_edge: ; preds = %remove_dquot_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_free_dquot.exit.i

if.end.i.i267:                                    ; preds = %remove_dquot_hash.exit.i
  %call.i.i.i55.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %dq_free.i.i) #13
  br i1 %call.i.i.i55.i, label %if.end.i.i.i.i270, label %if.end.i.i267.list_del_init.exit.i.i272_crit_edge

if.end.i.i267.list_del_init.exit.i.i272_crit_edge: ; preds = %if.end.i.i267
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i.i272

if.end.i.i.i.i270:                                ; preds = %if.end.i.i267
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i268 = getelementptr i8, ptr %.pn.in67.i, i32 12
  %104 = ptrtoint ptr %prev.i.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i.i.i.i268, align 4
  %106 = ptrtoint ptr %dq_free.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dq_free.i.i, align 4
  %prev1.i.i.i.i.i269 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %prev1.i.i.i.i.i269 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev1.i.i.i.i.i269, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %107, ptr %105, align 4
  br label %list_del_init.exit.i.i272

list_del_init.exit.i.i272:                        ; preds = %if.end.i.i.i.i270, %if.end.i.i267.list_del_init.exit.i.i272_crit_edge
  %110 = ptrtoint ptr %dq_free.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %dq_free.i.i, ptr %dq_free.i.i, align 4
  %prev.i3.i.i.i271 = getelementptr i8, ptr %.pn.in67.i, i32 12
  %111 = ptrtoint ptr %prev.i3.i.i.i271 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %dq_free.i.i, ptr %prev.i3.i.i.i271, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %112 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 6), i64 noundef -1, i32 noundef %112) #13
  br label %remove_free_dquot.exit.i

remove_free_dquot.exit.i:                         ; preds = %list_del_init.exit.i.i272, %remove_dquot_hash.exit.i.remove_free_dquot.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %113 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 5), i64 noundef -1, i32 noundef %113) #13
  %call.i.i.i56.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in67.i) #13
  br i1 %call.i.i.i56.i, label %if.end.i.i.i59.i, label %remove_free_dquot.exit.i.remove_inuse.exit.i_crit_edge

remove_free_dquot.exit.i.remove_inuse.exit.i_crit_edge: ; preds = %remove_free_dquot.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_inuse.exit.i

if.end.i.i.i59.i:                                 ; preds = %remove_free_dquot.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i57.i = getelementptr i8, ptr %.pn.in67.i, i32 4
  %114 = ptrtoint ptr %prev.i.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i.i.i57.i, align 4
  %116 = ptrtoint ptr %.pn.in67.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %.pn.in67.i, align 4
  %prev1.i.i.i.i58.i = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %prev1.i.i.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev1.i.i.i.i58.i, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %117, ptr %115, align 4
  br label %remove_inuse.exit.i

remove_inuse.exit.i:                              ; preds = %if.end.i.i.i59.i, %remove_free_dquot.exit.i.remove_inuse.exit.i_crit_edge
  %120 = ptrtoint ptr %.pn.in67.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in67.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.in67.i, i32 4
  %121 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %122 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dq_sb.i, align 4
  %dq_op.i.i = getelementptr inbounds %struct.super_block, ptr %123, i32 0, i32 7
  %124 = ptrtoint ptr %dq_op.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dq_op.i.i, align 8
  %destroy_dquot.i.i = getelementptr inbounds %struct.dquot_operations, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %destroy_dquot.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %destroy_dquot.i.i, align 4
  call void %127(ptr noundef %dquot.071.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %remove_inuse.exit.i, %if.end.i262.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn72.i, @inuse_list
  br i1 %cmp.not.i, label %for.inc.i.invalidate_dquots.exit_crit_edge, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.backedge

for.inc.i.invalidate_dquots.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %invalidate_dquots.exit

for.body.i.backedge:                              ; preds = %for.inc.i.for.body.i.backedge_crit_edge, %do.end31.i.for.body.i.backedge_crit_edge
  %.pn.in67.i.be = phi ptr [ %.pn72.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %93, %do.end31.i.for.body.i.backedge_crit_edge ]
  br label %for.body.i

invalidate_dquots.exit:                           ; preds = %for.inc.i.invalidate_dquots.exit_crit_edge, %do.end31.i.invalidate_dquots.exit_crit_edge, %drop_dquot_ref.exit.invalidate_dquots.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %cnt.0303
  %dqi_flags.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %cnt.0303, i32 3
  %128 = ptrtoint ptr %dqi_flags.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %dqi_flags.i, align 4
  %130 = and i32 %129, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool88.not = icmp eq i32 %130, 0
  br i1 %tobool88.not, label %invalidate_dquots.exit.if.end91_crit_edge, label %if.then89

invalidate_dquots.exit.if.end91_crit_edge:        ; preds = %invalidate_dquots.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

if.then89:                                        ; preds = %invalidate_dquots.exit
  call void @__sanitizer_cov_trace_pc() #15
  %131 = ptrtoint ptr %dq_op.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dq_op.i, align 8
  %write_info = getelementptr inbounds %struct.dquot_operations, ptr %132, i32 0, i32 6
  %133 = ptrtoint ptr %write_info to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write_info, align 4
  %call90 = call i32 %134(ptr noundef %sb, i32 noundef %cnt.0303) #13
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %invalidate_dquots.exit.if.end91_crit_edge
  %arrayidx92 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 4, i32 %cnt.0303
  %135 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx92, align 4
  %free_file_info = getelementptr inbounds %struct.quota_format_ops, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %free_file_info to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %free_file_info, align 4
  %tobool93.not = icmp eq ptr %138, null
  br i1 %tobool93.not, label %if.end91.if.end99_crit_edge, label %if.then94

if.end91.if.end99_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  %call98 = call i32 %138(ptr noundef %sb, i32 noundef %cnt.0303) #13
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %if.end91.if.end99_crit_edge
  %139 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx, align 8
  %qf_owner.i = getelementptr inbounds %struct.quota_format_type, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %qf_owner.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %qf_owner.i, align 4
  call void @module_put(ptr noundef %142) #13
  %143 = ptrtoint ptr %dqi_flags.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %dqi_flags.i, align 8
  %dqi_igrace = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %cnt.0303, i32 5
  %144 = ptrtoint ptr %dqi_igrace to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %dqi_igrace, align 8
  %dqi_bgrace = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %cnt.0303, i32 4
  %145 = ptrtoint ptr %dqi_bgrace to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %dqi_bgrace, align 4
  %146 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %arrayidx92, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end99, %if.end80.for.inc_crit_edge, %if.end4.i, %if.then74.for.inc_crit_edge, %if.end59.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %cnt.0303, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %147 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %s_dquot.i, align 8
  %and111 = and i32 %148, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end114, label %for.end.put_inodes_crit_edge

for.end.put_inodes_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_inodes

if.end114:                                        ; preds = %for.end
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %149 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %s_op, align 4
  %sync_fs = getelementptr inbounds %struct.super_operations, ptr %150, i32 0, i32 8
  %151 = ptrtoint ptr %sync_fs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %sync_fs, align 4
  %tobool115.not = icmp eq ptr %152, null
  br i1 %tobool115.not, label %if.end114.if.end120_crit_edge, label %if.then116

if.end114.if.end120_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

if.then116:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  %call119 = call i32 %152(ptr noundef %sb, i32 noundef 1) #13
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %if.end114.if.end120_crit_edge
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %153 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %s_bdev, align 4
  %call121 = call i32 @sync_blockdev(ptr noundef %154) #13
  %155 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %s_dquot.i, align 8
  %and.i.i275 = and i32 %156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i275)
  %tobool.i.i276.not = icmp eq i32 %and.i.i275, 0
  br i1 %tobool.i.i276.not, label %land.lhs.true126, label %if.end120.for.inc137_crit_edge

if.end120.for.inc137_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc137

land.lhs.true126:                                 ; preds = %if.end120
  %arrayidx127 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 0
  %157 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx127, align 4
  %tobool128.not = icmp eq ptr %158, null
  br i1 %tobool128.not, label %land.lhs.true126.for.inc137_crit_edge, label %if.then129

land.lhs.true126.for.inc137_crit_edge:            ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc137

if.then129:                                       ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #15
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %158, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i) #13
  %159 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx127, align 4
  %i_data = getelementptr inbounds %struct.inode, ptr %160, i32 0, i32 46
  call void @truncate_inode_pages(ptr noundef %i_data, i64 noundef 0) #13
  %161 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx127, align 4
  %i_rwsem.i277 = getelementptr inbounds %struct.inode, ptr %162, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i277) #13
  br label %for.inc137

for.inc137:                                       ; preds = %if.then129, %land.lhs.true126.for.inc137_crit_edge, %if.end120.for.inc137_crit_edge
  %163 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %s_dquot.i, align 8
  %and.i.i275.1 = and i32 %164, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i275.1)
  %tobool.i.i276.not.1 = icmp eq i32 %and.i.i275.1, 0
  br i1 %tobool.i.i276.not.1, label %land.lhs.true126.1, label %for.inc137.for.inc137.1_crit_edge

for.inc137.for.inc137.1_crit_edge:                ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc137.1

land.lhs.true126.1:                               ; preds = %for.inc137
  %arrayidx127.1 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 1
  %165 = ptrtoint ptr %arrayidx127.1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx127.1, align 4
  %tobool128.not.1 = icmp eq ptr %166, null
  br i1 %tobool128.not.1, label %land.lhs.true126.1.for.inc137.1_crit_edge, label %if.then129.1

land.lhs.true126.1.for.inc137.1_crit_edge:        ; preds = %land.lhs.true126.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc137.1

if.then129.1:                                     ; preds = %land.lhs.true126.1
  call void @__sanitizer_cov_trace_pc() #15
  %i_rwsem.i.1 = getelementptr inbounds %struct.inode, ptr %166, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.1) #13
  %167 = ptrtoint ptr %arrayidx127.1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx127.1, align 4
  %i_data.1 = getelementptr inbounds %struct.inode, ptr %168, i32 0, i32 46
  call void @truncate_inode_pages(ptr noundef %i_data.1, i64 noundef 0) #13
  %169 = ptrtoint ptr %arrayidx127.1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx127.1, align 4
  %i_rwsem.i277.1 = getelementptr inbounds %struct.inode, ptr %170, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i277.1) #13
  br label %for.inc137.1

for.inc137.1:                                     ; preds = %if.then129.1, %land.lhs.true126.1.for.inc137.1_crit_edge, %for.inc137.for.inc137.1_crit_edge
  %171 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %s_dquot.i, align 8
  %and.i.i275.2 = and i32 %172, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i275.2)
  %tobool.i.i276.not.2 = icmp eq i32 %and.i.i275.2, 0
  br i1 %tobool.i.i276.not.2, label %land.lhs.true126.2, label %for.inc137.1.for.inc137.2_crit_edge

for.inc137.1.for.inc137.2_crit_edge:              ; preds = %for.inc137.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc137.2

land.lhs.true126.2:                               ; preds = %for.inc137.1
  %arrayidx127.2 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 2
  %173 = ptrtoint ptr %arrayidx127.2 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx127.2, align 4
  %tobool128.not.2 = icmp eq ptr %174, null
  br i1 %tobool128.not.2, label %land.lhs.true126.2.for.inc137.2_crit_edge, label %if.then129.2

land.lhs.true126.2.for.inc137.2_crit_edge:        ; preds = %land.lhs.true126.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc137.2

if.then129.2:                                     ; preds = %land.lhs.true126.2
  call void @__sanitizer_cov_trace_pc() #15
  %i_rwsem.i.2 = getelementptr inbounds %struct.inode, ptr %174, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.2) #13
  %175 = ptrtoint ptr %arrayidx127.2 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx127.2, align 4
  %i_data.2 = getelementptr inbounds %struct.inode, ptr %176, i32 0, i32 46
  call void @truncate_inode_pages(ptr noundef %i_data.2, i64 noundef 0) #13
  %177 = ptrtoint ptr %arrayidx127.2 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx127.2, align 4
  %i_rwsem.i277.2 = getelementptr inbounds %struct.inode, ptr %178, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i277.2) #13
  br label %for.inc137.2

for.inc137.2:                                     ; preds = %if.then129.2, %land.lhs.true126.2.for.inc137.2_crit_edge, %for.inc137.1.for.inc137.2_crit_edge
  %179 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %s_bdev, align 4
  %tobool141.not = icmp eq ptr %180, null
  br i1 %tobool141.not, label %for.inc137.2.put_inodes_crit_edge, label %if.then142

for.inc137.2.put_inodes_crit_edge:                ; preds = %for.inc137.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_inodes

if.then142:                                       ; preds = %for.inc137.2
  call void @__sanitizer_cov_trace_pc() #15
  call void @invalidate_bdev(ptr noundef nonnull %180) #13
  br label %put_inodes

put_inodes:                                       ; preds = %if.then142, %for.inc137.2.put_inodes_crit_edge, %for.end.put_inodes_crit_edge
  br i1 %tobool45.not, label %for.body151.preheader, label %put_inodes.cleanup_crit_edge

put_inodes.cleanup_crit_edge:                     ; preds = %put_inodes
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body151.preheader:                            ; preds = %put_inodes
  %181 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %s_dquot.i, align 8
  %and.i.i280 = and i32 %182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i280)
  %tobool.i.i281.not = icmp eq i32 %and.i.i280, 0
  br i1 %tobool.i.i281.not, label %if.then153, label %for.body151.preheader.for.inc155_crit_edge

for.body151.preheader.for.inc155_crit_edge:       ; preds = %for.body151.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc155

if.then153:                                       ; preds = %for.body151.preheader
  %arrayidx.i282 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 0
  %183 = ptrtoint ptr %arrayidx.i282 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx.i282, align 4
  %tobool.not.i283 = icmp eq ptr %184, null
  br i1 %tobool.not.i283, label %if.then153.for.inc155_crit_edge, label %if.end.i287

if.then153.for.inc155_crit_edge:                  ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc155

if.end.i287:                                      ; preds = %if.then153
  %and.i285 = and i32 %182, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i285)
  %tobool1.not.i286 = icmp eq i32 %and.i285, 0
  br i1 %tobool1.not.i286, label %if.then2.i291, label %if.end.i287.if.end4.i292_crit_edge

if.end.i287.if.end4.i292_crit_edge:               ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i292

if.then2.i291:                                    ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #15
  %i_rwsem.i.i288 = getelementptr inbounds %struct.inode, ptr %184, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i288) #13
  %i_flags.i289 = getelementptr inbounds %struct.inode, ptr %184, i32 0, i32 4
  %185 = ptrtoint ptr %i_flags.i289 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %i_flags.i289, align 4
  %and3.i290 = and i32 %186, -33
  store i32 %and3.i290, ptr %i_flags.i289, align 4
  call void @up_write(ptr noundef %i_rwsem.i.i288) #13
  br label %if.end4.i292

if.end4.i292:                                     ; preds = %if.then2.i291, %if.end.i287.if.end4.i292_crit_edge
  %187 = ptrtoint ptr %arrayidx.i282 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %arrayidx.i282, align 4
  call void @iput(ptr noundef nonnull %184) #13
  br label %for.inc155

for.inc155:                                       ; preds = %if.end4.i292, %if.then153.for.inc155_crit_edge, %for.body151.preheader.for.inc155_crit_edge
  %188 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %s_dquot.i, align 8
  %and.i.i280.1 = and i32 %189, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i280.1)
  %tobool.i.i281.not.1 = icmp eq i32 %and.i.i280.1, 0
  br i1 %tobool.i.i281.not.1, label %if.then153.1, label %for.inc155.for.inc155.1_crit_edge

for.inc155.for.inc155.1_crit_edge:                ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc155.1

if.then153.1:                                     ; preds = %for.inc155
  %arrayidx.i282.1 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 1
  %190 = ptrtoint ptr %arrayidx.i282.1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx.i282.1, align 4
  %tobool.not.i283.1 = icmp eq ptr %191, null
  br i1 %tobool.not.i283.1, label %if.then153.1.for.inc155.1_crit_edge, label %if.end.i287.1

if.then153.1.for.inc155.1_crit_edge:              ; preds = %if.then153.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc155.1

if.end.i287.1:                                    ; preds = %if.then153.1
  %and.i285.1 = and i32 %189, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i285.1)
  %tobool1.not.i286.1 = icmp eq i32 %and.i285.1, 0
  br i1 %tobool1.not.i286.1, label %if.then2.i291.1, label %if.end.i287.1.if.end4.i292.1_crit_edge

if.end.i287.1.if.end4.i292.1_crit_edge:           ; preds = %if.end.i287.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i292.1

if.then2.i291.1:                                  ; preds = %if.end.i287.1
  call void @__sanitizer_cov_trace_pc() #15
  %i_rwsem.i.i288.1 = getelementptr inbounds %struct.inode, ptr %191, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i288.1) #13
  %i_flags.i289.1 = getelementptr inbounds %struct.inode, ptr %191, i32 0, i32 4
  %192 = ptrtoint ptr %i_flags.i289.1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %i_flags.i289.1, align 4
  %and3.i290.1 = and i32 %193, -33
  store i32 %and3.i290.1, ptr %i_flags.i289.1, align 4
  call void @up_write(ptr noundef %i_rwsem.i.i288.1) #13
  br label %if.end4.i292.1

if.end4.i292.1:                                   ; preds = %if.then2.i291.1, %if.end.i287.1.if.end4.i292.1_crit_edge
  %194 = ptrtoint ptr %arrayidx.i282.1 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %arrayidx.i282.1, align 4
  call void @iput(ptr noundef nonnull %191) #13
  br label %for.inc155.1

for.inc155.1:                                     ; preds = %if.end4.i292.1, %if.then153.1.for.inc155.1_crit_edge, %for.inc155.for.inc155.1_crit_edge
  %195 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %s_dquot.i, align 8
  %and.i.i280.2 = and i32 %196, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i280.2)
  %tobool.i.i281.not.2 = icmp eq i32 %and.i.i280.2, 0
  br i1 %tobool.i.i281.not.2, label %if.then153.2, label %for.inc155.1.cleanup_crit_edge

for.inc155.1.cleanup_crit_edge:                   ; preds = %for.inc155.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then153.2:                                     ; preds = %for.inc155.1
  %arrayidx.i282.2 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 2
  %197 = ptrtoint ptr %arrayidx.i282.2 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %arrayidx.i282.2, align 4
  %tobool.not.i283.2 = icmp eq ptr %198, null
  br i1 %tobool.not.i283.2, label %if.then153.2.cleanup_crit_edge, label %if.end.i287.2

if.then153.2.cleanup_crit_edge:                   ; preds = %if.then153.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i287.2:                                    ; preds = %if.then153.2
  %and.i285.2 = and i32 %196, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i285.2)
  %tobool1.not.i286.2 = icmp eq i32 %and.i285.2, 0
  br i1 %tobool1.not.i286.2, label %if.then2.i291.2, label %if.end.i287.2.if.end4.i292.2_crit_edge

if.end.i287.2.if.end4.i292.2_crit_edge:           ; preds = %if.end.i287.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i292.2

if.then2.i291.2:                                  ; preds = %if.end.i287.2
  call void @__sanitizer_cov_trace_pc() #15
  %i_rwsem.i.i288.2 = getelementptr inbounds %struct.inode, ptr %198, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i288.2) #13
  %i_flags.i289.2 = getelementptr inbounds %struct.inode, ptr %198, i32 0, i32 4
  %199 = ptrtoint ptr %i_flags.i289.2 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %i_flags.i289.2, align 4
  %and3.i290.2 = and i32 %200, -33
  store i32 %and3.i290.2, ptr %i_flags.i289.2, align 4
  call void @up_write(ptr noundef %i_rwsem.i.i288.2) #13
  br label %if.end4.i292.2

if.end4.i292.2:                                   ; preds = %if.then2.i291.2, %if.end.i287.2.if.end4.i292.2_crit_edge
  %201 = ptrtoint ptr %arrayidx.i282.2 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr null, ptr %arrayidx.i282.2, align 4
  call void @iput(ptr noundef nonnull %198) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i292.2, %if.then153.2.cleanup_crit_edge, %for.inc155.1.cleanup_crit_edge, %put_inodes.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end40.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end40.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ], [ 0, %put_inodes.cleanup_crit_edge ], [ 0, %if.end4.i292.2 ], [ 0, %if.then153.2.cleanup_crit_edge ], [ 0, %for.inc155.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_quota_off(ptr noundef %sb, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dquot_disable(ptr noundef %sb, i32 noundef %type, i32 noundef 9)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_load_quota_sb(ptr noundef %sb, i32 noundef %type, i32 noundef %format_id, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %actqf.057.i = load ptr, ptr @quota_formats, align 4
  %tobool.not58.i = icmp eq ptr %actqf.057.i, null
  br i1 %tobool.not58.i, label %entry.if.then.i_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %actqf.059.i = phi ptr [ %actqf.0.i, %for.inc.i.land.rhs.i_crit_edge ], [ %actqf.057.i, %entry.land.rhs.i_crit_edge ]
  %0 = ptrtoint ptr %actqf.059.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actqf.059.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %format_id)
  %cmp.not.i = icmp eq i32 %1, %format_id
  br i1 %cmp.not.i, label %lor.lhs.false.critedge.i, label %for.inc.i

for.inc.i:                                        ; preds = %land.rhs.i
  %qf_next.i = getelementptr inbounds %struct.quota_format_type, ptr %actqf.059.i, i32 0, i32 3
  %2 = ptrtoint ptr %qf_next.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %actqf.0.i = load ptr, ptr %qf_next.i, align 4
  %tobool.not.i = icmp eq ptr %actqf.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.critedge.i:                         ; preds = %land.rhs.i
  %qf_owner.i = getelementptr inbounds %struct.quota_format_type, ptr %actqf.059.i, i32 0, i32 2
  %3 = ptrtoint ptr %qf_owner.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qf_owner.i, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef %4) #13
  br i1 %call.i, label %lor.lhs.false.critedge.i.if.end35.i_crit_edge, label %lor.lhs.false.critedge.i.if.then.i_crit_edge

lor.lhs.false.critedge.i.if.then.i_crit_edge:     ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.critedge.i.if.end35.i_crit_edge:    ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

if.then.i:                                        ; preds = %lor.lhs.false.critedge.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  %5 = zext i32 %format_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %format_id, label %for.cond2.i.3 [
    i32 1, label %if.then.i.for.end11.i_crit_edge
    i32 2, label %for.end11.i.fold.split
    i32 4, label %for.end11.i.fold.split183
  ]

if.then.i.for.end11.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end11.i

for.cond2.i.3:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end11.i

for.end11.i.fold.split:                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end11.i

for.end11.i.fold.split183:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end11.i

for.end11.i:                                      ; preds = %for.end11.i.fold.split183, %for.end11.i.fold.split, %for.cond2.i.3, %if.then.i.for.end11.i_crit_edge
  %qm.0.i.lcssa = phi i32 [ 0, %if.then.i.for.end11.i_crit_edge ], [ 3, %for.cond2.i.3 ], [ 1, %for.end11.i.fold.split ], [ 2, %for.end11.i.fold.split183 ]
  %tobool3.not.i.lcssa = phi i1 [ false, %if.then.i.for.end11.i_crit_edge ], [ true, %for.cond2.i.3 ], [ false, %for.end11.i.fold.split ], [ false, %for.end11.i.fold.split183 ]
  br i1 %tobool3.not.i.lcssa, label %for.end11.i.find_quota_format.exit_crit_edge, label %lor.lhs.false15.i

for.end11.i.find_quota_format.exit_crit_edge:     ; preds = %for.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_quota_format.exit

lor.lhs.false15.i:                                ; preds = %for.end11.i
  %qm_mod_name.i = getelementptr [4 x %struct.quota_module_name], ptr @module_names, i32 0, i32 %qm.0.i.lcssa, i32 1
  %6 = ptrtoint ptr %qm_mod_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qm_mod_name.i, align 4
  %call17.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end.i, label %lor.lhs.false15.i.find_quota_format.exit_crit_edge

lor.lhs.false15.i.find_quota_format.exit_crit_edge: ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_quota_format.exit

if.end.i:                                         ; preds = %lor.lhs.false15.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %actqf.160.i = load ptr, ptr @quota_formats, align 4
  %tobool21.not61.i = icmp eq ptr %actqf.160.i, null
  br i1 %tobool21.not61.i, label %if.end.i.if.end35.i_crit_edge, label %if.end.i.land.rhs22.i_crit_edge

if.end.i.land.rhs22.i_crit_edge:                  ; preds = %if.end.i
  br label %land.rhs22.i

if.end.i.if.end35.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

land.rhs22.i:                                     ; preds = %for.inc27.i.land.rhs22.i_crit_edge, %if.end.i.land.rhs22.i_crit_edge
  %actqf.162.i = phi ptr [ %actqf.1.i, %for.inc27.i.land.rhs22.i_crit_edge ], [ %actqf.160.i, %if.end.i.land.rhs22.i_crit_edge ]
  %8 = ptrtoint ptr %actqf.162.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actqf.162.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %format_id)
  %cmp24.not.i = icmp eq i32 %9, %format_id
  br i1 %cmp24.not.i, label %land.lhs.true.critedge.i, label %for.inc27.i

for.inc27.i:                                      ; preds = %land.rhs22.i
  %qf_next28.i = getelementptr inbounds %struct.quota_format_type, ptr %actqf.162.i, i32 0, i32 3
  %10 = ptrtoint ptr %qf_next28.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %actqf.1.i = load ptr, ptr %qf_next28.i, align 4
  %tobool21.not.i = icmp eq ptr %actqf.1.i, null
  br i1 %tobool21.not.i, label %for.inc27.i.if.end35.i_crit_edge, label %for.inc27.i.land.rhs22.i_crit_edge

for.inc27.i.land.rhs22.i_crit_edge:               ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs22.i

for.inc27.i.if.end35.i_crit_edge:                 ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

land.lhs.true.critedge.i:                         ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #15
  %qf_owner31.i = getelementptr inbounds %struct.quota_format_type, ptr %actqf.162.i, i32 0, i32 2
  %11 = ptrtoint ptr %qf_owner31.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qf_owner31.i, align 4
  %call32.i = tail call zeroext i1 @try_module_get(ptr noundef %12) #13
  %spec.select.i = select i1 %call32.i, ptr %actqf.162.i, ptr null
  br label %if.end35.i

if.end35.i:                                       ; preds = %land.lhs.true.critedge.i, %for.inc27.i.if.end35.i_crit_edge, %if.end.i.if.end35.i_crit_edge, %lor.lhs.false.critedge.i.if.end35.i_crit_edge
  %actqf.4.i = phi ptr [ %actqf.059.i, %lor.lhs.false.critedge.i.if.end35.i_crit_edge ], [ %spec.select.i, %land.lhs.true.critedge.i ], [ null, %if.end.i.if.end35.i_crit_edge ], [ null, %for.inc27.i.if.end35.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  br label %find_quota_format.exit

find_quota_format.exit:                           ; preds = %if.end35.i, %lor.lhs.false15.i.find_quota_format.exit_crit_edge, %for.end11.i.find_quota_format.exit_crit_edge
  %retval.1.i = phi ptr [ %actqf.4.i, %if.end35.i ], [ null, %for.end11.i.find_quota_format.exit_crit_edge ], [ null, %lor.lhs.false15.i.find_quota_format.exit_crit_edge ]
  %s_dquot.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end9, label %do.body4, !prof !277

do.body4:                                         ; preds = %find_quota_format.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/quota/dquot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2344, 0\0A.popsection", ""() #13, !srcloc !290
  unreachable

do.end9:                                          ; preds = %find_quota_format.exit
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  %call10 = tail call i32 @down_read_trylock(ptr noundef %s_umount) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end9.if.end62_crit_edge, label %land.rhs

do.end9.if.end62_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

land.rhs:                                         ; preds = %do.end9
  %.b168 = load i1, ptr @dquot_load_quota_sb.__already_done, align 1
  br i1 %.b168, label %land.rhs.if.then60_crit_edge, label %if.then26, !prof !277

land.rhs.if.then60_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60

if.then26:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_load_quota_sb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2346, i32 noundef 9, ptr noundef null) #13
  br label %if.then60

if.then60:                                        ; preds = %if.then26, %land.rhs.if.then60_crit_edge
  tail call void @up_read(ptr noundef %s_umount) #13
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %do.end9.if.end62_crit_edge
  %tobool63.not = icmp eq ptr %retval.1.i, null
  br i1 %tobool63.not, label %if.end62.cleanup_crit_edge, label %if.end65

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end65:                                         ; preds = %if.end62
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %13 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_op, align 4
  %quota_write = getelementptr inbounds %struct.super_operations, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %quota_write to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %quota_write, align 4
  %tobool66.not = icmp eq ptr %16, null
  br i1 %tobool66.not, label %if.end65.out_fmt_crit_edge, label %lor.lhs.false

if.end65.out_fmt_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fmt

lor.lhs.false:                                    ; preds = %if.end65
  %quota_read = getelementptr inbounds %struct.super_operations, ptr %14, i32 0, i32 20
  %17 = ptrtoint ptr %quota_read to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %quota_read, align 4
  %tobool68.not = icmp eq ptr %18, null
  br i1 %tobool68.not, label %lor.lhs.false.out_fmt_crit_edge, label %lor.lhs.false69

lor.lhs.false.out_fmt_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fmt

lor.lhs.false69:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp eq i32 %type, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false69.if.end72_crit_edge

lor.lhs.false69.if.end72_crit_edge:               ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

land.lhs.true:                                    ; preds = %lor.lhs.false69
  %dq_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 7
  %19 = ptrtoint ptr %dq_op to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dq_op, align 8
  %get_projid = getelementptr inbounds %struct.dquot_operations, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %get_projid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_projid, align 4
  %cmp70 = icmp eq ptr %22, null
  br i1 %cmp70, label %land.lhs.true.out_fmt_crit_edge, label %land.lhs.true.if.end72_crit_edge

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

land.lhs.true.out_fmt_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fmt

if.end72:                                         ; preds = %land.lhs.true.if.end72_crit_edge, %lor.lhs.false69.if.end72_crit_edge
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 53
  %23 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_user_ns, align 8
  %cmp73.not = icmp ne ptr %24, @init_user_ns
  %and76 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %or.cond = or i1 %tobool77.not, %cmp73.not
  br i1 %or.cond, label %if.end72.out_fmt_crit_edge, label %if.end79

if.end72.out_fmt_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fmt

if.end79:                                         ; preds = %if.end72
  %25 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_dquot.i, align 8
  %shl.i.i.i = shl nuw i32 1, %type
  %and.i.i = and i32 %26, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %if.end82, label %if.end79.out_fmt_crit_edge

if.end79.out_fmt_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fmt

if.end82:                                         ; preds = %if.end79
  %and84 = and i32 %26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.then86, label %if.end82.if.end88_crit_edge

if.end82.if.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  %call87 = tail call i32 @sync_filesystem(ptr noundef %sb) #13
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %27 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_bdev, align 4
  tail call void @invalidate_bdev(ptr noundef %28) #13
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end82.if.end88_crit_edge
  %qf_ops = getelementptr inbounds %struct.quota_format_type, ptr %retval.1.i, i32 0, i32 1
  %29 = ptrtoint ptr %qf_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %qf_ops, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call89 = tail call i32 %32(ptr noundef %sb, i32 noundef %type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end88.out_fmt_crit_edge, label %if.end92

if.end88.out_fmt_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fmt

if.end92:                                         ; preds = %if.end88
  %33 = ptrtoint ptr %qf_ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %qf_ops, align 4
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 4, i32 %type
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %arrayidx, align 4
  %arrayidx94 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type
  %36 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %retval.1.i, ptr %arrayidx94, align 8
  %dqi_fmt_id = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 1
  %37 = ptrtoint ptr %dqi_fmt_id to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %format_id, ptr %dqi_fmt_id, align 4
  %dqi_dirty_list = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 2
  %38 = ptrtoint ptr %dqi_dirty_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %dqi_dirty_list, ptr %dqi_dirty_list, align 4
  %prev.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 2, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dqi_dirty_list, ptr %prev.i, align 4
  %40 = load ptr, ptr %arrayidx, align 4
  %read_file_info = getelementptr inbounds %struct.quota_format_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %read_file_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read_file_info, align 4
  %call101 = tail call i32 %42(ptr noundef %sb, i32 noundef %type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.end92.out_fmt_crit_edge, label %if.end104

if.end92.out_fmt_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fmt

if.end104:                                        ; preds = %if.end92
  %43 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_dquot.i, align 8
  %and106 = and i32 %44, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end104.if.end111_crit_edge, label %if.then108

if.end104.if.end111_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #13
  %dqi_flags = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 3
  %45 = ptrtoint ptr %dqi_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dqi_flags, align 8
  %or = or i32 %46, 65536
  store i32 %or, ptr %dqi_flags, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #13
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.end104.if.end111_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_state_lock) #13
  %shl.i = shl i32 %flags, %type
  %47 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_dquot.i, align 8
  %or114 = or i32 %48, %shl.i
  store i32 %or114, ptr %s_dquot.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_state_lock) #13
  %call115 = tail call fastcc i32 @add_dquot_ref(ptr noundef %sb, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end111.cleanup_crit_edge, label %if.then117

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then117:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  %call118 = tail call i32 @dquot_disable(ptr noundef %sb, i32 noundef %type, i32 noundef %flags)
  br label %cleanup

out_fmt:                                          ; preds = %if.end92.out_fmt_crit_edge, %if.end88.out_fmt_crit_edge, %if.end79.out_fmt_crit_edge, %if.end72.out_fmt_crit_edge, %land.lhs.true.out_fmt_crit_edge, %lor.lhs.false.out_fmt_crit_edge, %if.end65.out_fmt_crit_edge
  %error.0 = phi i32 [ %call101, %if.end92.out_fmt_crit_edge ], [ -22, %if.end88.out_fmt_crit_edge ], [ -22, %land.lhs.true.out_fmt_crit_edge ], [ -22, %lor.lhs.false.out_fmt_crit_edge ], [ -22, %if.end65.out_fmt_crit_edge ], [ -22, %if.end72.out_fmt_crit_edge ], [ -16, %if.end79.out_fmt_crit_edge ]
  %qf_owner.i170 = getelementptr inbounds %struct.quota_format_type, ptr %retval.1.i, i32 0, i32 2
  %49 = ptrtoint ptr %qf_owner.i170 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %qf_owner.i170, align 4
  tail call void @module_put(ptr noundef %50) #13
  br label %cleanup

cleanup:                                          ; preds = %out_fmt, %if.then117, %if.end111.cleanup_crit_edge, %if.end62.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_fmt ], [ -3, %if.end62.cleanup_crit_edge ], [ %call115, %if.then117 ], [ 0, %if.end111.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_dquot_ref(ptr noundef %sb, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_inode_list_lock = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 61
  tail call void @_raw_spin_lock(ptr noundef %s_inode_list_lock) #13
  %s_inodes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 62
  %0 = ptrtoint ptr %s_inodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn72 = load ptr, ptr %s_inodes, align 4
  %cmp.not74 = icmp eq ptr %.pn72, %s_inodes
  br i1 %cmp.not74, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %type)
  %cmp.not.i = icmp eq i32 %type, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn79 = phi ptr [ %.pn72, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %old_inode.077 = phi ptr [ null, %for.body.lr.ph ], [ %old_inode.1, %for.inc.for.body_crit_edge ]
  %reserved.075 = phi i32 [ 0, %for.body.lr.ph ], [ %reserved.2, %for.inc.for.body_crit_edge ]
  %inode.080 = getelementptr i8, ptr %.pn79, i32 -344
  %i_lock = getelementptr i8, ptr %.pn79, i32 -232
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #13
  %i_state = getelementptr i8, ptr %.pn79, i32 -144
  %1 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_state, align 8
  %and = and i32 %2, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %i_writecount = getelementptr i8, ptr %.pn79, i32 48
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_writecount, i32 noundef 4) #13
  %3 = ptrtoint ptr %i_writecount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %i_writecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %i_flags.i = getelementptr i8, ptr %.pn79, i32 -332
  %5 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false3.if.then_crit_edge

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i:                                         ; preds = %lor.lhs.false3
  %i_sb.i.i = getelementptr i8, ptr %.pn79, i32 -316
  %7 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i.i, align 4
  %s_op.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %s_op.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_op.i.i, align 4
  %get_dquots.i.i = getelementptr inbounds %struct.super_operations, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %get_dquots.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_dquots.i.i, align 4
  %call.i.i53 = tail call ptr %12(ptr noundef %inode.080) #13
  br i1 %cmp.not.i, label %for.body.preheader.i, label %if.end.i.dqinit_needed.exit_crit_edge

if.end.i.dqinit_needed.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dqinit_needed.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %13 = ptrtoint ptr %call.i.i53 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i.i53, align 4
  %tobool6.not.i = icmp eq ptr %14, null
  br i1 %tobool6.not.i, label %for.body.preheader.i.if.end_crit_edge, label %for.cond.i

for.body.preheader.i.if.end_crit_edge:            ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.i:                                       ; preds = %for.body.preheader.i
  %arrayidx5.1.i = getelementptr ptr, ptr %call.i.i53, i32 1
  %15 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx5.1.i, align 4
  %tobool6.not.1.i = icmp eq ptr %16, null
  br i1 %tobool6.not.1.i, label %for.cond.i.if.end_crit_edge, label %for.cond.i.dqinit_needed.exit_crit_edge

for.cond.i.dqinit_needed.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dqinit_needed.exit

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

dqinit_needed.exit:                               ; preds = %for.cond.i.dqinit_needed.exit_crit_edge, %if.end.i.dqinit_needed.exit_crit_edge
  %type.sink = phi i32 [ %type, %if.end.i.dqinit_needed.exit_crit_edge ], [ 2, %for.cond.i.dqinit_needed.exit_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %call.i.i53, i32 %type.sink
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %retval.0.shrunk.i.in = load ptr, ptr %arrayidx.i, align 4
  %retval.0.shrunk.i.not = icmp eq ptr %retval.0.shrunk.i.in, null
  br i1 %retval.0.shrunk.i.not, label %dqinit_needed.exit.if.end_crit_edge, label %dqinit_needed.exit.if.then_crit_edge

dqinit_needed.exit.if.then_crit_edge:             ; preds = %dqinit_needed.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

dqinit_needed.exit.if.end_crit_edge:              ; preds = %dqinit_needed.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %dqinit_needed.exit.if.then_crit_edge, %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  br label %for.inc

if.end:                                           ; preds = %dqinit_needed.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %for.body.preheader.i.if.end_crit_edge
  tail call void @__iget(ptr noundef %inode.080) #13
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  tail call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock) #13
  %18 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i.i, align 4
  %dq_op.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %dq_op.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dq_op.i, align 8
  %get_reserved_space.i = getelementptr inbounds %struct.dquot_operations, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %get_reserved_space.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_reserved_space.i, align 4
  %tobool.not.i54 = icmp eq ptr %23, null
  br i1 %tobool.not.i54, label %if.end.if.end15_crit_edge, label %if.end.i55

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end.i55:                                       ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #13
  %24 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i.i, align 4
  %dq_op.i.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %dq_op.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dq_op.i.i, align 8
  %get_reserved_space.i.i = getelementptr inbounds %struct.dquot_operations, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %get_reserved_space.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_reserved_space.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %inode_get_rsv_space.exit.thread66, label %inode_get_rsv_space.exit

inode_get_rsv_space.exit.thread66:                ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  br label %if.end15

inode_get_rsv_space.exit:                         ; preds = %if.end.i55
  %call.i.i.i = tail call ptr %29(ptr noundef %inode.080) #13
  %30 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %call.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %cmp10 = icmp sgt i64 %31, 0
  br i1 %cmp10, label %if.then14, label %inode_get_rsv_space.exit.if.end15_crit_edge, !prof !282

inode_get_rsv_space.exit.if.end15_crit_edge:      ; preds = %inode_get_rsv_space.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then14:                                        ; preds = %inode_get_rsv_space.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %inode_get_rsv_space.exit.if.end15_crit_edge, %inode_get_rsv_space.exit.thread66, %if.end.if.end15_crit_edge
  %reserved.1 = phi i32 [ 1, %if.then14 ], [ %reserved.075, %inode_get_rsv_space.exit.if.end15_crit_edge ], [ %reserved.075, %inode_get_rsv_space.exit.thread66 ], [ %reserved.075, %if.end.if.end15_crit_edge ]
  tail call void @iput(ptr noundef %old_inode.077) #13
  %call16 = tail call fastcc i32 @__dquot_initialize(ptr noundef %inode.080, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 0) #13
  %call.i = tail call i32 @__cond_resched() #13
  tail call void @_raw_spin_lock(ptr noundef %s_inode_list_lock) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %if.then
  %reserved.2 = phi i32 [ %reserved.075, %if.then ], [ %reserved.1, %if.end19 ]
  %old_inode.1 = phi ptr [ %old_inode.077, %if.then ], [ %inode.080, %if.end19 ]
  %32 = ptrtoint ptr %.pn79 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load ptr, ptr %.pn79, align 4
  %cmp.not = icmp eq ptr %.pn, %s_inodes
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %reserved.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %reserved.2, %for.inc.for.end_crit_edge ]
  %old_inode.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %old_inode.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock) #13
  br label %out

out:                                              ; preds = %for.end, %if.end15.out_crit_edge
  %old_inode.0.lcssa.sink = phi ptr [ %old_inode.0.lcssa, %for.end ], [ %inode.080, %if.end15.out_crit_edge ]
  %err.2 = phi i32 [ 0, %for.end ], [ %call16, %if.end15.out_crit_edge ]
  %reserved.3 = phi i32 [ %reserved.0.lcssa, %for.end ], [ %reserved.1, %if.end15.out_crit_edge ]
  tail call void @iput(ptr noundef %old_inode.0.lcssa.sink) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reserved.3)
  %tobool29.not = icmp eq i32 %reserved.3, 0
  br i1 %tobool29.not, label %out.if.end31_crit_edge, label %if.then30

out.if.end31_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then30:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %sb, ptr noundef nonnull @__func__.add_dquot_ref, ptr noundef nonnull @.str.34)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %out.if.end31_crit_edge
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_load_quota_inode(ptr noundef %inode, i32 noundef %type, i32 noundef %format_id, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_dquot.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp.i = icmp eq i16 %4, -32768
  br i1 %cmp.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %s_dquot.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_dquot.i.i, align 8
  %shl.i.i.i.i = shl nuw i32 1, %type
  %and.i.i.i = and i32 %8, %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end8.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i:                                        ; preds = %if.end5.i
  %call9.i = tail call ptr @igrab(ptr noundef %inode) #13
  %arrayidx.i = getelementptr %struct.super_block, ptr %1, i32 0, i32 31, i32 2, i32 %type
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i, label %if.end8.i.cleanup_crit_edge, label %if.end13.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13.i:                                       ; preds = %if.end8.i
  %10 = ptrtoint ptr %s_dquot.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_dquot.i.i, align 8
  %and14.i = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end13.i.if.end_crit_edge

if.end13.i.if.end_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #13
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %12 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags.i, align 4
  %or.i = or i32 %13, 32
  store i32 %or.i, ptr %i_flags.i, align 4
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #13
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_op.i.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %s_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_op.i.i.i, align 4
  %get_dquots.i.i.i = getelementptr inbounds %struct.super_operations, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %get_dquots.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_dquots.i.i.i, align 4
  %call.i.i.i = tail call ptr %19(ptr noundef %inode) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #13
  %20 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i.i.i, align 4
  store ptr null, ptr %call.i.i.i, align 4
  %arrayidx.1.i.i = getelementptr ptr, ptr %call.i.i.i, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.1.i.i, align 4
  store ptr null, ptr %arrayidx.1.i.i, align 4
  %arrayidx.2.i.i = getelementptr ptr, ptr %call.i.i.i, i32 2
  %24 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.2.i.i, align 4
  store ptr null, ptr %arrayidx.2.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #13
  tail call void @dqput(ptr noundef %21) #13
  tail call void @dqput(ptr noundef %23) #13
  tail call void @dqput(ptr noundef %25) #13
  br label %if.end

if.end:                                           ; preds = %if.then16.i, %if.end13.i.if.end_crit_edge
  %26 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i, align 4
  %call1 = tail call i32 @dquot_load_quota_sb(ptr noundef %27, i32 noundef %type, i32 noundef %format_id, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %28 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i, align 4
  %arrayidx.i13 = getelementptr %struct.super_block, ptr %29, i32 0, i32 31, i32 2, i32 %type
  %30 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i13, align 4
  %tobool.not.i14 = icmp eq ptr %31, null
  br i1 %tobool.not.i14, label %if.then3.cleanup_crit_edge, label %if.end.i16

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i16:                                       ; preds = %if.then3
  %s_dquot.i.i15 = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 31
  %32 = ptrtoint ptr %s_dquot.i.i15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_dquot.i.i15, align 8
  %and.i = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i16.if.end4.i_crit_edge

if.end.i16.if.end4.i_crit_edge:                   ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #15
  %i_rwsem.i.i17 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i17) #13
  %i_flags.i18 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 4
  %34 = ptrtoint ptr %i_flags.i18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_flags.i18, align 4
  %and3.i = and i32 %35, -33
  store i32 %and3.i, ptr %i_flags.i18, align 4
  tail call void @up_write(ptr noundef %i_rwsem.i.i17) #13
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i16.if.end4.i_crit_edge
  %36 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx.i13, align 4
  tail call void @iput(ptr noundef nonnull %31) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end.cleanup_crit_edge ], [ %call1, %if.then3.cleanup_crit_edge ], [ %call1, %if.end4.i ], [ -5, %if.end8.i.cleanup_crit_edge ], [ -16, %if.end5.i.cleanup_crit_edge ], [ -30, %if.end.i.cleanup_crit_edge ], [ -13, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_resume(ptr noundef %sb, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_dquot.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  %call1 = tail call i32 @down_read_trylock(ptr noundef %s_umount) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %land.rhs

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

land.rhs:                                         ; preds = %entry
  %.b79 = load i1, ptr @dquot_resume.__already_done, align 1
  br i1 %.b79, label %land.rhs.if.then38_crit_edge, label %if.then, !prof !277

land.rhs.if.then38_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dquot_resume.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2441, i32 noundef 9, ptr noundef null) #13
  br label %if.then38

if.then38:                                        ; preds = %if.then, %land.rhs.if.then38_crit_edge
  tail call void @up_read(ptr noundef %s_umount) #13
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %entry.if.end40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %type)
  %cmp41.not = icmp eq i32 %type, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end40
  %ret.087 = phi i32 [ 0, %if.end40 ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %cnt.085 = phi i32 [ 0, %if.end40 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.085, i32 %type)
  %cmp42.not = icmp eq i32 %cnt.085, %type
  %or.cond = select i1 %cmp41.not, i1 true, i1 %cmp42.not
  br i1 %or.cond, label %if.end44, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end44:                                         ; preds = %for.body
  %0 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_dquot.i, align 8
  %shl.i.i = shl nuw nsw i32 64, %cnt.085
  %and.i = and i32 %1, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end44.for.inc_crit_edge, label %if.end47

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end47:                                         ; preds = %if.end44
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_state_lock) #13
  %2 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_dquot.i, align 8
  %shl.i = shl nuw nsw i32 9, %cnt.085
  %and = and i32 %3, %shl.i
  %shl.i81 = shl nuw nsw i32 73, %cnt.085
  %neg = xor i32 %shl.i81, -1
  %and52 = and i32 %3, %neg
  store i32 %and52, ptr %s_dquot.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_state_lock) #13
  %shr.i = lshr i32 %and, %cnt.085
  %and.i82 = and i32 %shr.i, 73
  %dqi_fmt_id = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %cnt.085, i32 1
  %4 = ptrtoint ptr %dqi_fmt_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dqi_fmt_id, align 4
  %call54 = tail call i32 @dquot_load_quota_sb(ptr noundef %sb, i32 noundef %cnt.085, i32 noundef %5, i32 noundef %and.i82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.end47.for.inc_crit_edge

if.end47.for.inc_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then56:                                        ; preds = %if.end47
  %arrayidx.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %cnt.085
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then56.for.inc_crit_edge, label %if.end.i

if.then56.for.inc_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i:                                         ; preds = %if.then56
  %8 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_dquot.i, align 8
  %and.i84 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool1.not.i = icmp eq i32 %and.i84, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #13
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags.i, align 4
  %and3.i = and i32 %11, -33
  store i32 %and3.i, ptr %i_flags.i, align 4
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #13
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @iput(ptr noundef nonnull %7) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end4.i, %if.then56.for.inc_crit_edge, %if.end47.for.inc_crit_edge, %if.end44.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %call54, %if.end47.for.inc_crit_edge ], [ %ret.087, %if.end44.for.inc_crit_edge ], [ %ret.087, %for.body.for.inc_crit_edge ], [ %call54, %if.then56.for.inc_crit_edge ], [ %call54, %if.end4.i ]
  %inc = add nuw nsw i32 %cnt.085, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_quota_on(ptr noundef readnone %sb, i32 noundef %type, i32 noundef %format_id, ptr nocapture noundef readonly %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %call = tail call i32 @security_quota_on(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %cmp.not = icmp eq ptr %5, %sb
  br i1 %cmp.not, label %if.else, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %call5 = tail call i32 @dquot_load_quota_inode(ptr noundef %7, i32 noundef %type, i32 noundef %format_id, i32 noundef 9)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.else ], [ -18, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_quota_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_quota_on_mount(ptr nocapture noundef readonly %sb, ptr noundef %qf_name, i32 noundef %format_id, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %0 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_root, align 64
  %call = tail call i32 @strlen(ptr noundef %qf_name) #17
  %call1 = tail call ptr @lookup_positive_unlocked(ptr noundef %qf_name, ptr noundef %1, i32 noundef %call) #13
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @security_quota_on(ptr noundef %call1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call1, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  %call7 = tail call i32 @dquot_load_quota_inode(ptr noundef %4, i32 noundef %type, i32 noundef %format_id, i32 noundef 9)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %error.0 = phi i32 [ %call4, %if.end.if.end8_crit_edge ], [ %call7, %if.then5 ]
  tail call void @dput(ptr noundef %call1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %error.0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_positive_unlocked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_get_dqblk(ptr noundef %sb, [2 x i32] %qid.coerce, ptr nocapture noundef writeonly %di) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dqget(ptr noundef %sb, [2 x i32] %qid.coerce)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dq_dqb.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11
  %1 = call ptr @memset(ptr %di, i32 0, i32 120)
  %dq_dqb_lock.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock.i) #13
  %2 = ptrtoint ptr %dq_dqb.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dq_dqb.i, align 8
  %d_spc_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 1
  %4 = ptrtoint ptr %d_spc_hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %d_spc_hardlimit.i, align 8
  %dqb_bsoftlimit.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %dqb_bsoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %dqb_bsoftlimit.i, align 8
  %d_spc_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 2
  %7 = ptrtoint ptr %d_spc_softlimit.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %d_spc_softlimit.i, align 8
  %dqb_ihardlimit.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 4
  %8 = ptrtoint ptr %dqb_ihardlimit.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dqb_ihardlimit.i, align 8
  %d_ino_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 3
  %10 = ptrtoint ptr %d_ino_hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %d_ino_hardlimit.i, align 8
  %dqb_isoftlimit.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 5
  %11 = ptrtoint ptr %dqb_isoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dqb_isoftlimit.i, align 8
  %d_ino_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 4
  %13 = ptrtoint ptr %d_ino_softlimit.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %d_ino_softlimit.i, align 8
  %dqb_curspace.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dqb_curspace.i, align 8
  %dqb_rsvspace.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 3
  %16 = ptrtoint ptr %dqb_rsvspace.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dqb_rsvspace.i, align 8
  %add.i = add i64 %17, %15
  %d_space.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 5
  %18 = ptrtoint ptr %d_space.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add.i, ptr %d_space.i, align 8
  %dqb_curinodes.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 6
  %19 = ptrtoint ptr %dqb_curinodes.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %dqb_curinodes.i, align 8
  %d_ino_count.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 6
  %21 = ptrtoint ptr %d_ino_count.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %d_ino_count.i, align 8
  %dqb_btime.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 7
  %22 = ptrtoint ptr %dqb_btime.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dqb_btime.i, align 8
  %d_spc_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 8
  %24 = ptrtoint ptr %d_spc_timer.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %d_spc_timer.i, align 8
  %dqb_itime.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 8
  %25 = ptrtoint ptr %dqb_itime.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %dqb_itime.i, align 8
  %d_ino_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 7
  %27 = ptrtoint ptr %d_ino_timer.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %d_ino_timer.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock.i) #13
  tail call void @dqput(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_get_next_dqblk(ptr noundef %sb, ptr noundef %qid, ptr nocapture noundef writeonly %di) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 7
  %0 = ptrtoint ptr %dq_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_op, align 8
  %get_next_id = getelementptr inbounds %struct.dquot_operations, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %get_next_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_next_id, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 %3(ptr noundef %sb, ptr noundef %qid) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %qid, align 4
  %5 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt19 = getelementptr inbounds [2 x i32], ptr %qid, i32 0, i32 1
  %6 = ptrtoint ptr %.elt19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack20 = load i32, ptr %.elt19, align 4
  %7 = insertvalue [2 x i32] %5, i32 %.unpack20, 1
  %call5 = tail call ptr @dqget(ptr noundef %sb, [2 x i32] %7)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %dq_dqb.i = getelementptr inbounds %struct.dquot, ptr %call5, i32 0, i32 11
  %9 = call ptr @memset(ptr %di, i32 0, i32 120)
  %dq_dqb_lock.i = getelementptr inbounds %struct.dquot, ptr %call5, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock.i) #13
  %10 = ptrtoint ptr %dq_dqb.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dq_dqb.i, align 8
  %d_spc_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 1
  %12 = ptrtoint ptr %d_spc_hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %d_spc_hardlimit.i, align 8
  %dqb_bsoftlimit.i = getelementptr inbounds %struct.dquot, ptr %call5, i32 0, i32 11, i32 1
  %13 = ptrtoint ptr %dqb_bsoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dqb_bsoftlimit.i, align 8
  %d_spc_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 2
  %15 = ptrtoint ptr %d_spc_softlimit.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %d_spc_softlimit.i, align 8
  %dqb_ihardlimit.i = getelementptr inbounds %struct.dquot, ptr %call5, i32 0, i32 11, i32 4
  %16 = ptrtoint ptr %dqb_ihardlimit.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dqb_ihardlimit.i, align 8
  %d_ino_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 3
  %18 = ptrtoint ptr %d_ino_hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %d_ino_hardlimit.i, align 8
  %dqb_isoftlimit.i = getelementptr inbounds %struct.dquot, ptr %call5, i32 0, i32 11, i32 5
  %19 = ptrtoint ptr %dqb_isoftlimit.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %dqb_isoftlimit.i, align 8
  %d_ino_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 4
  %21 = ptrtoint ptr %d_ino_softlimit.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %d_ino_softlimit.i, align 8
  %dqb_curspace.i = getelementptr inbounds %struct.dquot, ptr %call5, i32 0, i32 11, i32 2
  %22 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dqb_curspace.i, align 8
  %dqb_rsvspace.i = getelementptr inbounds %struct.dquot, ptr %call5, i32 0, i32 11, i32 3
  %24 = ptrtoint ptr %dqb_rsvspace.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dqb_rsvspace.i, align 8
  %add.i = add i64 %25, %23
  %d_space.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 5
  %26 = ptrtoint ptr %d_space.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add.i, ptr %d_space.i, align 8
  %dqb_curinodes.i = getelementptr inbounds %struct.dquot, ptr %call5, i32 0, i32 11, i32 6
  %27 = ptrtoint ptr %dqb_curinodes.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dqb_curinodes.i, align 8
  %d_ino_count.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 6
  %29 = ptrtoint ptr %d_ino_count.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %d_ino_count.i, align 8
  %dqb_btime.i = getelementptr inbounds %struct.dquot, ptr %call5, i32 0, i32 11, i32 7
  %30 = ptrtoint ptr %dqb_btime.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %dqb_btime.i, align 8
  %d_spc_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 8
  %32 = ptrtoint ptr %d_spc_timer.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %d_spc_timer.i, align 8
  %dqb_itime.i = getelementptr inbounds %struct.dquot, ptr %call5, i32 0, i32 11, i32 8
  %33 = ptrtoint ptr %dqb_itime.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %dqb_itime.i, align 8
  %d_ino_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 7
  %35 = ptrtoint ptr %d_ino_timer.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %d_ino_timer.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock.i) #13
  tail call void @dqput(ptr noundef %call5)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then7 ], [ 0, %if.end9 ], [ -38, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_set_dqblk(ptr noundef %sb, [2 x i32] %qid.coerce, ptr noundef readonly %di) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dqget(ptr noundef %sb, [2 x i32] %qid.coerce)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %call to i32
  br label %out

if.end:                                           ; preds = %entry
  %dq_dqb.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11
  %dq_sb.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dq_sb.i, align 4
  %type.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i, align 4
  %5 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %di, align 8
  %and.i = and i32 %6, -12496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do_set_dqblk.exit_crit_edge

if.end.do_set_dqblk.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_set_dqblk.exit

if.end.i:                                         ; preds = %if.end
  %and2.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

if.end.i.lor.lhs.false.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %d_spc_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 2
  %7 = ptrtoint ptr %d_spc_softlimit.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %d_spc_softlimit.i, align 8
  %dqi_max_spc_limit.i = getelementptr %struct.super_block, ptr %2, i32 0, i32 31, i32 3, i32 %4, i32 6
  %9 = ptrtoint ptr %dqi_max_spc_limit.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dqi_max_spc_limit.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp.i7 = icmp ugt i64 %8, %10
  br i1 %cmp.i7, label %land.lhs.true.i.do_set_dqblk.exit_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i

land.lhs.true.i.do_set_dqblk.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_set_dqblk.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.end.i.lor.lhs.false.i_crit_edge
  %and5.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.lor.lhs.false10.i_crit_edge, label %land.lhs.true7.i

lor.lhs.false.i.lor.lhs.false10.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false10.i

land.lhs.true7.i:                                 ; preds = %lor.lhs.false.i
  %d_spc_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 1
  %11 = ptrtoint ptr %d_spc_hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %d_spc_hardlimit.i, align 8
  %dqi_max_spc_limit8.i = getelementptr %struct.super_block, ptr %2, i32 0, i32 31, i32 3, i32 %4, i32 6
  %13 = ptrtoint ptr %dqi_max_spc_limit8.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dqi_max_spc_limit8.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp9.i = icmp ugt i64 %12, %14
  br i1 %cmp9.i, label %land.lhs.true7.i.do_set_dqblk.exit_crit_edge, label %land.lhs.true7.i.lor.lhs.false10.i_crit_edge

land.lhs.true7.i.lor.lhs.false10.i_crit_edge:     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false10.i

land.lhs.true7.i.do_set_dqblk.exit_crit_edge:     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_set_dqblk.exit

lor.lhs.false10.i:                                ; preds = %land.lhs.true7.i.lor.lhs.false10.i_crit_edge, %lor.lhs.false.i.lor.lhs.false10.i_crit_edge
  %and12.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false10.i.lor.lhs.false16.i_crit_edge, label %land.lhs.true14.i

lor.lhs.false10.i.lor.lhs.false16.i_crit_edge:    ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false16.i

land.lhs.true14.i:                                ; preds = %lor.lhs.false10.i
  %d_ino_softlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 4
  %15 = ptrtoint ptr %d_ino_softlimit.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %d_ino_softlimit.i, align 8
  %dqi_max_ino_limit.i = getelementptr %struct.super_block, ptr %2, i32 0, i32 31, i32 3, i32 %4, i32 7
  %17 = ptrtoint ptr %dqi_max_ino_limit.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %dqi_max_ino_limit.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp15.i = icmp ugt i64 %16, %18
  br i1 %cmp15.i, label %land.lhs.true14.i.do_set_dqblk.exit_crit_edge, label %land.lhs.true14.i.lor.lhs.false16.i_crit_edge

land.lhs.true14.i.lor.lhs.false16.i_crit_edge:    ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false16.i

land.lhs.true14.i.do_set_dqblk.exit_crit_edge:    ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_set_dqblk.exit

lor.lhs.false16.i:                                ; preds = %land.lhs.true14.i.lor.lhs.false16.i_crit_edge, %lor.lhs.false10.i.lor.lhs.false16.i_crit_edge
  %and18.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %lor.lhs.false16.i.if.end24.i_crit_edge, label %land.lhs.true20.i

lor.lhs.false16.i.if.end24.i_crit_edge:           ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i

land.lhs.true20.i:                                ; preds = %lor.lhs.false16.i
  %d_ino_hardlimit.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 3
  %19 = ptrtoint ptr %d_ino_hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %d_ino_hardlimit.i, align 8
  %dqi_max_ino_limit21.i = getelementptr %struct.super_block, ptr %2, i32 0, i32 31, i32 3, i32 %4, i32 7
  %21 = ptrtoint ptr %dqi_max_ino_limit21.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %dqi_max_ino_limit21.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp22.i = icmp ugt i64 %20, %22
  br i1 %cmp22.i, label %land.lhs.true20.i.do_set_dqblk.exit_crit_edge, label %land.lhs.true20.i.if.end24.i_crit_edge

land.lhs.true20.i.if.end24.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i

land.lhs.true20.i.do_set_dqblk.exit_crit_edge:    ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_set_dqblk.exit

if.end24.i:                                       ; preds = %land.lhs.true20.i.if.end24.i_crit_edge, %lor.lhs.false16.i.if.end24.i_crit_edge
  %dq_dqb_lock.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock.i) #13
  %23 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %di, align 8
  %and26.i = and i32 %24, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end24.i.if.end29.i_crit_edge, label %if.then28.i

if.end24.i.if.end29.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  %d_space.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 5
  %25 = ptrtoint ptr %d_space.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %d_space.i, align 8
  %dqb_rsvspace.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 3
  %27 = ptrtoint ptr %dqb_rsvspace.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dqb_rsvspace.i, align 8
  %sub.i = sub i64 %26, %28
  %dqb_curspace.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 2
  %29 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sub.i, ptr %dqb_curspace.i, align 8
  %dq_flags.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 7, ptr noundef %dq_flags.i) #13
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %if.end24.i.if.end29.i_crit_edge
  %check_blim.0.i = phi i32 [ 1, %if.then28.i ], [ 0, %if.end24.i.if.end29.i_crit_edge ]
  %30 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %di, align 8
  %and31.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end29.i.if.end35.i_crit_edge, label %if.then33.i

if.end29.i.if.end35.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  %d_spc_softlimit34.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 2
  %32 = ptrtoint ptr %d_spc_softlimit34.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %d_spc_softlimit34.i, align 8
  %dqb_bsoftlimit.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 1
  %34 = ptrtoint ptr %dqb_bsoftlimit.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %dqb_bsoftlimit.i, align 8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then33.i, %if.end29.i.if.end35.i_crit_edge
  %35 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %di, align 8
  %and37.i = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end35.i.if.end41.i_crit_edge, label %if.then39.i

if.end35.i.if.end41.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

if.then39.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  %d_spc_hardlimit40.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 1
  %37 = ptrtoint ptr %d_spc_hardlimit40.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %d_spc_hardlimit40.i, align 8
  %39 = ptrtoint ptr %dq_dqb.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %dq_dqb.i, align 8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then39.i, %if.end35.i.if.end41.i_crit_edge
  %40 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %di, align 8
  %and43.i = and i32 %41, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end41.i.if.end47.i_crit_edge, label %if.then45.i

if.end41.i.if.end47.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

if.then45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  %dq_flags46.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 6, ptr noundef %dq_flags46.i) #13
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then45.i, %if.end41.i.if.end47.i_crit_edge
  %check_blim.1.i = phi i32 [ 1, %if.then45.i ], [ %check_blim.0.i, %if.end41.i.if.end47.i_crit_edge ]
  %42 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %di, align 8
  %and49.i = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end47.i.if.end53.i_crit_edge, label %if.then51.i

if.end47.i.if.end53.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53.i

if.then51.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  %d_ino_count.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 6
  %44 = ptrtoint ptr %d_ino_count.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %d_ino_count.i, align 8
  %dqb_curinodes.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 6
  %46 = ptrtoint ptr %dqb_curinodes.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %dqb_curinodes.i, align 8
  %dq_flags52.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 9, ptr noundef %dq_flags52.i) #13
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then51.i, %if.end47.i.if.end53.i_crit_edge
  %check_ilim.0.i = phi i32 [ 1, %if.then51.i ], [ 0, %if.end47.i.if.end53.i_crit_edge ]
  %47 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %di, align 8
  %and55.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.end53.i.if.end59.i_crit_edge, label %if.then57.i

if.end53.i.if.end59.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59.i

if.then57.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #15
  %d_ino_softlimit58.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 4
  %49 = ptrtoint ptr %d_ino_softlimit58.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %d_ino_softlimit58.i, align 8
  %dqb_isoftlimit.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 5
  %51 = ptrtoint ptr %dqb_isoftlimit.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %dqb_isoftlimit.i, align 8
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then57.i, %if.end53.i.if.end59.i_crit_edge
  %52 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %di, align 8
  %and61.i = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.end59.i.if.end65.i_crit_edge, label %if.then63.i

if.end59.i.if.end65.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65.i

if.then63.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  %d_ino_hardlimit64.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 3
  %54 = ptrtoint ptr %d_ino_hardlimit64.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %d_ino_hardlimit64.i, align 8
  %dqb_ihardlimit.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 4
  %56 = ptrtoint ptr %dqb_ihardlimit.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %dqb_ihardlimit.i, align 8
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then63.i, %if.end59.i.if.end65.i_crit_edge
  %57 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %di, align 8
  %and67.i = and i32 %58, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %if.end65.i.if.end71.i_crit_edge, label %if.then69.i

if.end65.i.if.end71.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71.i

if.then69.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #15
  %dq_flags70.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 8, ptr noundef %dq_flags70.i) #13
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then69.i, %if.end65.i.if.end71.i_crit_edge
  %check_ilim.1.i = phi i32 [ 1, %if.then69.i ], [ %check_ilim.0.i, %if.end65.i.if.end71.i_crit_edge ]
  %59 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %di, align 8
  %and73.i = and i32 %60, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %if.end71.i.if.end77.i_crit_edge, label %if.then75.i

if.end71.i.if.end77.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77.i

if.then75.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #15
  %d_spc_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 8
  %61 = ptrtoint ptr %d_spc_timer.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %d_spc_timer.i, align 8
  %dqb_btime.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 7
  %63 = ptrtoint ptr %dqb_btime.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %dqb_btime.i, align 8
  %dq_flags76.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 10, ptr noundef %dq_flags76.i) #13
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then75.i, %if.end71.i.if.end77.i_crit_edge
  %check_blim.2.i = phi i32 [ 1, %if.then75.i ], [ %check_blim.1.i, %if.end71.i.if.end77.i_crit_edge ]
  %64 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %di, align 8
  %and79.i = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end77.i.if.end83.i_crit_edge, label %if.then81.i

if.end77.i.if.end83.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83.i

if.then81.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #15
  %d_ino_timer.i = getelementptr inbounds %struct.qc_dqblk, ptr %di, i32 0, i32 7
  %66 = ptrtoint ptr %d_ino_timer.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %d_ino_timer.i, align 8
  %dqb_itime.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 8
  %68 = ptrtoint ptr %dqb_itime.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %dqb_itime.i, align 8
  %dq_flags82.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 11, ptr noundef %dq_flags82.i) #13
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then81.i, %if.end77.i.if.end83.i_crit_edge
  %check_ilim.2.i = phi i32 [ 1, %if.then81.i ], [ %check_ilim.1.i, %if.end77.i.if.end83.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_blim.2.i)
  %tobool84.not.i = icmp eq i32 %check_blim.2.i, 0
  br i1 %tobool84.not.i, label %if.end83.i.if.end105.i_crit_edge, label %if.then85.i

if.end83.i.if.end105.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105.i

if.then85.i:                                      ; preds = %if.end83.i
  %dqb_bsoftlimit86.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 1
  %69 = ptrtoint ptr %dqb_bsoftlimit86.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %dqb_bsoftlimit86.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %70)
  %tobool87.not.i = icmp eq i64 %70, 0
  br i1 %tobool87.not.i, label %if.then85.i.if.then93.i_crit_edge, label %lor.lhs.false88.i

if.then85.i.if.then93.i_crit_edge:                ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then93.i

lor.lhs.false88.i:                                ; preds = %if.then85.i
  %dqb_curspace89.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 2
  %71 = ptrtoint ptr %dqb_curspace89.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %dqb_curspace89.i, align 8
  %dqb_rsvspace90.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 3
  %73 = ptrtoint ptr %dqb_rsvspace90.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %dqb_rsvspace90.i, align 8
  %add.i = add i64 %74, %72
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %70)
  %cmp92.not.i = icmp sgt i64 %add.i, %70
  br i1 %cmp92.not.i, label %if.else.i, label %lor.lhs.false88.i.if.then93.i_crit_edge

lor.lhs.false88.i.if.then93.i_crit_edge:          ; preds = %lor.lhs.false88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then93.i

if.then93.i:                                      ; preds = %lor.lhs.false88.i.if.then93.i_crit_edge, %if.then85.i.if.then93.i_crit_edge
  %dqb_btime94.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 7
  %75 = ptrtoint ptr %dqb_btime94.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 0, ptr %dqb_btime94.i, align 8
  %dq_flags95.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %dq_flags95.i) #13
  br label %if.end105.i

if.else.i:                                        ; preds = %lor.lhs.false88.i
  %76 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %di, align 8
  %and97.i = and i32 %77, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %if.then99.i, label %if.else.i.if.end105.i_crit_edge

if.else.i.if.end105.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105.i

if.then99.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %call100.i = tail call i64 @ktime_get_real_seconds() #13
  %dqi_bgrace.i = getelementptr %struct.super_block, ptr %2, i32 0, i32 31, i32 3, i32 %4, i32 4
  %78 = ptrtoint ptr %dqi_bgrace.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dqi_bgrace.i, align 4
  %conv.i = zext i32 %79 to i64
  %add101.i = add i64 %call100.i, %conv.i
  %dqb_btime102.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 7
  %80 = ptrtoint ptr %dqb_btime102.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %add101.i, ptr %dqb_btime102.i, align 8
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then99.i, %if.else.i.if.end105.i_crit_edge, %if.then93.i, %if.end83.i.if.end105.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_ilim.2.i)
  %tobool106.not.i = icmp eq i32 %check_ilim.2.i, 0
  br i1 %tobool106.not.i, label %if.end105.i.if.end129.i_crit_edge, label %if.then107.i

if.end105.i.if.end129.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end129.i

if.then107.i:                                     ; preds = %if.end105.i
  %dqb_isoftlimit108.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 5
  %81 = ptrtoint ptr %dqb_isoftlimit108.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %dqb_isoftlimit108.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %tobool109.not.i = icmp eq i64 %82, 0
  br i1 %tobool109.not.i, label %if.then107.i.if.then115.i_crit_edge, label %lor.lhs.false110.i

if.then107.i.if.then115.i_crit_edge:              ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then115.i

lor.lhs.false110.i:                               ; preds = %if.then107.i
  %dqb_curinodes111.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 6
  %83 = ptrtoint ptr %dqb_curinodes111.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %dqb_curinodes111.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %84, i64 %82)
  %cmp113.not.i = icmp sgt i64 %84, %82
  br i1 %cmp113.not.i, label %if.else118.i, label %lor.lhs.false110.i.if.then115.i_crit_edge

lor.lhs.false110.i.if.then115.i_crit_edge:        ; preds = %lor.lhs.false110.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then115.i

if.then115.i:                                     ; preds = %lor.lhs.false110.i.if.then115.i_crit_edge, %if.then107.i.if.then115.i_crit_edge
  %dqb_itime116.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 8
  %85 = ptrtoint ptr %dqb_itime116.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 0, ptr %dqb_itime116.i, align 8
  %dq_flags117.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %dq_flags117.i) #13
  br label %if.end129.i

if.else118.i:                                     ; preds = %lor.lhs.false110.i
  %86 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %di, align 8
  %and120.i = and i32 %87, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %if.then122.i, label %if.else118.i.if.end129.i_crit_edge

if.else118.i.if.end129.i_crit_edge:               ; preds = %if.else118.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end129.i

if.then122.i:                                     ; preds = %if.else118.i
  call void @__sanitizer_cov_trace_pc() #15
  %call123.i = tail call i64 @ktime_get_real_seconds() #13
  %dqi_igrace.i = getelementptr %struct.super_block, ptr %2, i32 0, i32 31, i32 3, i32 %4, i32 5
  %88 = ptrtoint ptr %dqi_igrace.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dqi_igrace.i, align 8
  %conv124.i = zext i32 %89 to i64
  %add125.i = add i64 %call123.i, %conv124.i
  %dqb_itime126.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 8
  %90 = ptrtoint ptr %dqb_itime126.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %add125.i, ptr %dqb_itime126.i, align 8
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then122.i, %if.else118.i.if.end129.i_crit_edge, %if.then115.i, %if.end105.i.if.end129.i_crit_edge
  %91 = ptrtoint ptr %dq_dqb.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %dq_dqb.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %92)
  %tobool131.not.i = icmp eq i64 %92, 0
  br i1 %tobool131.not.i, label %lor.lhs.false132.i, label %if.end129.i.if.then141.i_crit_edge

if.end129.i.if.then141.i_crit_edge:               ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then141.i

lor.lhs.false132.i:                               ; preds = %if.end129.i
  %dqb_bsoftlimit133.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 1
  %93 = ptrtoint ptr %dqb_bsoftlimit133.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %dqb_bsoftlimit133.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %94)
  %tobool134.not.i = icmp eq i64 %94, 0
  br i1 %tobool134.not.i, label %lor.lhs.false135.i, label %lor.lhs.false132.i.if.then141.i_crit_edge

lor.lhs.false132.i.if.then141.i_crit_edge:        ; preds = %lor.lhs.false132.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then141.i

lor.lhs.false135.i:                               ; preds = %lor.lhs.false132.i
  %dqb_ihardlimit136.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 4
  %95 = ptrtoint ptr %dqb_ihardlimit136.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %dqb_ihardlimit136.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %96)
  %tobool137.not.i = icmp eq i64 %96, 0
  br i1 %tobool137.not.i, label %lor.lhs.false138.i, label %lor.lhs.false135.i.if.then141.i_crit_edge

lor.lhs.false135.i.if.then141.i_crit_edge:        ; preds = %lor.lhs.false135.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then141.i

lor.lhs.false138.i:                               ; preds = %lor.lhs.false135.i
  %dqb_isoftlimit139.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 11, i32 5
  %97 = ptrtoint ptr %dqb_isoftlimit139.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %dqb_isoftlimit139.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %98)
  %tobool140.not.i = icmp eq i64 %98, 0
  br i1 %tobool140.not.i, label %if.else143.i, label %lor.lhs.false138.i.if.then141.i_crit_edge

lor.lhs.false138.i.if.then141.i_crit_edge:        ; preds = %lor.lhs.false138.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then141.i

if.then141.i:                                     ; preds = %lor.lhs.false138.i.if.then141.i_crit_edge, %lor.lhs.false135.i.if.then141.i_crit_edge, %lor.lhs.false132.i.if.then141.i_crit_edge, %if.end129.i.if.then141.i_crit_edge
  %dq_flags142.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %dq_flags142.i) #13
  br label %if.end145.i

if.else143.i:                                     ; preds = %lor.lhs.false138.i
  call void @__sanitizer_cov_trace_pc() #15
  %dq_flags144.i = getelementptr inbounds %struct.dquot, ptr %call, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %dq_flags144.i) #13
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.else143.i, %if.then141.i
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock.i) #13
  %99 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dq_sb.i, align 4
  %dq_op.i.i = getelementptr inbounds %struct.super_block, ptr %100, i32 0, i32 7
  %101 = ptrtoint ptr %dq_op.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dq_op.i.i, align 8
  %mark_dirty.i.i = getelementptr inbounds %struct.dquot_operations, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %mark_dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mark_dirty.i.i, align 4
  %call.i.i = tail call i32 %104(ptr noundef %call) #13
  br label %do_set_dqblk.exit

do_set_dqblk.exit:                                ; preds = %if.end145.i, %land.lhs.true20.i.do_set_dqblk.exit_crit_edge, %land.lhs.true14.i.do_set_dqblk.exit_crit_edge, %land.lhs.true7.i.do_set_dqblk.exit_crit_edge, %land.lhs.true.i.do_set_dqblk.exit_crit_edge, %if.end.do_set_dqblk.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end145.i ], [ -22, %if.end.do_set_dqblk.exit_crit_edge ], [ -34, %land.lhs.true20.i.do_set_dqblk.exit_crit_edge ], [ -34, %land.lhs.true14.i.do_set_dqblk.exit_crit_edge ], [ -34, %land.lhs.true7.i.do_set_dqblk.exit_crit_edge ], [ -34, %land.lhs.true.i.do_set_dqblk.exit_crit_edge ]
  tail call void @dqput(ptr noundef %call)
  br label %out

out:                                              ; preds = %do_set_dqblk.exit, %if.then
  %rc.0 = phi i32 [ %0, %if.then ], [ %retval.0.i, %do_set_dqblk.exit ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_get_state(ptr nocapture noundef readonly %sb, ptr nocapture noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_dquot.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31
  %0 = call ptr @memset(ptr %state, i32 0, i32 176)
  %s_state = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1
  %info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %type.053 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %s_dquot.i, align 8
  %shl.i.i.i.i = shl nuw nsw i32 1, %type.053
  %and.i.i.i = and i32 %2, %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0
  %shl.i.i.i = shl nuw nsw i32 64, %type.053
  %and.i.i = and i32 %2, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %3 = select i1 %tobool.i.i.i, i1 %tobool.i.not.i, i1 false
  br i1 %3, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %add.ptr = getelementptr %struct.qc_type_state, ptr %s_state, i32 %type.053
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %add.ptr, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #13
  %dqi_flags = getelementptr %struct.mem_dqinfo, ptr %info, i32 %type.053, i32 3
  %5 = ptrtoint ptr %dqi_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dqi_flags, align 8
  %and = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 8
  %or = or i32 %8, 1
  store i32 %or, ptr %add.ptr, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %9 = ptrtoint ptr %dqi_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dqi_flags, align 8
  %and9 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end14_crit_edge, label %if.then11

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 8
  %or13 = or i32 %12, 2
  store i32 %or13, ptr %add.ptr, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end7.if.end14_crit_edge
  %13 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_dquot.i, align 8
  %shl.i.i = shl nuw nsw i32 8, %type.053
  %and.i = and i32 %14, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end14.if.end19_crit_edge, label %if.then16

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 8
  %or18 = or i32 %16, 8
  store i32 %or18, ptr %add.ptr, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14.if.end19_crit_edge
  %dqi_bgrace = getelementptr %struct.mem_dqinfo, ptr %info, i32 %type.053, i32 4
  %17 = ptrtoint ptr %dqi_bgrace to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dqi_bgrace, align 4
  %spc_timelimit = getelementptr %struct.qc_type_state, ptr %s_state, i32 %type.053, i32 1
  %19 = ptrtoint ptr %spc_timelimit to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %spc_timelimit, align 4
  %dqi_igrace = getelementptr %struct.mem_dqinfo, ptr %info, i32 %type.053, i32 5
  %20 = ptrtoint ptr %dqi_igrace to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dqi_igrace, align 8
  %ino_timelimit = getelementptr %struct.qc_type_state, ptr %s_state, i32 %type.053, i32 2
  %22 = ptrtoint ptr %ino_timelimit to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ino_timelimit, align 8
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %type.053
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %if.end19.if.end26_crit_edge, label %if.then21

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %i_ino = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %26 to i64
  %ino = getelementptr %struct.qc_type_state, ptr %s_state, i32 %type.053, i32 7
  %27 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv, ptr %ino, align 8
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %i_blocks = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_blocks, align 8
  %blocks = getelementptr %struct.qc_type_state, ptr %s_state, i32 %type.053, i32 8
  %32 = ptrtoint ptr %blocks to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %blocks, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end19.if.end26_crit_edge
  %nextents = getelementptr %struct.qc_type_state, ptr %s_state, i32 %type.053, i32 9
  %33 = ptrtoint ptr %nextents to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1, ptr %nextents, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %type.053, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dquot_set_dqinfo(ptr noundef %sb, i32 noundef %type, ptr nocapture noundef readonly %ii) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ii to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ii, align 4
  %2 = and i32 %1, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_dquot.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31
  %4 = ptrtoint ptr %s_dquot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_dquot.i.i.i.i, align 8
  %shl.i.i.i.i = shl nuw i32 1, %type
  %and.i.i.i = and i32 %5, %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0
  %shl.i.i.i = shl i32 64, %type
  %and.i.i = and i32 %5, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %6 = select i1 %tobool.i.i.i, i1 %tobool.i.not.i, i1 false
  br i1 %6, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 3
  %add.ptr = getelementptr %struct.mem_dqinfo, ptr %info, i32 %type
  %and8 = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end5.if.end15_crit_edge, label %if.then10

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then10:                                        ; preds = %if.end5
  %i_flags = getelementptr inbounds %struct.qc_info, ptr %ii, i32 0, i32 1
  %7 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_flags, align 4
  %and11 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %land.lhs.true

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %if.then10
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.not = icmp eq i32 %12, 1
  br i1 %cmp.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.then10.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #13
  %13 = ptrtoint ptr %ii to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ii, align 4
  %and17 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end20_crit_edge, label %if.then19

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %i_spc_timelimit = getelementptr inbounds %struct.qc_info, ptr %ii, i32 0, i32 2
  %15 = ptrtoint ptr %i_spc_timelimit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_spc_timelimit, align 4
  %dqi_bgrace = getelementptr %struct.mem_dqinfo, ptr %info, i32 %type, i32 4
  %17 = ptrtoint ptr %dqi_bgrace to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dqi_bgrace, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15.if.end20_crit_edge
  %18 = ptrtoint ptr %ii to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ii, align 4
  %and22 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end25_crit_edge, label %if.then24

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %i_ino_timelimit = getelementptr inbounds %struct.qc_info, ptr %ii, i32 0, i32 3
  %20 = ptrtoint ptr %i_ino_timelimit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino_timelimit, align 4
  %dqi_igrace = getelementptr %struct.mem_dqinfo, ptr %info, i32 %type, i32 5
  %22 = ptrtoint ptr %dqi_igrace to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %dqi_igrace, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20.if.end25_crit_edge
  %23 = ptrtoint ptr %ii to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ii, align 4
  %and27 = and i32 %24, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end37_crit_edge, label %if.then29

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %i_flags30 = getelementptr inbounds %struct.qc_info, ptr %ii, i32 0, i32 1
  %25 = ptrtoint ptr %i_flags30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_flags30, align 4
  %dqi_flags34 = getelementptr %struct.mem_dqinfo, ptr %info, i32 %type, i32 3
  %27 = ptrtoint ptr %dqi_flags34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dqi_flags34, align 8
  %and35 = and i32 %28, -2
  %and31 = lshr i32 %26, 1
  %and31.lobit = and i32 %and31, 1
  %or.sink = or i32 %and35, %and31.lobit
  store i32 %or.sink, ptr %dqi_flags34, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %if.end25.if.end37_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #13
  %dqi_flags.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 3, i32 %type, i32 3
  %29 = ptrtoint ptr %dqi_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dqi_flags.i, align 8
  %or.i = or i32 %30, 131072
  store i32 %or.i, ptr %dqi_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #13
  %dq_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 7
  %31 = ptrtoint ptr %dq_op to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dq_op, align 8
  %write_info = getelementptr inbounds %struct.dquot_operations, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %write_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_info, align 4
  %call38 = tail call i32 %34(ptr noundef %sb, i32 noundef %type) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -22, %entry.cleanup_crit_edge ], [ -3, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dquot_quota_enable(ptr noundef %sb, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_dquot.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31
  %0 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_dquot.i, align 8
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %flags, -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %call6 = tail call i32 @qtype_enforce_flag(i32 noundef 0) #13
  %and7 = and i32 %call6, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %for.body.preheader.for.inc_crit_edge, label %if.end10

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end10:                                         ; preds = %for.body.preheader
  %2 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_dquot.i, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %and.i56 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.i57.not = icmp eq i32 %and.i56, 0
  br i1 %tobool.i57.not, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_state_lock) #13
  %4 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_dquot.i, align 8
  %or = or i32 %5, 8
  store i32 %or, ptr %s_dquot.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_state_lock) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %for.body.preheader.for.inc_crit_edge
  %call6.1 = tail call i32 @qtype_enforce_flag(i32 noundef 1) #13
  %and7.1 = and i32 %call6.1, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.1)
  %tobool8.not.1 = icmp eq i32 %and7.1, 0
  br i1 %tobool8.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end10.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.end10.1:                                       ; preds = %for.inc
  %6 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_dquot.i, align 8
  %and.i.1 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.i.not.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.i.not.1, label %if.end10.1.for.body21_crit_edge, label %if.end13.1

if.end10.1.for.body21_crit_edge:                  ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body21

if.end13.1:                                       ; preds = %if.end10.1
  %and.i56.1 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56.1)
  %tobool.i57.not.1 = icmp eq i32 %and.i56.1, 0
  br i1 %tobool.i57.not.1, label %if.end16.1, label %if.end13.1.for.body21_crit_edge

if.end13.1.for.body21_crit_edge:                  ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body21

if.end16.1:                                       ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_state_lock) #13
  %8 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_dquot.i, align 8
  %or.1 = or i32 %9, 16
  store i32 %or.1, ptr %s_dquot.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_state_lock) #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end16.1, %for.inc.for.inc.1_crit_edge
  %call6.2 = tail call i32 @qtype_enforce_flag(i32 noundef 2) #13
  %and7.2 = and i32 %call6.2, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.2)
  %tobool8.not.2 = icmp eq i32 %and7.2, 0
  br i1 %tobool8.not.2, label %for.inc.1.cleanup_crit_edge, label %if.end10.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10.2:                                       ; preds = %for.inc.1
  %10 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_dquot.i, align 8
  %and.i.2 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool.i.not.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool.i.not.2, label %if.end10.2.for.body21_crit_edge, label %if.end13.2

if.end10.2.for.body21_crit_edge:                  ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body21

if.end13.2:                                       ; preds = %if.end10.2
  %and.i56.2 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56.2)
  %tobool.i57.not.2 = icmp eq i32 %and.i56.2, 0
  br i1 %tobool.i57.not.2, label %if.end16.2, label %if.end13.2.for.body21_crit_edge

if.end13.2.for.body21_crit_edge:                  ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body21

if.end16.2:                                       ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_state_lock) #13
  %12 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_dquot.i, align 8
  %or.2 = or i32 %13, 32
  store i32 %or.2, ptr %s_dquot.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_state_lock) #13
  br label %cleanup

for.body21:                                       ; preds = %if.end13.2.for.body21_crit_edge, %if.end10.2.for.body21_crit_edge, %if.end13.1.for.body21_crit_edge, %if.end10.1.for.body21_crit_edge
  %cmp20 = phi i1 [ true, %if.end13.2.for.body21_crit_edge ], [ true, %if.end10.2.for.body21_crit_edge ], [ false, %if.end13.1.for.body21_crit_edge ], [ false, %if.end10.1.for.body21_crit_edge ]
  %type.060.lcssa.ph = phi i32 [ 1, %if.end13.2.for.body21_crit_edge ], [ 1, %if.end10.2.for.body21_crit_edge ], [ 0, %if.end13.1.for.body21_crit_edge ], [ 0, %if.end10.1.for.body21_crit_edge ]
  %spec.store.select.ph = phi i32 [ -17, %if.end13.2.for.body21_crit_edge ], [ -22, %if.end10.2.for.body21_crit_edge ], [ -17, %if.end13.1.for.body21_crit_edge ], [ -22, %if.end10.1.for.body21_crit_edge ]
  %call22 = tail call i32 @qtype_enforce_flag(i32 noundef %type.060.lcssa.ph) #13
  %and23 = and i32 %call22, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %for.body21.for.inc28_crit_edge, label %if.then25

for.body21.for.inc28_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc28

if.then25:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = tail call i32 @dquot_disable(ptr noundef %sb, i32 noundef %type.060.lcssa.ph, i32 noundef 8)
  br label %for.inc28

for.inc28:                                        ; preds = %if.then25, %for.body21.for.inc28_crit_edge
  %type.1 = add nsw i32 %type.060.lcssa.ph, -1
  br i1 %cmp20, label %for.body21.1, label %for.inc28.cleanup_crit_edge

for.inc28.cleanup_crit_edge:                      ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body21.1:                                     ; preds = %for.inc28
  %call22.1 = tail call i32 @qtype_enforce_flag(i32 noundef %type.1) #13
  %and23.1 = and i32 %call22.1, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.1)
  %tobool24.not.1 = icmp eq i32 %and23.1, 0
  br i1 %tobool24.not.1, label %for.body21.1.cleanup_crit_edge, label %if.then25.1

for.body21.1.cleanup_crit_edge:                   ; preds = %for.body21.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then25.1:                                      ; preds = %for.body21.1
  call void @__sanitizer_cov_trace_pc() #15
  %call26.1 = tail call i32 @dquot_disable(ptr noundef %sb, i32 noundef %type.1, i32 noundef 8)
  br label %cleanup

cleanup:                                          ; preds = %if.then25.1, %for.body21.1.cleanup_crit_edge, %for.inc28.cleanup_crit_edge, %if.end16.2, %for.inc.1.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end16.2 ], [ 0, %for.inc.1.cleanup_crit_edge ], [ -17, %if.end13.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ %spec.store.select.ph, %for.body21.1.cleanup_crit_edge ], [ %spec.store.select.ph, %if.then25.1 ], [ %spec.store.select.ph, %for.inc28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dquot_quota_disable(ptr noundef %sb, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_dquot.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31
  %0 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_dquot.i, align 8
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %flags, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %2 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_dquot.i, align 8
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then7, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then7:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 @qtype_enforce_flag(i32 noundef 0) #13
  %neg = xor i32 %call8, -1
  %and9 = and i32 %neg, %flags
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body.preheader.for.inc_crit_edge
  %flags.addr.1 = phi i32 [ %flags, %for.body.preheader.for.inc_crit_edge ], [ %and9, %if.then7 ]
  %4 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_dquot.i, align 8
  %and.i.1 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.i.not.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.i.not.1, label %if.then7.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then7.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %call8.1 = tail call i32 @qtype_enforce_flag(i32 noundef 1) #13
  %neg.1 = xor i32 %call8.1, -1
  %and9.1 = and i32 %flags.addr.1, %neg.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then7.1, %for.inc.for.inc.1_crit_edge
  %flags.addr.1.1 = phi i32 [ %flags.addr.1, %for.inc.for.inc.1_crit_edge ], [ %and9.1, %if.then7.1 ]
  %6 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_dquot.i, align 8
  %and.i.2 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool.i.not.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool.i.not.2, label %if.then7.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then7.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %call8.2 = tail call i32 @qtype_enforce_flag(i32 noundef 2) #13
  %neg.2 = xor i32 %call8.2, -1
  %and9.2 = and i32 %flags.addr.1.1, %neg.2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then7.2, %for.inc.1.for.inc.2_crit_edge
  %flags.addr.1.2 = phi i32 [ %flags.addr.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %and9.2, %if.then7.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags.addr.1.2)
  %tobool11.not = icmp eq i32 %flags.addr.1.2, 0
  br i1 %tobool11.not, label %for.inc.2.cleanup_crit_edge, label %for.body16.preheader

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body16.preheader:                             ; preds = %for.inc.2
  %call17 = tail call i32 @qtype_enforce_flag(i32 noundef 0) #13
  %and18 = and i32 %call17, %flags.addr.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %for.body16.preheader.for.inc26_crit_edge, label %if.then20

for.body16.preheader.for.inc26_crit_edge:         ; preds = %for.body16.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc26

if.then20:                                        ; preds = %for.body16.preheader
  %call21 = tail call i32 @dquot_disable(ptr noundef %sb, i32 noundef 0, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then20.cleanup_crit_edge, label %if.then20.for.inc26_crit_edge

if.then20.for.inc26_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc26

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc26:                                        ; preds = %if.then20.for.inc26_crit_edge, %for.body16.preheader.for.inc26_crit_edge
  %call17.1 = tail call i32 @qtype_enforce_flag(i32 noundef 1) #13
  %and18.1 = and i32 %call17.1, %flags.addr.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.1)
  %tobool19.not.1 = icmp eq i32 %and18.1, 0
  br i1 %tobool19.not.1, label %for.inc26.for.inc26.1_crit_edge, label %if.then20.1

for.inc26.for.inc26.1_crit_edge:                  ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc26.1

if.then20.1:                                      ; preds = %for.inc26
  %call21.1 = tail call i32 @dquot_disable(ptr noundef %sb, i32 noundef 1, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1)
  %cmp22.1 = icmp slt i32 %call21.1, 0
  br i1 %cmp22.1, label %if.then20.1.for.body31_crit_edge, label %if.then20.1.for.inc26.1_crit_edge

if.then20.1.for.inc26.1_crit_edge:                ; preds = %if.then20.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc26.1

if.then20.1.for.body31_crit_edge:                 ; preds = %if.then20.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body31

for.inc26.1:                                      ; preds = %if.then20.1.for.inc26.1_crit_edge, %for.inc26.for.inc26.1_crit_edge
  %call17.2 = tail call i32 @qtype_enforce_flag(i32 noundef 2) #13
  %and18.2 = and i32 %call17.2, %flags.addr.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.2)
  %tobool19.not.2 = icmp eq i32 %and18.2, 0
  br i1 %tobool19.not.2, label %for.inc26.1.cleanup_crit_edge, label %if.then20.2

for.inc26.1.cleanup_crit_edge:                    ; preds = %for.inc26.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20.2:                                      ; preds = %for.inc26.1
  %call21.2 = tail call i32 @dquot_disable(ptr noundef %sb, i32 noundef 2, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.2)
  %cmp22.2 = icmp slt i32 %call21.2, 0
  br i1 %cmp22.2, label %if.then20.2.for.body31_crit_edge, label %if.then20.2.cleanup_crit_edge

if.then20.2.cleanup_crit_edge:                    ; preds = %if.then20.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20.2.for.body31_crit_edge:                 ; preds = %if.then20.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body31

for.body31:                                       ; preds = %if.then20.2.for.body31_crit_edge, %if.then20.1.for.body31_crit_edge
  %cmp30 = phi i1 [ true, %if.then20.2.for.body31_crit_edge ], [ false, %if.then20.1.for.body31_crit_edge ]
  %type.168.lcssa.ph = phi i32 [ 1, %if.then20.2.for.body31_crit_edge ], [ 0, %if.then20.1.for.body31_crit_edge ]
  %call21.lcssa.ph = phi i32 [ %call21.2, %if.then20.2.for.body31_crit_edge ], [ %call21.1, %if.then20.1.for.body31_crit_edge ]
  %call32 = tail call i32 @qtype_enforce_flag(i32 noundef %type.168.lcssa.ph) #13
  %and33 = and i32 %call32, %flags.addr.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %for.body31.for.inc39_crit_edge, label %if.then35

for.body31.for.inc39_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc39

if.then35:                                        ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_state_lock) #13
  %shl.i = shl i32 8, %type.168.lcssa.ph
  %8 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_dquot.i, align 8
  %or = or i32 %9, %shl.i
  store i32 %or, ptr %s_dquot.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_state_lock) #13
  br label %for.inc39

for.inc39:                                        ; preds = %if.then35, %for.body31.for.inc39_crit_edge
  %type.2 = add nsw i32 %type.168.lcssa.ph, -1
  br i1 %cmp30, label %for.body31.1, label %for.inc39.cleanup_crit_edge

for.inc39.cleanup_crit_edge:                      ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body31.1:                                     ; preds = %for.inc39
  %call32.1 = tail call i32 @qtype_enforce_flag(i32 noundef %type.2) #13
  %and33.1 = and i32 %call32.1, %flags.addr.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.1)
  %tobool34.not.1 = icmp eq i32 %and33.1, 0
  br i1 %tobool34.not.1, label %for.body31.1.cleanup_crit_edge, label %if.then35.1

for.body31.1.cleanup_crit_edge:                   ; preds = %for.body31.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then35.1:                                      ; preds = %for.body31.1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_state_lock) #13
  %shl.i.1 = shl i32 8, %type.2
  %10 = ptrtoint ptr %s_dquot.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_dquot.i, align 8
  %or.1 = or i32 %11, %shl.i.1
  store i32 %or.1, ptr %s_dquot.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_state_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then35.1, %for.body31.1.cleanup_crit_edge, %for.inc39.cleanup_crit_edge, %if.then20.2.cleanup_crit_edge, %for.inc26.1.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -17, %for.inc.2.cleanup_crit_edge ], [ %call21, %if.then20.cleanup_crit_edge ], [ 0, %if.then20.2.cleanup_crit_edge ], [ 0, %for.inc26.1.cleanup_crit_edge ], [ %call21.lcssa.ph, %for.body31.1.cleanup_crit_edge ], [ %call21.lcssa.ph, %if.then35.1 ], [ %call21.lcssa.ph, %for.inc39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dquot_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.37) #16
  %call1 = tail call ptr @register_sysctl_table(ptr noundef nonnull @sys_table) #13
  %call2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.38, i32 noundef 272, i32 noundef 16, i32 noundef 1449984, ptr noundef null) #13
  store ptr %call2, ptr @dquot_cachep, align 4
  %call3 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #13
  %0 = inttoptr i32 %call3 to ptr
  store ptr %0, ptr @dquot_hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.39) #18
  unreachable

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %cond.end13, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 %i.048
  %call5 = tail call i32 @__percpu_counter_init(ptr noundef %arrayidx, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @dquot_init.__key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.cond, label %if.then7

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.40) #18
  unreachable

cond.end13:                                       ; preds = %for.cond
  store i1 true, ptr @dq_hash_bits, align 4
  store i1 true, ptr @dq_hash_mask, align 4
  %1 = load ptr, ptr @dquot_hash, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 4096)
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 1024, i32 noundef 0, i32 noundef 4096) #16
  %call30 = tail call i32 @register_shrinker(ptr noundef nonnull @dqcache_shrinker) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.44) #18
  unreachable

if.end33:                                         ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qid_eq([2 x i32], [2 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dquot_srcu, i32 0, i32 16), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dquot_srcu, i32 0, i32 16), i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @quota_send_warning([2 x i32], i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_current_tty() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_write_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iget(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtype_enforce_flag(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_proc_dqstats(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @dqstats to i32)
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %arrayidx = getelementptr %struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 %sub.ptr.div
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp = icmp slt i64 %call.i, 0
  %extract.t10 = trunc i64 %call.i to i32
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = zext i32 %sub.ptr.sub to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %sub.ptr.sub, label %land.lhs.true.if.end_crit_edge [
    i32 24, label %land.lhs.true.if.then_crit_edge
    i32 20, label %land.lhs.true.if.then_crit_edge11
  ]

land.lhs.true.if.then_crit_edge11:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %value.0.off0 = phi i32 [ 0, %if.then ], [ %extract.t10, %entry.if.end_crit_edge ], [ %extract.t10, %land.lhs.true.if.end_crit_edge ]
  %arrayidx3 = getelementptr [8 x i32], ptr @dqstats, i32 0, i32 %sub.ptr.div
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %value.0.off0, ptr %arrayidx3, align 4
  %call4 = tail call i32 @proc_doulongvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #13
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dqcache_shrink_count(ptr nocapture noundef readnone %shrink, ptr nocapture noundef readnone %sc) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i64, ptr getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 6, i32 1), align 8
  %1 = tail call i64 @llvm.smax.i64(i64 %0, i64 0) #13
  %conv = trunc i64 %1 to i32
  %conv.frozen = freeze i32 %conv
  %div.i = udiv i32 %conv.frozen, 100
  %2 = mul i32 %div.i, 100
  %rem1.i.decomposed = sub i32 %conv.frozen, %2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_vfs_cache_pressure to i32))
  %3 = load i32, ptr @sysctl_vfs_cache_pressure, align 4
  %mul.i = mul i32 %div.i, %3
  %mul2.i = mul i32 %rem1.i.decomposed, %3
  %div3.i = udiv i32 %mul2.i, 100
  %add.i = add i32 %div3.i, %mul.i
  ret i32 %add.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dqcache_shrink_scan(ptr nocapture noundef readnone %shrink, ptr nocapture noundef %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_list_lock) #13
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %0 = load volatile ptr, ptr @free_dquots, align 4
  %cmp.i.not12 = icmp eq ptr %0, @free_dquots
  br i1 %cmp.i.not12, label %entry.while.end_crit_edge, label %land.rhs.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs.preheader:                               ; preds = %entry
  %1 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pr = load i32, ptr %nr_to_scan, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %remove_inuse.exit.land.rhs_crit_edge, %land.rhs.preheader
  %2 = phi i32 [ %.pr, %land.rhs.preheader ], [ %dec, %remove_inuse.exit.land.rhs_crit_edge ]
  %3 = phi ptr [ %0, %land.rhs.preheader ], [ %40, %remove_inuse.exit.land.rhs_crit_edge ]
  %freed.013 = phi i32 [ 0, %land.rhs.preheader ], [ %inc, %remove_inuse.exit.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %pprev.i.i.i = getelementptr i8, ptr %3, i32 -12
  %4 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.not.i.i, label %while.body.remove_dquot_hash.exit_crit_edge, label %if.then.i.i

while.body.remove_dquot_hash.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_dquot_hash.exit

if.then.i.i:                                      ; preds = %while.body
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %5, align 4
  %tobool.not.i3.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %add.ptr, align 4
  %11 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %remove_dquot_hash.exit

remove_dquot_hash.exit:                           ; preds = %__hlist_del.exit.i.i, %while.body.remove_dquot_hash.exit_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %3, align 4
  %cmp.i.not.i = icmp eq ptr %13, %3
  br i1 %cmp.i.not.i, label %remove_dquot_hash.exit.remove_free_dquot.exit_crit_edge, label %if.end.i

remove_dquot_hash.exit.remove_free_dquot.exit_crit_edge: ; preds = %remove_dquot_hash.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_free_dquot.exit

if.end.i:                                         ; preds = %remove_dquot_hash.exit
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr i8, ptr %3, i32 4
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i.i = getelementptr i8, ptr %3, i32 4
  %21 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %3, ptr %prev.i3.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %22 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 6), i64 noundef -1, i32 noundef %22) #13
  br label %remove_free_dquot.exit

remove_free_dquot.exit:                           ; preds = %list_del_init.exit.i, %remove_dquot_hash.exit.remove_free_dquot.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %23 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1, i32 5), i64 noundef -1, i32 noundef %23) #13
  %dq_inuse.i = getelementptr i8, ptr %3, i32 -8
  %call.i.i.i8 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dq_inuse.i) #13
  br i1 %call.i.i.i8, label %if.end.i.i.i11, label %remove_free_dquot.exit.remove_inuse.exit_crit_edge

remove_free_dquot.exit.remove_inuse.exit_crit_edge: ; preds = %remove_free_dquot.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_inuse.exit

if.end.i.i.i11:                                   ; preds = %remove_free_dquot.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i9 = getelementptr i8, ptr %3, i32 -4
  %24 = ptrtoint ptr %prev.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i9, align 4
  %26 = ptrtoint ptr %dq_inuse.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dq_inuse.i, align 4
  %prev1.i.i.i.i10 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i10, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %remove_inuse.exit

remove_inuse.exit:                                ; preds = %if.end.i.i.i11, %remove_free_dquot.exit.remove_inuse.exit_crit_edge
  %30 = ptrtoint ptr %dq_inuse.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %dq_inuse.i, align 4
  %prev.i.i = getelementptr i8, ptr %3, i32 -4
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %dq_sb.i = getelementptr i8, ptr %3, i32 156
  %32 = ptrtoint ptr %dq_sb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dq_sb.i, align 4
  %dq_op.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %dq_op.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dq_op.i, align 8
  %destroy_dquot.i = getelementptr inbounds %struct.dquot_operations, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %destroy_dquot.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %destroy_dquot.i, align 4
  tail call void %37(ptr noundef %add.ptr) #13
  %38 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_to_scan, align 4
  %dec = add i32 %39, -1
  store i32 %dec, ptr %nr_to_scan, align 4
  %inc = add i32 %freed.013, 1
  %40 = load volatile ptr, ptr @free_dquots, align 4
  %cmp.i.not = icmp eq ptr %40, @free_dquots
  br i1 %cmp.i.not, label %remove_inuse.exit.while.end_crit_edge, label %remove_inuse.exit.land.rhs_crit_edge

remove_inuse.exit.land.rhs_crit_edge:             ; preds = %remove_inuse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

remove_inuse.exit.while.end_crit_edge:            ; preds = %remove_inuse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %remove_inuse.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %freed.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc, %remove_inuse.exit.while.end_crit_edge ], [ %freed.013, %land.rhs.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_list_lock) #13
  ret i32 %freed.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !130, !132, !134, !136, !137, !139, !141, !142, !144, !146, !147, !148, !149, !151, !153, !154, !156, !158, !160, !162, !163, !165, !167, !168, !170, !171, !172, !173, !174, !175, !176, !178, !180, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !204, !205, !206, !208, !209, !211, !213, !214, !216, !217, !218, !219, !220, !222, !224, !226, !228, !230, !231, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262}
!llvm.named.register.sp = !{!264}
!llvm.module.flags = !{!265, !266, !267, !268, !269, !270, !271, !272}
!llvm.ident = !{!273}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/quota/dquot.c", i32 130, i32 28}
!2 = !{ptr @dq_data_lock, !1, !"dq_data_lock", i1 false, i1 false}
!3 = !{ptr @__ksymtab_dq_data_lock, !4, !"__ksymtab_dq_data_lock", i1 false, i1 false}
!4 = !{!"../fs/quota/dquot.c", i32 131, i32 1}
!5 = !{ptr @__func__.__quota_error, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/quota/dquot.c", i32 139, i32 6}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/quota/dquot.c", i32 148, i32 3}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__quota_error._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @__quota_error._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab___quota_error, !13, !"__ksymtab___quota_error", i1 false, i1 false}
!13 = !{!"../fs/quota/dquot.c", i32 154, i32 1}
!14 = !{ptr @__ksymtab_register_quota_format, !15, !"__ksymtab_register_quota_format", i1 false, i1 false}
!15 = !{!"../fs/quota/dquot.c", i32 173, i32 1}
!16 = !{ptr @__ksymtab_unregister_quota_format, !17, !"__ksymtab_unregister_quota_format", i1 false, i1 false}
!17 = !{!"../fs/quota/dquot.c", i32 187, i32 1}
!18 = !{ptr @__ksymtab_dqstats, !19, !"__ksymtab_dqstats", i1 false, i1 false}
!19 = !{!"../fs/quota/dquot.c", i32 256, i32 1}
!20 = !{ptr @__ksymtab_dquot_mark_dquot_dirty, !21, !"__ksymtab_dquot_mark_dquot_dirty", i1 false, i1 false}
!21 = !{!"../fs/quota/dquot.c", i32 372, i32 1}
!22 = !{ptr @__ksymtab_mark_info_dirty, !23, !"__ksymtab_mark_info_dirty", i1 false, i1 false}
!23 = !{!"../fs/quota/dquot.c", i32 419, i32 1}
!24 = !{ptr @__ksymtab_dquot_acquire, !25, !"__ksymtab_dquot_acquire", i1 false, i1 false}
!25 = !{!"../fs/quota/dquot.c", i32 464, i32 1}
!26 = !{ptr @__ksymtab_dquot_commit, !27, !"__ksymtab_dquot_commit", i1 false, i1 false}
!27 = !{!"../fs/quota/dquot.c", i32 487, i32 1}
!28 = !{ptr @__ksymtab_dquot_release, !29, !"__ksymtab_dquot_release", i1 false, i1 false}
!29 = !{!"../fs/quota/dquot.c", i32 516, i32 1}
!30 = !{ptr @__ksymtab_dquot_destroy, !31, !"__ksymtab_dquot_destroy", i1 false, i1 false}
!31 = !{!"../fs/quota/dquot.c", i32 522, i32 1}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../fs/quota/dquot.c", i32 586, i32 2}
!34 = !{ptr @__ksymtab_dquot_scan_active, !35, !"__ksymtab_dquot_scan_active", i1 false, i1 false}
!35 = !{!"../fs/quota/dquot.c", i32 619, i32 1}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../fs/quota/dquot.c", i32 630, i32 2}
!38 = !{ptr @__ksymtab_dquot_writeback_dquots, !39, !"__ksymtab_dquot_writeback_dquots", i1 false, i1 false}
!39 = !{!"../fs/quota/dquot.c", i32 675, i32 1}
!40 = !{ptr @__ksymtab_dquot_quota_sync, !41, !"__ksymtab_dquot_quota_sync", i1 false, i1 false}
!41 = !{!"../fs/quota/dquot.c", i32 718, i32 1}
!42 = !{ptr @__func__.dqput, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/quota/dquot.c", i32 764, i32 3}
!44 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/quota/dquot.c", i32 789, i32 4}
!47 = !{ptr @__ksymtab_dqput, !48, !"__ksymtab_dqput", i1 false, i1 false}
!48 = !{!"../fs/quota/dquot.c", i32 813, i32 1}
!49 = !{ptr @__ksymtab_dquot_alloc, !50, !"__ksymtab_dquot_alloc", i1 false, i1 false}
!50 = !{!"../fs/quota/dquot.c", i32 819, i32 1}
!51 = !{ptr @__ksymtab_dqget, !52, !"__ksymtab_dqget", i1 false, i1 false}
!52 = !{!"../fs/quota/dquot.c", i32 925, i32 1}
!53 = !{ptr @__ksymtab_dquot_initialize, !54, !"__ksymtab_dquot_initialize", i1 false, i1 false}
!54 = !{!"../fs/quota/dquot.c", i32 1542, i32 1}
!55 = !{ptr @__ksymtab_dquot_initialize_needed, !56, !"__ksymtab_dquot_initialize_needed", i1 false, i1 false}
!56 = !{!"../fs/quota/dquot.c", i32 1558, i32 1}
!57 = !{ptr @__ksymtab_dquot_drop, !58, !"__ksymtab_dquot_drop", i1 false, i1 false}
!58 = !{!"../fs/quota/dquot.c", i32 1607, i32 1}
!59 = !{ptr @__ksymtab___dquot_alloc_space, !60, !"__ksymtab___dquot_alloc_space", i1 false, i1 false}
!60 = !{!"../fs/quota/dquot.c", i32 1719, i32 1}
!61 = !{ptr @__ksymtab_dquot_alloc_inode, !62, !"__ksymtab_dquot_alloc_inode", i1 false, i1 false}
!62 = !{!"../fs/quota/dquot.c", i32 1763, i32 1}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../fs/quota/dquot.c", i32 1790, i32 8}
!65 = !{ptr @__ksymtab_dquot_claim_space_nodirty, !66, !"__ksymtab_dquot_claim_space_nodirty", i1 false, i1 false}
!66 = !{!"../fs/quota/dquot.c", i32 1805, i32 1}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../fs/quota/dquot.c", i32 1832, i32 8}
!69 = !{ptr @__ksymtab_dquot_reclaim_space_nodirty, !70, !"__ksymtab_dquot_reclaim_space_nodirty", i1 false, i1 false}
!70 = !{!"../fs/quota/dquot.c", i32 1847, i32 1}
!71 = !{ptr @__ksymtab___dquot_free_space, !72, !"__ksymtab___dquot_free_space", i1 false, i1 false}
!72 = !{!"../fs/quota/dquot.c", i32 1902, i32 1}
!73 = !{ptr @__ksymtab_dquot_free_inode, !74, !"__ksymtab_dquot_free_inode", i1 false, i1 false}
!74 = !{!"../fs/quota/dquot.c", i32 1938, i32 1}
!75 = !{ptr @__ksymtab___dquot_transfer, !76, !"__ksymtab___dquot_transfer", i1 false, i1 false}
!76 = !{!"../fs/quota/dquot.c", i32 2073, i32 1}
!77 = !{ptr @__ksymtab_dquot_transfer, !78, !"__ksymtab_dquot_transfer", i1 false, i1 false}
!78 = !{!"../fs/quota/dquot.c", i32 2115, i32 1}
!79 = !{ptr @__ksymtab_dquot_commit_info, !80, !"__ksymtab_dquot_commit_info", i1 false, i1 false}
!80 = !{!"../fs/quota/dquot.c", i32 2126, i32 1}
!81 = !{ptr @__ksymtab_dquot_get_next_id, !82, !"__ksymtab_dquot_get_next_id", i1 false, i1 false}
!82 = !{!"../fs/quota/dquot.c", i32 2138, i32 1}
!83 = !{ptr @dquot_operations, !84, !"dquot_operations", i1 false, i1 false}
!84 = !{!"../fs/quota/dquot.c", i32 2143, i32 31}
!85 = !{ptr @__ksymtab_dquot_operations, !86, !"__ksymtab_dquot_operations", i1 false, i1 false}
!86 = !{!"../fs/quota/dquot.c", i32 2153, i32 1}
!87 = !{ptr @__ksymtab_dquot_file_open, !88, !"__ksymtab_dquot_file_open", i1 false, i1 false}
!88 = !{!"../fs/quota/dquot.c", i32 2167, i32 1}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../fs/quota/dquot.c", i32 2194, i32 6}
!91 = !{ptr @__ksymtab_dquot_disable, !92, !"__ksymtab_dquot_disable", i1 false, i1 false}
!92 = !{!"../fs/quota/dquot.c", i32 2292, i32 1}
!93 = !{ptr @__ksymtab_dquot_quota_off, !94, !"__ksymtab_dquot_quota_off", i1 false, i1 false}
!94 = !{!"../fs/quota/dquot.c", i32 2299, i32 1}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../fs/quota/dquot.c", i32 2346, i32 6}
!97 = !{ptr @__ksymtab_dquot_load_quota_sb, !98, !"__ksymtab_dquot_load_quota_sb", i1 false, i1 false}
!98 = !{!"../fs/quota/dquot.c", i32 2412, i32 1}
!99 = !{ptr @__ksymtab_dquot_load_quota_inode, !100, !"__ksymtab_dquot_load_quota_inode", i1 false, i1 false}
!100 = !{!"../fs/quota/dquot.c", i32 2431, i32 1}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../fs/quota/dquot.c", i32 2441, i32 6}
!103 = !{ptr @__ksymtab_dquot_resume, !104, !"__ksymtab_dquot_resume", i1 false, i1 false}
!104 = !{!"../fs/quota/dquot.c", i32 2466, i32 1}
!105 = !{ptr @__ksymtab_dquot_quota_on, !106, !"__ksymtab_dquot_quota_on", i1 false, i1 false}
!106 = !{!"../fs/quota/dquot.c", i32 2483, i32 1}
!107 = !{ptr @__ksymtab_dquot_quota_on_mount, !108, !"__ksymtab_dquot_quota_on_mount", i1 false, i1 false}
!108 = !{!"../fs/quota/dquot.c", i32 2507, i32 1}
!109 = !{ptr @__ksymtab_dquot_get_dqblk, !110, !"__ksymtab_dquot_get_dqblk", i1 false, i1 false}
!110 = !{!"../fs/quota/dquot.c", i32 2626, i32 1}
!111 = !{ptr @__ksymtab_dquot_get_next_dqblk, !112, !"__ksymtab_dquot_get_next_dqblk", i1 false, i1 false}
!112 = !{!"../fs/quota/dquot.c", i32 2647, i32 1}
!113 = !{ptr @__ksymtab_dquot_set_dqblk, !114, !"__ksymtab_dquot_set_dqblk", i1 false, i1 false}
!114 = !{!"../fs/quota/dquot.c", i32 2762, i32 1}
!115 = !{ptr @__ksymtab_dquot_get_state, !116, !"__ksymtab_dquot_get_state", i1 false, i1 false}
!116 = !{!"../fs/quota/dquot.c", i32 2797, i32 1}
!117 = !{ptr @__ksymtab_dquot_set_dqinfo, !118, !"__ksymtab_dquot_set_dqinfo", i1 false, i1 false}
!118 = !{!"../fs/quota/dquot.c", i32 2833, i32 1}
!119 = !{ptr @dquot_quotactl_sysfile_ops, !120, !"dquot_quotactl_sysfile_ops", i1 false, i1 false}
!120 = !{!"../fs/quota/dquot.c", i32 2835, i32 27}
!121 = !{ptr @__ksymtab_dquot_quotactl_sysfile_ops, !122, !"__ksymtab_dquot_quotactl_sysfile_ops", i1 false, i1 false}
!122 = !{!"../fs/quota/dquot.c", i32 2845, i32 1}
!123 = !{ptr @__initcall__kmod_dquot__269_2993_dquot_init5, !124, !"__initcall__kmod_dquot__269_2993_dquot_init5", i1 false, i1 false}
!124 = !{!"../fs/quota/dquot.c", i32 2993, i32 1}
!125 = !{ptr @__pcpu_unique_dquot_srcu_srcu_data, !126, !"__pcpu_unique_dquot_srcu_srcu_data", i1 false, i1 false}
!126 = !{!"../fs/quota/dquot.c", i32 132, i32 1}
!127 = !{ptr @dquot_srcu_srcu_data, !126, !"dquot_srcu_srcu_data", i1 false, i1 false}
!128 = !{ptr @quota_formats, !129, !"quota_formats", i1 false, i1 false}
!129 = !{!"../fs/quota/dquot.c", i32 159, i32 34}
!130 = !{ptr @dquot_cachep, !131, !"dquot_cachep", i1 false, i1 false}
!131 = !{!"../fs/quota/dquot.c", i32 163, i32 27}
!132 = !{ptr @dqstats, !133, !"dqstats", i1 false, i1 false}
!133 = !{!"../fs/quota/dquot.c", i32 255, i32 16}
!134 = !{ptr @.str.5, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/quota/dquot.c", i32 128, i32 35}
!136 = !{ptr @dq_list_lock, !135, !"dq_list_lock", i1 false, i1 false}
!137 = !{ptr @inuse_list, !138, !"inuse_list", i1 false, i1 false}
!138 = !{!"../fs/quota/dquot.c", i32 250, i32 8}
!139 = distinct !{null, !140, !"__already_done", i1 false, i1 false}
!140 = !{!"../include/linux/quotaops.h", i32 49, i32 2}
!141 = !{ptr @.str.6, !140, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../include/linux/quotaops.h", i32 50, i32 2}
!144 = !{ptr @.str.8, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/quota/dquot.c", i32 157, i32 29}
!146 = !{ptr @.str.9, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.10, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.11, !145, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @quotatypes, !150, !"quotatypes", i1 false, i1 false}
!150 = !{!"../fs/quota/dquot.c", i32 157, i32 14}
!151 = !{ptr @.str.12, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/quota/dquot.c", i32 134, i32 8}
!153 = !{ptr @dquot_ref_wq, !152, !"dquot_ref_wq", i1 false, i1 false}
!154 = !{ptr @free_dquots, !155, !"free_dquots", i1 false, i1 false}
!155 = !{!"../fs/quota/dquot.c", i32 251, i32 8}
!156 = distinct !{null, !157, !"dq_hash_bits", i1 false, i1 false}
!157 = !{!"../fs/quota/dquot.c", i32 252, i32 21}
!158 = distinct !{null, !159, !"dq_hash_mask", i1 false, i1 false}
!159 = !{!"../fs/quota/dquot.c", i32 252, i32 35}
!160 = !{ptr @.str.13, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/quota/dquot.c", i32 129, i32 35}
!162 = !{ptr @dq_state_lock, !161, !"dq_state_lock", i1 false, i1 false}
!163 = !{ptr @dquot_hash, !164, !"dquot_hash", i1 false, i1 false}
!164 = !{!"../fs/quota/dquot.c", i32 253, i32 27}
!165 = !{ptr @get_empty_dquot.__key, !166, !"__key", i1 false, i1 false}
!166 = !{!"../fs/quota/dquot.c", i32 829, i32 2}
!167 = !{ptr @.str.14, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @get_empty_dquot.__key.15, !169, !"__key", i1 false, i1 false}
!169 = !{!"../fs/quota/dquot.c", i32 837, i32 2}
!170 = !{ptr @.str.16, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.17, !126, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.18, !126, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.19, !126, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.20, !126, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @dquot_srcu, !126, !"dquot_srcu", i1 false, i1 false}
!176 = distinct !{null, !177, !"__already_done", i1 false, i1 false}
!177 = !{!"../fs/quota/dquot.c", i32 1112, i32 3}
!178 = distinct !{null, !179, !"__already_done", i1 false, i1 false}
!179 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!180 = !{ptr @.str.21, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.22, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/quota/dquot.c", i32 1201, i32 26}
!183 = !{ptr @.str.23, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/quota/dquot.c", i32 1203, i32 26}
!185 = !{ptr @.str.24, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/quota/dquot.c", i32 1207, i32 10}
!187 = !{ptr @.str.25, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/quota/dquot.c", i32 1210, i32 10}
!189 = !{ptr @.str.26, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/quota/dquot.c", i32 1213, i32 10}
!191 = !{ptr @.str.27, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/quota/dquot.c", i32 1216, i32 10}
!193 = !{ptr @.str.28, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/quota/dquot.c", i32 1219, i32 10}
!195 = !{ptr @.str.29, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/quota/dquot.c", i32 1222, i32 10}
!197 = distinct !{null, !198, !"__warned", i1 false, i1 false}
!198 = !{!"../fs/quota/dquot.c", i32 1174, i32 18}
!199 = !{ptr @flag_print_warnings, !200, !"flag_print_warnings", i1 false, i1 false}
!200 = !{!"../fs/quota/dquot.c", i32 1165, i32 12}
!201 = !{ptr @.str.30, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/quota/dquot.c", i32 1087, i32 3}
!203 = !{ptr @.str.31, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @remove_dquot_ref._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @remove_dquot_ref._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.32, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/quota/dquot.c", i32 160, i32 50}
!208 = !{ptr @.str.33, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @module_names, !210, !"module_names", i1 false, i1 false}
!210 = !{!"../fs/quota/dquot.c", i32 160, i32 33}
!211 = !{ptr @__func__.add_dquot_ref, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/quota/dquot.c", i32 999, i32 3}
!213 = !{ptr @.str.34, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.35, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/quota/dquot.c", i32 2955, i32 2}
!216 = !{ptr @.str.36, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @dquot_init._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @dquot_init._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.37, !215, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.38, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/quota/dquot.c", i32 2959, i32 35}
!222 = !{ptr @.str.39, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/quota/dquot.c", i32 2968, i32 9}
!224 = !{ptr @dquot_init.__key, !225, !"__key", i1 false, i1 false}
!225 = !{!"../fs/quota/dquot.c", i32 2971, i32 9}
!226 = !{ptr @.str.40, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/quota/dquot.c", i32 2973, i32 10}
!228 = !{ptr @.str.42, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/quota/dquot.c", i32 2985, i32 2}
!230 = !{ptr @dquot_init._entry.41, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @dquot_init._entry_ptr.43, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.44, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/quota/dquot.c", i32 2989, i32 9}
!234 = !{ptr @.str.45, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/quota/dquot.c", i32 2943, i32 15}
!236 = !{ptr @sys_table, !237, !"sys_table", i1 false, i1 false}
!237 = !{!"../fs/quota/dquot.c", i32 2941, i32 25}
!238 = !{ptr @.str.46, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../fs/quota/dquot.c", i32 2934, i32 15}
!240 = !{ptr @fs_table, !241, !"fs_table", i1 false, i1 false}
!241 = !{!"../fs/quota/dquot.c", i32 2932, i32 25}
!242 = !{ptr @.str.47, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/quota/dquot.c", i32 2865, i32 15}
!244 = !{ptr @.str.48, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../fs/quota/dquot.c", i32 2872, i32 15}
!246 = !{ptr @.str.49, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/quota/dquot.c", i32 2879, i32 15}
!248 = !{ptr @.str.50, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../fs/quota/dquot.c", i32 2886, i32 15}
!250 = !{ptr @.str.51, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/quota/dquot.c", i32 2893, i32 15}
!252 = !{ptr @.str.52, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../fs/quota/dquot.c", i32 2900, i32 15}
!254 = !{ptr @.str.53, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/quota/dquot.c", i32 2907, i32 15}
!256 = !{ptr @.str.54, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../fs/quota/dquot.c", i32 2914, i32 15}
!258 = !{ptr @.str.55, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/quota/dquot.c", i32 2922, i32 15}
!260 = !{ptr @fs_dqstats_table, !261, !"fs_dqstats_table", i1 false, i1 false}
!261 = !{!"../fs/quota/dquot.c", i32 2863, i32 25}
!262 = !{ptr @dqcache_shrinker, !263, !"dqcache_shrinker", i1 false, i1 false}
!263 = !{!"../fs/quota/dquot.c", i32 747, i32 24}
!264 = !{!"sp"}
!265 = !{i32 1, !"wchar_size", i32 2}
!266 = !{i32 1, !"min_enum_size", i32 4}
!267 = !{i32 8, !"branch-target-enforcement", i32 0}
!268 = !{i32 8, !"sign-return-address", i32 0}
!269 = !{i32 8, !"sign-return-address-all", i32 0}
!270 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!271 = !{i32 7, !"uwtable", i32 1}
!272 = !{i32 7, !"frame-pointer", i32 2}
!273 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!274 = !{!"auto-init"}
!275 = !{i64 2154684404}
!276 = !{i64 2154684696}
!277 = !{!"branch_weights", i32 2000, i32 1}
!278 = !{i64 2148290106, i64 2148290132, i64 2148290161, i64 2148290195, i64 2148290226, i64 2148290249}
!279 = !{i64 2154714935, i64 2154715416, i64 2154714972, i64 2154715028, i64 2154715062, i64 2154715086, i64 2154715127, i64 2154715148, i64 2154715176, i64 2154715210}
!280 = !{i64 2148292571, i64 2148292597, i64 2148292626, i64 2148292660, i64 2148292691, i64 2148292714}
!281 = !{i64 2154716815, i64 2154717296, i64 2154716852, i64 2154716908, i64 2154716942, i64 2154716966, i64 2154717007, i64 2154717028, i64 2154717056, i64 2154717090}
!282 = !{!"branch_weights", i32 1, i32 2000}
!283 = !{!284}
!284 = distinct !{!284, !285, !"make_kqid_invalid: %agg.result"}
!285 = distinct !{!285, !"make_kqid_invalid"}
!286 = !{i64 2152554495, i64 2152554981, i64 2152554532, i64 2152554588, i64 2152554622, i64 2152554646, i64 2152554687, i64 2152554708, i64 2152554736, i64 2152554770}
!287 = !{i64 2154721272}
!288 = !{i64 2154721604, i64 2154722085, i64 2154721641, i64 2154721697, i64 2154721731, i64 2154721755, i64 2154721796, i64 2154721817, i64 2154721845, i64 2154721879}
!289 = !{i64 2154742911, i64 2154743393, i64 2154742948, i64 2154743004, i64 2154743038, i64 2154743062, i64 2154743103, i64 2154743124, i64 2154743152, i64 2154743186}
!290 = !{i64 2154773503, i64 2154773985, i64 2154773540, i64 2154773596, i64 2154773630, i64 2154773654, i64 2154773695, i64 2154773716, i64 2154773744, i64 2154773778}
