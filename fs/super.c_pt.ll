; ModuleID = '/llk/IR_all_yes/fs/super.c_pt.bc'
source_filename = "../fs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+deactivate_locked_super\22, \22a\22\09"
module asm "\09.weak\09__crc_deactivate_locked_super\09\09\09\09"
module asm "\09.long\09__crc_deactivate_locked_super\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_deactivate_locked_super:\09\09\09\09\09"
module asm "\09.asciz \09\22deactivate_locked_super\22\09\09\09\09\09"
module asm "__kstrtabns_deactivate_locked_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+deactivate_super\22, \22a\22\09"
module asm "\09.weak\09__crc_deactivate_super\09\09\09\09"
module asm "\09.long\09__crc_deactivate_super\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_deactivate_super:\09\09\09\09\09"
module asm "\09.asciz \09\22deactivate_super\22\09\09\09\09\09"
module asm "__kstrtabns_deactivate_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_shutdown_super\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_shutdown_super\09\09\09\09"
module asm "\09.long\09__crc_generic_shutdown_super\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_shutdown_super:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_shutdown_super\22\09\09\09\09\09"
module asm "__kstrtabns_generic_shutdown_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sget_fc\22, \22a\22\09"
module asm "\09.weak\09__crc_sget_fc\09\09\09\09"
module asm "\09.long\09__crc_sget_fc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sget_fc:\09\09\09\09\09"
module asm "\09.asciz \09\22sget_fc\22\09\09\09\09\09"
module asm "__kstrtabns_sget_fc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sget\22, \22a\22\09"
module asm "\09.weak\09__crc_sget\09\09\09\09"
module asm "\09.long\09__crc_sget\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sget:\09\09\09\09\09"
module asm "\09.asciz \09\22sget\22\09\09\09\09\09"
module asm "__kstrtabns_sget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drop_super\22, \22a\22\09"
module asm "\09.weak\09__crc_drop_super\09\09\09\09"
module asm "\09.long\09__crc_drop_super\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drop_super:\09\09\09\09\09"
module asm "\09.asciz \09\22drop_super\22\09\09\09\09\09"
module asm "__kstrtabns_drop_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drop_super_exclusive\22, \22a\22\09"
module asm "\09.weak\09__crc_drop_super_exclusive\09\09\09\09"
module asm "\09.long\09__crc_drop_super_exclusive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drop_super_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22drop_super_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_drop_super_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iterate_supers_type\22, \22a\22\09"
module asm "\09.weak\09__crc_iterate_supers_type\09\09\09\09"
module asm "\09.long\09__crc_iterate_supers_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iterate_supers_type:\09\09\09\09\09"
module asm "\09.asciz \09\22iterate_supers_type\22\09\09\09\09\09"
module asm "__kstrtabns_iterate_supers_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_anon_bdev\22, \22a\22\09"
module asm "\09.weak\09__crc_get_anon_bdev\09\09\09\09"
module asm "\09.long\09__crc_get_anon_bdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_anon_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22get_anon_bdev\22\09\09\09\09\09"
module asm "__kstrtabns_get_anon_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+free_anon_bdev\22, \22a\22\09"
module asm "\09.weak\09__crc_free_anon_bdev\09\09\09\09"
module asm "\09.long\09__crc_free_anon_bdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_anon_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22free_anon_bdev\22\09\09\09\09\09"
module asm "__kstrtabns_free_anon_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_anon_super\22, \22a\22\09"
module asm "\09.weak\09__crc_set_anon_super\09\09\09\09"
module asm "\09.long\09__crc_set_anon_super\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_anon_super:\09\09\09\09\09"
module asm "\09.asciz \09\22set_anon_super\22\09\09\09\09\09"
module asm "__kstrtabns_set_anon_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kill_anon_super\22, \22a\22\09"
module asm "\09.weak\09__crc_kill_anon_super\09\09\09\09"
module asm "\09.long\09__crc_kill_anon_super\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_anon_super:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_anon_super\22\09\09\09\09\09"
module asm "__kstrtabns_kill_anon_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kill_litter_super\22, \22a\22\09"
module asm "\09.weak\09__crc_kill_litter_super\09\09\09\09"
module asm "\09.long\09__crc_kill_litter_super\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_litter_super:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_litter_super\22\09\09\09\09\09"
module asm "__kstrtabns_kill_litter_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_anon_super_fc\22, \22a\22\09"
module asm "\09.weak\09__crc_set_anon_super_fc\09\09\09\09"
module asm "\09.long\09__crc_set_anon_super_fc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_anon_super_fc:\09\09\09\09\09"
module asm "\09.asciz \09\22set_anon_super_fc\22\09\09\09\09\09"
module asm "__kstrtabns_set_anon_super_fc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_get_super\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_get_super\09\09\09\09"
module asm "\09.long\09__crc_vfs_get_super\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_get_super:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_get_super\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_get_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_tree_nodev\22, \22a\22\09"
module asm "\09.weak\09__crc_get_tree_nodev\09\09\09\09"
module asm "\09.long\09__crc_get_tree_nodev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_tree_nodev:\09\09\09\09\09"
module asm "\09.asciz \09\22get_tree_nodev\22\09\09\09\09\09"
module asm "__kstrtabns_get_tree_nodev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_tree_single\22, \22a\22\09"
module asm "\09.weak\09__crc_get_tree_single\09\09\09\09"
module asm "\09.long\09__crc_get_tree_single\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_tree_single:\09\09\09\09\09"
module asm "\09.asciz \09\22get_tree_single\22\09\09\09\09\09"
module asm "__kstrtabns_get_tree_single:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_tree_single_reconf\22, \22a\22\09"
module asm "\09.weak\09__crc_get_tree_single_reconf\09\09\09\09"
module asm "\09.long\09__crc_get_tree_single_reconf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_tree_single_reconf:\09\09\09\09\09"
module asm "\09.asciz \09\22get_tree_single_reconf\22\09\09\09\09\09"
module asm "__kstrtabns_get_tree_single_reconf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_tree_keyed\22, \22a\22\09"
module asm "\09.weak\09__crc_get_tree_keyed\09\09\09\09"
module asm "\09.long\09__crc_get_tree_keyed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_tree_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22get_tree_keyed\22\09\09\09\09\09"
module asm "__kstrtabns_get_tree_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_tree_bdev\22, \22a\22\09"
module asm "\09.weak\09__crc_get_tree_bdev\09\09\09\09"
module asm "\09.long\09__crc_get_tree_bdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_tree_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22get_tree_bdev\22\09\09\09\09\09"
module asm "__kstrtabns_get_tree_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mount_bdev\22, \22a\22\09"
module asm "\09.weak\09__crc_mount_bdev\09\09\09\09"
module asm "\09.long\09__crc_mount_bdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mount_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22mount_bdev\22\09\09\09\09\09"
module asm "__kstrtabns_mount_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kill_block_super\22, \22a\22\09"
module asm "\09.weak\09__crc_kill_block_super\09\09\09\09"
module asm "\09.long\09__crc_kill_block_super\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_block_super:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_block_super\22\09\09\09\09\09"
module asm "__kstrtabns_kill_block_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mount_nodev\22, \22a\22\09"
module asm "\09.weak\09__crc_mount_nodev\09\09\09\09"
module asm "\09.long\09__crc_mount_nodev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mount_nodev:\09\09\09\09\09"
module asm "\09.asciz \09\22mount_nodev\22\09\09\09\09\09"
module asm "__kstrtabns_mount_nodev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mount_single\22, \22a\22\09"
module asm "\09.weak\09__crc_mount_single\09\09\09\09"
module asm "\09.long\09__crc_mount_single\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mount_single:\09\09\09\09\09"
module asm "\09.asciz \09\22mount_single\22\09\09\09\09\09"
module asm "__kstrtabns_mount_single:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_get_tree\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_get_tree\09\09\09\09"
module asm "\09.long\09__crc_vfs_get_tree\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_get_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_get_tree\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_get_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+super_setup_bdi_name\22, \22a\22\09"
module asm "\09.weak\09__crc_super_setup_bdi_name\09\09\09\09"
module asm "\09.long\09__crc_super_setup_bdi_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_super_setup_bdi_name:\09\09\09\09\09"
module asm "\09.asciz \09\22super_setup_bdi_name\22\09\09\09\09\09"
module asm "__kstrtabns_super_setup_bdi_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+super_setup_bdi\22, \22a\22\09"
module asm "\09.weak\09__crc_super_setup_bdi\09\09\09\09"
module asm "\09.long\09__crc_super_setup_bdi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_super_setup_bdi:\09\09\09\09\09"
module asm "\09.asciz \09\22super_setup_bdi\22\09\09\09\09\09"
module asm "__kstrtabns_super_setup_bdi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+freeze_super\22, \22a\22\09"
module asm "\09.weak\09__crc_freeze_super\09\09\09\09"
module asm "\09.long\09__crc_freeze_super\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freeze_super:\09\09\09\09\09"
module asm "\09.asciz \09\22freeze_super\22\09\09\09\09\09"
module asm "__kstrtabns_freeze_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+thaw_super\22, \22a\22\09"
module asm "\09.weak\09__crc_thaw_super\09\09\09\09"
module asm "\09.long\09__crc_thaw_super\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thaw_super:\09\09\09\09\09"
module asm "\09.asciz \09\22thaw_super\22\09\09\09\09\09"
module asm "__kstrtabns_thaw_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.42 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.42 = type { %struct.work_struct }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.6 }
%union.anon.6 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.ida = type { %struct.xarray }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.60, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.60 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.75 = type { ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.__va_list = type { ptr }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@sb_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.2 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_deactivate_locked_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_deactivate_locked_super = external dso_local constant [0 x i8], align 1
@__ksymtab_deactivate_locked_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @deactivate_locked_super to i32), ptr @__kstrtab_deactivate_locked_super, ptr @__kstrtabns_deactivate_locked_super }, section "___ksymtab+deactivate_locked_super", align 4
@__kstrtab_deactivate_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_deactivate_super = external dso_local constant [0 x i8], align 1
@__ksymtab_deactivate_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @deactivate_super to i32), ptr @__kstrtab_deactivate_super, ptr @__kstrtabns_deactivate_super }, section "___ksymtab+deactivate_super", align 4
@generic_shutdown_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"VFS: Busy inodes after unmount of %s. Self-destruct in 5 seconds.  Have a nice day...\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"generic_shutdown_super\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fs/super.c\00", [21 x i8] zeroinitializer }, align 32
@generic_shutdown_super._entry_ptr = internal global ptr @generic_shutdown_super._entry, section ".printk_index", align 4
@noop_backing_dev_info = external dso_local global %struct.backing_dev_info, align 8
@__kstrtab_generic_shutdown_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_shutdown_super = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_shutdown_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_shutdown_super to i32), ptr @__kstrtab_generic_shutdown_super, ptr @__kstrtabns_generic_shutdown_super }, section "___ksymtab+generic_shutdown_super", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@super_blocks = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @super_blocks, ptr @super_blocks }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_sget_fc = external dso_local constant [0 x i8], align 1
@__kstrtabns_sget_fc = external dso_local constant [0 x i8], align 1
@__ksymtab_sget_fc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sget_fc to i32), ptr @__kstrtab_sget_fc, ptr @__kstrtabns_sget_fc }, section "___ksymtab+sget_fc", align 4
@__kstrtab_sget = external dso_local constant [0 x i8], align 1
@__kstrtabns_sget = external dso_local constant [0 x i8], align 1
@__ksymtab_sget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sget to i32), ptr @__kstrtab_sget, ptr @__kstrtabns_sget }, section "___ksymtab+sget", align 4
@__kstrtab_drop_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_drop_super = external dso_local constant [0 x i8], align 1
@__ksymtab_drop_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drop_super to i32), ptr @__kstrtab_drop_super, ptr @__kstrtabns_drop_super }, section "___ksymtab+drop_super", align 4
@__kstrtab_drop_super_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_drop_super_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_drop_super_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drop_super_exclusive to i32), ptr @__kstrtab_drop_super_exclusive, ptr @__kstrtabns_drop_super_exclusive }, section "___ksymtab+drop_super_exclusive", align 4
@__kstrtab_iterate_supers_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_iterate_supers_type = external dso_local constant [0 x i8], align 1
@__ksymtab_iterate_supers_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iterate_supers_type to i32), ptr @__kstrtab_iterate_supers_type, ptr @__kstrtabns_iterate_supers_type }, section "___ksymtab+iterate_supers_type", align 4
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"forced remount of a %s fs returned %i\0A\00", [57 x i8] zeroinitializer }, align 32
@emergency_remount.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(work_completion)(work)\00", [40 x i8] zeroinitializer }, align 32
@emergency_thaw_all.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@unnamed_dev_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.2 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_get_anon_bdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_anon_bdev = external dso_local constant [0 x i8], align 1
@__ksymtab_get_anon_bdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_anon_bdev to i32), ptr @__kstrtab_get_anon_bdev, ptr @__kstrtabns_get_anon_bdev }, section "___ksymtab+get_anon_bdev", align 4
@__kstrtab_free_anon_bdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_anon_bdev = external dso_local constant [0 x i8], align 1
@__ksymtab_free_anon_bdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_anon_bdev to i32), ptr @__kstrtab_free_anon_bdev, ptr @__kstrtabns_free_anon_bdev }, section "___ksymtab+free_anon_bdev", align 4
@__kstrtab_set_anon_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_anon_super = external dso_local constant [0 x i8], align 1
@__ksymtab_set_anon_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_anon_super to i32), ptr @__kstrtab_set_anon_super, ptr @__kstrtabns_set_anon_super }, section "___ksymtab+set_anon_super", align 4
@__kstrtab_kill_anon_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_anon_super = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_anon_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_anon_super to i32), ptr @__kstrtab_kill_anon_super, ptr @__kstrtabns_kill_anon_super }, section "___ksymtab+kill_anon_super", align 4
@__kstrtab_kill_litter_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_litter_super = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_litter_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_litter_super to i32), ptr @__kstrtab_kill_litter_super, ptr @__kstrtabns_kill_litter_super }, section "___ksymtab+kill_litter_super", align 4
@__kstrtab_set_anon_super_fc = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_anon_super_fc = external dso_local constant [0 x i8], align 1
@__ksymtab_set_anon_super_fc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_anon_super_fc to i32), ptr @__kstrtab_set_anon_super_fc, ptr @__kstrtabns_set_anon_super_fc }, section "___ksymtab+set_anon_super_fc", align 4
@__kstrtab_vfs_get_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_get_super = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_get_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_get_super to i32), ptr @__kstrtab_vfs_get_super, ptr @__kstrtabns_vfs_get_super }, section "___ksymtab+vfs_get_super", align 4
@__kstrtab_get_tree_nodev = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_tree_nodev = external dso_local constant [0 x i8], align 1
@__ksymtab_get_tree_nodev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_tree_nodev to i32), ptr @__kstrtab_get_tree_nodev, ptr @__kstrtabns_get_tree_nodev }, section "___ksymtab+get_tree_nodev", align 4
@__kstrtab_get_tree_single = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_tree_single = external dso_local constant [0 x i8], align 1
@__ksymtab_get_tree_single = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_tree_single to i32), ptr @__kstrtab_get_tree_single, ptr @__kstrtabns_get_tree_single }, section "___ksymtab+get_tree_single", align 4
@__kstrtab_get_tree_single_reconf = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_tree_single_reconf = external dso_local constant [0 x i8], align 1
@__ksymtab_get_tree_single_reconf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_tree_single_reconf to i32), ptr @__kstrtab_get_tree_single_reconf, ptr @__kstrtabns_get_tree_single_reconf }, section "___ksymtab+get_tree_single_reconf", align 4
@__kstrtab_get_tree_keyed = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_tree_keyed = external dso_local constant [0 x i8], align 1
@__ksymtab_get_tree_keyed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_tree_keyed to i32), ptr @__kstrtab_get_tree_keyed, ptr @__kstrtabns_get_tree_keyed }, section "___ksymtab+get_tree_keyed", align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No source specified\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Can't open blockdev\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%pg: Can't mount, blockdev is frozen\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%pg: Can't mount, would change RO state\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pg\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_get_tree_bdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_tree_bdev = external dso_local constant [0 x i8], align 1
@__ksymtab_get_tree_bdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_tree_bdev to i32), ptr @__kstrtab_get_tree_bdev, ptr @__kstrtabns_get_tree_bdev }, section "___ksymtab+get_tree_bdev", align 4
@__kstrtab_mount_bdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_mount_bdev = external dso_local constant [0 x i8], align 1
@__ksymtab_mount_bdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mount_bdev to i32), ptr @__kstrtab_mount_bdev, ptr @__kstrtabns_mount_bdev }, section "___ksymtab+mount_bdev", align 4
@kill_block_super.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kill_block_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_block_super = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_block_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_block_super to i32), ptr @__kstrtab_kill_block_super, ptr @__kstrtabns_kill_block_super }, section "___ksymtab+kill_block_super", align 4
@__kstrtab_mount_nodev = external dso_local constant [0 x i8], align 1
@__kstrtabns_mount_nodev = external dso_local constant [0 x i8], align 1
@__ksymtab_mount_nodev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mount_nodev to i32), ptr @__kstrtab_mount_nodev, ptr @__kstrtabns_mount_nodev }, section "___ksymtab+mount_nodev", align 4
@__kstrtab_mount_single = external dso_local constant [0 x i8], align 1
@__kstrtabns_mount_single = external dso_local constant [0 x i8], align 1
@__ksymtab_mount_single = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mount_single to i32), ptr @__kstrtab_mount_single, ptr @__kstrtabns_mount_single }, section "___ksymtab+mount_single", align 4
@vfs_get_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Filesystem %s get_tree() didn't set fc->root\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vfs_get_tree\00", [19 x i8] zeroinitializer }, align 32
@vfs_get_tree._entry_ptr = internal global ptr @vfs_get_tree._entry, section ".printk_index", align 4
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s set sb->s_maxbytes to negative value (%lld)\0A\00", [48 x i8] zeroinitializer }, align 32
@__kstrtab_vfs_get_tree = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_get_tree = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_get_tree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_get_tree to i32), ptr @__kstrtab_vfs_get_tree, ptr @__kstrtabns_vfs_get_tree }, section "___ksymtab+vfs_get_tree", align 4
@__kstrtab_super_setup_bdi_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_super_setup_bdi_name = external dso_local constant [0 x i8], align 1
@__ksymtab_super_setup_bdi_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @super_setup_bdi_name to i32), ptr @__kstrtab_super_setup_bdi_name, ptr @__kstrtabns_super_setup_bdi_name }, section "___ksymtab+super_setup_bdi_name", align 4
@super_setup_bdi.bdi_seq = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%.28s-%ld\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_super_setup_bdi = external dso_local constant [0 x i8], align 1
@__kstrtabns_super_setup_bdi = external dso_local constant [0 x i8], align 1
@__ksymtab_super_setup_bdi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @super_setup_bdi to i32), ptr @__kstrtab_super_setup_bdi, ptr @__kstrtabns_super_setup_bdi }, section "___ksymtab+super_setup_bdi", align 4
@freeze_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013VFS:Filesystem freeze failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"freeze_super\00", [19 x i8] zeroinitializer }, align 32
@freeze_super._entry_ptr = internal global ptr @freeze_super._entry, section ".printk_index", align 4
@__kstrtab_freeze_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_freeze_super = external dso_local constant [0 x i8], align 1
@__ksymtab_freeze_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freeze_super to i32), ptr @__kstrtab_freeze_super, ptr @__kstrtabns_freeze_super }, section "___ksymtab+freeze_super", align 4
@__kstrtab_thaw_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_thaw_super = external dso_local constant [0 x i8], align 1
@__ksymtab_thaw_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thaw_super to i32), ptr @__kstrtab_thaw_super, ptr @__kstrtabns_thaw_super }, section "___ksymtab+thaw_super", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sb_lock\00", [24 x i8] zeroinitializer }, align 32
@destroy_super_rcu.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&s->destroy_work)\00", [60 x i8] zeroinitializer }, align 32
@alloc_super.default_op = internal constant { %struct.super_operations, [60 x i8] } zeroinitializer, align 32
@alloc_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&s->s_umount\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&type->s_umount_key\00", [44 x i8] zeroinitializer }, align 32
@alloc_super.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&s->s_writers.wait_unfrozen\00", [36 x i8] zeroinitializer }, align 32
@alloc_super.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&s->s_sync_lock\00", [16 x i8] zeroinitializer }, align 32
@alloc_super.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&s->s_inode_list_lock\00", [42 x i8] zeroinitializer }, align 32
@alloc_super.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&s->s_inode_wblist_lock\00", [40 x i8] zeroinitializer }, align 32
@alloc_super.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&s->s_vfs_rename_mutex\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&type->s_vfs_rename_key\00", [40 x i8] zeroinitializer }, align 32
@alloc_super.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&s->s_dquot.dqio_sem\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sb_writers\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sb_pagefaults\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sb_internal\00", [20 x i8] zeroinitializer }, align 32
@sysctl_vfs_cache_pressure = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@do_emergency_remount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Emergency Remount complete\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"do_emergency_remount\00", [43 x i8] zeroinitializer }, align 32
@do_emergency_remount._entry_ptr = internal global ptr @do_emergency_remount._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@do_thaw_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014Emergency Thaw complete\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_thaw_all\00", [20 x i8] zeroinitializer }, align 32
@do_thaw_all._entry_ptr = internal global ptr @do_thaw_all._entry, section ".printk_index", align 4
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unnamed_dev_ida.xa_lock\00", [40 x i8] zeroinitializer }, align 32
@thaw_super_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013VFS:Filesystem thaw failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"thaw_super_locked\00", [46 x i8] zeroinitializer }, align 32
@thaw_super_locked._entry_ptr = internal global ptr @thaw_super_locked._entry, section ".printk_index", align 4
@switch.table.vfs_get_super = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @test_single_super, ptr @test_single_super, ptr @test_keyed_super, ptr null], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.43 = private unnamed_addr constant [8 x i8] c"sb_lock\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 465, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"super_blocks\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 44, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 910, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 969, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1003, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"unnamed_dev_ida\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1240, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1244, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1255, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1272, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1290, i32 38 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1502, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1534, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [8 x i8] c"bdi_seq\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1576, i32 23 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1578, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1708, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 45, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 170, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [11 x i8] c"default_op\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 203, i32 39 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 211, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 212, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 239, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 246, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 248, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 250, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 254, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 255, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 256, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 48, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 49, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 50, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 960, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 989, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1008, i32 8 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [14 x i8] c"../fs/super.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1747, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant [27 x i8] c"switch.table.vfs_get_super\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @__ksymtab_deactivate_locked_super, ptr @__ksymtab_deactivate_super, ptr @__ksymtab_drop_super, ptr @__ksymtab_drop_super_exclusive, ptr @__ksymtab_free_anon_bdev, ptr @__ksymtab_freeze_super, ptr @__ksymtab_generic_shutdown_super, ptr @__ksymtab_get_anon_bdev, ptr @__ksymtab_get_tree_bdev, ptr @__ksymtab_get_tree_keyed, ptr @__ksymtab_get_tree_nodev, ptr @__ksymtab_get_tree_single, ptr @__ksymtab_get_tree_single_reconf, ptr @__ksymtab_iterate_supers_type, ptr @__ksymtab_kill_anon_super, ptr @__ksymtab_kill_block_super, ptr @__ksymtab_kill_litter_super, ptr @__ksymtab_mount_bdev, ptr @__ksymtab_mount_nodev, ptr @__ksymtab_mount_single, ptr @__ksymtab_set_anon_super, ptr @__ksymtab_set_anon_super_fc, ptr @__ksymtab_sget, ptr @__ksymtab_sget_fc, ptr @__ksymtab_super_setup_bdi, ptr @__ksymtab_super_setup_bdi_name, ptr @__ksymtab_thaw_super, ptr @__ksymtab_vfs_get_super, ptr @__ksymtab_vfs_get_tree, ptr @do_emergency_remount._entry, ptr @do_emergency_remount._entry_ptr, ptr @do_thaw_all._entry, ptr @do_thaw_all._entry_ptr, ptr @freeze_super._entry, ptr @freeze_super._entry_ptr, ptr @generic_shutdown_super._entry, ptr @generic_shutdown_super._entry_ptr, ptr @thaw_super_locked._entry, ptr @thaw_super_locked._entry_ptr, ptr @vfs_get_tree._entry, ptr @vfs_get_tree._entry_ptr, ptr @sb_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @super_blocks, ptr @.str.3, ptr @emergency_remount.__key, ptr @.str.4, ptr @emergency_thaw_all.__key, ptr @unnamed_dev_ida, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @super_setup_bdi.bdi_seq, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @destroy_super_rcu.__key, ptr @.str.17, ptr @alloc_super.default_op, ptr @alloc_super.__key, ptr @.str.18, ptr @.str.19, ptr @alloc_super.__key.20, ptr @.str.21, ptr @alloc_super.__key.22, ptr @.str.23, ptr @alloc_super.__key.24, ptr @.str.25, ptr @alloc_super.__key.26, ptr @.str.27, ptr @alloc_super.__key.28, ptr @.str.29, ptr @.str.30, ptr @alloc_super.__key.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @switch.table.vfs_get_super], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sb_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_shutdown_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_blocks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emergency_remount.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emergency_thaw_all.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unnamed_dev_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfs_get_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @super_setup_bdi.bdi_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freeze_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @destroy_super_rcu.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_super.default_op to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_super.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_super.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_super.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_super.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_super.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_super.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_emergency_remount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_thaw_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thaw_super_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfs_get_super to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_super(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  tail call fastcc void @__put_super(ptr noundef %sb)
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__put_super(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_count = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 15
  %0 = ptrtoint ptr %s_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %s_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end87_crit_edge

entry.if.end87_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %s) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %s, ptr %s, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %s, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %s, ptr %prev.i3.i, align 4
  %s_dentry_lru = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 54
  %10 = ptrtoint ptr %s_dentry_lru to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_dentry_lru, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %list_del_init.exit.if.end_crit_edge, label %do.end, !prof !172

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 290, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %list_del_init.exit.if.end_crit_edge
  %s_inode_lru = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 55
  %12 = ptrtoint ptr %s_inode_lru to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_inode_lru, align 64
  %tobool24.not = icmp eq ptr %13, null
  br i1 %tobool24.not, label %if.end.if.end46_crit_edge, label %do.end40, !prof !172

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

do.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 291, i32 noundef 9, ptr noundef null) #12
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %if.end.if.end46_crit_edge
  %s_mounts = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 25
  %14 = ptrtoint ptr %s_mounts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %s_mounts, align 4
  %cmp.i.not = icmp eq ptr %15, %s_mounts
  br i1 %cmp.i.not, label %if.end46.if.end79_crit_edge, label %do.end73, !prof !172

if.end46.if.end79_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

do.end73:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 292, i32 noundef 9, ptr noundef null) #12
  br label %if.end79

if.end79:                                         ; preds = %do.end73, %if.end46.if.end79_crit_edge
  tail call void @security_sb_free(ptr noundef %s) #12
  tail call void @fscrypt_sb_free(ptr noundef %s) #12
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 53
  %16 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_user_ns, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end79.put_user_ns.exit_crit_edge, label %land.lhs.true.i

if.end79.put_user_ns.exit_crit_edge:              ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %if.end79
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %17, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !172

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #12
  br label %put_user_ns.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void @__put_user_ns(ptr noundef nonnull %17) #12
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %if.end79.put_user_ns.exit_crit_edge
  %s_subtype = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 44
  %19 = ptrtoint ptr %s_subtype to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_subtype, align 4
  tail call void @kfree(ptr noundef %20) #12
  %rcu = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 56
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @destroy_super_rcu) #12
  br label %if.end87

if.end87:                                         ; preds = %put_user_ns.exit, %entry.if.end87_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @deactivate_locked_super(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_type = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 5
  %0 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_type, align 32
  %s_active = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_active, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %s_active, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_active, ptr %s_active, i32 1, ptr elementtype(i32) %s_active) #12, !srcloc !177
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %s_shrink = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 46
  tail call void @unregister_shrinker(ptr noundef %s_shrink) #12
  %kill_sb = getelementptr inbounds %struct.file_system_type, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %kill_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kill_sb, align 4
  tail call void %4(ptr noundef %s) #12
  %s_dentry_lru = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 54
  tail call void @list_lru_destroy(ptr noundef %s_dentry_lru) #12
  %s_inode_lru = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 55
  tail call void @list_lru_destroy(ptr noundef %s_inode_lru) #12
  tail call void @put_filesystem(ptr noundef %1) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  tail call fastcc void @__put_super(ptr noundef %s) #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %s_umount = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 14
  tail call void @up_write(ptr noundef %s_umount) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @deactivate_super(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_active = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_active, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %s_active, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %s_active, ptr %s_active, i32 1, i32 -1, ptr elementtype(i32) %s_active) #12, !srcloc !180
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.then, label %atomic_add_unless.exit.thread

atomic_add_unless.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %s_umount = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 14
  tail call void @down_write(ptr noundef %s_umount) #12
  tail call void @deactivate_locked_super(ptr noundef %s)
  br label %if.end

if.end:                                           ; preds = %if.then, %atomic_add_unless.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @trylock_super(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  %call = tail call i32 @down_read_trylock(ptr noundef %s_umount) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry
  %pprev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 29, i32 1
  %0 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %2 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_root, align 64
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %and = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true4.if.end_crit_edge, label %land.lhs.true4.return_crit_edge

land.lhs.true4.return_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @up_read(ptr noundef %s_umount) #12
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true4.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %land.lhs.true4.return_crit_edge ], [ false, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @generic_shutdown_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %0 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_op, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %2 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_root, align 64
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %entry
  tail call void @shrink_dcache_for_umount(ptr noundef %sb) #12
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #12
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %and = and i32 %5, -1073741825
  store i32 %and, ptr %s_flags, align 4
  tail call void @cgroup_writeback_umount() #12
  tail call void @evict_inodes(ptr noundef %sb) #12
  tail call void @fsnotify_sb_delete(ptr noundef %sb) #12
  tail call void @security_sb_delete(ptr noundef %sb) #12
  %s_dio_done_wq = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 51
  %6 = ptrtoint ptr %s_dio_done_wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_dio_done_wq, align 32
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @destroy_workqueue(ptr noundef nonnull %7) #12
  %8 = ptrtoint ptr %s_dio_done_wq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %s_dio_done_wq, align 32
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %put_super = getelementptr inbounds %struct.super_operations, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %put_super to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %put_super, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %10(ptr noundef %sb) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %s_inodes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 62
  %11 = ptrtoint ptr %s_inodes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %s_inodes, align 4
  %cmp.i.not = icmp eq ptr %12, %s_inodes
  br i1 %cmp.i.not, label %if.end8.if.end14_crit_edge, label %do.end

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %s_id) #15
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.end8.if.end14_crit_edge, %entry.if.end14_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  %s_instances = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 29
  %pprev.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 29, i32 1
  %13 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.not.i, label %if.end14.hlist_del_init.exit_crit_edge, label %if.then.i

if.end14.hlist_del_init.exit_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %if.end14
  %15 = ptrtoint ptr %s_instances to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_instances, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %14, align 4
  %tobool.not.i3.i = icmp eq ptr %16, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %14, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %19 = ptrtoint ptr %s_instances to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %s_instances, align 4
  %20 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %if.end14.hlist_del_init.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  tail call void @up_write(ptr noundef %s_umount) #12
  %s_bdi = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 27
  %21 = ptrtoint ptr %s_bdi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_bdi, align 8
  %cmp.not = icmp eq ptr %22, @noop_backing_dev_info
  br i1 %cmp.not, label %hlist_del_init.exit.if.end23_crit_edge, label %if.then15

hlist_del_init.exit.if.end23_crit_edge:           ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then15:                                        ; preds = %hlist_del_init.exit
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 11
  %23 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_iflags, align 8
  %and16 = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then15.if.end20_crit_edge, label %if.then18

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bdi_unregister(ptr noundef %22) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then15.if.end20_crit_edge
  %25 = ptrtoint ptr %s_bdi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_bdi, align 8
  tail call void @bdi_put(ptr noundef %26) #12
  %27 = ptrtoint ptr %s_bdi to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @noop_backing_dev_info, ptr %s_bdi, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %hlist_del_init.exit.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_for_umount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_writeback_umount() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evict_inodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_sb_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sb_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mount_capable(ptr nocapture noundef readonly %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_type = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 2
  %0 = ptrtoint ptr %fs_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_type, align 4
  %fs_flags = getelementptr inbounds %struct.file_system_type, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fs_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fs_flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call zeroext i1 @capable(i32 noundef 21) #12
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %user_ns = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 6
  %4 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns, align 4
  %call1 = tail call zeroext i1 @ns_capable(ptr noundef %5, i32 noundef 21) #12
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i1 [ %call1, %if.else ], [ %call, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sget_fc(ptr noundef %fc, ptr noundef readonly %test, ptr nocapture noundef readonly %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %global = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 17
  %0 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %global, align 4
  %1 = and i32 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %bf.cast.not = icmp eq i32 %1, 0
  br i1 %bf.cast.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %user_ns1 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 6
  %2 = ptrtoint ptr %user_ns1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ns1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.false ], [ @init_user_ns, %entry.cond.end_crit_edge ]
  %tobool.not = icmp eq ptr %test, null
  %fs_type = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 2
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  br label %retry.outer

retry.outer:                                      ; preds = %if.then23.retry.outer_crit_edge, %cond.end
  %s.0.ph = phi ptr [ %call25, %if.then23.retry.outer_crit_edge ], [ null, %cond.end ]
  br label %retry

retry:                                            ; preds = %if.end50.retry_crit_edge, %retry.outer
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  br i1 %tobool.not, label %retry.if.end21_crit_edge, label %if.then

retry.if.end21_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then:                                          ; preds = %retry
  %4 = ptrtoint ptr %fs_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_type, align 4
  %fs_supers = getelementptr inbounds %struct.file_system_type, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %fs_supers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_supers, align 4
  %tobool2.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -224
  %tobool8.not105113 = icmp eq ptr %add.ptr, null
  %tobool8.not105 = or i1 %tobool2.not, %tobool8.not105113
  br i1 %tobool8.not105, label %if.then.if.end21_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %old.0106 = phi ptr [ %add.ptr17, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.then.for.body_crit_edge ]
  %call = tail call i32 %test(ptr noundef nonnull %old.0106, ptr noundef %fc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %for.inc, label %share_extant_sb

for.inc:                                          ; preds = %for.body
  %s_instances = getelementptr inbounds %struct.super_block, ptr %old.0106, i32 0, i32 29
  %8 = ptrtoint ptr %s_instances to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_instances, align 32
  %tobool13.not = icmp eq ptr %9, null
  %add.ptr17 = getelementptr i8, ptr %9, i32 -224
  %tobool8.not120 = icmp eq ptr %add.ptr17, null
  %tobool8.not = or i1 %tobool13.not, %tobool8.not120
  br i1 %tobool8.not, label %for.inc.if.end21_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end21_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %for.inc.if.end21_crit_edge, %if.then.if.end21_crit_edge, %retry.if.end21_crit_edge
  %tobool22.not = icmp eq ptr %s.0.ph, null
  br i1 %tobool22.not, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end21
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  %10 = ptrtoint ptr %fs_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs_type, align 4
  %12 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_flags, align 4
  %call25 = tail call fastcc ptr @alloc_super(ptr noundef %11, i32 noundef %13, ptr noundef %cond)
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then23.cleanup_crit_edge, label %if.then23.retry.outer_crit_edge

if.then23.retry.outer_crit_edge:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry.outer

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %14 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info, align 4
  %s_fs_info31 = getelementptr inbounds %struct.super_block, ptr %s.0.ph, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info31 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %s_fs_info31, align 16
  %call32 = tail call i32 %set(ptr noundef nonnull %s.0.ph, ptr noundef %fc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %s_fs_info31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %s_fs_info31, align 16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  tail call fastcc void @destroy_unused_super(ptr noundef nonnull %s.0.ph)
  %18 = inttoptr i32 %call32 to ptr
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %19 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %s_fs_info, align 4
  %20 = ptrtoint ptr %fs_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs_type, align 4
  %s_type = getelementptr inbounds %struct.super_block, ptr %s.0.ph, i32 0, i32 5
  %22 = ptrtoint ptr %s_type to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %s_type, align 32
  %s_iflags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 15
  %23 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_iflags, align 4
  %s_iflags40 = getelementptr inbounds %struct.super_block, ptr %s.0.ph, i32 0, i32 11
  %25 = ptrtoint ptr %s_iflags40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_iflags40, align 8
  %or = or i32 %26, %24
  store i32 %or, ptr %s_iflags40, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %s.0.ph, i32 0, i32 39
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %21, align 4
  %call42 = tail call i32 @strlcpy(ptr noundef %s_id, ptr noundef %28, i32 noundef 32) #12
  %29 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @super_blocks, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %s.0.ph, ptr noundef %29, ptr noundef nonnull @super_blocks) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end37.list_add_tail.exit_crit_edge

if.end37.list_add_tail.exit_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %s.0.ph, ptr getelementptr inbounds (%struct.list_head, ptr @super_blocks, i32 0, i32 1), align 4
  %30 = ptrtoint ptr %s.0.ph to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @super_blocks, ptr %s.0.ph, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %s.0.ph, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %s.0.ph, ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end37.list_add_tail.exit_crit_edge
  %s_instances43 = getelementptr inbounds %struct.super_block, ptr %s.0.ph, i32 0, i32 29
  %33 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_type, align 32
  %fs_supers45 = getelementptr inbounds %struct.file_system_type, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %fs_supers45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fs_supers45, align 4
  %37 = ptrtoint ptr %s_instances43 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %36, ptr %s_instances43, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %list_add_tail.exit.hlist_add_head.exit_crit_edge, label %do.body12.i

list_add_tail.exit.hlist_add_head.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %s_instances43, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %list_add_tail.exit.hlist_add_head.exit_crit_edge
  %39 = ptrtoint ptr %fs_supers45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %s_instances43, ptr %fs_supers45, align 4
  %pprev34.i = getelementptr inbounds %struct.super_block, ptr %s.0.ph, i32 0, i32 29, i32 1
  %40 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %fs_supers45, ptr %pprev34.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  %41 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_type, align 32
  %call47 = tail call ptr @get_filesystem(ptr noundef %42) #12
  %s_shrink = getelementptr inbounds %struct.super_block, ptr %s.0.ph, i32 0, i32 46
  tail call void @register_shrinker_prepared(ptr noundef %s_shrink) #12
  br label %cleanup

share_extant_sb:                                  ; preds = %for.body
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %old.0106, i32 0, i32 53
  %43 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_user_ns, align 8
  %cmp.not = icmp eq ptr %cond, %44
  br i1 %cmp.not, label %if.end50, label %if.then48

if.then48:                                        ; preds = %share_extant_sb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  tail call fastcc void @destroy_unused_super(ptr noundef %s.0.ph)
  br label %cleanup

if.end50:                                         ; preds = %share_extant_sb
  %call51 = tail call fastcc i32 @grab_super(ptr noundef nonnull %old.0106)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end50.retry_crit_edge, label %if.end54

if.end50.retry_crit_edge:                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry

if.end54:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @destroy_unused_super(ptr noundef %s.0.ph)
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then48, %hlist_add_head.exit, %if.then34, %if.then23.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %if.then48 ], [ %old.0106, %if.end54 ], [ %18, %if.then34 ], [ %s.0.ph, %hlist_add_head.exit ], [ inttoptr (i32 -12 to ptr), %if.then23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_super(ptr noundef %type, i32 noundef %flags, ptr noundef %user_ns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 1052096, i32 noundef 1664) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_mounts = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 25
  %1 = ptrtoint ptr %s_mounts to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %s_mounts, ptr %s_mounts, align 4
  %prev.i = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 25, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %s_mounts, ptr %prev.i, align 8
  %tobool.not.i = icmp eq ptr %user_ns, null
  br i1 %tobool.not.i, label %if.end.get_user_ns.exit_crit_edge, label %if.then.i

if.end.get_user_ns.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_user_ns.exit

if.then.i:                                        ; preds = %if.end
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %user_ns, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !182
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !183

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !172

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_user_ns.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #12
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_user_ns.exit_crit_edge, %if.end.get_user_ns.exit_crit_edge
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 53
  %5 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %user_ns, ptr %s_user_ns, align 8
  %s_umount = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_rwsem(ptr noundef %s_umount, ptr noundef nonnull @.str.18, ptr noundef nonnull @alloc_super.__key) #12
  %dep_map = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 14, i32 6
  %s_umount_key = getelementptr inbounds %struct.file_system_type, ptr %type, i32 0, i32 10
  %wait_type_inner = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 14, i32 6, i32 4
  %6 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.19, ptr noundef %s_umount_key, i32 noundef 0, i8 noundef zeroext %7, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  tail call void @down_write_nested(ptr noundef %s_umount, i32 noundef 1) #12
  %call8 = tail call i32 @security_sb_alloc(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.body.preheader, label %get_user_ns.exit.fail_crit_edge

get_user_ns.exit.fail_crit_edge:                  ; preds = %get_user_ns.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

for.body.preheader:                               ; preds = %get_user_ns.exit
  %arrayidx = getelementptr %struct.super_block, ptr %call7.i.i, i32 0, i32 32, i32 2, i32 0
  %arrayidx13 = getelementptr %struct.file_system_type, ptr %type, i32 0, i32 12, i32 0
  %call14 = tail call i32 @__percpu_init_rwsem(ptr noundef %arrayidx, ptr noundef nonnull @.str.33, ptr noundef %arrayidx13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond, label %for.body.preheader.fail_crit_edge

for.body.preheader.fail_crit_edge:                ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.super_block, ptr %call7.i.i, i32 0, i32 32, i32 2, i32 1
  %arrayidx13.1 = getelementptr %struct.file_system_type, ptr %type, i32 0, i32 12, i32 1
  %call14.1 = tail call i32 @__percpu_init_rwsem(ptr noundef %arrayidx.1, ptr noundef nonnull @.str.34, ptr noundef %arrayidx13.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1)
  %tobool15.not.1 = icmp eq i32 %call14.1, 0
  br i1 %tobool15.not.1, label %for.cond.1, label %for.cond.fail_crit_edge

for.cond.fail_crit_edge:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.super_block, ptr %call7.i.i, i32 0, i32 32, i32 2, i32 2
  %arrayidx13.2 = getelementptr %struct.file_system_type, ptr %type, i32 0, i32 12, i32 2
  %call14.2 = tail call i32 @__percpu_init_rwsem(ptr noundef %arrayidx.2, ptr noundef nonnull @.str.35, ptr noundef %arrayidx13.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.2)
  %tobool15.not.2 = icmp eq i32 %call14.2, 0
  br i1 %tobool15.not.2, label %for.cond.2, label %for.cond.1.fail_crit_edge

for.cond.1.fail_crit_edge:                        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

for.cond.2:                                       ; preds = %for.cond.1
  %wait_unfrozen = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 32, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wait_unfrozen, ptr noundef nonnull @.str.21, ptr noundef nonnull @alloc_super.__key.20) #12
  %s_bdi = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 27
  %8 = ptrtoint ptr %s_bdi to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @noop_backing_dev_info, ptr %s_bdi, align 8
  %s_flags = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %s_flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %flags, ptr %s_flags, align 4
  %10 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_user_ns, align 8
  %cmp23.not = icmp eq ptr %11, @init_user_ns
  br i1 %cmp23.not, label %for.cond.2.if.end25_crit_edge, label %if.then24

for.cond.2.if.end25_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then24:                                        ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 11
  %12 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_iflags, align 8
  %or = or i32 %13, 4
  store i32 %or, ptr %s_iflags, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %for.cond.2.if.end25_crit_edge
  %s_instances = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 29
  %14 = ptrtoint ptr %s_instances to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %s_instances, align 8
  %pprev.i = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 29, i32 1
  %15 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pprev.i, align 4
  %s_roots = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 24
  %16 = ptrtoint ptr %s_roots to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %s_roots, align 8
  %s_sync_lock = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 58
  tail call void @__mutex_init(ptr noundef %s_sync_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @alloc_super.__key.22) #12
  %s_inodes = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 62
  %17 = ptrtoint ptr %s_inodes to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %s_inodes, ptr %s_inodes, align 4
  %prev.i123 = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 62, i32 1
  %18 = ptrtoint ptr %prev.i123 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %s_inodes, ptr %prev.i123, align 8
  %s_inode_list_lock = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 61
  tail call void @__raw_spin_lock_init(ptr noundef %s_inode_list_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @alloc_super.__key.24, i16 noundef signext 3) #12
  %s_inodes_wb = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 64
  %19 = ptrtoint ptr %s_inodes_wb to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %s_inodes_wb, ptr %s_inodes_wb, align 8
  %prev.i124 = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 64, i32 1
  %20 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %s_inodes_wb, ptr %prev.i124, align 4
  %s_inode_wblist_lock = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 63
  tail call void @__raw_spin_lock_init(ptr noundef %s_inode_wblist_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @alloc_super.__key.26, i16 noundef signext 3) #12
  %s_count = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 15
  %21 = ptrtoint ptr %s_count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %s_count, align 4
  %s_active = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_active, i32 noundef 4) #12
  %22 = ptrtoint ptr %s_active to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %s_active, align 8
  %s_vfs_rename_mutex = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 43
  tail call void @__mutex_init(ptr noundef %s_vfs_rename_mutex, ptr noundef nonnull @.str.29, ptr noundef nonnull @alloc_super.__key.28) #12
  %dep_map41 = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 43, i32 5
  %s_vfs_rename_key = getelementptr inbounds %struct.file_system_type, ptr %type, i32 0, i32 11
  %wait_type_inner44 = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 43, i32 5, i32 4
  %23 = ptrtoint ptr %wait_type_inner44 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %wait_type_inner44, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map41, ptr noundef nonnull @.str.30, ptr noundef %s_vfs_rename_key, i32 noundef 0, i8 noundef zeroext %24, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %dqio_sem = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 31, i32 1
  tail call void @__init_rwsem(ptr noundef %dqio_sem, ptr noundef nonnull @.str.32, ptr noundef nonnull @alloc_super.__key.31) #12
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 2147483647, ptr %s_maxbytes, align 8
  %s_op = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @alloc_super.default_op, ptr %s_op, align 4
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 34
  %27 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1000000000, ptr %s_time_gran, align 4
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 35
  %28 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -9223372036854775808, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 36
  %29 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 9223372036854775807, ptr %s_time_max, align 64
  %s_shrink = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 46
  %seeks = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 46, i32 3
  %30 = ptrtoint ptr %seeks to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %seeks, align 8
  %scan_objects = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 46, i32 1
  %31 = ptrtoint ptr %scan_objects to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @super_cache_scan, ptr %scan_objects, align 8
  %32 = ptrtoint ptr %s_shrink to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @super_cache_count, ptr %s_shrink, align 4
  %batch = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 46, i32 2
  %33 = ptrtoint ptr %batch to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1024, ptr %batch, align 4
  %flags55 = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 46, i32 4
  %34 = ptrtoint ptr %flags55 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 6, ptr %flags55, align 4
  %call57 = tail call i32 @prealloc_shrinker(ptr noundef %s_shrink) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end25.fail_crit_edge

if.end25.fail_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end60:                                         ; preds = %if.end25
  %s_dentry_lru = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 54
  %call62 = tail call i32 @__list_lru_init(ptr noundef %s_dentry_lru, i1 noundef zeroext true, ptr noundef null, ptr noundef %s_shrink) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end60.fail_crit_edge

if.end60.fail_crit_edge:                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end65:                                         ; preds = %if.end60
  %s_inode_lru = getelementptr inbounds %struct.super_block, ptr %call7.i.i, i32 0, i32 55
  %call67 = tail call i32 @__list_lru_init(ptr noundef %s_inode_lru, i1 noundef zeroext true, ptr noundef null, ptr noundef %s_shrink) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end65.cleanup_crit_edge, label %if.end65.fail_crit_edge

if.end65.fail_crit_edge:                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

fail:                                             ; preds = %if.end65.fail_crit_edge, %if.end60.fail_crit_edge, %if.end25.fail_crit_edge, %for.cond.1.fail_crit_edge, %for.cond.fail_crit_edge, %for.body.preheader.fail_crit_edge, %get_user_ns.exit.fail_crit_edge
  tail call fastcc void @destroy_unused_super(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end65.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end65.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_unused_super(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %s_umount = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 14
  tail call void @up_write(ptr noundef %s_umount) #12
  %s_dentry_lru = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 54
  tail call void @list_lru_destroy(ptr noundef %s_dentry_lru) #12
  %s_inode_lru = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 55
  tail call void @list_lru_destroy(ptr noundef %s_inode_lru) #12
  tail call void @security_sb_free(ptr noundef nonnull %s) #12
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 53
  %0 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_user_ns, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.put_user_ns.exit_crit_edge, label %land.lhs.true.i

if.end.put_user_ns.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %if.end
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !172

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #12
  br label %put_user_ns.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void @__put_user_ns(ptr noundef nonnull %1) #12
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %if.end.put_user_ns.exit_crit_edge
  %s_subtype = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 44
  %3 = ptrtoint ptr %s_subtype to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_subtype, align 4
  tail call void @kfree(ptr noundef %4) #12
  %s_shrink = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 46
  tail call void @free_prealloced_shrinker(ptr noundef %s_shrink) #12
  %rw_sem.i = getelementptr %struct.super_block, ptr %s, i32 0, i32 32, i32 2
  tail call void @percpu_free_rwsem(ptr noundef %rw_sem.i) #12
  %arrayidx.1.i = getelementptr %struct.super_block, ptr %s, i32 0, i32 32, i32 2, i32 1
  tail call void @percpu_free_rwsem(ptr noundef %arrayidx.1.i) #12
  %arrayidx.2.i = getelementptr %struct.super_block, ptr %s, i32 0, i32 32, i32 2, i32 2
  tail call void @percpu_free_rwsem(ptr noundef %arrayidx.2.i) #12
  tail call void @kfree(ptr noundef nonnull %s) #12
  br label %return

return:                                           ; preds = %put_user_ns.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_shrinker_prepared(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @grab_super(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_count = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 15
  %0 = ptrtoint ptr %s_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %s_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  %s_umount = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 14
  tail call void @down_write(ptr noundef %s_umount) #12
  %s_flags = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %and = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %s_active = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_active, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %s_active, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %s_active, ptr %s_active, i32 0, i32 1, ptr elementtype(i32) %s_active) #12, !srcloc !180
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef %s_umount) #12
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  tail call fastcc void @__put_super(ptr noundef %s) #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sget(ptr noundef %type, ptr noundef readonly %test, ptr nocapture noundef readonly %set, i32 noundef %flags, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !162) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns2 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns2, align 4
  %and = and i32 %flags, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, ptr %7, ptr @init_user_ns
  %tobool3.not = icmp eq ptr %test, null
  %fs_supers = getelementptr inbounds %struct.file_system_type, ptr %type, i32 0, i32 8
  %and33 = and i32 %flags, -67108865
  br label %retry.outer

retry.outer:                                      ; preds = %if.then32.retry.outer_crit_edge, %entry
  %s.0.ph = phi ptr [ %call34, %if.then32.retry.outer_crit_edge ], [ null, %entry ]
  br label %retry

retry:                                            ; preds = %if.end15.retry_crit_edge, %retry.outer
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  br i1 %tobool3.not, label %retry.if.end30_crit_edge, label %if.then4

retry.if.end30_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then4:                                         ; preds = %retry
  %8 = ptrtoint ptr %fs_supers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_supers, align 4
  %tobool6.not = icmp eq ptr %9, null
  %add.ptr = getelementptr i8, ptr %9, i32 -224
  %tobool8.not92100 = icmp eq ptr %add.ptr, null
  %tobool8.not92 = or i1 %tobool6.not, %tobool8.not92100
  br i1 %tobool8.not92, label %if.then4.if.end30_crit_edge, label %if.then4.for.body_crit_edge

if.then4.for.body_crit_edge:                      ; preds = %if.then4
  br label %for.body

if.then4.if.end30_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then4.for.body_crit_edge
  %old.093 = phi ptr [ %add.ptr26, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.then4.for.body_crit_edge ]
  %call9 = tail call i32 %test(ptr noundef nonnull %old.093, ptr noundef %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.inc, label %if.end12

if.end12:                                         ; preds = %for.body
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %old.093, i32 0, i32 53
  %10 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_user_ns, align 8
  %cmp.not = icmp eq ptr %spec.select, %11
  br i1 %cmp.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  tail call fastcc void @destroy_unused_super(ptr noundef %s.0.ph)
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %call16 = tail call fastcc i32 @grab_super(ptr noundef nonnull %old.093)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.retry_crit_edge, label %if.end19

if.end15.retry_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @destroy_unused_super(ptr noundef %s.0.ph)
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %s_instances = getelementptr inbounds %struct.super_block, ptr %old.093, i32 0, i32 29
  %12 = ptrtoint ptr %s_instances to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_instances, align 32
  %tobool22.not = icmp eq ptr %13, null
  %add.ptr26 = getelementptr i8, ptr %13, i32 -224
  %tobool8.not107 = icmp eq ptr %add.ptr26, null
  %tobool8.not = or i1 %tobool22.not, %tobool8.not107
  br i1 %tobool8.not, label %for.inc.if.end30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end30_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.end30:                                         ; preds = %for.inc.if.end30_crit_edge, %if.then4.if.end30_crit_edge, %retry.if.end30_crit_edge
  %tobool31.not = icmp eq ptr %s.0.ph, null
  br i1 %tobool31.not, label %if.then32, label %if.end39

if.then32:                                        ; preds = %if.end30
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  %call34 = tail call fastcc ptr @alloc_super(ptr noundef %type, i32 noundef %and33, ptr noundef %spec.select)
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.then32.cleanup_crit_edge, label %if.then32.retry.outer_crit_edge

if.then32.retry.outer_crit_edge:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry.outer

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %if.end30
  %call40 = tail call i32 %set(ptr noundef nonnull %s.0.ph, ptr noundef %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  tail call fastcc void @destroy_unused_super(ptr noundef nonnull %s.0.ph)
  %14 = inttoptr i32 %call40 to ptr
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %s_type = getelementptr inbounds %struct.super_block, ptr %s.0.ph, i32 0, i32 5
  %15 = ptrtoint ptr %s_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %type, ptr %s_type, align 32
  %s_id = getelementptr inbounds %struct.super_block, ptr %s.0.ph, i32 0, i32 39
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type, align 4
  %call45 = tail call i32 @strlcpy(ptr noundef %s_id, ptr noundef %17, i32 noundef 32) #12
  %18 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @super_blocks, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %s.0.ph, ptr noundef %18, ptr noundef nonnull @super_blocks) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end44.list_add_tail.exit_crit_edge

if.end44.list_add_tail.exit_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %s.0.ph, ptr getelementptr inbounds (%struct.list_head, ptr @super_blocks, i32 0, i32 1), align 4
  %19 = ptrtoint ptr %s.0.ph to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @super_blocks, ptr %s.0.ph, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %s.0.ph, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %s.0.ph, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end44.list_add_tail.exit_crit_edge
  %s_instances46 = getelementptr inbounds %struct.super_block, ptr %s.0.ph, i32 0, i32 29
  %22 = ptrtoint ptr %fs_supers to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fs_supers, align 4
  %24 = ptrtoint ptr %s_instances46 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %23, ptr %s_instances46, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %list_add_tail.exit.hlist_add_head.exit_crit_edge, label %do.body12.i

list_add_tail.exit.hlist_add_head.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %s_instances46, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %list_add_tail.exit.hlist_add_head.exit_crit_edge
  %26 = ptrtoint ptr %fs_supers to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %s_instances46, ptr %fs_supers, align 4
  %pprev34.i = getelementptr inbounds %struct.super_block, ptr %s.0.ph, i32 0, i32 29, i32 1
  %27 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %fs_supers, ptr %pprev34.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  %call48 = tail call ptr @get_filesystem(ptr noundef %type) #12
  %s_shrink = getelementptr inbounds %struct.super_block, ptr %s.0.ph, i32 0, i32 46
  tail call void @register_shrinker_prepared(ptr noundef %s_shrink) #12
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head.exit, %if.then42, %if.then32.cleanup_crit_edge, %if.end19, %if.then13
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %if.then13 ], [ %old.093, %if.end19 ], [ %14, %if.then42 ], [ %s.0.ph, %hlist_add_head.exit ], [ inttoptr (i32 -12 to ptr), %if.then32.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drop_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  tail call void @up_read(ptr noundef %s_umount) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  tail call fastcc void @__put_super(ptr noundef %sb) #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drop_super_exclusive(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  tail call void @up_write(ptr noundef %s_umount) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  tail call fastcc void @__put_super(ptr noundef %sb) #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iterate_supers(ptr nocapture noundef readonly %f, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  %sb.028 = load ptr, ptr @super_blocks, align 4
  %cmp.not29 = icmp eq ptr %sb.028, @super_blocks
  br i1 %cmp.not29, label %entry.if.end15_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %sb.031 = phi ptr [ %sb.0, %for.inc.for.body_crit_edge ], [ %sb.028, %entry.for.body_crit_edge ]
  %p.030 = phi ptr [ %p.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %pprev.i = getelementptr inbounds %struct.super_block, ptr %sb.031, i32 0, i32 29, i32 1
  %0 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %s_count = getelementptr inbounds %struct.super_block, ptr %sb.031, i32 0, i32 15
  %2 = ptrtoint ptr %s_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %s_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb.031, i32 0, i32 14
  tail call void @down_read(ptr noundef %s_umount) #12
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb.031, i32 0, i32 13
  %4 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root, align 64
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb.031, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags, align 4
  %and = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end4_crit_edge, label %if.then3

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %f(ptr noundef %sb.031, ptr noundef %arg) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  tail call void @up_read(ptr noundef %s_umount) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  %tobool6.not = icmp eq ptr %p.030, null
  br i1 %tobool6.not, label %if.end4.for.inc_crit_edge, label %if.then7

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__put_super(ptr noundef nonnull %p.030)
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %if.end4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %p.1 = phi ptr [ %p.030, %for.body.for.inc_crit_edge ], [ %sb.031, %if.then7 ], [ %sb.031, %if.end4.for.inc_crit_edge ]
  %8 = ptrtoint ptr %sb.031 to i32
  call void @__asan_load4_noabort(i32 %8)
  %sb.0 = load ptr, ptr %sb.031, align 4
  %cmp.not = icmp eq ptr %sb.0, @super_blocks
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool13.not = icmp eq ptr %p.1, null
  br i1 %tobool13.not, label %for.end.if.end15_crit_edge, label %if.then14

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__put_super(ptr noundef nonnull %p.1)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %for.end.if.end15_crit_edge, %entry.if.end15_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iterate_supers_type(ptr nocapture noundef readonly %type, ptr nocapture noundef readonly %f, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  %fs_supers = getelementptr inbounds %struct.file_system_type, ptr %type, i32 0, i32 8
  %0 = ptrtoint ptr %fs_supers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_supers, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -224
  %tobool2.not3942 = icmp eq ptr %add.ptr, null
  %tobool2.not39 = or i1 %tobool.not, %tobool2.not3942
  br i1 %tobool2.not39, label %entry.if.end21_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %entry.for.body_crit_edge
  %sb.041 = phi ptr [ %add.ptr15, %if.end8.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %p.040 = phi ptr [ %sb.041, %if.end8.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %s_count = getelementptr inbounds %struct.super_block, ptr %sb.041, i32 0, i32 15
  %2 = ptrtoint ptr %s_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %s_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb.041, i32 0, i32 14
  tail call void @down_read(ptr noundef %s_umount) #12
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb.041, i32 0, i32 13
  %4 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root, align 64
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb.041, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags, align 4
  %and = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %f(ptr noundef nonnull %sb.041, ptr noundef %arg) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  tail call void @up_read(ptr noundef %s_umount) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  %tobool6.not = icmp eq ptr %p.040, null
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__put_super(ptr noundef nonnull %p.040)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %s_instances = getelementptr inbounds %struct.super_block, ptr %sb.041, i32 0, i32 29
  %8 = ptrtoint ptr %s_instances to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_instances, align 32
  %tobool11.not = icmp eq ptr %9, null
  %add.ptr15 = getelementptr i8, ptr %9, i32 -224
  %tobool2.not45 = icmp eq ptr %add.ptr15, null
  %tobool2.not = or i1 %tobool11.not, %tobool2.not45
  br i1 %tobool2.not, label %if.then20, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.then20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__put_super(ptr noundef nonnull %sb.041)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %entry.if.end21_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_super(ptr noundef readnone %bdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  %sb.02932 = load ptr, ptr @super_blocks, align 4
  %cmp.not3033 = icmp eq ptr %sb.02932, @super_blocks
  br i1 %cmp.not3033, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.backedge, %if.end.for.body_crit_edge
  %sb.031 = phi ptr [ %sb.031.be, %for.body.backedge ], [ %sb.02932, %if.end.for.body_crit_edge ]
  %pprev.i = getelementptr inbounds %struct.super_block, ptr %sb.031, i32 0, i32 29, i32 1
  %0 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %for.body.for.inc_crit_edge, label %if.end3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end3:                                          ; preds = %for.body
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb.031, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %cmp4 = icmp eq ptr %3, %bdev
  br i1 %cmp4, label %if.then5, label %if.end3.for.inc_crit_edge

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then5:                                         ; preds = %if.end3
  %s_count = getelementptr inbounds %struct.super_block, ptr %sb.031, i32 0, i32 15
  %4 = ptrtoint ptr %s_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %s_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb.031, i32 0, i32 14
  tail call void @down_read(ptr noundef %s_umount) #12
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb.031, i32 0, i32 13
  %6 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_root, align 64
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.then5.if.end9_crit_edge, label %land.lhs.true

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then5
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb.031, i32 0, i32 10
  %8 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_flags, align 4
  %and = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.then5.if.end9_crit_edge
  tail call void @up_read(ptr noundef %s_umount) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  tail call fastcc void @__put_super(ptr noundef %sb.031)
  %sb.029 = load ptr, ptr @super_blocks, align 4
  %cmp.not30 = icmp eq ptr %sb.029, @super_blocks
  br i1 %cmp.not30, label %if.end9.for.end_crit_edge, label %if.end9.for.body.backedge_crit_edge

if.end9.for.body.backedge_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.backedge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %if.end3.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %sb.031 to i32
  call void @__asan_load4_noabort(i32 %10)
  %sb.0 = load ptr, ptr %sb.031, align 4
  %cmp.not = icmp eq ptr %sb.0, @super_blocks
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.backedge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %if.end9.for.body.backedge_crit_edge
  %sb.031.be = phi ptr [ %sb.0, %for.inc.for.body.backedge_crit_edge ], [ %sb.029, %if.end9.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end9.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %for.end ], [ null, %entry.cleanup_crit_edge ], [ %sb.031, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_active_super(ptr noundef readnone %bdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.restart_crit_edge

entry.restart_crit_edge:                          ; preds = %entry
  br label %restart

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

restart:                                          ; preds = %if.then5.restart_crit_edge, %entry.restart_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  %sb.023 = load ptr, ptr @super_blocks, align 4
  %cmp.not24 = icmp eq ptr %sb.023, @super_blocks
  br i1 %cmp.not24, label %restart.for.end_crit_edge, label %restart.for.body_crit_edge

restart.for.body_crit_edge:                       ; preds = %restart
  br label %for.body

restart.for.end_crit_edge:                        ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %restart.for.body_crit_edge
  %sb.025 = phi ptr [ %sb.0, %for.inc.for.body_crit_edge ], [ %sb.023, %restart.for.body_crit_edge ]
  %pprev.i = getelementptr inbounds %struct.super_block, ptr %sb.025, i32 0, i32 29, i32 1
  %0 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %for.body.for.inc_crit_edge, label %if.end3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end3:                                          ; preds = %for.body
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb.025, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %cmp4 = icmp eq ptr %3, %bdev
  br i1 %cmp4, label %if.then5, label %if.end3.for.inc_crit_edge

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then5:                                         ; preds = %if.end3
  %call6 = tail call fastcc i32 @grab_super(ptr noundef %sb.025)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.restart_crit_edge, label %if.end9

if.then5.restart_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %restart

if.end9:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb.025, i32 0, i32 14
  tail call void @up_write(ptr noundef %s_umount) #12
  br label %cleanup

for.inc:                                          ; preds = %if.end3.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %4 = ptrtoint ptr %sb.025 to i32
  call void @__asan_load4_noabort(i32 %4)
  %sb.0 = load ptr, ptr %sb.025, align 4
  %cmp.not = icmp eq ptr %sb.0, @super_blocks
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %restart.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %sb.025, %if.end9 ], [ null, %for.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @user_get_super(i32 noundef %dev, i1 noundef zeroext %excl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  %sb.03841 = load ptr, ptr @super_blocks, align 4
  %cmp.not3942 = icmp eq ptr %sb.03841, @super_blocks
  br i1 %cmp.not3942, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.backedge, %entry.for.body_crit_edge
  %sb.040 = phi ptr [ %sb.040.be, %for.body.backedge ], [ %sb.03841, %entry.for.body_crit_edge ]
  %pprev.i = getelementptr inbounds %struct.super_block, ptr %sb.040, i32 0, i32 29, i32 1
  %0 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %s_dev = getelementptr inbounds %struct.super_block, ptr %sb.040, i32 0, i32 1
  %2 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_dev, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %dev)
  %cmp1 = icmp eq i32 %3, %dev
  br i1 %cmp1, label %if.then2, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then2:                                         ; preds = %if.end
  %s_count = getelementptr inbounds %struct.super_block, ptr %sb.040, i32 0, i32 15
  %4 = ptrtoint ptr %s_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %s_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb.040, i32 0, i32 14
  br i1 %excl, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @down_write(ptr noundef %s_umount) #12
  br label %if.end6

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @down_read(ptr noundef %s_umount) #12
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb.040, i32 0, i32 13
  %6 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_root, align 64
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %land.lhs.true

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end6
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb.040, i32 0, i32 10
  %8 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_flags, align 4
  %and = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %s_umount13 = getelementptr inbounds %struct.super_block, ptr %sb.040, i32 0, i32 14
  br i1 %excl, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_write(ptr noundef %s_umount13) #12
  br label %if.end16

if.else14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_read(ptr noundef %s_umount13) #12
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then12
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  tail call fastcc void @__put_super(ptr noundef %sb.040)
  %sb.038 = load ptr, ptr @super_blocks, align 4
  %cmp.not39 = icmp eq ptr %sb.038, @super_blocks
  br i1 %cmp.not39, label %if.end16.for.end_crit_edge, label %if.end16.for.body.backedge_crit_edge

if.end16.for.body.backedge_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.backedge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %sb.040 to i32
  call void @__asan_load4_noabort(i32 %10)
  %sb.0 = load ptr, ptr %sb.040, align 4
  %cmp.not = icmp eq ptr %sb.0, @super_blocks
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.backedge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %if.end16.for.body.backedge_crit_edge
  %sb.040.be = phi ptr [ %sb.0, %for.inc.for.body.backedge_crit_edge ], [ %sb.038, %if.end16.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %for.end ], [ %sb.040, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reconfigure_super(ptr noundef %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %4 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_flags, align 4
  %and = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %sb_flags_mask = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 14
  %6 = ptrtoint ptr %sb_flags_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_flags_mask, align 4
  %and2 = and i32 %7, -41943122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_writers = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 32
  %8 = ptrtoint ptr %s_writers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_writers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %security = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 11
  %10 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %security, align 4
  %call = tail call i32 @security_sb_remount(ptr noundef %3, ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %12 = ptrtoint ptr %sb_flags_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_flags_mask, align 4
  %and10 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end48.thread_crit_edge, label %if.then12

if.end8.if.end48.thread_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.thread

if.then12:                                        ; preds = %if.end8
  %14 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_flags, align 4
  %and14 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.then12
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %16 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev, align 4
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %land.lhs.true.if.end48.thread_crit_edge, label %land.lhs.true17

land.lhs.true.if.end48.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.thread

land.lhs.true17:                                  ; preds = %land.lhs.true
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bd_read_only.i, align 8, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %land.lhs.true17.cleanup_crit_edge

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.rhs.i:                                        ; preds = %land.lhs.true17
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 17
  %20 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %part0.i.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bd_read_only.i.i, align 8, !range !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i, label %bdev_read_only.exit, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

bdev_read_only.exit:                              ; preds = %lor.rhs.i
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %21, i32 0, i32 12
  %26 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i.i, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool20.not = icmp eq i32 %28, 0
  br i1 %tobool20.not, label %bdev_read_only.exit.if.end48.thread_crit_edge, label %bdev_read_only.exit.cleanup_crit_edge

bdev_read_only.exit.cleanup_crit_edge:            ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

bdev_read_only.exit.if.end48.thread_crit_edge:    ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.thread

if.end28:                                         ; preds = %if.then12
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %29 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then30, label %if.end28.if.end48.thread_crit_edge

if.end28.if.end48.thread_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.thread

if.then30:                                        ; preds = %if.end28
  %s_pins = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 52
  %31 = ptrtoint ptr %s_pins to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %s_pins, align 4
  %tobool.not.i176.not = icmp eq ptr %32, null
  br i1 %tobool.not.i176.not, label %if.end48.thread184, label %if.then33

if.end48.thread184:                               ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @shrink_dcache_sb(ptr noundef %3) #12
  br label %if.then50

if.then33:                                        ; preds = %if.then30
  %s_umount = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 14
  tail call void @up_write(ptr noundef %s_umount) #12
  tail call void @group_pin_kill(ptr noundef %s_pins) #12
  tail call void @down_write(ptr noundef %s_umount) #12
  %s_root = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 13
  %33 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_root, align 64
  %tobool36.not = icmp eq ptr %34, null
  br i1 %tobool36.not, label %if.then33.cleanup_crit_edge, label %if.end38

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end38:                                         ; preds = %if.then33
  %35 = ptrtoint ptr %s_writers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_writers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp41.not = icmp eq i32 %36, 0
  br i1 %cmp41.not, label %if.end48, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end48.thread:                                  ; preds = %if.end28.if.end48.thread_crit_edge, %bdev_read_only.exit.if.end48.thread_crit_edge, %land.lhs.true.if.end48.thread_crit_edge, %if.end8.if.end48.thread_crit_edge
  tail call void @shrink_dcache_sb(ptr noundef %3) #12
  br label %if.end61

if.end48:                                         ; preds = %if.end38
  %37 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_flags.i, align 4
  %and.i178 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i178)
  %tobool.i179.not = icmp eq i32 %and.i178, 0
  tail call void @shrink_dcache_sb(ptr noundef %3) #12
  br i1 %tobool.i179.not, label %if.end48.if.then50_crit_edge, label %if.end48.if.end61_crit_edge

if.end48.if.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end48.if.then50_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50

if.then50:                                        ; preds = %if.end48.if.then50_crit_edge, %if.end48.thread184
  br i1 %tobool.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  %s_readonly_remount = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 49
  %39 = ptrtoint ptr %s_readonly_remount to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %s_readonly_remount, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !185
  br label %if.end61

if.else:                                          ; preds = %if.then50
  %call56 = tail call i32 @sb_prepare_remount_readonly(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.else.if.end61_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end61:                                         ; preds = %if.else.if.end61_crit_edge, %if.then52, %if.end48.if.end61_crit_edge, %if.end48.thread
  %remount_ro.1.off0183 = phi i1 [ false, %if.end48.thread ], [ true, %if.then52 ], [ true, %if.else.if.end61_crit_edge ], [ false, %if.end48.if.end61_crit_edge ]
  %40 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fc, align 4
  %reconfigure = getelementptr inbounds %struct.fs_context_operations, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %reconfigure to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reconfigure, align 4
  %tobool62.not = icmp eq ptr %43, null
  br i1 %tobool62.not, label %if.end61.do.body99_crit_edge, label %if.then63

if.end61.do.body99_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body99

if.then63:                                        ; preds = %if.end61
  %call66 = tail call i32 %43(ptr noundef %fc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then63.do.body99_crit_edge, label %if.then68

if.then63.do.body99_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body99

if.then68:                                        ; preds = %if.then63
  br i1 %tobool.not, label %cancel_readonly, label %do.end80

do.end80:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  %s_type = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 5
  %44 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_type, align 32
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 911, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %47, i32 noundef %call66) #12
  br label %do.body99

do.body99:                                        ; preds = %do.end80, %if.then63.do.body99_crit_edge, %if.end61.do.body99_crit_edge
  %s_flags = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %48 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_flags, align 4
  %50 = ptrtoint ptr %sb_flags_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sb_flags_mask, align 4
  %neg = xor i32 %51, -1
  %and101 = and i32 %49, %neg
  %52 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sb_flags, align 4
  %and104 = and i32 %53, %51
  %or = or i32 %and104, %and101
  store volatile i32 %or, ptr %s_flags, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !186
  %s_readonly_remount116 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 49
  %54 = ptrtoint ptr %s_readonly_remount116 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %s_readonly_remount116, align 8
  br i1 %remount_ro.1.off0183, label %land.lhs.true118, label %do.body99.cleanup_crit_edge

do.body99.cleanup_crit_edge:                      ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true118:                                 ; preds = %do.body99
  %s_bdev119 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %55 = ptrtoint ptr %s_bdev119 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_bdev119, align 4
  %tobool120.not = icmp eq ptr %56, null
  br i1 %tobool120.not, label %land.lhs.true118.cleanup_crit_edge, label %if.then121

land.lhs.true118.cleanup_crit_edge:               ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then121:                                       ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @invalidate_bdev(ptr noundef nonnull %56) #12
  br label %cleanup

cancel_readonly:                                  ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  %s_readonly_remount124 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 49
  %57 = ptrtoint ptr %s_readonly_remount124 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %s_readonly_remount124, align 8
  br label %cleanup

cleanup:                                          ; preds = %cancel_readonly, %if.then121, %land.lhs.true118.cleanup_crit_edge, %do.body99.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %bdev_read_only.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call66, %cancel_readonly ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %call, %if.end5.cleanup_crit_edge ], [ -13, %bdev_read_only.exit.cleanup_crit_edge ], [ 0, %if.then33.cleanup_crit_edge ], [ -16, %if.end38.cleanup_crit_edge ], [ %call56, %if.else.cleanup_crit_edge ], [ 0, %if.then121 ], [ 0, %land.lhs.true118.cleanup_crit_edge ], [ 0, %do.body99.cleanup_crit_edge ], [ -13, %land.lhs.true17.cleanup_crit_edge ], [ -13, %lor.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sb_remount(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @group_pin_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_sb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_prepare_remount_readonly(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emergency_remount() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 44) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #12
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @emergency_remount.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry1 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry1, ptr %entry1, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry1, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @do_emergency_remount, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef nonnull %call7.i) #12
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_emergency_remount(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__iterate_supers(ptr noundef nonnull @do_emergency_remount_callback)
  tail call void @kfree(ptr noundef %work) #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emergency_thaw_all() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 44) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #12
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @emergency_thaw_all.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry1 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry1, ptr %entry1, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry1, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @do_thaw_all, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef nonnull %call7.i) #12
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_thaw_all(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__iterate_supers(ptr noundef nonnull @do_thaw_all_callback)
  tail call void @kfree(ptr noundef %work) #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_anon_bdev(ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ida_alloc_range(ptr noundef nonnull @unnamed_dev_ida, i32 noundef 1, i32 noundef 1048575, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp = icmp eq i32 %call, -28
  %spec.store.select = select i1 %cmp, i32 -24, i32 %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp1 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %spec.store.select, ptr %p, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %spec.store.select, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_anon_bdev(i32 noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %dev, 1048575
  tail call void @ida_free(ptr noundef nonnull @unnamed_dev_ida, i32 noundef %and) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_anon_super(ptr nocapture noundef writeonly %s, ptr nocapture readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @unnamed_dev_ida, i32 noundef 1, i32 noundef 1048575, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -28
  %spec.store.select.i = select i1 %cmp.i, i32 -24, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp1.i = icmp slt i32 %spec.store.select.i, 0
  br i1 %cmp1.i, label %entry.get_anon_bdev.exit_crit_edge, label %if.end3.i

entry.get_anon_bdev.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_anon_bdev.exit

if.end3.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %s_dev = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %s_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %spec.store.select.i, ptr %s_dev, align 4
  br label %get_anon_bdev.exit

get_anon_bdev.exit:                               ; preds = %if.end3.i, %entry.get_anon_bdev.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end3.i ], [ %spec.store.select.i, %entry.get_anon_bdev.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kill_anon_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_dev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 1
  %0 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_dev, align 8
  tail call void @generic_shutdown_super(ptr noundef %sb)
  %and.i = and i32 %1, 1048575
  tail call void @ida_free(ptr noundef nonnull @unnamed_dev_ida, i32 noundef %and.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kill_litter_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %0 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_root, align 64
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @d_genocide(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 1
  %2 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_dev.i, align 8
  tail call void @generic_shutdown_super(ptr noundef %sb) #12
  %and.i.i = and i32 %3, 1048575
  tail call void @ida_free(ptr noundef nonnull @unnamed_dev_ida, i32 noundef %and.i.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_genocide(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_anon_super_fc(ptr nocapture noundef writeonly %sb, ptr nocapture readnone %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @unnamed_dev_ida, i32 noundef 1, i32 noundef 1048575, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -28
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 -24, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i)
  %cmp1.i.i = icmp slt i32 %spec.store.select.i.i, 0
  br i1 %cmp1.i.i, label %entry.set_anon_super.exit_crit_edge, label %if.end3.i.i

entry.set_anon_super.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_anon_super.exit

if.end3.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 1
  %0 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %spec.store.select.i.i, ptr %s_dev.i, align 4
  br label %set_anon_super.exit

set_anon_super.exit:                              ; preds = %if.end3.i.i, %entry.set_anon_super.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end3.i.i ], [ %spec.store.select.i.i, %entry.set_anon_super.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_get_super(ptr noundef %fc, i32 noundef %keying, ptr nocapture noundef readonly %fill_super) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keying)
  %0 = icmp ult i32 %keying, 4
  br i1 %0, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1131, 0\0A.popsection", ""() #12, !srcloc !187
  unreachable

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.vfs_get_super, i32 0, i32 %keying
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call = tail call ptr @sget_fc(ptr noundef %fc, ptr noundef %switch.load, ptr noundef nonnull @set_anon_super_fc)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %s_root = getelementptr inbounds %struct.super_block, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_root, align 64
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then8, label %dget.exit48

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 %fill_super(ptr noundef %call, ptr noundef %fc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then8.error_crit_edge

if.then8.error_crit_edge:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end12:                                         ; preds = %if.then8
  %s_flags = getelementptr inbounds %struct.super_block, ptr %call, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags, align 4
  %or = or i32 %6, 1073741824
  store i32 %or, ptr %s_flags, align 4
  %7 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_root, align 64
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end12.dget.exit_crit_edge, label %if.then.i

if.end12.dget.exit_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #12
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end12.dget.exit_crit_edge
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %9 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %root, align 4
  br label %cleanup

dget.exit48:                                      ; preds = %if.end
  %d_lockref.i46 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i46) #12
  %root17 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %10 = ptrtoint ptr %root17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %root17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %keying)
  %cmp = icmp eq i32 %keying, 1
  br i1 %cmp, label %if.then18, label %dget.exit48.cleanup_crit_edge

dget.exit48.cleanup_crit_edge:                    ; preds = %dget.exit48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %dget.exit48
  %call19 = tail call i32 @reconfigure_super(ptr noundef %fc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %root17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %root17, align 4
  tail call void @dput(ptr noundef %12) #12
  %13 = ptrtoint ptr %root17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %root17, align 4
  br label %error

error:                                            ; preds = %if.then21, %if.then8.error_crit_edge
  %err.0 = phi i32 [ %call19, %if.then21 ], [ %call9, %if.then8.error_crit_edge ]
  tail call void @deactivate_locked_super(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then18.cleanup_crit_edge, %dget.exit48.cleanup_crit_edge, %dget.exit, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %err.0, %error ], [ 0, %dget.exit48.cleanup_crit_edge ], [ 0, %if.then18.cleanup_crit_edge ], [ 0, %dget.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @test_single_super(ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %fc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @test_keyed_super(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_fs_info1 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %2 = ptrtoint ptr %s_fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info1, align 4
  %cmp = icmp eq ptr %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_tree_nodev(ptr noundef %fc, ptr nocapture noundef readonly %fill_super) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @sget_fc(ptr noundef %fc, ptr noundef null, ptr noundef nonnull @set_anon_super_fc) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %call.i to i32
  br label %vfs_get_super.exit

if.end.i:                                         ; preds = %entry
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %call.i, i32 0, i32 13
  %1 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_root.i, align 64
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then8.i, label %dget.exit48.i

if.then8.i:                                       ; preds = %if.end.i
  %call9.i = tail call i32 %fill_super(ptr noundef %call.i, ptr noundef %fc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %error.i

if.end12.i:                                       ; preds = %if.then8.i
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %call.i, i32 0, i32 10
  %3 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_flags.i, align 4
  %or.i = or i32 %4, 1073741824
  store i32 %or.i, ptr %s_flags.i, align 4
  %5 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_root.i, align 64
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end12.i.dget.exit.i_crit_edge, label %if.then.i.i

if.end12.i.dget.exit.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit.i

if.then.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i.i) #12
  br label %dget.exit.i

dget.exit.i:                                      ; preds = %if.then.i.i, %if.end12.i.dget.exit.i_crit_edge
  %root.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %7 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %root.i, align 4
  br label %vfs_get_super.exit

dget.exit48.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i46.i = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i46.i) #12
  %root17.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %8 = ptrtoint ptr %root17.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %2, ptr %root17.i, align 4
  br label %vfs_get_super.exit

error.i:                                          ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @deactivate_locked_super(ptr noundef %call.i) #12
  br label %vfs_get_super.exit

vfs_get_super.exit:                               ; preds = %error.i, %dget.exit48.i, %dget.exit.i, %if.then.i
  %retval.0.i = phi i32 [ %0, %if.then.i ], [ %call9.i, %error.i ], [ 0, %dget.exit48.i ], [ 0, %dget.exit.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_tree_single(ptr noundef %fc, ptr nocapture noundef readonly %fill_super) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @sget_fc(ptr noundef %fc, ptr noundef nonnull @test_single_super, ptr noundef nonnull @set_anon_super_fc) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %call.i to i32
  br label %vfs_get_super.exit

if.end.i:                                         ; preds = %entry
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %call.i, i32 0, i32 13
  %1 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_root.i, align 64
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then8.i, label %dget.exit48.i

if.then8.i:                                       ; preds = %if.end.i
  %call9.i = tail call i32 %fill_super(ptr noundef %call.i, ptr noundef %fc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %error.i

if.end12.i:                                       ; preds = %if.then8.i
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %call.i, i32 0, i32 10
  %3 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_flags.i, align 4
  %or.i = or i32 %4, 1073741824
  store i32 %or.i, ptr %s_flags.i, align 4
  %5 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_root.i, align 64
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end12.i.dget.exit.i_crit_edge, label %if.then.i.i

if.end12.i.dget.exit.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit.i

if.then.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i.i) #12
  br label %dget.exit.i

dget.exit.i:                                      ; preds = %if.then.i.i, %if.end12.i.dget.exit.i_crit_edge
  %root.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %7 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %root.i, align 4
  br label %vfs_get_super.exit

dget.exit48.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i46.i = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i46.i) #12
  %root17.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %8 = ptrtoint ptr %root17.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %2, ptr %root17.i, align 4
  br label %vfs_get_super.exit

error.i:                                          ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @deactivate_locked_super(ptr noundef %call.i) #12
  br label %vfs_get_super.exit

vfs_get_super.exit:                               ; preds = %error.i, %dget.exit48.i, %dget.exit.i, %if.then.i
  %retval.0.i = phi i32 [ %0, %if.then.i ], [ %call9.i, %error.i ], [ 0, %dget.exit48.i ], [ 0, %dget.exit.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_tree_single_reconf(ptr noundef %fc, ptr nocapture noundef readonly %fill_super) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vfs_get_super(ptr noundef %fc, i32 noundef 1, ptr noundef %fill_super)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_tree_keyed(ptr noundef %fc, ptr nocapture noundef readonly %fill_super, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %key, ptr %s_fs_info, align 4
  %call.i = tail call ptr @sget_fc(ptr noundef %fc, ptr noundef nonnull @test_keyed_super, ptr noundef nonnull @set_anon_super_fc) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call.i to i32
  br label %vfs_get_super.exit

if.end.i:                                         ; preds = %entry
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %call.i, i32 0, i32 13
  %2 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_root.i, align 64
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then8.i, label %dget.exit48.i

if.then8.i:                                       ; preds = %if.end.i
  %call9.i = tail call i32 %fill_super(ptr noundef %call.i, ptr noundef %fc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %error.i

if.end12.i:                                       ; preds = %if.then8.i
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags.i, align 4
  %or.i = or i32 %5, 1073741824
  store i32 %or.i, ptr %s_flags.i, align 4
  %6 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_root.i, align 64
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end12.i.dget.exit.i_crit_edge, label %if.then.i.i

if.end12.i.dget.exit.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit.i

if.then.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i.i) #12
  br label %dget.exit.i

dget.exit.i:                                      ; preds = %if.then.i.i, %if.end12.i.dget.exit.i_crit_edge
  %root.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %8 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %root.i, align 4
  br label %vfs_get_super.exit

dget.exit48.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i46.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i46.i) #12
  %root17.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %9 = ptrtoint ptr %root17.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %root17.i, align 4
  br label %vfs_get_super.exit

error.i:                                          ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @deactivate_locked_super(ptr noundef %call.i) #12
  br label %vfs_get_super.exit

vfs_get_super.exit:                               ; preds = %error.i, %dget.exit48.i, %dget.exit.i, %if.then.i
  %retval.0.i = phi i32 [ %1, %if.then.i ], [ %call9.i, %error.i ], [ 0, %dget.exit48.i ], [ 0, %dget.exit.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_tree_bdev(ptr noundef %fc, ptr nocapture noundef readonly %fill_super) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %0 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 131, i32 129
  %source = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 10
  %2 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %log3 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %log3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log3, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %5, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  %fs_type = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 2
  %6 = ptrtoint ptr %fs_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_type, align 4
  %call = tail call ptr @blkdev_get_by_path(ptr noundef nonnull %3, i32 noundef %spec.select, ptr noundef %7) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %log9 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %log9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %log9, align 4
  %10 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %source, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %9, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.6, ptr noundef %11) #12
  %12 = ptrtoint ptr %call to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %bd_fsfreeze_mutex = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %bd_fsfreeze_mutex, i32 noundef 0) #12
  %bd_fsfreeze_count = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 19
  %13 = ptrtoint ptr %bd_fsfreeze_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bd_fsfreeze_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %bd_fsfreeze_mutex) #12
  %log16 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %log16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %log16, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %16, ptr noundef null, i8 noundef zeroext 119, ptr noundef nonnull @.str.7, ptr noundef %call) #12
  tail call void @blkdev_put(ptr noundef %call, i32 noundef %spec.select) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %17 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_flags, align 4
  %or19 = or i32 %18, 268435456
  store i32 %or19, ptr %sb_flags, align 4
  %sget_key = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 4
  %19 = ptrtoint ptr %sget_key to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call, ptr %sget_key, align 4
  %call20 = tail call ptr @sget_fc(ptr noundef %fc, ptr noundef nonnull @test_bdev_super_fc, ptr noundef nonnull @set_bdev_super_fc)
  tail call void @mutex_unlock(ptr noundef %bd_fsfreeze_mutex) #12
  %cmp.i114 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @blkdev_put(ptr noundef %call, i32 noundef %spec.select) #12
  %20 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %s_root = getelementptr inbounds %struct.super_block, ptr %call20, i32 0, i32 13
  %21 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_root, align 64
  %tobool26.not = icmp eq ptr %22, null
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end25
  %23 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sb_flags, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %call20, i32 0, i32 10
  %25 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_flags, align 4
  %xor = xor i32 %26, %24
  %and29 = and i32 %xor, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end34, label %if.then31

if.then31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %log33 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %log33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %log33, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %28, ptr noundef null, i8 noundef zeroext 119, ptr noundef nonnull @.str.8, ptr noundef %call) #12
  tail call void @deactivate_locked_super(ptr noundef %call20)
  tail call void @blkdev_put(ptr noundef %call, i32 noundef %spec.select) #12
  br label %cleanup

if.end34:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %s_umount = getelementptr inbounds %struct.super_block, ptr %call20, i32 0, i32 14
  tail call void @up_write(ptr noundef %s_umount) #12
  tail call void @blkdev_put(ptr noundef %call, i32 noundef %spec.select) #12
  tail call void @down_write(ptr noundef %s_umount) #12
  br label %do.body

if.else:                                          ; preds = %if.end25
  %s_mode = getelementptr inbounds %struct.super_block, ptr %call20, i32 0, i32 42
  %29 = ptrtoint ptr %s_mode to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select, ptr %s_mode, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %call20, i32 0, i32 39
  %call36 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %s_id, i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef %call)
  %bd_inode.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 7
  %30 = ptrtoint ptr %bd_inode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bd_inode.i, align 4
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 20
  %32 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %33 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call38 = tail call i32 @sb_set_blocksize(ptr noundef %call20, i32 noundef %shl.i) #12
  %call39 = tail call i32 %fill_super(ptr noundef %call20, ptr noundef %fc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @deactivate_locked_super(ptr noundef %call20)
  br label %cleanup

if.end42:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %s_flags43 = getelementptr inbounds %struct.super_block, ptr %call20, i32 0, i32 10
  %34 = ptrtoint ptr %s_flags43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_flags43, align 4
  %or44 = or i32 %35, 1073741824
  store i32 %or44, ptr %s_flags43, align 4
  %bd_super = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 8
  %36 = ptrtoint ptr %bd_super to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call20, ptr %bd_super, align 8
  br label %do.body

do.body:                                          ; preds = %if.end42, %if.end34
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %37 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %root, align 4
  %tobool46.not = icmp eq ptr %38, null
  br i1 %tobool46.not, label %do.end56, label %do.body50, !prof !172

do.body50:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1302, 0\0A.popsection", ""() #12, !srcloc !188
  unreachable

do.end56:                                         ; preds = %do.body
  %39 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_root, align 64
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %do.end56.dget.exit_crit_edge, label %if.then.i

do.end56.dget.exit_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %dget.exit

if.then.i:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %40, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #12
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %do.end56.dget.exit_crit_edge
  %41 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %root, align 4
  br label %cleanup

cleanup:                                          ; preds = %dget.exit, %if.then41, %if.then31, %if.then23, %if.then13, %if.then7, %if.then2
  %retval.0 = phi i32 [ %12, %if.then7 ], [ -16, %if.then13 ], [ %20, %if.then23 ], [ -16, %if.then31 ], [ 0, %dget.exit ], [ %call39, %if.then41 ], [ -22, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @test_bdev_super_fc(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %fc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev, align 4
  %sget_key = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 4
  %2 = ptrtoint ptr %sget_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sget_key, align 4
  %cmp = icmp eq ptr %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_bdev_super_fc(ptr nocapture noundef %s, ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sget_key = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 4
  %0 = ptrtoint ptr %sget_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sget_key, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %s_bdev.i, align 4
  %bd_dev.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %bd_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bd_dev.i, align 4
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 1
  %5 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %s_dev.i, align 8
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_disk.i, align 8
  %bdi.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %bdi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdi.i, align 4
  %refcnt.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %9, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #12, !srcloc !182
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !183

entry.if.end15.sink.split.i.i.i.i.i.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %entry
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.bdi_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !172

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.bdi_get.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bdi_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %bdi_get.exit.i

bdi_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.bdi_get.exit.i_crit_edge
  %s_bdi.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 27
  %12 = ptrtoint ptr %s_bdi.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %s_bdi.i, align 8
  %13 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_bdev.i, align 4
  %bd_disk4.i = getelementptr inbounds %struct.block_device, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %bd_disk4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bd_disk4.i, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue.i, align 4
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %queue_flags.i, align 4
  %21 = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %bdi_get.exit.i.set_bdev_super.exit_crit_edge, label %if.then.i

bdi_get.exit.i.set_bdev_super.exit_crit_edge:     ; preds = %bdi_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_bdev_super.exit

if.then.i:                                        ; preds = %bdi_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %s_iflags.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 11
  %22 = ptrtoint ptr %s_iflags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_iflags.i, align 8
  %or.i = or i32 %23, 8
  store i32 %or.i, ptr %s_iflags.i, align 8
  br label %set_bdev_super.exit

set_bdev_super.exit:                              ; preds = %if.then.i, %bdi_get.exit.i.set_bdev_super.exit_crit_edge
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr nocapture noundef readonly %fill_super) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 131, i32 129
  %call = tail call ptr @blkdev_get_by_path(ptr noundef %dev_name, i32 noundef %spec.select, ptr noundef %fs_type) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %entry
  %bd_fsfreeze_mutex = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %bd_fsfreeze_mutex, i32 noundef 0) #12
  %bd_fsfreeze_count = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %bd_fsfreeze_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bd_fsfreeze_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %bd_fsfreeze_mutex) #12
  br label %error_bdev

if.end7:                                          ; preds = %if.end4
  %or8 = or i32 %flags, 268435456
  %call9 = tail call ptr @sget(ptr noundef %fs_type, ptr noundef nonnull @test_bdev_super, ptr noundef nonnull @set_bdev_super, i32 noundef %or8, ptr noundef %call)
  tail call void @mutex_unlock(ptr noundef %bd_fsfreeze_mutex) #12
  %cmp.i75 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %error_s, label %if.end13

if.end13:                                         ; preds = %if.end7
  %s_root = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 13
  %2 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_root, align 64
  %tobool14.not = icmp eq ptr %3, null
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  %s_flags = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %xor = xor i32 %5, %flags
  %and16 = and i32 %xor, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @deactivate_locked_super(ptr noundef %call9)
  br label %error_bdev

if.end19:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %s_umount = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 14
  tail call void @up_write(ptr noundef %s_umount) #12
  tail call void @blkdev_put(ptr noundef %call, i32 noundef %spec.select) #12
  tail call void @down_write(ptr noundef %s_umount) #12
  br label %if.end32

if.else:                                          ; preds = %if.end13
  %s_mode = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 42
  %6 = ptrtoint ptr %s_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %s_mode, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 39
  %call21 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %s_id, i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef %call)
  %bd_inode.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %bd_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bd_inode.i, align 4
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call23 = tail call i32 @sb_set_blocksize(ptr noundef %call9, i32 noundef %shl.i) #12
  %and24 = lshr i32 %flags, 15
  %and24.lobit = and i32 %and24, 1
  %call26 = tail call i32 %fill_super(ptr noundef %call9, ptr noundef %data, i32 noundef %and24.lobit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @deactivate_locked_super(ptr noundef %call9)
  br label %error36

if.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %s_flags30 = getelementptr inbounds %struct.super_block, ptr %call9, i32 0, i32 10
  %11 = ptrtoint ptr %s_flags30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_flags30, align 4
  %or31 = or i32 %12, 1073741824
  store i32 %or31, ptr %s_flags30, align 4
  %bd_super = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 8
  %13 = ptrtoint ptr %bd_super to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9, ptr %bd_super, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %if.end19
  %14 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_root, align 64
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end32.cleanup_crit_edge, label %if.then.i

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #12
  br label %cleanup

error_s:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %call9 to i32
  br label %error_bdev

error_bdev:                                       ; preds = %error_s, %if.then18, %if.then5
  %error.0 = phi i32 [ -16, %if.then5 ], [ %16, %error_s ], [ -16, %if.then18 ]
  tail call void @blkdev_put(ptr noundef %call, i32 noundef %spec.select) #12
  br label %error36

error36:                                          ; preds = %error_bdev, %if.then28
  %error.1 = phi i32 [ %error.0, %error_bdev ], [ %call26, %if.then28 ]
  %17 = inttoptr i32 %error.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error36, %if.then.i, %if.end32.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %17, %error36 ], [ %call, %entry.cleanup_crit_edge ], [ null, %if.end32.cleanup_crit_edge ], [ %15, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @test_bdev_super(ptr nocapture noundef readonly %s, ptr noundef readnone %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev, align 4
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_bdev_super(ptr nocapture noundef %s, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %data, i32 0, i32 5
  %1 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bd_dev, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 1
  %3 = ptrtoint ptr %s_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %s_dev, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %data, i32 0, i32 17
  %4 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_disk, align 8
  %bdi = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdi, align 4
  %refcnt.i = getelementptr inbounds %struct.backing_dev_info, ptr %7, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !182
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !183

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.bdi_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !172

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.bdi_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bdi_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %bdi_get.exit

bdi_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.bdi_get.exit_crit_edge
  %s_bdi = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 27
  %10 = ptrtoint ptr %s_bdi to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %s_bdi, align 8
  %11 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_bdev, align 4
  %bd_disk4 = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %bd_disk4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bd_disk4, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %queue_flags, align 4
  %19 = and i32 %18, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %bdi_get.exit.if.end_crit_edge, label %if.then

bdi_get.exit.if.end_crit_edge:                    ; preds = %bdi_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %bdi_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 11
  %20 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_iflags, align 8
  %or = or i32 %21, 8
  store i32 %or, ptr %s_iflags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %bdi_get.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kill_block_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev, align 4
  %s_mode = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 42
  %2 = ptrtoint ptr %s_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_mode, align 4
  %bd_super = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %bd_super to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bd_super, align 8
  tail call void @generic_shutdown_super(ptr noundef %sb)
  %call = tail call i32 @sync_blockdev(ptr noundef %1) #12
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @kill_block_super.__already_done, align 1
  br i1 %.b44, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !172

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @kill_block_super.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1396, i32 noundef 9, ptr noundef null) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %or = or i32 %3, 128
  tail call void @blkdev_put(ptr noundef %1, i32 noundef %or) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mount_nodev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %data, ptr nocapture noundef readonly %fill_super) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sget(ptr noundef %fs_type, ptr noundef null, ptr noundef nonnull @set_anon_super, i32 noundef %flags, ptr noundef null)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = lshr i32 %flags, 15
  %and.lobit = and i32 %and, 1
  %call3 = tail call i32 %fill_super(ptr noundef %call, ptr noundef %data, i32 noundef %and.lobit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @deactivate_locked_super(ptr noundef %call)
  %0 = inttoptr i32 %call3 to ptr
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %s_flags = getelementptr inbounds %struct.super_block, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %s_flags, align 4
  %or = or i32 %2, 1073741824
  store i32 %or, ptr %s_flags, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_root, align 64
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %if.then.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end7.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %if.then5 ], [ %call, %entry.cleanup_crit_edge ], [ null, %if.end7.cleanup_crit_edge ], [ %4, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reconfigure_single(ptr nocapture noundef readonly %s, i32 noundef %flags, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_root = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %0 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_root, align 64
  %call = tail call ptr @fs_context_for_reconfigure(ptr noundef %1, i32 noundef %flags, i32 noundef 41943121) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @parse_monolithic_mount_data(ptr noundef %call, ptr noundef %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 @reconfigure_super(ptr noundef %call)
  br label %out

out:                                              ; preds = %if.end5, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end.out_crit_edge ], [ %call6, %if.end5 ]
  tail call void @put_fs_context(ptr noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %ret.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fs_context_for_reconfigure(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parse_monolithic_mount_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fs_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mount_single(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %data, ptr nocapture noundef readonly %fill_super) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sget(ptr noundef %fs_type, ptr noundef nonnull @compare_single, ptr noundef nonnull @set_anon_super, i32 noundef %flags, ptr noundef null)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_root = getelementptr inbounds %struct.super_block, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_root, align 64
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %and = lshr i32 %flags, 15
  %and.lobit = and i32 %and, 1
  %call5 = tail call i32 %fill_super(ptr noundef %call, ptr noundef %data, i32 noundef %and.lobit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end10.thread, label %if.then3.if.then14_crit_edge

if.then3.if.then14_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.end10.thread:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %s_flags = getelementptr inbounds %struct.super_block, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %or = or i32 %3, 1073741824
  store i32 %or, ptr %s_flags, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  %call.i = tail call ptr @fs_context_for_reconfigure(ptr noundef nonnull %1, i32 noundef %flags, i32 noundef 41943121) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call.i to i32
  br label %if.end10

if.end.i:                                         ; preds = %if.else
  %call3.i = tail call i32 @parse_monolithic_mount_data(ptr noundef %call.i, ptr noundef %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i32 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i32, label %if.end.i.out.i_crit_edge, label %if.end5.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = tail call i32 @reconfigure_super(ptr noundef %call.i) #12
  br label %out.i

out.i:                                            ; preds = %if.end5.i, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call3.i, %if.end.i.out.i_crit_edge ], [ %call6.i, %if.end5.i ]
  tail call void @put_fs_context(ptr noundef %call.i) #12
  br label %if.end10

if.end10:                                         ; preds = %out.i, %if.then.i
  %error.0 = phi i32 [ %4, %if.then.i ], [ %ret.0.i, %out.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool11.not = icmp eq i32 %error.0, 0
  br i1 %tobool11.not, label %if.end10.if.end16_crit_edge, label %if.end10.if.then14_crit_edge, !prof !172

if.end10.if.then14_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then14:                                        ; preds = %if.end10.if.then14_crit_edge, %if.then3.if.then14_crit_edge
  %error.040 = phi i32 [ %error.0, %if.end10.if.then14_crit_edge ], [ %call5, %if.then3.if.then14_crit_edge ]
  tail call void @deactivate_locked_super(ptr noundef %call)
  %5 = inttoptr i32 %error.040 to ptr
  br label %cleanup

if.end16:                                         ; preds = %if.end10.if.end16_crit_edge, %if.end10.thread
  %6 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_root, align 64
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end16.cleanup_crit_edge, label %if.then.i33

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i33:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i33, %if.end16.cleanup_crit_edge, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.then14 ], [ %call, %entry.cleanup_crit_edge ], [ null, %if.end16.cleanup_crit_edge ], [ %7, %if.then.i33 ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @compare_single(ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fc, align 4
  %get_tree = getelementptr inbounds %struct.fs_context_operations, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %get_tree to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_tree, align 4
  %call = tail call i32 %5(ptr noundef %fc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %6 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %fs_type = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 2
  %8 = ptrtoint ptr %fs_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_type, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %11) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1507, 0\0A.popsection", ""() #12, !srcloc !189
  unreachable

if.end13:                                         ; preds = %if.end2
  %d_sb = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 9
  %12 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_sb, align 4
  %s_bdi = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %s_bdi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdi, align 8
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %do.end28, label %if.end13.if.end34_crit_edge, !prof !183

if.end13.if.end34_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

do.end28:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1511, i32 noundef 9, ptr noundef null) #12
  br label %if.end34

if.end34:                                         ; preds = %do.end28, %if.end13.if.end34_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !190
  %s_flags = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 10
  %16 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_flags, align 4
  %or = or i32 %17, 536870912
  store i32 %or, ptr %s_flags, align 4
  %security = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 11
  %18 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %security, align 4
  %call48 = tail call i32 @security_sb_set_mnt_opts(ptr noundef %13, ptr noundef %19, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end57, label %if.then56, !prof !172

if.then56:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fc_drop_locked(ptr noundef %fc) #12
  br label %cleanup

if.end57:                                         ; preds = %if.end34
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 4
  %20 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %s_maxbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp59 = icmp slt i64 %21, 0
  br i1 %cmp59, label %do.end75, label %if.end57.cleanup_crit_edge, !prof !183

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end75:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %fs_type76 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 2
  %22 = ptrtoint ptr %fs_type76 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fs_type76, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1535, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %25, i64 noundef %21) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %if.end57.cleanup_crit_edge, %if.then56, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %if.then56 ], [ -16, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %do.end75 ], [ 0, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sb_set_mnt_opts(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_drop_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @super_setup_bdi_name(ptr nocapture noundef %sb, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !191
  %call = tail call ptr @bdi_alloc(i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call1 = call i32 @bdi_register_va(ptr noundef nonnull %call, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #12
  call void @llvm.va_end(ptr nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @bdi_put(ptr noundef nonnull %call) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %s_bdi = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 27
  %2 = ptrtoint ptr %s_bdi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdi, align 8
  %cmp.not = icmp eq ptr %3, @noop_backing_dev_info
  br i1 %cmp.not, label %if.end4.if.end19_crit_edge, label %do.end, !prof !172

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1562, i32 noundef 9, ptr noundef null) #12
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end4.if.end19_crit_edge
  %4 = ptrtoint ptr %s_bdi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %s_bdi, align 8
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 11
  %5 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_iflags, align 8
  %or = or i32 %6, 512
  store i32 %or, ptr %s_iflags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end19 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdi_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdi_register_va(ptr noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @super_setup_bdi(ptr nocapture noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_type = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 5
  %0 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_type, align 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @super_setup_bdi.bdi_seq, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr nonnull @super_setup_bdi.bdi_seq, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @super_setup_bdi.bdi_seq, ptr nonnull @super_setup_bdi.bdi_seq, i32 1, ptr nonnull elementtype(i32) @super_setup_bdi.bdi_seq) #12, !srcloc !193
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !194
  %call1 = tail call i32 (ptr, ptr, ...) @super_setup_bdi_name(ptr noundef %sb, ptr noundef nonnull @.str.13, ptr noundef %3, i32 noundef %asmresult.i.i.i.i.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @freeze_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_active = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_active, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %s_active, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_active, ptr %s_active, i32 1, ptr elementtype(i32) %s_active) #12, !srcloc !195
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  tail call void @down_write(ptr noundef %s_umount) #12
  %s_writers = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 32
  %1 = ptrtoint ptr %s_writers to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %s_writers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @deactivate_locked_super(ptr noundef %sb)
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %3 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_flags, align 4
  %and = and i32 %4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_write(ptr noundef %s_umount) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %s_writers to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %s_writers, align 8
  tail call void @up_write(ptr noundef %s_umount) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %6 = ptrtoint ptr %s_writers to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %s_writers, align 8
  tail call void @up_write(ptr noundef %s_umount) #12
  %rw_sem.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2
  tail call void @percpu_down_write(ptr noundef %rw_sem.i) #12
  tail call void @down_write(ptr noundef %s_umount) #12
  %7 = ptrtoint ptr %s_writers to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %s_writers, align 8
  %add.ptr1.i77 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 1
  tail call void @percpu_down_write(ptr noundef %add.ptr1.i77) #12
  %call15 = tail call i32 @sync_filesystem(ptr noundef %sb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end21, label %if.then17

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %s_writers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %s_writers, align 8
  %add.ptr.i79 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 1
  tail call void @percpu_up_write(ptr noundef %add.ptr.i79) #12
  tail call void @percpu_up_write(ptr noundef %rw_sem.i) #12
  %wait_unfrozen = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 32, i32 1
  tail call void @__wake_up(ptr noundef %wait_unfrozen, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  tail call void @deactivate_locked_super(ptr noundef %sb)
  br label %cleanup

if.end21:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %s_writers to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %s_writers, align 8
  %add.ptr1.i82 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2
  tail call void @percpu_down_write(ptr noundef %add.ptr1.i82) #12
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %10 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_op, align 4
  %freeze_fs = getelementptr inbounds %struct.super_operations, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %freeze_fs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %freeze_fs, align 4
  %tobool24.not = icmp eq ptr %13, null
  br i1 %tobool24.not, label %if.end21.if.end37_crit_edge, label %if.then25

if.end21.if.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then25:                                        ; preds = %if.end21
  %call28 = tail call i32 %13(ptr noundef %sb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then25.if.end37_crit_edge, label %do.end

if.then25.if.end37_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.end:                                           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %14 = ptrtoint ptr %s_writers to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %s_writers, align 8
  %add.ptr.i85 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2
  tail call void @percpu_up_write(ptr noundef %add.ptr.i85) #12
  %add.ptr.i85.1 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 1
  tail call void @percpu_up_write(ptr noundef %add.ptr.i85.1) #12
  tail call void @percpu_up_write(ptr noundef %rw_sem.i) #12
  %wait_unfrozen35 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 32, i32 1
  tail call void @__wake_up(ptr noundef %wait_unfrozen35, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  tail call void @deactivate_locked_super(ptr noundef %sb)
  br label %cleanup

if.end37:                                         ; preds = %if.then25.if.end37_crit_edge, %if.end21.if.end37_crit_edge
  %15 = ptrtoint ptr %s_writers to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %s_writers, align 8
  tail call fastcc void @lockdep_sb_freeze_release(ptr noundef %sb)
  tail call void @up_write(ptr noundef %s_umount) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end, %if.then17, %if.then4, %if.then1, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.then4 ], [ %call15, %if.then17 ], [ %call28, %do.end ], [ 0, %if.end37 ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lockdep_sb_freeze_release(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rw_sem = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 32, i32 2
  br label %__here

__here:                                           ; preds = %__here.__here_crit_edge, %entry
  %level.03 = phi i32 [ 2, %entry ], [ %dec, %__here.__here_crit_edge ]
  %dep_map.i = getelementptr %struct.percpu_rw_semaphore, ptr %rw_sem, i32 %level.03, i32 5
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef ptrtoint (ptr blockaddress(@lockdep_sb_freeze_release, %__here) to i32)) #12
  %dec = add nsw i32 %level.03, -1
  %cmp.not = icmp eq i32 %level.03, 0
  br i1 %cmp.not, label %for.end, label %__here.__here_crit_edge

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

for.end:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thaw_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  tail call void @down_write(ptr noundef %s_umount) #12
  %call = tail call fastcc i32 @thaw_super_locked(ptr noundef %sb)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @thaw_super_locked(ptr noundef %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_writers = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 32
  %0 = ptrtoint ptr %s_writers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_writers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  tail call void @up_write(ptr noundef %s_umount) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %s_writers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %s_writers, align 8
  br label %out

if.end4:                                          ; preds = %if.end
  tail call fastcc void @lockdep_sb_freeze_acquire(ptr noundef %sb)
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %5 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_op, align 4
  %unfreeze_fs = getelementptr inbounds %struct.super_operations, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %unfreeze_fs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unfreeze_fs, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end4.if.end14_crit_edge, label %if.then5

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then5:                                         ; preds = %if.end4
  %call8 = tail call i32 %8(ptr noundef %sb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then5.if.end14_crit_edge, label %do.end

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #15
  tail call fastcc void @lockdep_sb_freeze_release(ptr noundef %sb)
  %s_umount12 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  tail call void @up_write(ptr noundef %s_umount12) #12
  br label %cleanup

if.end14:                                         ; preds = %if.then5.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  %9 = ptrtoint ptr %s_writers to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %s_writers, align 8
  %rw_sem.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 32, i32 2
  %add.ptr.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2
  tail call void @percpu_up_write(ptr noundef %add.ptr.i) #12
  %add.ptr.i.1 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 1
  tail call void @percpu_up_write(ptr noundef %add.ptr.i.1) #12
  tail call void @percpu_up_write(ptr noundef %rw_sem.i) #12
  br label %out

out:                                              ; preds = %if.end14, %if.then1
  %wait_unfrozen = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 32, i32 1
  tail call void @__wake_up(ptr noundef %wait_unfrozen, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  tail call void @deactivate_locked_super(ptr noundef %sb)
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %out ], [ %call8, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sb_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_sb_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @destroy_super_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %destroy_work = getelementptr i8, ptr %head, i32 8
  tail call void @__init_work(ptr noundef %destroy_work, i32 noundef 0) #12
  %0 = ptrtoint ptr %destroy_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %destroy_work, align 4
  %lockdep_map = getelementptr i8, ptr %head, i32 24
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @destroy_super_rcu.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry4 = getelementptr i8, ptr %head, i32 12
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr i8, ptr %head, i32 16
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %head, i32 20
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @destroy_super_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %destroy_work) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_user_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @destroy_super_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rw_sem = getelementptr i8, ptr %work, i32 -780
  tail call void @percpu_free_rwsem(ptr noundef %rw_sem) #12
  %arrayidx.1 = getelementptr i8, ptr %work, i32 -620
  tail call void @percpu_free_rwsem(ptr noundef %arrayidx.1) #12
  %arrayidx.2 = getelementptr i8, ptr %work, i32 -460
  tail call void @percpu_free_rwsem(ptr noundef %arrayidx.2) #12
  %add.ptr = getelementptr i8, ptr %work, i32 -1372
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_free_rwsem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sb_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @super_cache_scan(ptr noundef %shrink, ptr noundef %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %shrink, i32 -1260
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sc, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_umount.i = getelementptr i8, ptr %shrink, i32 -1192
  %call.i = tail call i32 @down_read_trylock(ptr noundef %s_umount.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %pprev.i.i = getelementptr i8, ptr %shrink, i32 -1032
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.i, label %if.then.i.cleanup.sink.split_crit_edge, label %land.lhs.true.i

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

land.lhs.true.i:                                  ; preds = %if.then.i
  %s_root.i = getelementptr i8, ptr %shrink, i32 -1196
  %4 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root.i, align 64
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.cleanup.sink.split_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %s_flags.i = getelementptr i8, ptr %shrink, i32 -1208
  %6 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true4.i.cleanup.sink.split_crit_edge, label %if.end2

land.lhs.true4.i.cleanup.sink.split_crit_edge:    ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end2:                                          ; preds = %land.lhs.true4.i
  %s_op = getelementptr i8, ptr %shrink, i32 -1224
  %8 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_op, align 4
  %nr_cached_objects = getelementptr inbounds %struct.super_operations, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %nr_cached_objects to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nr_cached_objects, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end2.if.end8_crit_edge, label %if.then4

if.end2.if.end8_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 %11(ptr noundef %add.ptr, ptr noundef %sc) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end2.if.end8_crit_edge
  %fs_objects.0 = phi i32 [ %call7, %if.then4 ], [ 0, %if.end2.if.end8_crit_edge ]
  %s_inode_lru = getelementptr i8, ptr %shrink, i32 84
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %12 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %14 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memcg.i, align 4
  %call.i110 = tail call i32 @list_lru_count_one(ptr noundef %s_inode_lru, i32 noundef %13, ptr noundef %15) #12
  %s_dentry_lru = getelementptr i8, ptr %shrink, i32 64
  %16 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nid.i, align 4
  %18 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %memcg.i, align 4
  %call.i113 = tail call i32 @list_lru_count_one(ptr noundef %s_dentry_lru, i32 noundef %17, ptr noundef %19) #12
  %add = add i32 %fs_objects.0, 1
  %add11 = add i32 %add, %call.i110
  %add12 = add i32 %add11, %call.i113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add12)
  %tobool13.not = icmp eq i32 %add12, 0
  %spec.store.select = select i1 %tobool13.not, i32 1, i32 %add12
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %20 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_to_scan, align 4
  %.frozen = freeze i32 %21
  %spec.store.select.frozen = freeze i32 %spec.store.select
  %div = udiv i32 %.frozen, %spec.store.select.frozen
  %22 = mul i32 %div, %spec.store.select.frozen
  %rem17.decomposed = sub i32 %.frozen, %22
  %mul = mul i32 %div, %call.i113
  %mul19 = mul i32 %rem17.decomposed, %call.i113
  %div20 = udiv i32 %mul19, %spec.store.select
  %mul29 = mul i32 %div, %call.i110
  %mul30 = mul i32 %rem17.decomposed, %call.i110
  %div31 = udiv i32 %mul30, %spec.store.select
  %mul40 = mul i32 %div, %fs_objects.0
  %mul41 = mul i32 %rem17.decomposed, %fs_objects.0
  %div42 = udiv i32 %mul41, %spec.store.select
  %add43 = add i32 %div42, %mul40
  %add21 = add i32 %mul, 1
  %add44 = add i32 %add21, %div20
  store i32 %add44, ptr %nr_to_scan, align 4
  %call46 = tail call i32 @prune_dcache_sb(ptr noundef %add.ptr, ptr noundef %sc) #12
  %add32 = add i32 %mul29, 1
  %add47 = add i32 %add32, %div31
  %23 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add47, ptr %nr_to_scan, align 4
  %call49 = tail call i32 @prune_icache_sb(ptr noundef %add.ptr, ptr noundef %sc) #12
  %add50 = add i32 %call49, %call46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add43)
  %tobool51.not = icmp eq i32 %add43, 0
  br i1 %tobool51.not, label %if.end8.cleanup.sink.split_crit_edge, label %if.then52

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then52:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %add53 = add i32 %add43, 1
  %24 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add53, ptr %nr_to_scan, align 4
  %25 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_op, align 4
  %free_cached_objects = getelementptr inbounds %struct.super_operations, ptr %26, i32 0, i32 24
  %27 = ptrtoint ptr %free_cached_objects to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %free_cached_objects, align 4
  %call56 = tail call i32 %28(ptr noundef %add.ptr, ptr noundef %sc) #12
  %add57 = add i32 %call56, %add50
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then52, %if.end8.cleanup.sink.split_crit_edge, %land.lhs.true4.i.cleanup.sink.split_crit_edge, %land.lhs.true.i.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -1, %land.lhs.true4.i.cleanup.sink.split_crit_edge ], [ -1, %land.lhs.true.i.cleanup.sink.split_crit_edge ], [ -1, %if.then.i.cleanup.sink.split_crit_edge ], [ %add57, %if.then52 ], [ %add50, %if.end8.cleanup.sink.split_crit_edge ]
  tail call void @up_read(ptr noundef %s_umount.i) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @super_cache_count(ptr noundef %shrink, ptr noundef %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %shrink, i32 -1260
  %s_flags = getelementptr i8, ptr %shrink, i32 -1208
  %0 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_flags, align 4
  %and = and i32 %1, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !196
  %s_op = getelementptr i8, ptr %shrink, i32 -1224
  %2 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_op, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end.if.end10_crit_edge, label %land.lhs.true

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %do.end
  %nr_cached_objects = getelementptr inbounds %struct.super_operations, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %nr_cached_objects to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nr_cached_objects, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true.if.end10_crit_edge, label %if.then7

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef %add.ptr, ptr noundef %sc) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true.if.end10_crit_edge, %do.end.if.end10_crit_edge
  %total_objects.0 = phi i32 [ %call, %if.then7 ], [ 0, %land.lhs.true.if.end10_crit_edge ], [ 0, %do.end.if.end10_crit_edge ]
  %s_dentry_lru = getelementptr i8, ptr %shrink, i32 64
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %6 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %8 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memcg.i, align 4
  %call.i = tail call i32 @list_lru_count_one(ptr noundef %s_dentry_lru, i32 noundef %7, ptr noundef %9) #12
  %add = add i32 %call.i, %total_objects.0
  %s_inode_lru = getelementptr i8, ptr %shrink, i32 84
  %10 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nid.i, align 4
  %12 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memcg.i, align 4
  %call.i34 = tail call i32 @list_lru_count_one(ptr noundef %s_inode_lru, i32 noundef %11, ptr noundef %13) #12
  %add13 = add i32 %add, %call.i34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add13)
  %tobool14.not = icmp eq i32 %add13, 0
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %add13.frozen = freeze i32 %add13
  %div.i = udiv i32 %add13.frozen, 100
  %14 = mul i32 %div.i, 100
  %rem1.i.decomposed = sub i32 %add13.frozen, %14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_vfs_cache_pressure to i32))
  %15 = load i32, ptr @sysctl_vfs_cache_pressure, align 4
  %mul.i = mul i32 %15, %div.i
  %mul2.i = mul i32 %15, %rem1.i.decomposed
  %div3.i = udiv i32 %mul2.i, 100
  %add.i = add i32 %div3.i, %mul.i
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add.i, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ -2, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prealloc_shrinker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__list_lru_init(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prune_dcache_sb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prune_icache_sb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_count_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_prealloced_shrinker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__iterate_supers(ptr nocapture noundef readonly %f) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  %sb.019 = load ptr, ptr @super_blocks, align 4
  %cmp.not20 = icmp eq ptr %sb.019, @super_blocks
  br i1 %cmp.not20, label %entry.if.end10_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %sb.022 = phi ptr [ %sb.0, %for.inc.for.body_crit_edge ], [ %sb.019, %entry.for.body_crit_edge ]
  %p.021 = phi ptr [ %p.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %pprev.i = getelementptr inbounds %struct.super_block, ptr %sb.022, i32 0, i32 29, i32 1
  %0 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %s_count = getelementptr inbounds %struct.super_block, ptr %sb.022, i32 0, i32 15
  %2 = ptrtoint ptr %s_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %s_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  tail call void %f(ptr noundef %sb.022) #12, !callees !197
  tail call void @_raw_spin_lock(ptr noundef nonnull @sb_lock) #12
  %tobool1.not = icmp eq ptr %p.021, null
  br i1 %tobool1.not, label %if.end.for.inc_crit_edge, label %if.then2

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__put_super(ptr noundef nonnull %p.021)
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %p.1 = phi ptr [ %p.021, %for.body.for.inc_crit_edge ], [ %sb.022, %if.then2 ], [ %sb.022, %if.end.for.inc_crit_edge ]
  %4 = ptrtoint ptr %sb.022 to i32
  call void @__asan_load4_noabort(i32 %4)
  %sb.0 = load ptr, ptr %sb.022, align 4
  %cmp.not = icmp eq ptr %sb.0, @super_blocks
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool8.not = icmp eq ptr %p.1, null
  br i1 %tobool8.not, label %for.end.if.end10_crit_edge, label %if.then9

for.end.if.end10_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__put_super(ptr noundef nonnull %p.1)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sb_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_emergency_remount_callback(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  tail call void @down_write(ptr noundef %s_umount) #12
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %0 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_root, align 64
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true2

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true2:                                   ; preds = %land.lhs.true
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %6 = and i32 %5, 536870913
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %6)
  %.not = icmp eq i32 %6, 536870912
  br i1 %.not, label %if.then, label %land.lhs.true2.if.end13_crit_edge

land.lhs.true2.if.end13_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true2
  %call6 = tail call ptr @fs_context_for_reconfigure(ptr noundef nonnull %1, i32 noundef 134217729, i32 noundef 1) #12
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.if.end13_crit_edge, label %if.then8

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then8:                                         ; preds = %if.then
  %call9 = tail call i32 @parse_monolithic_mount_data(ptr noundef %call6, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp eq i32 %call9, 0
  br i1 %cmp, label %if.then10, label %if.then8.if.end_crit_edge

if.then8.if.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 @reconfigure_super(ptr noundef %call6)
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then8.if.end_crit_edge
  tail call void @put_fs_context(ptr noundef %call6) #12
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then.if.end13_crit_edge, %land.lhs.true2.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  tail call void @up_write(ptr noundef %s_umount) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_thaw_all_callback(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  tail call void @down_write(ptr noundef %s_umount) #12
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %0 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_root, align 64
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %and = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @emergency_thaw_bdev(ptr noundef %sb) #12
  %call = tail call fastcc i32 @thaw_super_locked(ptr noundef %sb)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @up_write(ptr noundef %s_umount) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_thaw_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lockdep_sb_freeze_acquire(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rw_sem = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 32, i32 2
  br label %__here

__here:                                           ; preds = %__here.__here_crit_edge, %entry
  %level.03 = phi i32 [ 0, %entry ], [ %inc, %__here.__here_crit_edge ]
  %dep_map.i = getelementptr %struct.percpu_rw_semaphore, ptr %rw_sem, i32 %level.03, i32 5
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@lockdep_sb_freeze_acquire, %__here) to i32)) #12
  %inc = add nuw nsw i32 %level.03, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %__here.__here_crit_edge

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

for.end:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !101, !103, !104, !106, !107, !109, !111, !112, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !133, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !159, !160, !161}
!llvm.named.register.sp = !{!162}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @__ksymtab_deactivate_locked_super, !1, !"__ksymtab_deactivate_locked_super", i1 false, i1 false}
!1 = !{!"../fs/super.c", i32 349, i32 1}
!2 = !{ptr @__ksymtab_deactivate_super, !3, !"__ksymtab_deactivate_super", i1 false, i1 false}
!3 = !{!"../fs/super.c", i32 367, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/super.c", i32 465, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @generic_shutdown_super._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @generic_shutdown_super._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_generic_shutdown_super, !11, !"__ksymtab_generic_shutdown_super", i1 false, i1 false}
!11 = !{!"../fs/super.c", i32 483, i32 1}
!12 = !{ptr @__ksymtab_sget_fc, !13, !"__ksymtab_sget_fc", i1 false, i1 false}
!13 = !{!"../fs/super.c", i32 566, i32 1}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../fs/super.c", i32 582, i32 35}
!16 = !{ptr @__ksymtab_sget, !17, !"__ksymtab_sget", i1 false, i1 false}
!17 = !{!"../fs/super.c", i32 634, i32 1}
!18 = !{ptr @__ksymtab_drop_super, !19, !"__ksymtab_drop_super", i1 false, i1 false}
!19 = !{!"../fs/super.c", i32 642, i32 1}
!20 = !{ptr @__ksymtab_drop_super_exclusive, !21, !"__ksymtab_drop_super_exclusive", i1 false, i1 false}
!21 = !{!"../fs/super.c", i32 649, i32 1}
!22 = !{ptr @__ksymtab_iterate_supers_type, !23, !"__ksymtab_iterate_supers_type", i1 false, i1 false}
!23 = !{!"../fs/super.c", i32 741, i32 1}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/super.c", i32 910, i32 4}
!26 = !{ptr @emergency_remount.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../fs/super.c", i32 969, i32 3}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @emergency_thaw_all.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../fs/super.c", i32 1003, i32 3}
!31 = !{ptr @__ksymtab_get_anon_bdev, !32, !"__ksymtab_get_anon_bdev", i1 false, i1 false}
!32 = !{!"../fs/super.c", i32 1039, i32 1}
!33 = !{ptr @__ksymtab_free_anon_bdev, !34, !"__ksymtab_free_anon_bdev", i1 false, i1 false}
!34 = !{!"../fs/super.c", i32 1045, i32 1}
!35 = !{ptr @__ksymtab_set_anon_super, !36, !"__ksymtab_set_anon_super", i1 false, i1 false}
!36 = !{!"../fs/super.c", i32 1051, i32 1}
!37 = !{ptr @__ksymtab_kill_anon_super, !38, !"__ksymtab_kill_anon_super", i1 false, i1 false}
!38 = !{!"../fs/super.c", i32 1059, i32 1}
!39 = !{ptr @__ksymtab_kill_litter_super, !40, !"__ksymtab_kill_litter_super", i1 false, i1 false}
!40 = !{!"../fs/super.c", i32 1067, i32 1}
!41 = !{ptr @__ksymtab_set_anon_super_fc, !42, !"__ksymtab_set_anon_super_fc", i1 false, i1 false}
!42 = !{!"../fs/super.c", i32 1073, i32 1}
!43 = !{ptr @__ksymtab_vfs_get_super, !44, !"__ksymtab_vfs_get_super", i1 false, i1 false}
!44 = !{!"../fs/super.c", i32 1163, i32 1}
!45 = !{ptr @__ksymtab_get_tree_nodev, !46, !"__ksymtab_get_tree_nodev", i1 false, i1 false}
!46 = !{!"../fs/super.c", i32 1171, i32 1}
!47 = !{ptr @__ksymtab_get_tree_single, !48, !"__ksymtab_get_tree_single", i1 false, i1 false}
!48 = !{!"../fs/super.c", i32 1179, i32 1}
!49 = !{ptr @__ksymtab_get_tree_single_reconf, !50, !"__ksymtab_get_tree_single_reconf", i1 false, i1 false}
!50 = !{!"../fs/super.c", i32 1187, i32 1}
!51 = !{ptr @__ksymtab_get_tree_keyed, !52, !"__ksymtab_get_tree_keyed", i1 false, i1 false}
!52 = !{!"../fs/super.c", i32 1197, i32 1}
!53 = !{ptr @.str.5, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/super.c", i32 1240, i32 10}
!55 = !{ptr @.str.6, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/super.c", i32 1244, i32 3}
!57 = !{ptr @.str.7, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/super.c", i32 1255, i32 3}
!59 = !{ptr @.str.8, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/super.c", i32 1272, i32 4}
!61 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/super.c", i32 1290, i32 38}
!63 = !{ptr @__ksymtab_get_tree_bdev, !64, !"__ksymtab_get_tree_bdev", i1 false, i1 false}
!64 = !{!"../fs/super.c", i32 1306, i32 1}
!65 = !{ptr @__ksymtab_mount_bdev, !66, !"__ksymtab_mount_bdev", i1 false, i1 false}
!66 = !{!"../fs/super.c", i32 1386, i32 1}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../fs/super.c", i32 1396, i32 2}
!69 = !{ptr @__ksymtab_kill_block_super, !70, !"__ksymtab_kill_block_super", i1 false, i1 false}
!70 = !{!"../fs/super.c", i32 1400, i32 1}
!71 = !{ptr @__ksymtab_mount_nodev, !72, !"__ksymtab_mount_nodev", i1 false, i1 false}
!72 = !{!"../fs/super.c", i32 1421, i32 1}
!73 = !{ptr @__ksymtab_mount_single, !74, !"__ksymtab_mount_single", i1 false, i1 false}
!74 = !{!"../fs/super.c", i32 1476, i32 1}
!75 = !{ptr @.str.10, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/super.c", i32 1502, i32 3}
!77 = !{ptr @.str.11, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @vfs_get_tree._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @vfs_get_tree._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.12, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/super.c", i32 1534, i32 2}
!82 = !{ptr @__ksymtab_vfs_get_tree, !83, !"__ksymtab_vfs_get_tree", i1 false, i1 false}
!83 = !{!"../fs/super.c", i32 1539, i32 1}
!84 = !{ptr @__ksymtab_super_setup_bdi_name, !85, !"__ksymtab_super_setup_bdi_name", i1 false, i1 false}
!85 = !{!"../fs/super.c", i32 1568, i32 1}
!86 = !{ptr @super_setup_bdi.bdi_seq, !87, !"bdi_seq", i1 false, i1 false}
!87 = !{!"../fs/super.c", i32 1576, i32 23}
!88 = !{ptr @.str.13, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/super.c", i32 1578, i32 34}
!90 = !{ptr @__ksymtab_super_setup_bdi, !91, !"__ksymtab_super_setup_bdi", i1 false, i1 false}
!91 = !{!"../fs/super.c", i32 1581, i32 1}
!92 = !{ptr @.str.14, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/super.c", i32 1708, i32 4}
!94 = !{ptr @.str.15, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @freeze_super._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @freeze_super._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @__ksymtab_freeze_super, !98, !"__ksymtab_freeze_super", i1 false, i1 false}
!98 = !{!"../fs/super.c", i32 1726, i32 1}
!99 = !{ptr @__ksymtab_thaw_super, !100, !"__ksymtab_thaw_super", i1 false, i1 false}
!100 = !{!"../fs/super.c", i32 1774, i32 1}
!101 = !{ptr @.str.16, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/super.c", i32 45, i32 8}
!103 = !{ptr @sb_lock, !102, !"sb_lock", i1 false, i1 false}
!104 = !{ptr @destroy_super_rcu.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../fs/super.c", i32 170, i32 2}
!106 = !{ptr @.str.17, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @alloc_super.default_op, !108, !"default_op", i1 false, i1 false}
!108 = !{!"../fs/super.c", i32 203, i32 39}
!109 = !{ptr @alloc_super.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../fs/super.c", i32 211, i32 2}
!111 = !{ptr @.str.18, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.19, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/super.c", i32 212, i32 2}
!114 = !{ptr @alloc_super.__key.20, !115, !"__key", i1 false, i1 false}
!115 = !{!"../fs/super.c", i32 239, i32 2}
!116 = !{ptr @.str.21, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @alloc_super.__key.22, !118, !"__key", i1 false, i1 false}
!118 = !{!"../fs/super.c", i32 246, i32 2}
!119 = !{ptr @.str.23, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @alloc_super.__key.24, !121, !"__key", i1 false, i1 false}
!121 = !{!"../fs/super.c", i32 248, i32 2}
!122 = !{ptr @.str.25, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @alloc_super.__key.26, !124, !"__key", i1 false, i1 false}
!124 = !{!"../fs/super.c", i32 250, i32 2}
!125 = !{ptr @.str.27, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @alloc_super.__key.28, !127, !"__key", i1 false, i1 false}
!127 = !{!"../fs/super.c", i32 254, i32 2}
!128 = !{ptr @.str.29, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.30, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/super.c", i32 255, i32 2}
!131 = !{ptr @alloc_super.__key.31, !132, !"__key", i1 false, i1 false}
!132 = !{!"../fs/super.c", i32 256, i32 2}
!133 = !{ptr @.str.32, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.33, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/super.c", i32 48, i32 2}
!136 = !{ptr @.str.34, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/super.c", i32 49, i32 2}
!138 = !{ptr @.str.35, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/super.c", i32 50, i32 2}
!140 = distinct !{null, !141, !"sb_writers_name", i1 false, i1 false}
!141 = !{!"../fs/super.c", i32 47, i32 14}
!142 = !{ptr @super_blocks, !143, !"super_blocks", i1 false, i1 false}
!143 = !{!"../fs/super.c", i32 44, i32 8}
!144 = !{ptr @.str.36, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/super.c", i32 960, i32 2}
!146 = !{ptr @.str.37, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @do_emergency_remount._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @do_emergency_remount._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.38, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/super.c", i32 989, i32 2}
!151 = !{ptr @.str.39, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @do_thaw_all._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @do_thaw_all._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.40, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/super.c", i32 1008, i32 8}
!156 = !{ptr @unnamed_dev_ida, !155, !"unnamed_dev_ida", i1 false, i1 false}
!157 = !{ptr @.str.41, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/super.c", i32 1747, i32 4}
!159 = !{ptr @.str.42, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @thaw_super_locked._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @thaw_super_locked._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{!"sp"}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{i64 2148714587}
!174 = !{i64 2148629027, i64 2148629059, i64 2148629088, i64 2148629122, i64 2148629153, i64 2148629176}
!175 = !{i64 2149912360}
!176 = !{i64 2148713508}
!177 = !{i64 2148628217, i64 2148628249, i64 2148628278, i64 2148628312, i64 2148628343, i64 2148628366}
!178 = !{i64 2148713737}
!179 = !{i64 2148624451}
!180 = !{i64 1111051, i64 1111076, i64 1111098, i64 1111114, i64 1111126, i64 1111146, i64 1111170, i64 1111186, i64 1111198}
!181 = !{i64 2148624639}
!182 = !{i64 2148626562, i64 2148626594, i64 2148626623, i64 2148626657, i64 2148626688, i64 2148626711}
!183 = !{!"branch_weights", i32 1, i32 2000}
!184 = !{i8 0, i8 2}
!185 = !{i64 2155104575}
!186 = !{i64 2155107540}
!187 = !{i64 2155122699, i64 2155123175, i64 2155122736, i64 2155122792, i64 2155122826, i64 2155122850, i64 2155122891, i64 2155122912, i64 2155122940, i64 2155122974}
!188 = !{i64 2155136587, i64 2155137063, i64 2155136624, i64 2155136680, i64 2155136714, i64 2155136738, i64 2155136779, i64 2155136800, i64 2155136828, i64 2155136862}
!189 = !{i64 2155147965, i64 2155148441, i64 2155148002, i64 2155148058, i64 2155148092, i64 2155148116, i64 2155148157, i64 2155148178, i64 2155148206, i64 2155148240}
!190 = !{i64 2155149842}
!191 = !{!"auto-init"}
!192 = !{i64 2148710467}
!193 = !{i64 2148625752, i64 2148625784, i64 2148625813, i64 2148625847, i64 2148625878, i64 2148625901}
!194 = !{i64 2148710696}
!195 = !{i64 2148625032, i64 2148625058, i64 2148625087, i64 2148625121, i64 2148625152, i64 2148625175}
!196 = !{i64 2155053068}
!197 = !{ptr @do_emergency_remount_callback, ptr @do_thaw_all_callback}
