; ModuleID = '/llk/IR_all_yes/fs/inode.c_pt.bc'
source_filename = "../fs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+empty_aops\22, \22a\22\09"
module asm "\09.weak\09__crc_empty_aops\09\09\09\09"
module asm "\09.long\09__crc_empty_aops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_empty_aops:\09\09\09\09\09"
module asm "\09.asciz \09\22empty_aops\22\09\09\09\09\09"
module asm "__kstrtabns_empty_aops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inode_init_always\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_init_always\09\09\09\09"
module asm "\09.long\09__crc_inode_init_always\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_init_always:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_init_always\22\09\09\09\09\09"
module asm "__kstrtabns_inode_init_always:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+free_inode_nonrcu\22, \22a\22\09"
module asm "\09.weak\09__crc_free_inode_nonrcu\09\09\09\09"
module asm "\09.long\09__crc_free_inode_nonrcu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_inode_nonrcu:\09\09\09\09\09"
module asm "\09.asciz \09\22free_inode_nonrcu\22\09\09\09\09\09"
module asm "__kstrtabns_free_inode_nonrcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__destroy_inode\22, \22a\22\09"
module asm "\09.weak\09__crc___destroy_inode\09\09\09\09"
module asm "\09.long\09__crc___destroy_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___destroy_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22__destroy_inode\22\09\09\09\09\09"
module asm "__kstrtabns___destroy_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drop_nlink\22, \22a\22\09"
module asm "\09.weak\09__crc_drop_nlink\09\09\09\09"
module asm "\09.long\09__crc_drop_nlink\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drop_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22drop_nlink\22\09\09\09\09\09"
module asm "__kstrtabns_drop_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+clear_nlink\22, \22a\22\09"
module asm "\09.weak\09__crc_clear_nlink\09\09\09\09"
module asm "\09.long\09__crc_clear_nlink\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clear_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22clear_nlink\22\09\09\09\09\09"
module asm "__kstrtabns_clear_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_nlink\22, \22a\22\09"
module asm "\09.weak\09__crc_set_nlink\09\09\09\09"
module asm "\09.long\09__crc_set_nlink\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22set_nlink\22\09\09\09\09\09"
module asm "__kstrtabns_set_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inc_nlink\22, \22a\22\09"
module asm "\09.weak\09__crc_inc_nlink\09\09\09\09"
module asm "\09.long\09__crc_inc_nlink\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inc_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22inc_nlink\22\09\09\09\09\09"
module asm "__kstrtabns_inc_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+address_space_init_once\22, \22a\22\09"
module asm "\09.weak\09__crc_address_space_init_once\09\09\09\09"
module asm "\09.long\09__crc_address_space_init_once\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_address_space_init_once:\09\09\09\09\09"
module asm "\09.asciz \09\22address_space_init_once\22\09\09\09\09\09"
module asm "__kstrtabns_address_space_init_once:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inode_init_once\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_init_once\09\09\09\09"
module asm "\09.long\09__crc_inode_init_once\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_init_once:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_init_once\22\09\09\09\09\09"
module asm "__kstrtabns_inode_init_once:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ihold\22, \22a\22\09"
module asm "\09.weak\09__crc_ihold\09\09\09\09"
module asm "\09.long\09__crc_ihold\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ihold:\09\09\09\09\09"
module asm "\09.asciz \09\22ihold\22\09\09\09\09\09"
module asm "__kstrtabns_ihold:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inode_sb_list_add\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_sb_list_add\09\09\09\09"
module asm "\09.long\09__crc_inode_sb_list_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_sb_list_add:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_sb_list_add\22\09\09\09\09\09"
module asm "__kstrtabns_inode_sb_list_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__insert_inode_hash\22, \22a\22\09"
module asm "\09.weak\09__crc___insert_inode_hash\09\09\09\09"
module asm "\09.long\09__crc___insert_inode_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___insert_inode_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22__insert_inode_hash\22\09\09\09\09\09"
module asm "__kstrtabns___insert_inode_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__remove_inode_hash\22, \22a\22\09"
module asm "\09.weak\09__crc___remove_inode_hash\09\09\09\09"
module asm "\09.long\09__crc___remove_inode_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___remove_inode_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22__remove_inode_hash\22\09\09\09\09\09"
module asm "__kstrtabns___remove_inode_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+clear_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_clear_inode\09\09\09\09"
module asm "\09.long\09__crc_clear_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clear_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22clear_inode\22\09\09\09\09\09"
module asm "__kstrtabns_clear_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+evict_inodes\22, \22a\22\09"
module asm "\09.weak\09__crc_evict_inodes\09\09\09\09"
module asm "\09.long\09__crc_evict_inodes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_evict_inodes:\09\09\09\09\09"
module asm "\09.asciz \09\22evict_inodes\22\09\09\09\09\09"
module asm "__kstrtabns_evict_inodes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_next_ino\22, \22a\22\09"
module asm "\09.weak\09__crc_get_next_ino\09\09\09\09"
module asm "\09.long\09__crc_get_next_ino\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_next_ino:\09\09\09\09\09"
module asm "\09.asciz \09\22get_next_ino\22\09\09\09\09\09"
module asm "__kstrtabns_get_next_ino:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+new_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_new_inode\09\09\09\09"
module asm "\09.long\09__crc_new_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_new_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22new_inode\22\09\09\09\09\09"
module asm "__kstrtabns_new_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lockdep_annotate_inode_mutex_key\22, \22a\22\09"
module asm "\09.weak\09__crc_lockdep_annotate_inode_mutex_key\09\09\09\09"
module asm "\09.long\09__crc_lockdep_annotate_inode_mutex_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockdep_annotate_inode_mutex_key:\09\09\09\09\09"
module asm "\09.asciz \09\22lockdep_annotate_inode_mutex_key\22\09\09\09\09\09"
module asm "__kstrtabns_lockdep_annotate_inode_mutex_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unlock_new_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_unlock_new_inode\09\09\09\09"
module asm "\09.long\09__crc_unlock_new_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unlock_new_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22unlock_new_inode\22\09\09\09\09\09"
module asm "__kstrtabns_unlock_new_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+discard_new_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_discard_new_inode\09\09\09\09"
module asm "\09.long\09__crc_discard_new_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_discard_new_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22discard_new_inode\22\09\09\09\09\09"
module asm "__kstrtabns_discard_new_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lock_two_nondirectories\22, \22a\22\09"
module asm "\09.weak\09__crc_lock_two_nondirectories\09\09\09\09"
module asm "\09.long\09__crc_lock_two_nondirectories\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lock_two_nondirectories:\09\09\09\09\09"
module asm "\09.asciz \09\22lock_two_nondirectories\22\09\09\09\09\09"
module asm "__kstrtabns_lock_two_nondirectories:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unlock_two_nondirectories\22, \22a\22\09"
module asm "\09.weak\09__crc_unlock_two_nondirectories\09\09\09\09"
module asm "\09.long\09__crc_unlock_two_nondirectories\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unlock_two_nondirectories:\09\09\09\09\09"
module asm "\09.asciz \09\22unlock_two_nondirectories\22\09\09\09\09\09"
module asm "__kstrtabns_unlock_two_nondirectories:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inode_insert5\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_insert5\09\09\09\09"
module asm "\09.long\09__crc_inode_insert5\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_insert5:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_insert5\22\09\09\09\09\09"
module asm "__kstrtabns_inode_insert5:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iget5_locked\22, \22a\22\09"
module asm "\09.weak\09__crc_iget5_locked\09\09\09\09"
module asm "\09.long\09__crc_iget5_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iget5_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22iget5_locked\22\09\09\09\09\09"
module asm "__kstrtabns_iget5_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iget_locked\22, \22a\22\09"
module asm "\09.weak\09__crc_iget_locked\09\09\09\09"
module asm "\09.long\09__crc_iget_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iget_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22iget_locked\22\09\09\09\09\09"
module asm "__kstrtabns_iget_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iunique\22, \22a\22\09"
module asm "\09.weak\09__crc_iunique\09\09\09\09"
module asm "\09.long\09__crc_iunique\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iunique:\09\09\09\09\09"
module asm "\09.asciz \09\22iunique\22\09\09\09\09\09"
module asm "__kstrtabns_iunique:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+igrab\22, \22a\22\09"
module asm "\09.weak\09__crc_igrab\09\09\09\09"
module asm "\09.long\09__crc_igrab\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_igrab:\09\09\09\09\09"
module asm "\09.asciz \09\22igrab\22\09\09\09\09\09"
module asm "__kstrtabns_igrab:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ilookup5_nowait\22, \22a\22\09"
module asm "\09.weak\09__crc_ilookup5_nowait\09\09\09\09"
module asm "\09.long\09__crc_ilookup5_nowait\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ilookup5_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22ilookup5_nowait\22\09\09\09\09\09"
module asm "__kstrtabns_ilookup5_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ilookup5\22, \22a\22\09"
module asm "\09.weak\09__crc_ilookup5\09\09\09\09"
module asm "\09.long\09__crc_ilookup5\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ilookup5:\09\09\09\09\09"
module asm "\09.asciz \09\22ilookup5\22\09\09\09\09\09"
module asm "__kstrtabns_ilookup5:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ilookup\22, \22a\22\09"
module asm "\09.weak\09__crc_ilookup\09\09\09\09"
module asm "\09.long\09__crc_ilookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ilookup:\09\09\09\09\09"
module asm "\09.asciz \09\22ilookup\22\09\09\09\09\09"
module asm "__kstrtabns_ilookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+find_inode_nowait\22, \22a\22\09"
module asm "\09.weak\09__crc_find_inode_nowait\09\09\09\09"
module asm "\09.long\09__crc_find_inode_nowait\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_inode_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22find_inode_nowait\22\09\09\09\09\09"
module asm "__kstrtabns_find_inode_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+find_inode_rcu\22, \22a\22\09"
module asm "\09.weak\09__crc_find_inode_rcu\09\09\09\09"
module asm "\09.long\09__crc_find_inode_rcu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_inode_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22find_inode_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_find_inode_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+find_inode_by_ino_rcu\22, \22a\22\09"
module asm "\09.weak\09__crc_find_inode_by_ino_rcu\09\09\09\09"
module asm "\09.long\09__crc_find_inode_by_ino_rcu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_inode_by_ino_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22find_inode_by_ino_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_find_inode_by_ino_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+insert_inode_locked\22, \22a\22\09"
module asm "\09.weak\09__crc_insert_inode_locked\09\09\09\09"
module asm "\09.long\09__crc_insert_inode_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_insert_inode_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22insert_inode_locked\22\09\09\09\09\09"
module asm "__kstrtabns_insert_inode_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+insert_inode_locked4\22, \22a\22\09"
module asm "\09.weak\09__crc_insert_inode_locked4\09\09\09\09"
module asm "\09.long\09__crc_insert_inode_locked4\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_insert_inode_locked4:\09\09\09\09\09"
module asm "\09.asciz \09\22insert_inode_locked4\22\09\09\09\09\09"
module asm "__kstrtabns_insert_inode_locked4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_delete_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_delete_inode\09\09\09\09"
module asm "\09.long\09__crc_generic_delete_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_delete_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_delete_inode\22\09\09\09\09\09"
module asm "__kstrtabns_generic_delete_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iput\22, \22a\22\09"
module asm "\09.weak\09__crc_iput\09\09\09\09"
module asm "\09.long\09__crc_iput\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iput:\09\09\09\09\09"
module asm "\09.asciz \09\22iput\22\09\09\09\09\09"
module asm "__kstrtabns_iput:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bmap\22, \22a\22\09"
module asm "\09.weak\09__crc_bmap\09\09\09\09"
module asm "\09.long\09__crc_bmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmap:\09\09\09\09\09"
module asm "\09.asciz \09\22bmap\22\09\09\09\09\09"
module asm "__kstrtabns_bmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_update_time\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_update_time\09\09\09\09"
module asm "\09.long\09__crc_generic_update_time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_update_time\22\09\09\09\09\09"
module asm "__kstrtabns_generic_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inode_update_time\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_update_time\09\09\09\09"
module asm "\09.long\09__crc_inode_update_time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_update_time\22\09\09\09\09\09"
module asm "__kstrtabns_inode_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+touch_atime\22, \22a\22\09"
module asm "\09.weak\09__crc_touch_atime\09\09\09\09"
module asm "\09.long\09__crc_touch_atime\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_touch_atime:\09\09\09\09\09"
module asm "\09.asciz \09\22touch_atime\22\09\09\09\09\09"
module asm "__kstrtabns_touch_atime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+should_remove_suid\22, \22a\22\09"
module asm "\09.weak\09__crc_should_remove_suid\09\09\09\09"
module asm "\09.long\09__crc_should_remove_suid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_should_remove_suid:\09\09\09\09\09"
module asm "\09.asciz \09\22should_remove_suid\22\09\09\09\09\09"
module asm "__kstrtabns_should_remove_suid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+file_remove_privs\22, \22a\22\09"
module asm "\09.weak\09__crc_file_remove_privs\09\09\09\09"
module asm "\09.long\09__crc_file_remove_privs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_remove_privs:\09\09\09\09\09"
module asm "\09.asciz \09\22file_remove_privs\22\09\09\09\09\09"
module asm "__kstrtabns_file_remove_privs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+file_update_time\22, \22a\22\09"
module asm "\09.weak\09__crc_file_update_time\09\09\09\09"
module asm "\09.long\09__crc_file_update_time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22file_update_time\22\09\09\09\09\09"
module asm "__kstrtabns_file_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+file_modified\22, \22a\22\09"
module asm "\09.weak\09__crc_file_modified\09\09\09\09"
module asm "\09.long\09__crc_file_modified\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_modified:\09\09\09\09\09"
module asm "\09.asciz \09\22file_modified\22\09\09\09\09\09"
module asm "__kstrtabns_file_modified:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inode_needs_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_needs_sync\09\09\09\09"
module asm "\09.long\09__crc_inode_needs_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_needs_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_needs_sync\22\09\09\09\09\09"
module asm "__kstrtabns_inode_needs_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+init_special_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_init_special_inode\09\09\09\09"
module asm "\09.long\09__crc_init_special_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_special_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22init_special_inode\22\09\09\09\09\09"
module asm "__kstrtabns_init_special_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inode_init_owner\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_init_owner\09\09\09\09"
module asm "\09.long\09__crc_inode_init_owner\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_init_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_init_owner\22\09\09\09\09\09"
module asm "__kstrtabns_inode_init_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inode_owner_or_capable\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_owner_or_capable\09\09\09\09"
module asm "\09.long\09__crc_inode_owner_or_capable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_owner_or_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_owner_or_capable\22\09\09\09\09\09"
module asm "__kstrtabns_inode_owner_or_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inode_dio_wait\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_dio_wait\09\09\09\09"
module asm "\09.long\09__crc_inode_dio_wait\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_dio_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_dio_wait\22\09\09\09\09\09"
module asm "__kstrtabns_inode_dio_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inode_set_flags\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_set_flags\09\09\09\09"
module asm "\09.long\09__crc_inode_set_flags\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_set_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_set_flags\22\09\09\09\09\09"
module asm "__kstrtabns_inode_set_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inode_nohighmem\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_nohighmem\09\09\09\09"
module asm "\09.long\09__crc_inode_nohighmem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_nohighmem:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_nohighmem\22\09\09\09\09\09"
module asm "__kstrtabns_inode_nohighmem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+timestamp_truncate\22, \22a\22\09"
module asm "\09.weak\09__crc_timestamp_truncate\09\09\09\09"
module asm "\09.long\09__crc_timestamp_truncate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timestamp_truncate:\09\09\09\09\09"
module asm "\09.asciz \09\22timestamp_truncate\22\09\09\09\09\09"
module asm "__kstrtabns_timestamp_truncate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+current_time\22, \22a\22\09"
module asm "\09.weak\09__crc_current_time\09\09\09\09"
module asm "\09.long\09__crc_current_time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_current_time:\09\09\09\09\09"
module asm "\09.asciz \09\22current_time\22\09\09\09\09\09"
module asm "__kstrtabns_current_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.inodes_stat_t = type { i32, i32, [5 x i32] }
%struct.vm_event_state = type { [76 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.60 }
%union.anon.60 = type { i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.17 }
%union.anon.17 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.80 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.81 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.82 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.83 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.34 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.34 = type { %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.79 }
%union.anon.79 = type { %struct.kuid_t }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.path = type { ptr, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }

@empty_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } zeroinitializer, align 32
@__kstrtab_empty_aops = external dso_local constant [0 x i8], align 1
@__kstrtabns_empty_aops = external dso_local constant [0 x i8], align 1
@__ksymtab_empty_aops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @empty_aops to i32), ptr @__kstrtab_empty_aops, ptr @__kstrtabns_empty_aops }, section "___ksymtab+empty_aops", align 4
@__initcall__kmod_inode__362_140_init_fs_inode_sysctlsearly = internal global ptr @init_fs_inode_sysctls, section ".initcallearly.init", align 4
@inode_init_always.empty_iops = internal constant %struct.inode_operations zeroinitializer, align 128
@inode_init_always.no_open_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @no_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@inode_init_always.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&inode->i_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&sb->s_type->i_lock_key\00", [40 x i8] zeroinitializer }, align 32
@inode_init_always.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&inode->i_rwsem\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&sb->s_type->i_mutex_key\00", [39 x i8] zeroinitializer }, align 32
@inode_init_always.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&mapping->invalidate_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mapping.invalidate_lock\00", [40 x i8] zeroinitializer }, align 32
@nr_inodes = weak dso_local global i32 0, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_inode_init_always = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_init_always = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_init_always = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_init_always to i32), ptr @__kstrtab_inode_init_always, ptr @__kstrtabns_inode_init_always }, section "___ksymtab+inode_init_always", align 4
@inode_cachep = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__kstrtab_free_inode_nonrcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_inode_nonrcu = external dso_local constant [0 x i8], align 1
@__ksymtab_free_inode_nonrcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_inode_nonrcu to i32), ptr @__kstrtab_free_inode_nonrcu, ptr @__kstrtabns_free_inode_nonrcu }, section "___ksymtab+free_inode_nonrcu", align 4
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fs/inode.c\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab___destroy_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns___destroy_inode = external dso_local constant [0 x i8], align 1
@__ksymtab___destroy_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__destroy_inode to i32), ptr @__kstrtab___destroy_inode, ptr @__kstrtabns___destroy_inode }, section "___ksymtab+__destroy_inode", align 4
@__kstrtab_drop_nlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_drop_nlink = external dso_local constant [0 x i8], align 1
@__ksymtab_drop_nlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drop_nlink to i32), ptr @__kstrtab_drop_nlink, ptr @__kstrtabns_drop_nlink }, section "___ksymtab+drop_nlink", align 4
@__kstrtab_clear_nlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_clear_nlink = external dso_local constant [0 x i8], align 1
@__ksymtab_clear_nlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clear_nlink to i32), ptr @__kstrtab_clear_nlink, ptr @__kstrtabns_clear_nlink }, section "___ksymtab+clear_nlink", align 4
@__kstrtab_set_nlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_nlink = external dso_local constant [0 x i8], align 1
@__ksymtab_set_nlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_nlink to i32), ptr @__kstrtab_set_nlink, ptr @__kstrtabns_set_nlink }, section "___ksymtab+set_nlink", align 4
@__kstrtab_inc_nlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_inc_nlink = external dso_local constant [0 x i8], align 1
@__ksymtab_inc_nlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inc_nlink to i32), ptr @__kstrtab_inc_nlink, ptr @__kstrtabns_inc_nlink }, section "___ksymtab+inc_nlink", align 4
@__kstrtab_address_space_init_once = external dso_local constant [0 x i8], align 1
@__kstrtabns_address_space_init_once = external dso_local constant [0 x i8], align 1
@__ksymtab_address_space_init_once = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @address_space_init_once to i32), ptr @__kstrtab_address_space_init_once, ptr @__kstrtabns_address_space_init_once }, section "___ksymtab+address_space_init_once", align 4
@inode_init_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&inode->i_size_seqcount\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_inode_init_once = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_init_once = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_init_once = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_init_once to i32), ptr @__kstrtab_inode_init_once, ptr @__kstrtabns_inode_init_once }, section "___ksymtab+inode_init_once", align 4
@__kstrtab_ihold = external dso_local constant [0 x i8], align 1
@__kstrtabns_ihold = external dso_local constant [0 x i8], align 1
@__ksymtab_ihold = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ihold to i32), ptr @__kstrtab_ihold, ptr @__kstrtabns_ihold }, section "___ksymtab+ihold", align 4
@__kstrtab_inode_sb_list_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_sb_list_add = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_sb_list_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_sb_list_add to i32), ptr @__kstrtab_inode_sb_list_add, ptr @__kstrtabns_inode_sb_list_add }, section "___ksymtab_gpl+inode_sb_list_add", align 4
@inode_hashtable = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@inode_hash_lock = internal global %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, section ".data..cacheline_aligned", align 128
@__kstrtab___insert_inode_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns___insert_inode_hash = external dso_local constant [0 x i8], align 1
@__ksymtab___insert_inode_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__insert_inode_hash to i32), ptr @__kstrtab___insert_inode_hash, ptr @__kstrtabns___insert_inode_hash }, section "___ksymtab+__insert_inode_hash", align 4
@__kstrtab___remove_inode_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns___remove_inode_hash = external dso_local constant [0 x i8], align 1
@__ksymtab___remove_inode_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__remove_inode_hash to i32), ptr @__kstrtab___remove_inode_hash, ptr @__kstrtabns___remove_inode_hash }, section "___ksymtab+__remove_inode_hash", align 4
@dump_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.8, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014invalid mapping:%px\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dump_mapping\00", [19 x i8] zeroinitializer }, align 32
@dump_mapping._entry_ptr = internal global ptr @dump_mapping._entry, section ".printk_index", align 4
@dump_mapping._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.8, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\014aops:%ps\0A\00", [20 x i8] zeroinitializer }, align 32
@dump_mapping._entry_ptr.14 = internal global ptr @dump_mapping._entry.12, section ".printk_index", align 4
@dump_mapping._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.8, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014aops:%ps invalid inode:%px\0A\00", [34 x i8] zeroinitializer }, align 32
@dump_mapping._entry_ptr.17 = internal global ptr @dump_mapping._entry.15, section ".printk_index", align 4
@dump_mapping._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.8, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\014aops:%ps ino:%lx\0A\00", [44 x i8] zeroinitializer }, align 32
@dump_mapping._entry_ptr.20 = internal global ptr @dump_mapping._entry.18, section ".printk_index", align 4
@dump_mapping._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.8, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014aops:%ps ino:%lx invalid dentry:%px\0A\00", [57 x i8] zeroinitializer }, align 32
@dump_mapping._entry_ptr.23 = internal global ptr @dump_mapping._entry.21, section ".printk_index", align 4
@dump_mapping._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.11, ptr @.str.8, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014aops:%ps ino:%lx dentry name:\22%pd\22\0A\00", [58 x i8] zeroinitializer }, align 32
@dump_mapping._entry_ptr.26 = internal global ptr @dump_mapping._entry.24, section ".printk_index", align 4
@__kstrtab_clear_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_clear_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_clear_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clear_inode to i32), ptr @__kstrtab_clear_inode, ptr @__kstrtabns_clear_inode }, section "___ksymtab+clear_inode", align 4
@__kstrtab_evict_inodes = external dso_local constant [0 x i8], align 1
@__kstrtabns_evict_inodes = external dso_local constant [0 x i8], align 1
@__ksymtab_evict_inodes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @evict_inodes to i32), ptr @__kstrtab_evict_inodes, ptr @__kstrtabns_evict_inodes }, section "___ksymtab_gpl+evict_inodes", align 4
@last_ino = weak dso_local global i32 0, section ".data..percpu", align 4
@get_next_ino.shared_last_ino = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_get_next_ino = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_next_ino = external dso_local constant [0 x i8], align 1
@__ksymtab_get_next_ino = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_next_ino to i32), ptr @__kstrtab_get_next_ino, ptr @__kstrtabns_get_next_ino }, section "___ksymtab+get_next_ino", align 4
@__kstrtab_new_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_new_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_new_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @new_inode to i32), ptr @__kstrtab_new_inode, ptr @__kstrtabns_new_inode }, section "___ksymtab+new_inode", align 4
@lockdep_annotate_inode_mutex_key.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&type->i_mutex_dir_key\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_lockdep_annotate_inode_mutex_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockdep_annotate_inode_mutex_key = external dso_local constant [0 x i8], align 1
@__ksymtab_lockdep_annotate_inode_mutex_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockdep_annotate_inode_mutex_key to i32), ptr @__kstrtab_lockdep_annotate_inode_mutex_key, ptr @__kstrtabns_lockdep_annotate_inode_mutex_key }, section "___ksymtab+lockdep_annotate_inode_mutex_key", align 4
@__kstrtab_unlock_new_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_unlock_new_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_unlock_new_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unlock_new_inode to i32), ptr @__kstrtab_unlock_new_inode, ptr @__kstrtabns_unlock_new_inode }, section "___ksymtab+unlock_new_inode", align 4
@__kstrtab_discard_new_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_discard_new_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_discard_new_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @discard_new_inode to i32), ptr @__kstrtab_discard_new_inode, ptr @__kstrtabns_discard_new_inode }, section "___ksymtab+discard_new_inode", align 4
@__kstrtab_lock_two_nondirectories = external dso_local constant [0 x i8], align 1
@__kstrtabns_lock_two_nondirectories = external dso_local constant [0 x i8], align 1
@__ksymtab_lock_two_nondirectories = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lock_two_nondirectories to i32), ptr @__kstrtab_lock_two_nondirectories, ptr @__kstrtabns_lock_two_nondirectories }, section "___ksymtab+lock_two_nondirectories", align 4
@__kstrtab_unlock_two_nondirectories = external dso_local constant [0 x i8], align 1
@__kstrtabns_unlock_two_nondirectories = external dso_local constant [0 x i8], align 1
@__ksymtab_unlock_two_nondirectories = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unlock_two_nondirectories to i32), ptr @__kstrtab_unlock_two_nondirectories, ptr @__kstrtabns_unlock_two_nondirectories }, section "___ksymtab+unlock_two_nondirectories", align 4
@__kstrtab_inode_insert5 = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_insert5 = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_insert5 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_insert5 to i32), ptr @__kstrtab_inode_insert5, ptr @__kstrtabns_inode_insert5 }, section "___ksymtab+inode_insert5", align 4
@__kstrtab_iget5_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_iget5_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_iget5_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iget5_locked to i32), ptr @__kstrtab_iget5_locked, ptr @__kstrtabns_iget5_locked }, section "___ksymtab+iget5_locked", align 4
@__kstrtab_iget_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_iget_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_iget_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iget_locked to i32), ptr @__kstrtab_iget_locked, ptr @__kstrtabns_iget_locked }, section "___ksymtab+iget_locked", align 4
@iunique.iunique_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iunique_lock\00", [19 x i8] zeroinitializer }, align 32
@iunique.counter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_iunique = external dso_local constant [0 x i8], align 1
@__kstrtabns_iunique = external dso_local constant [0 x i8], align 1
@__ksymtab_iunique = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iunique to i32), ptr @__kstrtab_iunique, ptr @__kstrtabns_iunique }, section "___ksymtab+iunique", align 4
@__kstrtab_igrab = external dso_local constant [0 x i8], align 1
@__kstrtabns_igrab = external dso_local constant [0 x i8], align 1
@__ksymtab_igrab = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @igrab to i32), ptr @__kstrtab_igrab, ptr @__kstrtabns_igrab }, section "___ksymtab+igrab", align 4
@__kstrtab_ilookup5_nowait = external dso_local constant [0 x i8], align 1
@__kstrtabns_ilookup5_nowait = external dso_local constant [0 x i8], align 1
@__ksymtab_ilookup5_nowait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ilookup5_nowait to i32), ptr @__kstrtab_ilookup5_nowait, ptr @__kstrtabns_ilookup5_nowait }, section "___ksymtab+ilookup5_nowait", align 4
@__kstrtab_ilookup5 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ilookup5 = external dso_local constant [0 x i8], align 1
@__ksymtab_ilookup5 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ilookup5 to i32), ptr @__kstrtab_ilookup5, ptr @__kstrtabns_ilookup5 }, section "___ksymtab+ilookup5", align 4
@__kstrtab_ilookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ilookup = external dso_local constant [0 x i8], align 1
@__ksymtab_ilookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ilookup to i32), ptr @__kstrtab_ilookup, ptr @__kstrtabns_ilookup }, section "___ksymtab+ilookup", align 4
@__kstrtab_find_inode_nowait = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_inode_nowait = external dso_local constant [0 x i8], align 1
@__ksymtab_find_inode_nowait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_inode_nowait to i32), ptr @__kstrtab_find_inode_nowait, ptr @__kstrtabns_find_inode_nowait }, section "___ksymtab+find_inode_nowait", align 4
@find_inode_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"suspicious find_inode_rcu() usage\00", [62 x i8] zeroinitializer }, align 32
@find_inode_rcu.__warned.30 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_find_inode_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_inode_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_find_inode_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_inode_rcu to i32), ptr @__kstrtab_find_inode_rcu, ptr @__kstrtabns_find_inode_rcu }, section "___ksymtab+find_inode_rcu", align 4
@find_inode_by_ino_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious find_inode_by_ino_rcu() usage\00", [55 x i8] zeroinitializer }, align 32
@find_inode_by_ino_rcu.__warned.33 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_find_inode_by_ino_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_inode_by_ino_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_find_inode_by_ino_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_inode_by_ino_rcu to i32), ptr @__kstrtab_find_inode_by_ino_rcu, ptr @__kstrtabns_find_inode_by_ino_rcu }, section "___ksymtab+find_inode_by_ino_rcu", align 4
@__kstrtab_insert_inode_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_insert_inode_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_insert_inode_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @insert_inode_locked to i32), ptr @__kstrtab_insert_inode_locked, ptr @__kstrtabns_insert_inode_locked }, section "___ksymtab+insert_inode_locked", align 4
@__kstrtab_insert_inode_locked4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_insert_inode_locked4 = external dso_local constant [0 x i8], align 1
@__ksymtab_insert_inode_locked4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @insert_inode_locked4 to i32), ptr @__kstrtab_insert_inode_locked4, ptr @__kstrtabns_insert_inode_locked4 }, section "___ksymtab+insert_inode_locked4", align 4
@__kstrtab_generic_delete_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_delete_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_delete_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_delete_inode to i32), ptr @__kstrtab_generic_delete_inode, ptr @__kstrtabns_generic_delete_inode }, section "___ksymtab+generic_delete_inode", align 4
@__kstrtab_iput = external dso_local constant [0 x i8], align 1
@__kstrtabns_iput = external dso_local constant [0 x i8], align 1
@__ksymtab_iput = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iput to i32), ptr @__kstrtab_iput, ptr @__kstrtabns_iput }, section "___ksymtab+iput", align 4
@__kstrtab_bmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmap = external dso_local constant [0 x i8], align 1
@__ksymtab_bmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmap to i32), ptr @__kstrtab_bmap, ptr @__kstrtabns_bmap }, section "___ksymtab+bmap", align 4
@__kstrtab_generic_update_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_update_time = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_update_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_update_time to i32), ptr @__kstrtab_generic_update_time, ptr @__kstrtabns_generic_update_time }, section "___ksymtab+generic_update_time", align 4
@__kstrtab_inode_update_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_update_time = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_update_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_update_time to i32), ptr @__kstrtab_inode_update_time, ptr @__kstrtabns_inode_update_time }, section "___ksymtab+inode_update_time", align 4
@__kstrtab_touch_atime = external dso_local constant [0 x i8], align 1
@__kstrtabns_touch_atime = external dso_local constant [0 x i8], align 1
@__ksymtab_touch_atime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @touch_atime to i32), ptr @__kstrtab_touch_atime, ptr @__kstrtabns_touch_atime }, section "___ksymtab+touch_atime", align 4
@__kstrtab_should_remove_suid = external dso_local constant [0 x i8], align 1
@__kstrtabns_should_remove_suid = external dso_local constant [0 x i8], align 1
@__ksymtab_should_remove_suid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @should_remove_suid to i32), ptr @__kstrtab_should_remove_suid, ptr @__kstrtabns_should_remove_suid }, section "___ksymtab+should_remove_suid", align 4
@__kstrtab_file_remove_privs = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_remove_privs = external dso_local constant [0 x i8], align 1
@__ksymtab_file_remove_privs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_remove_privs to i32), ptr @__kstrtab_file_remove_privs, ptr @__kstrtabns_file_remove_privs }, section "___ksymtab+file_remove_privs", align 4
@__kstrtab_file_update_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_update_time = external dso_local constant [0 x i8], align 1
@__ksymtab_file_update_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_update_time to i32), ptr @__kstrtab_file_update_time, ptr @__kstrtabns_file_update_time }, section "___ksymtab+file_update_time", align 4
@__kstrtab_file_modified = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_modified = external dso_local constant [0 x i8], align 1
@__ksymtab_file_modified = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_modified to i32), ptr @__kstrtab_file_modified, ptr @__kstrtabns_file_modified }, section "___ksymtab+file_modified", align 4
@__kstrtab_inode_needs_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_needs_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_needs_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_needs_sync to i32), ptr @__kstrtab_inode_needs_sync, ptr @__kstrtabns_inode_needs_sync }, section "___ksymtab+inode_needs_sync", align 4
@__setup_str_set_ihash_entries = internal constant [15 x i8] c"ihash_entries=\00", section ".init.rodata", align 1
@__setup_set_ihash_entries = internal global %struct.obs_kernel_param { ptr @__setup_str_set_ihash_entries, ptr @set_ihash_entries, i32 0 }, section ".init.setup", align 4
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Inode-cache\00", [20 x i8] zeroinitializer }, align 32
@ihash_entries = internal unnamed_addr global i32 0, section ".init.data", align 4
@i_hash_shift = internal global i32 0, section ".data..read_mostly", align 4
@i_hash_mask = internal global i32 0, section ".data..read_mostly", align 4
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inode_cache\00", [20 x i8] zeroinitializer }, align 32
@def_chr_fops = external dso_local constant %struct.file_operations, align 4
@def_blk_fops = external dso_local constant %struct.file_operations, align 4
@pipefifo_fops = external dso_local constant %struct.file_operations, align 4
@init_special_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.8, i32 2222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017init_special_inode: bogus i_mode (%o) for inode %s:%lu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"init_special_inode\00", [45 x i8] zeroinitializer }, align 32
@init_special_inode._entry_ptr = internal global ptr @init_special_inode._entry, section ".printk_index", align 4
@__kstrtab_init_special_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_special_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_init_special_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_special_inode to i32), ptr @__kstrtab_init_special_inode, ptr @__kstrtabns_init_special_inode }, section "___ksymtab+init_special_inode", align 4
@__kstrtab_inode_init_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_init_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_init_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_init_owner to i32), ptr @__kstrtab_inode_init_owner, ptr @__kstrtabns_inode_init_owner }, section "___ksymtab+inode_init_owner", align 4
@__kstrtab_inode_owner_or_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_owner_or_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_owner_or_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_owner_or_capable to i32), ptr @__kstrtab_inode_owner_or_capable, ptr @__kstrtabns_inode_owner_or_capable }, section "___ksymtab+inode_owner_or_capable", align 4
@__kstrtab_inode_dio_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_dio_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_dio_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_dio_wait to i32), ptr @__kstrtab_inode_dio_wait, ptr @__kstrtabns_inode_dio_wait }, section "___ksymtab+inode_dio_wait", align 4
@inode_set_flags.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_inode_set_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_set_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_set_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_set_flags to i32), ptr @__kstrtab_inode_set_flags, ptr @__kstrtabns_inode_set_flags }, section "___ksymtab+inode_set_flags", align 4
@__kstrtab_inode_nohighmem = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_nohighmem = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_nohighmem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_nohighmem to i32), ptr @__kstrtab_inode_nohighmem, ptr @__kstrtabns_inode_nohighmem }, section "___ksymtab+inode_nohighmem", align 4
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid file time granularity: %u\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_timestamp_truncate = external dso_local constant [0 x i8], align 1
@__kstrtabns_timestamp_truncate = external dso_local constant [0 x i8], align 1
@__ksymtab_timestamp_truncate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timestamp_truncate to i32), ptr @__kstrtab_timestamp_truncate, ptr @__kstrtabns_timestamp_truncate }, section "___ksymtab+timestamp_truncate", align 4
@.str.40 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"current_time() called with uninitialized super_block in the inode\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_current_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_current_time = external dso_local constant [0 x i8], align 1
@__ksymtab_current_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @current_time to i32), ptr @__kstrtab_current_time, ptr @__kstrtabns_current_time }, section "___ksymtab+current_time", align 4
@__pcpu_unique_nr_inodes = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_nr_unused = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@nr_unused = weak dso_local global i32 0, section ".data..percpu", align 4
@__pcpu_unique_last_ino = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@inodes_sysctls = internal global { [3 x %struct.ctl_table], [52 x i8] } { [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.43, ptr @inodes_stat, i32 8, i16 292, ptr null, ptr @proc_nr_inodes, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.44, ptr @inodes_stat, i32 28, i16 292, ptr null, ptr @proc_nr_inodes, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inodes_sysctls\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inode-nr\00", [23 x i8] zeroinitializer }, align 32
@inodes_stat = internal global { %struct.inodes_stat_t, [36 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inode-state\00", [20 x i8] zeroinitializer }, align 32
@inode_detach_wb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/writeback.h\00", [38 x i8] zeroinitializer }, align 32
@wb_put_many.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/linux/backing-dev-defs.h\00", [63 x i8] zeroinitializer }, align 32
@__address_space_init_once.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&mapping->i_mmap_rwsem\00", [41 x i8] zeroinitializer }, align 32
@__address_space_init_once.__key.48 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&mapping->private_lock\00", [41 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"inode_hash_lock\00", [16 x i8] zeroinitializer }, align 32
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@test_inode_iunique.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_writeback_lazytime_iput = external dso_local global %struct.tracepoint, align 4
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/trace/events/writeback.h\00", [63 x i8] zeroinitializer }, align 32
@trace_writeback_lazytime_iput.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 1000000000]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 16, i64 4096, i64 8192, i64 24576, i64 49152]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 1000000000]
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"empty_aops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 66, i32 39 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"no_open_fops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 159, i32 38 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 197, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 198, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 200, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 201, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 216, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 217, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 289, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 426, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 569, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 574, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 580, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 585, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 591, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 600, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [16 x i8] c"shared_last_ino\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 989, i32 19 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1066, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1067, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant [13 x i8] c"iunique_lock\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1365, i32 9 }
@___asan_gen_.160 = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1366, i32 22 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1573, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1576, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 1611, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2169, i32 27 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2183, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2220, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2379, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 2401, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"inodes_sysctls\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 117, i32 25 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 137, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 119, i32 15 }
@___asan_gen_.205 = private unnamed_addr constant [12 x i8] c"inodes_stat\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 107, i32 29 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 126, i32 15 }
@___asan_gen_.212 = private unnamed_addr constant [29 x i8] c"../include/linux/writeback.h\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 247, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [36 x i8] c"../include/linux/backing-dev-defs.h\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 253, i32 6 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 399, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 401, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 378, i32 2 }
@___asan_gen_.230 = private constant [14 x i8] c"../fs/inode.c\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 60, i32 35 }
@___asan_gen_.233 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 73, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 695, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 723, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [36 x i8] c"../include/trace/events/writeback.h\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 859, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 108, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 34, i32 2 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__initcall__kmod_inode__362_140_init_fs_inode_sysctlsearly, ptr @__ksymtab___destroy_inode, ptr @__ksymtab___insert_inode_hash, ptr @__ksymtab___remove_inode_hash, ptr @__ksymtab_address_space_init_once, ptr @__ksymtab_bmap, ptr @__ksymtab_clear_inode, ptr @__ksymtab_clear_nlink, ptr @__ksymtab_current_time, ptr @__ksymtab_discard_new_inode, ptr @__ksymtab_drop_nlink, ptr @__ksymtab_empty_aops, ptr @__ksymtab_evict_inodes, ptr @__ksymtab_file_modified, ptr @__ksymtab_file_remove_privs, ptr @__ksymtab_file_update_time, ptr @__ksymtab_find_inode_by_ino_rcu, ptr @__ksymtab_find_inode_nowait, ptr @__ksymtab_find_inode_rcu, ptr @__ksymtab_free_inode_nonrcu, ptr @__ksymtab_generic_delete_inode, ptr @__ksymtab_generic_update_time, ptr @__ksymtab_get_next_ino, ptr @__ksymtab_iget5_locked, ptr @__ksymtab_iget_locked, ptr @__ksymtab_igrab, ptr @__ksymtab_ihold, ptr @__ksymtab_ilookup, ptr @__ksymtab_ilookup5, ptr @__ksymtab_ilookup5_nowait, ptr @__ksymtab_inc_nlink, ptr @__ksymtab_init_special_inode, ptr @__ksymtab_inode_dio_wait, ptr @__ksymtab_inode_init_always, ptr @__ksymtab_inode_init_once, ptr @__ksymtab_inode_init_owner, ptr @__ksymtab_inode_insert5, ptr @__ksymtab_inode_needs_sync, ptr @__ksymtab_inode_nohighmem, ptr @__ksymtab_inode_owner_or_capable, ptr @__ksymtab_inode_sb_list_add, ptr @__ksymtab_inode_set_flags, ptr @__ksymtab_inode_update_time, ptr @__ksymtab_insert_inode_locked, ptr @__ksymtab_insert_inode_locked4, ptr @__ksymtab_iput, ptr @__ksymtab_iunique, ptr @__ksymtab_lock_two_nondirectories, ptr @__ksymtab_lockdep_annotate_inode_mutex_key, ptr @__ksymtab_new_inode, ptr @__ksymtab_set_nlink, ptr @__ksymtab_should_remove_suid, ptr @__ksymtab_timestamp_truncate, ptr @__ksymtab_touch_atime, ptr @__ksymtab_unlock_new_inode, ptr @__ksymtab_unlock_two_nondirectories, ptr @__setup_set_ihash_entries, ptr @dump_mapping._entry, ptr @dump_mapping._entry.12, ptr @dump_mapping._entry.15, ptr @dump_mapping._entry.18, ptr @dump_mapping._entry.21, ptr @dump_mapping._entry.24, ptr @dump_mapping._entry_ptr, ptr @dump_mapping._entry_ptr.14, ptr @dump_mapping._entry_ptr.17, ptr @dump_mapping._entry_ptr.20, ptr @dump_mapping._entry_ptr.23, ptr @dump_mapping._entry_ptr.26, ptr @init_special_inode._entry, ptr @init_special_inode._entry_ptr, ptr @empty_aops, ptr @inode_init_always.no_open_fops, ptr @inode_init_always.__key, ptr @.str, ptr @.str.1, ptr @inode_init_always.__key.2, ptr @.str.3, ptr @.str.4, ptr @inode_init_always.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @inode_init_once.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @get_next_ino.shared_last_ino, ptr @lockdep_annotate_inode_mutex_key.__key, ptr @.str.27, ptr @iunique.iunique_lock, ptr @.str.28, ptr @iunique.counter, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @inodes_sysctls, ptr @.str.42, ptr @.str.43, ptr @inodes_stat, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @xa_init_flags.__key, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empty_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inode_init_always.no_open_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inode_init_always.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inode_init_always.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inode_init_always.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inode_init_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_mapping._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_mapping._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_mapping._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_mapping._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_mapping._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_next_ino.shared_last_ino to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockdep_annotate_inode_mutex_key.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iunique.iunique_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iunique.counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_special_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inodes_sysctls to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inodes_stat to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_nr_dirty_inodes() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call8.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %0)
  %cmp9.i = icmp ult i32 %call8.i, %0
  br i1 %cmp9.i, label %entry.do.body.i_crit_edge, label %entry.get_nr_inodes_unused.exit_crit_edge

entry.get_nr_inodes_unused.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_nr_inodes_unused.exit

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %call11.i = phi i32 [ %call.i, %do.body.i.do.body.i_crit_edge ], [ %call8.i, %entry.do.body.i_crit_edge ]
  %sum.010.i = phi i32 [ %add2.i, %do.body.i.do.body.i_crit_edge ], [ 0, %entry.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %2, ptrtoint (ptr @nr_inodes to i32)
  %3 = inttoptr i32 %add.i to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add2.i = add i32 %5, %sum.010.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call11.i, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp.i = icmp ult i32 %call.i, %0
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i12.preheader

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

do.body.i12.preheader:                            ; preds = %do.body.i
  %6 = tail call i32 @llvm.smax.i32(i32 %add2.i, i32 0) #16
  br label %do.body.i12

do.body.i12:                                      ; preds = %do.body.i12.do.body.i12_crit_edge, %do.body.i12.preheader
  %call11.i5 = phi i32 [ %call.i10, %do.body.i12.do.body.i12_crit_edge ], [ %call8.i, %do.body.i12.preheader ]
  %sum.010.i6 = phi i32 [ %add2.i9, %do.body.i12.do.body.i12_crit_edge ], [ 0, %do.body.i12.preheader ]
  %arrayidx.i7 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11.i5
  %7 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i7, align 4
  %add.i8 = add i32 %8, ptrtoint (ptr @nr_unused to i32)
  %9 = inttoptr i32 %add.i8 to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add2.i9 = add i32 %11, %sum.010.i6
  %call.i10 = tail call i32 @cpumask_next(i32 noundef %call11.i5, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp.i11 = icmp ult i32 %call.i10, %0
  br i1 %cmp.i11, label %do.body.i12.do.body.i12_crit_edge, label %do.body.i12.get_nr_inodes_unused.exit_crit_edge

do.body.i12.get_nr_inodes_unused.exit_crit_edge:  ; preds = %do.body.i12
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_nr_inodes_unused.exit

do.body.i12.do.body.i12_crit_edge:                ; preds = %do.body.i12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i12

get_nr_inodes_unused.exit:                        ; preds = %do.body.i12.get_nr_inodes_unused.exit_crit_edge, %entry.get_nr_inodes_unused.exit_crit_edge
  %12 = phi i32 [ 0, %entry.get_nr_inodes_unused.exit_crit_edge ], [ %6, %do.body.i12.get_nr_inodes_unused.exit_crit_edge ]
  %sum.0.lcssa.i13 = phi i32 [ 0, %entry.get_nr_inodes_unused.exit_crit_edge ], [ %add2.i9, %do.body.i12.get_nr_inodes_unused.exit_crit_edge ]
  %13 = tail call i32 @llvm.smax.i32(i32 %sum.0.lcssa.i13, i32 0) #16
  %sub = sub nsw i32 %12, %13
  %14 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_fs_inode_sysctls() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.41, ptr noundef nonnull @inodes_sysctls, ptr noundef nonnull @.str.42) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inode_init_always(ptr noundef %sb, ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %sb, ptr %i_sb, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %1 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %s_blocksize_bits, align 4
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %3 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %i_blkbits, align 2
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %i_flags, align 4
  %i_sequence = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 39
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_sequence, i32 noundef 8) #16
  tail call void @generic_atomic64_set(ptr noundef %i_sequence, i64 noundef 0) #16
  %i_count = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 40
  %call.i.i142 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_count, i32 noundef 4) #16
  %5 = ptrtoint ptr %i_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %i_count, align 4
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %6 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @inode_init_always.empty_iops, ptr %i_op, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @inode_init_always.no_open_fops, ptr %7, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %i_ino, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %10, align 4
  %i_opflags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 1
  %12 = ptrtoint ptr %i_opflags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %i_opflags, align 2
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 18
  %13 = ptrtoint ptr %s_xattr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_xattr, align 16
  %tobool.not = icmp eq ptr %14, null
  %spec.store.select = select i1 %tobool.not, i16 0, i16 8
  store i16 %spec.store.select, ptr %i_opflags, align 2
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 53
  %17 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %18, i32 noundef 0) #16
  %19 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i147 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 53
  %22 = ptrtoint ptr %s_user_ns.i.i147 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_user_ns.i.i147, align 8
  %call1.i148 = tail call i32 @make_kgid(ptr noundef %23, i32 noundef 0) #16
  %24 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call1.i148, ptr %i_gid.i, align 8
  %i_writecount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 42
  %call.i.i143 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount, i32 noundef 4) #16
  %25 = ptrtoint ptr %i_writecount to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %i_writecount, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %26 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %i_size, align 8
  %i_write_hint = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 21
  %27 = ptrtoint ptr %i_write_hint to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %i_write_hint, align 1
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %28 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %i_blocks, align 8
  %i_bytes = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 19
  %29 = ptrtoint ptr %i_bytes to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %i_bytes, align 4
  %30 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %31 = ptrtoint ptr %i_rdev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %i_rdev, align 8
  %dirtied_when = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 26
  %32 = ptrtoint ptr %dirtied_when to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %dirtied_when, align 4
  %i_wb_frn_winner = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 31
  %33 = ptrtoint ptr %i_wb_frn_winner to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %i_wb_frn_winner, align 8
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 0, ptr %30, align 4
  %call = tail call i32 @security_inode_alloc(ptr noundef %inode) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %entry
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %i_lock, ptr noundef nonnull @.str, ptr noundef nonnull @inode_init_always.__key, i16 noundef signext 3) #16
  %dep_map = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18, i32 0, i32 0, i32 4
  %s_type = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 5
  %35 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_type, align 32
  %i_lock_key = getelementptr inbounds %struct.file_system_type, ptr %36, i32 0, i32 13
  %wait_type_inner = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18, i32 0, i32 0, i32 4, i32 4
  %37 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.1, ptr noundef %i_lock_key, i32 noundef 0, i8 noundef zeroext %38, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @__init_rwsem(ptr noundef %i_rwsem, ptr noundef nonnull @.str.3, ptr noundef nonnull @inode_init_always.__key.2) #16
  %dep_map16 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25, i32 6
  %39 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_type, align 32
  %i_mutex_key = getelementptr inbounds %struct.file_system_type, ptr %40, i32 0, i32 14
  %wait_type_inner20 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25, i32 6, i32 4
  %41 = ptrtoint ptr %wait_type_inner20 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %wait_type_inner20, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map16, ptr noundef nonnull @.str.4, ptr noundef %i_mutex_key, i32 noundef 0, i8 noundef zeroext %42, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %i_dio_count = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 41
  %call.i.i144 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_dio_count, i32 noundef 4) #16
  %43 = ptrtoint ptr %i_dio_count to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 0, ptr %i_dio_count, align 4
  %a_ops = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 9
  %44 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @empty_aops, ptr %a_ops, align 4
  %45 = ptrtoint ptr %i_data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %inode, ptr %i_data, align 4
  %flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 10
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %flags, align 4
  %wb_err = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 11
  %47 = ptrtoint ptr %wb_err to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %wb_err, align 4
  %i_mmap_writable = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 4
  %call.i.i145 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_mmap_writable, i32 noundef 4) #16
  %48 = ptrtoint ptr %i_mmap_writable to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 0, ptr %i_mmap_writable, align 4
  %gfp_mask.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 3
  %49 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 17829066, ptr %gfp_mask.i, align 4
  %private_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 14
  %50 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %private_data, align 4
  %writeback_index = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 8
  %51 = ptrtoint ptr %writeback_index to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %writeback_index, align 4
  %invalidate_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 2
  tail call void @__init_rwsem(ptr noundef %invalidate_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @inode_init_always.__key.5) #16
  %dep_map28 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 2, i32 6
  %52 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_type, align 32
  %invalidate_lock_key = getelementptr inbounds %struct.file_system_type, ptr %53, i32 0, i32 15
  %wait_type_inner32 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 2, i32 6, i32 4
  %54 = ptrtoint ptr %wait_type_inner32 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %wait_type_inner32, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map28, ptr noundef nonnull @.str.7, ptr noundef %invalidate_lock_key, i32 noundef 0, i8 noundef zeroext %55, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %56 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %i_private, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %57 = ptrtoint ptr %i_mapping to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %i_data, ptr %i_mapping, align 8
  %58 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 37
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %58, align 8
  %i_default_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %60 = ptrtoint ptr %i_default_acl to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 -1 to ptr), ptr %i_default_acl, align 4
  %i_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %61 = ptrtoint ptr %i_acl to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %i_acl, align 8
  %i_fsnotify_mask = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 50
  %62 = ptrtoint ptr %i_fsnotify_mask to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %i_fsnotify_mask, align 4
  %i_flctx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 45
  %63 = ptrtoint ptr %i_flctx to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %i_flctx, align 4
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !292
  %65 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx, align 4
  %add = add i32 %70, ptrtoint (ptr @nr_inodes to i32)
  %71 = inttoptr i32 %add to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %add54 = add i32 %73, 1
  store i32 %add54, ptr %71, align 4
  %74 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !293
  %and.i.i = and i32 %74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool65.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool65.not, label %if.then69, label %do.body.do.end72_crit_edge, !prof !294

do.body.do.end72_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end72

if.then69:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %do.body.do.end72_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %64) #16, !srcloc !295
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end72 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @no_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_alloc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_inode_nonrcu(ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %inode) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__destroy_inode(ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inode_has_buffers(ptr noundef %inode) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !296

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #16, !srcloc !297
  unreachable

do.end6:                                          ; preds = %entry
  %i_wb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 30
  %0 = ptrtoint ptr %i_wb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_wb.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end6.inode_detach_wb.exit_crit_edge, label %if.then.i

do.end6.inode_detach_wb.exit_crit_edge:           ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_detach_wb.exit

if.then.i:                                        ; preds = %do.end6
  %i_state.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %2 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_state.i, align 8
  %and.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %if.then.i.if.end31.i_crit_edge

if.then.i.if.end31.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b47.i = load i1, ptr @inode_detach_wb.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.if.end31.i_crit_edge, label %if.then10.i, !prof !296

land.rhs.i.if.end31.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

if.then10.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @inode_detach_wb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 247, i32 noundef 9, ptr noundef null) #16
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then10.i, %land.rhs.i.if.end31.i_crit_edge, %if.then.i.if.end31.i_crit_edge
  %4 = ptrtoint ptr %i_wb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_wb.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.end39.critedge.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end31.i
  %.b1.i.i.i = load i1, ptr @wb_put_many.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.wb_put.exit.i_crit_edge, label %if.then.i.i.i, !prof !296

land.rhs.i.i.i.wb_put.exit.i_crit_edge:           ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %wb_put.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @wb_put_many.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 253, i32 noundef 9, ptr noundef null) #16
  br label %wb_put.exit.i

if.end39.critedge.i.i.i:                          ; preds = %if.end31.i
  %wb41.i.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %7, i32 0, i32 11
  %cmp.not.i.i.i = icmp eq ptr %wb41.i.i.i, %5
  br i1 %cmp.not.i.i.i, label %if.end39.critedge.i.i.i.wb_put.exit.i_crit_edge, label %if.then42.i.i.i

if.end39.critedge.i.i.i.wb_put.exit.i_crit_edge:  ; preds = %if.end39.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %wb_put.exit.i

if.then42.i.i.i:                                  ; preds = %if.end39.critedge.i.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.bdi_writeback, ptr %5, i32 0, i32 27
  %8 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i.i.i.i, label %if.then42.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then42.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %if.then42.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then42.i.i.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b4.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 696, ptr noundef nonnull @.str.54) #16
  br label %rcu_read_lock.exit.i.i.i.i

rcu_read_lock.exit.i.i.i.i:                       ; preds = %if.then.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %if.then42.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge
  %12 = ptrtoint ptr %refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %refcnt.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i1.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i.i, label %do.body1.i.i.i.i, label %if.else.i.i.i.i, !prof !296

do.body1.i.i.i.i:                                 ; preds = %rcu_read_lock.exit.i.i.i.i
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !292
  %15 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i2.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i2.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %20, %13
  %21 = inttoptr i32 %add.i.i.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add15.i.i.i.i = add i32 %23, -1
  store i32 %add15.i.i.i.i, ptr %21, align 4
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !293
  %and.i.i.i.i.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then29.i.i.i.i, label %do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge, !prof !294

do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge:      ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end31.i.i.i.i

if.then29.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end31.i.i.i.i

do.end31.i.i.i.i:                                 ; preds = %if.then29.i.i.i.i, %do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #16, !srcloc !295
  br label %if.end48.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %rcu_read_lock.exit.i.i.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.bdi_writeback, ptr %5, i32 0, i32 27, i32 1
  %25 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %26, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @llvm.prefetch.p0(ptr %26, i32 1, i32 3, i32 1) #16
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #16, !srcloc !300
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !301
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then45.i.i.i.i, label %if.else.i.i.i.i.if.end48.i.i.i.i_crit_edge, !prof !294

if.else.i.i.i.i.if.end48.i.i.i.i_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i.i.i.i

if.then45.i.i.i.i:                                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i.i, align 4
  %release.i.i.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %release.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %release.i.i.i.i, align 4
  tail call void %31(ptr noundef %refcnt.i.i.i) #16
  br label %if.end48.i.i.i.i

if.end48.i.i.i.i:                                 ; preds = %if.then45.i.i.i.i, %if.else.i.i.i.i.if.end48.i.i.i.i_crit_edge, %do.end31.i.i.i.i
  %call.i3.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i3.i.i.i.i, label %if.end48.i.i.i.i.percpu_ref_put_many.exit.i.i.i_crit_edge, label %land.lhs.true.i6.i.i.i.i

if.end48.i.i.i.i.percpu_ref_put_many.exit.i.i.i_crit_edge: ; preds = %if.end48.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %percpu_ref_put_many.exit.i.i.i

land.lhs.true.i6.i.i.i.i:                         ; preds = %if.end48.i.i.i.i
  %call1.i4.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i.i)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %call1.i4.i.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i.i, label %land.lhs.true.i6.i.i.i.i.percpu_ref_put_many.exit.i.i.i_crit_edge, label %land.lhs.true2.i8.i.i.i.i

land.lhs.true.i6.i.i.i.i.percpu_ref_put_many.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %percpu_ref_put_many.exit.i.i.i

land.lhs.true2.i8.i.i.i.i:                        ; preds = %land.lhs.true.i6.i.i.i.i
  %.b4.i7.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i.i, label %land.lhs.true2.i8.i.i.i.i.percpu_ref_put_many.exit.i.i.i_crit_edge, label %if.then.i9.i.i.i.i

land.lhs.true2.i8.i.i.i.i.percpu_ref_put_many.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %percpu_ref_put_many.exit.i.i.i

if.then.i9.i.i.i.i:                               ; preds = %land.lhs.true2.i8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 724, ptr noundef nonnull @.str.55) #16
  br label %percpu_ref_put_many.exit.i.i.i

percpu_ref_put_many.exit.i.i.i:                   ; preds = %if.then.i9.i.i.i.i, %land.lhs.true2.i8.i.i.i.i.percpu_ref_put_many.exit.i.i.i_crit_edge, %land.lhs.true.i6.i.i.i.i.percpu_ref_put_many.exit.i.i.i_crit_edge, %if.end48.i.i.i.i.percpu_ref_put_many.exit.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !302
  %32 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i.i.i10.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i10.i.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %wb_put.exit.i

wb_put.exit.i:                                    ; preds = %percpu_ref_put_many.exit.i.i.i, %if.end39.critedge.i.i.i.wb_put.exit.i_crit_edge, %if.then.i.i.i, %land.rhs.i.i.i.wb_put.exit.i_crit_edge
  %36 = ptrtoint ptr %i_wb.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %i_wb.i, align 4
  br label %inode_detach_wb.exit

inode_detach_wb.exit:                             ; preds = %wb_put.exit.i, %do.end6.inode_detach_wb.exit_crit_edge
  tail call void @security_inode_free(ptr noundef %inode) #16
  tail call void @__fsnotify_inode_delete(ptr noundef %inode) #16
  tail call void @locks_free_lock_context(ptr noundef %inode) #16
  %37 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool7.not = icmp eq i32 %39, 0
  br i1 %tobool7.not, label %if.then8, label %inode_detach_wb.exit.if.end39_crit_edge

inode_detach_wb.exit.if.end39_crit_edge:          ; preds = %inode_detach_wb.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then8:                                         ; preds = %inode_detach_wb.exit
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %40 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb, align 4
  %s_remove_count = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 47
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_remove_count, i32 noundef 4) #16
  %42 = ptrtoint ptr %s_remove_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %s_remove_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp = icmp eq i32 %43, 0
  br i1 %cmp, label %do.end24, label %if.then8.if.end30_crit_edge, !prof !294

if.then8.if.end30_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

do.end24:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 289, i32 noundef 9, ptr noundef null) #16
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %if.then8.if.end30_crit_edge
  %44 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb, align 4
  %s_remove_count38 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 47
  %call.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_remove_count38, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %s_remove_count38, i32 1, i32 3, i32 1) #16
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_remove_count38, ptr %s_remove_count38, i32 1, ptr elementtype(i32) %s_remove_count38) #16, !srcloc !303
  br label %if.end39

if.end39:                                         ; preds = %if.end30, %inode_detach_wb.exit.if.end39_crit_edge
  %i_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %47 = ptrtoint ptr %i_acl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_acl, align 8
  %tobool40.not = icmp eq ptr %48, null
  %49 = ptrtoint ptr %48 to i32
  %and.i118 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118)
  %tobool.i = icmp ne i32 %and.i118, 0
  %or.cond = select i1 %tobool40.not, i1 true, i1 %tobool.i
  br i1 %or.cond, label %if.end39.if.end45_crit_edge, label %land.lhs.true.i

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

land.lhs.true.i:                                  ; preds = %if.end39
  %call.i.i.i.i.i.i120 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %48, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr nonnull %48, i32 1, i32 3, i32 1) #16
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %48, ptr nonnull %48, i32 1, ptr nonnull elementtype(i32) %48) #16, !srcloc !305
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end45_crit_edge, label %if.then10.i.i.i.i, !prof !296

if.end5.i.i.i.i.if.end45_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %48, i32 noundef 3) #16
  br label %if.end45

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !306
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %48, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #16
  br label %if.end45

if.end45:                                         ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end45_crit_edge, %if.end39.if.end45_crit_edge
  %i_default_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %51 = ptrtoint ptr %i_default_acl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_default_acl, align 4
  %tobool46.not = icmp eq ptr %52, null
  %53 = ptrtoint ptr %52 to i32
  %and.i121 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i121)
  %tobool.i122 = icmp ne i32 %and.i121, 0
  %or.cond135 = select i1 %tobool46.not, i1 true, i1 %tobool.i122
  br i1 %or.cond135, label %if.end45.do.body54_crit_edge, label %land.lhs.true.i127

if.end45.do.body54_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body54

land.lhs.true.i127:                               ; preds = %if.end45
  %call.i.i.i.i.i.i124 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %52, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr nonnull %52, i32 1, i32 3, i32 1) #16
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %52, ptr nonnull %52, i32 1, ptr nonnull elementtype(i32) %52) #16, !srcloc !305
  %asmresult.i.i.i.i.i.i.i125 = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i125)
  %cmp.i.i.i.i126 = icmp eq i32 %asmresult.i.i.i.i.i.i.i125, 1
  br i1 %cmp.i.i.i.i126, label %do.end.i132, label %if.end5.i.i.i.i129

if.end5.i.i.i.i129:                               ; preds = %land.lhs.true.i127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i125)
  %.not.i.i.i.i128 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i125, 0
  br i1 %.not.i.i.i.i128, label %if.end5.i.i.i.i129.do.body54_crit_edge, label %if.then10.i.i.i.i130, !prof !296

if.end5.i.i.i.i129.do.body54_crit_edge:           ; preds = %if.end5.i.i.i.i129
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body54

if.then10.i.i.i.i130:                             ; preds = %if.end5.i.i.i.i129
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %52, i32 noundef 3) #16
  br label %do.body54

do.end.i132:                                      ; preds = %land.lhs.true.i127
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !306
  %a_rcu.i131 = getelementptr inbounds %struct.posix_acl, ptr %52, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i131, ptr noundef nonnull inttoptr (i32 4 to ptr)) #16
  br label %do.body54

do.body54:                                        ; preds = %do.end.i132, %if.then10.i.i.i.i130, %if.end5.i.i.i.i129.do.body54_crit_edge, %if.end45.do.body54_crit_edge
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !292
  %56 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i134 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i134 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx, align 4
  %add = add i32 %61, ptrtoint (ptr @nr_inodes to i32)
  %62 = inttoptr i32 %add to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %add72 = add i32 %64, -1
  store i32 %add72, ptr %62, align 4
  %65 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !293
  %and.i.i = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool83.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool83.not, label %if.then92, label %do.body54.do.end95_crit_edge, !prof !294

do.body54.do.end95_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end95

if.then92:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %do.body54.do.end95_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %55) #16, !srcloc !295
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_has_buffers(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_inode_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_free_lock_context(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drop_nlink(ptr nocapture noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !294

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 331, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool19.not = icmp eq i32 %dec, 0
  br i1 %tobool19.not, label %if.then20, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_remove_count = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 47
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_remove_count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %s_remove_count, i32 1, i32 3, i32 1) #16
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_remove_count, ptr %s_remove_count, i32 1, ptr elementtype(i32) %s_remove_count) #16, !srcloc !307
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_nlink(ptr nocapture noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %0, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_remove_count = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 47
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_remove_count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %s_remove_count, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_remove_count, ptr %s_remove_count, i32 1, ptr elementtype(i32) %s_remove_count) #16, !srcloc !307
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_nlink(ptr nocapture noundef %inode, i32 noundef %nlink) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nlink)
  %tobool.not = icmp eq i32 %nlink, 0
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.then.if.end2_crit_edge, label %if.then.i

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end2

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %0, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_remove_count.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 47
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_remove_count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %s_remove_count.i, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_remove_count.i, ptr %s_remove_count.i, i32 1, ptr elementtype(i32) %s_remove_count.i) #16, !srcloc !307
  br label %if.end2

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.then1, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_remove_count = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 47
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_remove_count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %s_remove_count, i32 1, i32 3, i32 1) #16
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_remove_count, ptr %s_remove_count, i32 1, ptr elementtype(i32) %s_remove_count) #16, !srcloc !303
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.else.if.end_crit_edge
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %nlink, ptr %0, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then.i, %if.then.if.end2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inc_nlink(ptr nocapture noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end29_crit_edge, !prof !294

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then:                                          ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %3 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_state, align 8
  %and = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.end, label %if.then.if.end_crit_edge, !prof !294

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 388, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_remove_count = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 47
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_remove_count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %s_remove_count, i32 1, i32 3, i32 1) #16
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_remove_count, ptr %s_remove_count, i32 1, ptr elementtype(i32) %s_remove_count) #16, !srcloc !303
  br label %if.end29

if.end29:                                         ; preds = %if.end, %entry.if.end29_crit_edge
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @address_space_init_once(ptr noundef %mapping) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %mapping, i32 0, i32 340)
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %i_pages.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #16
  %xa_flags.i.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 33, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xa_head.i.i, align 4
  %i_mmap_rwsem.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 6
  tail call void @__init_rwsem(ptr noundef %i_mmap_rwsem.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @__address_space_init_once.__key) #16
  %private_list.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 13
  %3 = ptrtoint ptr %private_list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %private_list.i, ptr %private_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %private_list.i, ptr %prev.i.i, align 4
  %private_lock.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %private_lock.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @__address_space_init_once.__key.48, i16 noundef signext 3) #16
  %i_mmap.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 5
  %5 = ptrtoint ptr %i_mmap.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %i_mmap.i, align 4
  %.compoundliteral.sroa.2.0.i_mmap.sroa_idx.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %.compoundliteral.sroa.2.0.i_mmap.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %.compoundliteral.sroa.2.0.i_mmap.sroa_idx.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inode_init_once(ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_devices = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 47
  %0 = call ptr @memset(ptr %inode, i32 0, i32 784)
  %1 = ptrtoint ptr %i_devices to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %i_devices, ptr %i_devices, align 4
  %prev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 47, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i_devices, ptr %prev.i, align 4
  %i_io_list = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 29
  %3 = ptrtoint ptr %i_io_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %i_io_list, ptr %i_io_list, align 4
  %prev.i8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 29, i32 1
  %4 = ptrtoint ptr %prev.i8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %i_io_list, ptr %prev.i8, align 4
  %i_wb_list = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 36
  %5 = ptrtoint ptr %i_wb_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %i_wb_list, ptr %i_wb_list, align 4
  %prev.i9 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 36, i32 1
  %6 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %i_wb_list, ptr %prev.i9, align 4
  %i_lru = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 34
  %7 = ptrtoint ptr %i_lru to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %i_lru, ptr %i_lru, align 4
  %prev.i10 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 34, i32 1
  %8 = ptrtoint ptr %prev.i10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i_lru, ptr %prev.i10, align 4
  %i_pages.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %i_pages.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #16
  %xa_flags.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 1, i32 1
  %9 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 33, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 1, i32 2
  %10 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %xa_head.i.i, align 4
  %i_mmap_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 6
  tail call void @__init_rwsem(ptr noundef %i_mmap_rwsem.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @__address_space_init_once.__key) #16
  %private_list.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 13
  %11 = ptrtoint ptr %private_list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %private_list.i, ptr %private_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 13, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %private_list.i, ptr %prev.i.i, align 4
  %private_lock.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %private_lock.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @__address_space_init_once.__key.48, i16 noundef signext 3) #16
  %i_mmap.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 5
  %13 = ptrtoint ptr %i_mmap.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %i_mmap.i, align 4
  %.compoundliteral.sroa.2.0.i_mmap.sroa_idx.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 5, i32 1
  %14 = ptrtoint ptr %.compoundliteral.sroa.2.0.i_mmap.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %.compoundliteral.sroa.2.0.i_mmap.sroa_idx.i, align 4
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @inode_init_once.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %15 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %i_size_seqcount, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__iget(ptr noundef %inode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_count = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %i_count, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_count, ptr %i_count, i32 1, ptr elementtype(i32) %i_count) #16, !srcloc !307
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ihold(ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_count = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_count, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !308
  tail call void @llvm.prefetch.p0(ptr %i_count, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_count, ptr %i_count, i32 1, ptr elementtype(i32) %i_count) #16, !srcloc !309
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !310
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !294

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 450, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inode_add_lru(ptr noundef %inode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_state.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %0 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_state.i, align 8
  %and.i = and i32 %1, 2231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__inode_add_lru.exit_crit_edge

entry.__inode_add_lru.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__inode_add_lru.exit

if.end.i:                                         ; preds = %entry
  %i_count.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 40
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_count.i, i32 noundef 4) #16
  %2 = ptrtoint ptr %i_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.__inode_add_lru.exit_crit_edge

if.end.i.__inode_add_lru.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__inode_add_lru.exit

if.end3.i:                                        ; preds = %if.end.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags.i, align 4
  %and4.i = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.__inode_add_lru.exit_crit_edge, label %if.end7.i

if.end3.i.__inode_add_lru.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__inode_add_lru.exit

if.end7.i:                                        ; preds = %if.end3.i
  %s_inode_lru.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 55
  %i_lru.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 34
  %call12.i = tail call zeroext i1 @list_lru_add(ptr noundef %s_inode_lru.i, ptr noundef %i_lru.i) #16
  br i1 %call12.i, label %do.body14.i, label %if.end7.i.__inode_add_lru.exit_crit_edge

if.end7.i.__inode_add_lru.exit_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__inode_add_lru.exit

do.body14.i:                                      ; preds = %if.end7.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !292
  %9 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, ptrtoint (ptr @nr_unused to i32)
  %15 = inttoptr i32 %add.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add27.i = add i32 %17, 1
  store i32 %add27.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !293
  %and.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool38.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool38.not.i, label %if.then42.i, label %do.body14.i.do.end45.i_crit_edge, !prof !294

do.body14.i.do.end45.i_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end45.i

if.then42.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end45.i

do.end45.i:                                       ; preds = %if.then42.i, %do.body14.i.do.end45.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #16, !srcloc !295
  br label %__inode_add_lru.exit

__inode_add_lru.exit:                             ; preds = %do.end45.i, %if.end7.i.__inode_add_lru.exit_crit_edge, %if.end3.i.__inode_add_lru.exit_crit_edge, %if.end.i.__inode_add_lru.exit_crit_edge, %entry.__inode_add_lru.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inode_sb_list_add(ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_inode_list_lock = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 61
  tail call void @_raw_spin_lock(ptr noundef %s_inode_list_lock) #16
  %i_sb_list = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 35
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_inodes = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 62
  %4 = ptrtoint ptr %s_inodes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_inodes, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %i_sb_list, ptr noundef %s_inodes, ptr noundef %5) #16
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %i_sb_list, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %i_sb_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %i_sb_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 35, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %s_inodes, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %s_inodes to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %i_sb_list, ptr %s_inodes, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_inode_list_lock3 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 61
  tail call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__insert_inode_hash(ptr noundef %inode, i32 noundef %hashval) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @inode_hashtable, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %3 = ptrtoint ptr %2 to i32
  %mul.i = mul i32 %3, %hashval
  %add.i = add i32 %hashval, 1640531527
  %div6.i = lshr i32 %add.i, 7
  %xor.i = xor i32 %mul.i, %div6.i
  %xor1.i = xor i32 %xor.i, 1640531527
  %4 = load i32, ptr @i_hash_shift, align 4
  %shr.i = lshr i32 %xor1.i, %4
  %xor2.i = xor i32 %shr.i, %xor.i
  %5 = load i32, ptr @i_hash_mask, align 4
  %and.i = and i32 %xor2.i, %5
  %add.ptr = getelementptr %struct.hlist_head, ptr %0, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %i_hash = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %8 = ptrtoint ptr %i_hash to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %i_hash, align 4
  %pprev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %9 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %add.ptr, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !311
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %i_hash, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

entry.hlist_add_head_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %i_hash, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %entry.hlist_add_head_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__remove_inode_hash(ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %pprev.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init_rcu.exit_crit_edge, label %if.then.i

entry.hlist_del_init_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_del_init_rcu.exit

if.then.i:                                        ; preds = %entry
  %i_hash = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28
  %2 = ptrtoint ptr %i_hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_hash, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i7.i = icmp eq ptr %3, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %entry.hlist_del_init_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dump_mapping(ptr noundef %mapping) local_unnamed_addr #3 align 64 {
entry:
  %host = alloca ptr, align 4
  %a_ops = alloca ptr, align 4
  %dentry_first = alloca ptr, align 4
  %dentry = alloca %struct.dentry, align 8
  %ino = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host) #16
  %0 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %host, align 4, !annotation !312
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a_ops) #16
  %1 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %a_ops, align 4, !annotation !312
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dentry_first) #16
  %2 = ptrtoint ptr %dentry_first to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %dentry_first, align 4, !annotation !312
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %dentry) #16
  %3 = call ptr @memset(ptr %dentry, i32 255, i32 208)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #16
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ino, align 4, !annotation !312
  %call = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %host, ptr noundef %mapping, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %a_ops3 = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 9
  %call5 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %a_ops, ptr noundef %a_ops3, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %mapping) #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %a_ops, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %8) #20
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %9 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 37
  %call19 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %dentry_first, ptr noundef %9, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %if.end16.do.end29_crit_edge

if.end16.do.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end29

lor.lhs.false21:                                  ; preds = %if.end16
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 11
  %call24 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %ino, ptr noundef %i_ino, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end32, label %lor.lhs.false21.do.end29_crit_edge

lor.lhs.false21.do.end29_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end29

do.end29:                                         ; preds = %lor.lhs.false21.do.end29_crit_edge, %if.end16.do.end29_crit_edge
  %12 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %a_ops, align 4
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %13, ptr noundef %15) #20
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false21
  %16 = ptrtoint ptr %dentry_first to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry_first, align 4
  %tobool33.not = icmp eq ptr %17, null
  br i1 %tobool33.not, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %a_ops, align 4
  %20 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ino, align 4
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %19, i32 noundef %21) #20
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %add.ptr = getelementptr i8, ptr %17, i32 -200
  %call44 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %dentry, ptr noundef %add.ptr, i32 noundef 208) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  %22 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %a_ops, align 4
  %24 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ino, align 4
  br i1 %tobool45.not, label %do.end55, label %do.end49

do.end49:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %23, i32 noundef %25, ptr noundef %add.ptr) #20
  br label %cleanup

do.end55:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %23, i32 noundef %25, ptr noundef nonnull %dentry) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %do.end49, %do.end37, %do.end29, %do.end13, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #16
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %dentry) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dentry_first) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a_ops) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_inode(ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_pages = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages) #16
  %nrpages = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 7
  %0 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nrpages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end7, label %do.body4, !prof !296

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 611, 0\0A.popsection", ""() #16, !srcloc !313
  unreachable

do.end7:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_irq(ptr noundef %i_pages) #16
  %private_list = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 13
  %2 = ptrtoint ptr %private_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %private_list, align 4
  %cmp.i.not = icmp eq ptr %3, %private_list
  br i1 %cmp.i.not, label %do.body29, label %do.body23, !prof !296

do.body23:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 621, 0\0A.popsection", ""() #16, !srcloc !314
  unreachable

do.body29:                                        ; preds = %do.end7
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %4 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_state, align 8
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %do.body40, label %do.body46, !prof !294

do.body40:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 622, 0\0A.popsection", ""() #16, !srcloc !315
  unreachable

do.body46:                                        ; preds = %do.body29
  %and48 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body63, label %do.body57, !prof !296

do.body57:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 623, 0\0A.popsection", ""() #16, !srcloc !316
  unreachable

do.body63:                                        ; preds = %do.body46
  %i_wb_list = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 36
  %6 = ptrtoint ptr %i_wb_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %i_wb_list, align 4
  %cmp.i89.not = icmp eq ptr %7, %i_wb_list
  br i1 %cmp.i89.not, label %do.end80, label %do.body75, !prof !296

do.body75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 624, 0\0A.popsection", ""() #16, !srcloc !317
  unreachable

do.end80:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 96, ptr %i_state, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @evict_inodes(ptr noundef %sb) #3 align 64 {
entry:
  %dispose = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dispose) #16
  %0 = getelementptr inbounds %struct.list_head, ptr %dispose, i32 0, i32 1
  %1 = ptrtoint ptr %dispose to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dispose, ptr %dispose, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dispose, ptr %0, align 4
  %s_inode_list_lock = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 61
  call void @_raw_spin_lock(ptr noundef %s_inode_list_lock) #16
  %s_inodes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 62
  %3 = ptrtoint ptr %s_inodes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_inodes, align 4
  %cmp.not5964 = icmp eq ptr %4, %s_inodes
  br i1 %cmp.not5964, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.backedge, %entry.for.body_crit_edge
  %.pn.in60 = phi ptr [ %.pn.in60.be, %for.body.backedge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn61 = load ptr, ptr %.pn.in60, align 8
  %i_count = getelementptr i8, ptr %.pn.in60, i32 40
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_count, i32 noundef 4) #16
  %6 = ptrtoint ptr %i_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %i_lock = getelementptr i8, ptr %.pn.in60, i32 -232
  call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %i_state = getelementptr i8, ptr %.pn.in60, i32 -144
  %8 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_state, align 8
  %and = and i32 %9, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  br label %for.inc

if.end12:                                         ; preds = %if.end
  %or = or i32 %9, 32
  %10 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %i_state, align 8
  %i_sb.i = getelementptr i8, ptr %.pn.in60, i32 -316
  %11 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i, align 4
  %s_inode_lru.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 55
  %i_lru.i = getelementptr i8, ptr %.pn.in60, i32 -8
  %call.i = call zeroext i1 @list_lru_del(ptr noundef %s_inode_lru.i, ptr noundef %i_lru.i) #16
  br i1 %call.i, label %do.body1.i, label %if.end12.inode_lru_list_del.exit_crit_edge

if.end12.inode_lru_list_del.exit_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_lru_list_del.exit

do.body1.i:                                       ; preds = %if.end12
  %13 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !292
  %14 = call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i42 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i42 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, ptrtoint (ptr @nr_unused to i32)
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add14.i = add i32 %22, -1
  store i32 %add14.i, ptr %20, align 4
  %23 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !293
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !294

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #16, !srcloc !295
  br label %inode_lru_list_del.exit

inode_lru_list_del.exit:                          ; preds = %do.end30.i, %if.end12.inode_lru_list_del.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  %24 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dispose, align 4
  %call.i.i43 = call zeroext i1 @__list_add_valid(ptr noundef %i_lru.i, ptr noundef nonnull %dispose, ptr noundef %25) #16
  br i1 %call.i.i43, label %if.end.i.i, label %inode_lru_list_del.exit.list_add.exit_crit_edge

inode_lru_list_del.exit.list_add.exit_crit_edge:  ; preds = %inode_lru_list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit

if.end.i.i:                                       ; preds = %inode_lru_list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %i_lru.i, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %i_lru.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %i_lru.i, align 4
  %prev3.i.i = getelementptr i8, ptr %.pn.in60, i32 -4
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dispose, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %dispose to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %i_lru.i, ptr %dispose, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %inode_lru_list_del.exit.list_add.exit_crit_edge
  %30 = call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 16384
  %34 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not = icmp eq i32 %34, 0
  br i1 %tobool.i.not, label %list_add.exit.for.inc_crit_edge, label %if.then16

list_add.exit.for.inc_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then16:                                        ; preds = %list_add.exit
  call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock) #16
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 740, i32 noundef 0) #16
  %call.i44 = call i32 @__cond_resched() #16
  %35 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not5.i = icmp eq ptr %36, %dispose
  br i1 %cmp.i.not5.i, label %if.then16.dispose_list.exit_crit_edge, label %if.then16.while.body.i_crit_edge

if.then16.while.body.i_crit_edge:                 ; preds = %if.then16
  br label %while.body.i

if.then16.dispose_list.exit_crit_edge:            ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %dispose_list.exit

while.body.i:                                     ; preds = %list_del_init.exit.i.while.body.i_crit_edge, %if.then16.while.body.i_crit_edge
  %37 = phi ptr [ %47, %list_del_init.exit.i.while.body.i_crit_edge ], [ %36, %if.then16.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %37, i32 -336
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %37) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %37, ptr %37, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %37, ptr %prev.i3.i.i, align 4
  call fastcc void @evict(ptr noundef %add.ptr.i) #16
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 698, i32 noundef 0) #16
  %call.i.i45 = call i32 @__cond_resched() #16
  %46 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not.i = icmp eq ptr %47, %dispose
  br i1 %cmp.i.not.i, label %list_del_init.exit.i.dispose_list.exit_crit_edge, label %list_del_init.exit.i.while.body.i_crit_edge

list_del_init.exit.i.while.body.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

list_del_init.exit.i.dispose_list.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dispose_list.exit

dispose_list.exit:                                ; preds = %list_del_init.exit.i.dispose_list.exit_crit_edge, %if.then16.dispose_list.exit_crit_edge
  call void @_raw_spin_lock(ptr noundef %s_inode_list_lock) #16
  %48 = ptrtoint ptr %s_inodes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_inodes, align 4
  %cmp.not59 = icmp eq ptr %49, %s_inodes
  br i1 %cmp.not59, label %dispose_list.exit.for.end_crit_edge, label %dispose_list.exit.for.body.backedge_crit_edge

dispose_list.exit.for.body.backedge_crit_edge:    ; preds = %dispose_list.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.backedge

dispose_list.exit.for.end_crit_edge:              ; preds = %dispose_list.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc:                                          ; preds = %list_add.exit.for.inc_crit_edge, %if.then10, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn61, %s_inodes
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.backedge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %dispose_list.exit.for.body.backedge_crit_edge
  %.pn.in60.be = phi ptr [ %.pn61, %for.inc.for.body.backedge_crit_edge ], [ %49, %dispose_list.exit.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %dispose_list.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock) #16
  %50 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not5.i46 = icmp eq ptr %51, %dispose
  br i1 %cmp.i.not5.i46, label %for.end.dispose_list.exit57_crit_edge, label %for.end.while.body.i49_crit_edge

for.end.while.body.i49_crit_edge:                 ; preds = %for.end
  br label %while.body.i49

for.end.dispose_list.exit57_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %dispose_list.exit57

while.body.i49:                                   ; preds = %list_del_init.exit.i56.while.body.i49_crit_edge, %for.end.while.body.i49_crit_edge
  %52 = phi ptr [ %62, %list_del_init.exit.i56.while.body.i49_crit_edge ], [ %51, %for.end.while.body.i49_crit_edge ]
  %add.ptr.i47 = getelementptr i8, ptr %52, i32 -336
  %call.i.i.i48 = call zeroext i1 @__list_del_entry_valid(ptr noundef %52) #16
  br i1 %call.i.i.i48, label %if.end.i.i.i52, label %while.body.i49.list_del_init.exit.i56_crit_edge

while.body.i49.list_del_init.exit.i56_crit_edge:  ; preds = %while.body.i49
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit.i56

if.end.i.i.i52:                                   ; preds = %while.body.i49
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i50 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i.i50, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %52, align 4
  %prev1.i.i.i.i51 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i.i51, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del_init.exit.i56

list_del_init.exit.i56:                           ; preds = %if.end.i.i.i52, %while.body.i49.list_del_init.exit.i56_crit_edge
  %59 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %52, ptr %52, align 4
  %prev.i3.i.i53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i3.i.i53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %52, ptr %prev.i3.i.i53, align 4
  call fastcc void @evict(ptr noundef %add.ptr.i47) #16
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 698, i32 noundef 0) #16
  %call.i.i54 = call i32 @__cond_resched() #16
  %61 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not.i55 = icmp eq ptr %62, %dispose
  br i1 %cmp.i.not.i55, label %list_del_init.exit.i56.dispose_list.exit57_crit_edge, label %list_del_init.exit.i56.while.body.i49_crit_edge

list_del_init.exit.i56.while.body.i49_crit_edge:  ; preds = %list_del_init.exit.i56
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i49

list_del_init.exit.i56.dispose_list.exit57_crit_edge: ; preds = %list_del_init.exit.i56
  call void @__sanitizer_cov_trace_pc() #18
  br label %dispose_list.exit57

dispose_list.exit57:                              ; preds = %list_del_init.exit.i56.dispose_list.exit57_crit_edge, %for.end.dispose_list.exit57_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dispose) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @invalidate_inodes(ptr noundef %sb, i1 noundef zeroext %kill_dirty) local_unnamed_addr #3 align 64 {
entry:
  %dispose = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dispose) #16
  %0 = getelementptr inbounds %struct.list_head, ptr %dispose, i32 0, i32 1
  %1 = ptrtoint ptr %dispose to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dispose, ptr %dispose, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dispose, ptr %0, align 4
  %s_inode_list_lock = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 61
  call void @_raw_spin_lock(ptr noundef %s_inode_list_lock) #16
  %s_inodes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 62
  %3 = ptrtoint ptr %s_inodes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_inodes, align 4
  %cmp.not7179 = icmp eq ptr %4, %s_inodes
  br i1 %cmp.not7179, label %entry.for.end_crit_edge, label %entry.for.body.outer_crit_edge

entry.for.body.outer_crit_edge:                   ; preds = %entry
  br label %for.body.outer

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.outer:                                   ; preds = %for.inc.for.body.outer_crit_edge, %entry.for.body.outer_crit_edge
  %busy.173.ph = phi i32 [ %busy.2, %for.inc.for.body.outer_crit_edge ], [ 0, %entry.for.body.outer_crit_edge ]
  %.pn.in72.ph = phi ptr [ %.pn74, %for.inc.for.body.outer_crit_edge ], [ %4, %entry.for.body.outer_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %dispose_list.exit.for.body_crit_edge, %for.body.outer
  %.pn.in72 = phi ptr [ %50, %dispose_list.exit.for.body_crit_edge ], [ %.pn.in72.ph, %for.body.outer ]
  %5 = ptrtoint ptr %.pn.in72 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn74 = load ptr, ptr %.pn.in72, align 8
  %i_lock = getelementptr i8, ptr %.pn.in72, i32 -232
  call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %i_state = getelementptr i8, ptr %.pn.in72, i32 -144
  %6 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_state, align 8
  %and = and i32 %7, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc.sink.split_crit_edge

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split

if.end:                                           ; preds = %for.body
  %and11 = and i32 %7, 2055
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %brmerge = or i1 %tobool12.not, %kill_dirty
  br i1 %brmerge, label %if.end16, label %if.end.for.inc.sink.split_crit_edge

if.end.for.inc.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split

if.end16:                                         ; preds = %if.end
  %i_count = getelementptr i8, ptr %.pn.in72, i32 40
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_count, i32 noundef 4) #16
  %8 = ptrtoint ptr %i_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool17.not = icmp eq i32 %9, 0
  br i1 %tobool17.not, label %if.end20, label %if.end16.for.inc.sink.split_crit_edge

if.end16.for.inc.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split

if.end20:                                         ; preds = %if.end16
  %10 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_state, align 8
  %or = or i32 %11, 32
  store i32 %or, ptr %i_state, align 8
  %i_sb.i = getelementptr i8, ptr %.pn.in72, i32 -316
  %12 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i, align 4
  %s_inode_lru.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 55
  %i_lru.i = getelementptr i8, ptr %.pn.in72, i32 -8
  %call.i = call zeroext i1 @list_lru_del(ptr noundef %s_inode_lru.i, ptr noundef %i_lru.i) #16
  br i1 %call.i, label %do.body1.i, label %if.end20.inode_lru_list_del.exit_crit_edge

if.end20.inode_lru_list_del.exit_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_lru_list_del.exit

do.body1.i:                                       ; preds = %if.end20
  %14 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !292
  %15 = call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i53 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i53 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %20, ptrtoint (ptr @nr_unused to i32)
  %21 = inttoptr i32 %add.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add14.i = add i32 %23, -1
  store i32 %add14.i, ptr %21, align 4
  %24 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !293
  %and.i.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !294

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #16, !srcloc !295
  br label %inode_lru_list_del.exit

inode_lru_list_del.exit:                          ; preds = %do.end30.i, %if.end20.inode_lru_list_del.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  %25 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dispose, align 4
  %call.i.i54 = call zeroext i1 @__list_add_valid(ptr noundef %i_lru.i, ptr noundef nonnull %dispose, ptr noundef %26) #16
  br i1 %call.i.i54, label %if.end.i.i, label %inode_lru_list_del.exit.list_add.exit_crit_edge

inode_lru_list_del.exit.list_add.exit_crit_edge:  ; preds = %inode_lru_list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit

if.end.i.i:                                       ; preds = %inode_lru_list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %i_lru.i, ptr %prev1.i.i, align 4
  %28 = ptrtoint ptr %i_lru.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %i_lru.i, align 4
  %prev3.i.i = getelementptr i8, ptr %.pn.in72, i32 -4
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dispose, ptr %prev3.i.i, align 4
  %30 = ptrtoint ptr %dispose to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %i_lru.i, ptr %dispose, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %inode_lru_list_del.exit.list_add.exit_crit_edge
  %31 = call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 16384
  %35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not = icmp eq i32 %35, 0
  br i1 %tobool.i.not, label %list_add.exit.for.inc_crit_edge, label %if.then24

list_add.exit.for.inc_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then24:                                        ; preds = %list_add.exit
  call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock) #16
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 792, i32 noundef 0) #16
  %call.i55 = call i32 @__cond_resched() #16
  %36 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not5.i = icmp eq ptr %37, %dispose
  br i1 %cmp.i.not5.i, label %if.then24.dispose_list.exit_crit_edge, label %if.then24.while.body.i_crit_edge

if.then24.while.body.i_crit_edge:                 ; preds = %if.then24
  br label %while.body.i

if.then24.dispose_list.exit_crit_edge:            ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  br label %dispose_list.exit

while.body.i:                                     ; preds = %list_del_init.exit.i.while.body.i_crit_edge, %if.then24.while.body.i_crit_edge
  %38 = phi ptr [ %48, %list_del_init.exit.i.while.body.i_crit_edge ], [ %37, %if.then24.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %38, i32 -336
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %38) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %38, ptr %38, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %38, ptr %prev.i3.i.i, align 4
  call fastcc void @evict(ptr noundef %add.ptr.i) #16
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 698, i32 noundef 0) #16
  %call.i.i56 = call i32 @__cond_resched() #16
  %47 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not.i = icmp eq ptr %48, %dispose
  br i1 %cmp.i.not.i, label %list_del_init.exit.i.dispose_list.exit_crit_edge, label %list_del_init.exit.i.while.body.i_crit_edge

list_del_init.exit.i.while.body.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

list_del_init.exit.i.dispose_list.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dispose_list.exit

dispose_list.exit:                                ; preds = %list_del_init.exit.i.dispose_list.exit_crit_edge, %if.then24.dispose_list.exit_crit_edge
  call void @_raw_spin_lock(ptr noundef %s_inode_list_lock) #16
  %49 = ptrtoint ptr %s_inodes to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_inodes, align 4
  %cmp.not71 = icmp eq ptr %50, %s_inodes
  br i1 %cmp.not71, label %dispose_list.exit.for.end_crit_edge, label %dispose_list.exit.for.body_crit_edge

dispose_list.exit.for.body_crit_edge:             ; preds = %dispose_list.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

dispose_list.exit.for.end_crit_edge:              ; preds = %dispose_list.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.sink.split:                               ; preds = %if.end16.for.inc.sink.split_crit_edge, %if.end.for.inc.sink.split_crit_edge, %for.body.for.inc.sink.split_crit_edge
  %busy.2.ph = phi i32 [ %busy.173.ph, %for.body.for.inc.sink.split_crit_edge ], [ 1, %if.end.for.inc.sink.split_crit_edge ], [ 1, %if.end16.for.inc.sink.split_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %list_add.exit.for.inc_crit_edge
  %busy.2 = phi i32 [ %busy.2.ph, %for.inc.sink.split ], [ %busy.173.ph, %list_add.exit.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %.pn74, %s_inodes
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body.outer_crit_edge

for.inc.for.body.outer_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.outer

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %dispose_list.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %busy.1.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %busy.173.ph, %dispose_list.exit.for.end_crit_edge ], [ %busy.2, %for.inc.for.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock) #16
  %51 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not5.i57 = icmp eq ptr %52, %dispose
  br i1 %cmp.i.not5.i57, label %for.end.dispose_list.exit68_crit_edge, label %for.end.while.body.i60_crit_edge

for.end.while.body.i60_crit_edge:                 ; preds = %for.end
  br label %while.body.i60

for.end.dispose_list.exit68_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %dispose_list.exit68

while.body.i60:                                   ; preds = %list_del_init.exit.i67.while.body.i60_crit_edge, %for.end.while.body.i60_crit_edge
  %53 = phi ptr [ %63, %list_del_init.exit.i67.while.body.i60_crit_edge ], [ %52, %for.end.while.body.i60_crit_edge ]
  %add.ptr.i58 = getelementptr i8, ptr %53, i32 -336
  %call.i.i.i59 = call zeroext i1 @__list_del_entry_valid(ptr noundef %53) #16
  br i1 %call.i.i.i59, label %if.end.i.i.i63, label %while.body.i60.list_del_init.exit.i67_crit_edge

while.body.i60.list_del_init.exit.i67_crit_edge:  ; preds = %while.body.i60
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit.i67

if.end.i.i.i63:                                   ; preds = %while.body.i60
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i61 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i.i61, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %53, align 4
  %prev1.i.i.i.i62 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i.i62, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del_init.exit.i67

list_del_init.exit.i67:                           ; preds = %if.end.i.i.i63, %while.body.i60.list_del_init.exit.i67_crit_edge
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %53, ptr %53, align 4
  %prev.i3.i.i64 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i3.i.i64 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %53, ptr %prev.i3.i.i64, align 4
  call fastcc void @evict(ptr noundef %add.ptr.i58) #16
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 698, i32 noundef 0) #16
  %call.i.i65 = call i32 @__cond_resched() #16
  %62 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not.i66 = icmp eq ptr %63, %dispose
  br i1 %cmp.i.not.i66, label %list_del_init.exit.i67.dispose_list.exit68_crit_edge, label %list_del_init.exit.i67.while.body.i60_crit_edge

list_del_init.exit.i67.while.body.i60_crit_edge:  ; preds = %list_del_init.exit.i67
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i60

list_del_init.exit.i67.dispose_list.exit68_crit_edge: ; preds = %list_del_init.exit.i67
  call void @__sanitizer_cov_trace_pc() #18
  br label %dispose_list.exit68

dispose_list.exit68:                              ; preds = %list_del_init.exit.i67.dispose_list.exit68_crit_edge, %for.end.dispose_list.exit68_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dispose) #16
  ret i32 %busy.1.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prune_icache_sb(ptr noundef %sb, ptr noundef %sc) local_unnamed_addr #3 align 64 {
entry:
  %freeable = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %freeable) #16
  %0 = getelementptr inbounds %struct.list_head, ptr %freeable, i32 0, i32 1
  %1 = ptrtoint ptr %freeable to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %freeable, ptr %freeable, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %freeable, ptr %0, align 4
  %s_inode_lru = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 55
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %5 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %memcg.i, align 4
  %nr_to_scan.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %call.i = call i32 @list_lru_walk_one(ptr noundef %s_inode_lru, i32 noundef %4, ptr noundef %6, ptr noundef nonnull @inode_lru_isolate, ptr noundef nonnull %freeable, ptr noundef %nr_to_scan.i) #16
  %7 = ptrtoint ptr %freeable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %freeable, align 4
  %cmp.i.not5.i = icmp eq ptr %8, %freeable
  br i1 %cmp.i.not5.i, label %entry.dispose_list.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.dispose_list.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %dispose_list.exit

while.body.i:                                     ; preds = %list_del_init.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %9 = phi ptr [ %19, %list_del_init.exit.i.while.body.i_crit_edge ], [ %8, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %9, i32 -336
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %prev.i3.i.i, align 4
  call fastcc void @evict(ptr noundef %add.ptr.i) #16
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 698, i32 noundef 0) #16
  %call.i.i = call i32 @__cond_resched() #16
  %18 = ptrtoint ptr %freeable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %freeable, align 4
  %cmp.i.not.i = icmp eq ptr %19, %freeable
  br i1 %cmp.i.not.i, label %list_del_init.exit.i.dispose_list.exit_crit_edge, label %list_del_init.exit.i.while.body.i_crit_edge

list_del_init.exit.i.while.body.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

list_del_init.exit.i.dispose_list.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dispose_list.exit

dispose_list.exit:                                ; preds = %list_del_init.exit.i.dispose_list.exit_crit_edge, %entry.dispose_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %freeable) #16
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inode_lru_isolate(ptr noundef %item, ptr noundef %lru, ptr noundef %lru_lock, ptr noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -336
  %i_lock = getelementptr i8, ptr %item, i32 -224
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %i_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_count = getelementptr i8, ptr %item, i32 48
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_count, i32 noundef 4) #16
  %0 = ptrtoint ptr %i_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %i_state = getelementptr i8, ptr %item, i32 -136
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_state, align 8
  %and = and i32 %3, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %i_data = getelementptr i8, ptr %item, i32 72
  %and50 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end56, label %if.then52

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  tail call void @list_lru_isolate(ptr noundef %lru, ptr noundef %item) #16
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !292
  %5 = tail call i32 @llvm.read_register.i32(metadata !282) #16
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
  %add = add i32 %10, ptrtoint (ptr @nr_unused to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add23 = add i32 %13, -1
  store i32 %add23, ptr %11, align 4
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !293
  %and.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool34.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool34.not, label %if.then38, label %if.then6.do.end41_crit_edge, !prof !294

if.then6.do.end41_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end41

if.then38:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %if.then6.do.end41_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #16, !srcloc !295
  br label %cleanup

if.then52:                                        ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %i_state, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false4
  %call57 = tail call i32 @inode_has_buffers(ptr noundef %add.ptr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %lor.lhs.false59, label %if.end56.if.then62_crit_edge

if.end56.if.then62_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then62

lor.lhs.false59:                                  ; preds = %if.end56
  %xa_head.i.i = getelementptr i8, ptr %item, i32 124
  %16 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xa_head.i.i, align 4
  %cmp.i.i = icmp eq ptr %17, null
  br i1 %cmp.i.i, label %if.end82, label %lor.lhs.false59.if.then62_crit_edge

lor.lhs.false59.if.then62_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false59.if.then62_crit_edge, %if.end56.if.then62_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %i_count, i32 1, i32 3, i32 1) #16
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_count, ptr %i_count, i32 1, ptr elementtype(i32) %i_count) #16, !srcloc !307
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock) #16
  %call64 = tail call i32 @remove_inode_buffers(ptr noundef %add.ptr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then62.if.end81_crit_edge, label %if.then66

if.then62.if.end81_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81

if.then66:                                        ; preds = %if.then62
  %call68 = tail call i32 @invalidate_mapping_pages(ptr noundef %i_data, i32 noundef 0, i32 noundef -1) #16
  %19 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i201 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i201 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.i202 = and i32 %24, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i202)
  %tobool70.not = icmp eq i32 %and.i202, 0
  %cpu.i205 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i205 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i205, align 4
  %arrayidx7.i206 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx7.i206 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx7.i206, align 4
  %. = select i1 %tobool70.not, i32 ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 36) to i32), i32 ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 38) to i32)
  %add.i207 = add i32 %28, %.
  %29 = inttoptr i32 %add.i207 to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add8.i208 = add i32 %31, %call68
  store i32 %add8.i208, ptr %29, align 4
  %32 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i209 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i209 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %reclaim_state = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 149
  %36 = ptrtoint ptr %reclaim_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reclaim_state, align 16
  %tobool74.not = icmp eq ptr %37, null
  br i1 %tobool74.not, label %if.then66.if.end81_crit_edge, label %if.then75

if.then66.if.end81_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81

if.then75:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add79 = add i32 %39, %call68
  store i32 %add79, ptr %37, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then75, %if.then66.if.end81_crit_edge, %if.then62.if.end81_crit_edge
  tail call void @iput(ptr noundef %add.ptr)
  tail call void @_raw_spin_lock(ptr noundef %lru_lock) #16
  br label %cleanup

if.end82:                                         ; preds = %lor.lhs.false59
  %40 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_state, align 8
  %and84 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end82.if.end107_crit_edge, label %do.end101, !prof !296

if.end82.if.end107_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end107

do.end101:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 874, i32 noundef 9, ptr noundef null) #16
  br label %if.end107

if.end107:                                        ; preds = %do.end101, %if.end82.if.end107_crit_edge
  %42 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_state, align 8
  %or = or i32 %43, 32
  store i32 %or, ptr %i_state, align 8
  tail call void @list_lru_isolate_move(ptr noundef %lru, ptr noundef %item, ptr noundef %arg) #16
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !292
  %45 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i210 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i210 to ptr
  %cpu143 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu143 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu143, align 4
  %arrayidx144 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx144, align 4
  %add145 = add i32 %50, ptrtoint (ptr @nr_unused to i32)
  %51 = inttoptr i32 %add145 to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add146 = add i32 %53, -1
  store i32 %add146, ptr %51, align 4
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !293
  %and.i.i211 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i211)
  %tobool157.not = icmp eq i32 %and.i.i211, 0
  br i1 %tobool157.not, label %if.then166, label %if.end107.do.end169_crit_edge, !prof !294

if.end107.do.end169_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end169

if.then166:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end169

do.end169:                                        ; preds = %if.then166, %if.end107.do.end169_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %44) #16, !srcloc !295
  br label %cleanup

cleanup:                                          ; preds = %do.end169, %if.end81, %if.then52, %do.end41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end41 ], [ 2, %if.then52 ], [ 4, %if.end81 ], [ 0, %do.end169 ], [ 3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_next_ino() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !318
  %4 = tail call i32 @llvm.read_register.i32(metadata !282) #16
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
  %add = add i32 %9, ptrtoint (ptr @last_ino to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and = and i32 %12, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !294

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @get_next_ino.shared_last_ino, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !308
  tail call void @llvm.prefetch.p0(ptr nonnull @get_next_ino.shared_last_ino, i32 1, i32 3, i32 1) #16
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @get_next_ino.shared_last_ino, ptr nonnull @get_next_ino.shared_last_ino, i32 1024, ptr nonnull elementtype(i32) @get_next_ino.shared_last_ino) #16, !srcloc !309
  %asmresult.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !310
  %sub = add i32 %asmresult.i.i.i, -1024
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %res.0 = phi i32 [ %sub, %if.then ], [ %12, %entry.if.end_crit_edge ]
  %inc = add i32 %res.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool8.not = icmp eq i32 %inc, 0
  br i1 %tobool8.not, label %if.then17, label %if.end.if.end19_crit_edge, !prof !294

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end.if.end19_crit_edge
  %res.1 = phi i32 [ 1, %if.then17 ], [ %inc, %if.end.if.end19_crit_edge ]
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %res.1, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !319
  %15 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i32 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i32 to ptr
  %preempt_count.i.i33 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i33, align 4
  %sub.i = add i32 %18, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i33, align 4
  ret i32 %res.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @new_inode_pseudo(ptr noundef %sb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %0 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_op.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr %3(ptr noundef %sb) #16
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = load ptr, ptr @inode_cachep, align 4
  %call2.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3264) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %inode.0.i = phi ptr [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %tobool3.not.i = icmp eq ptr %inode.0.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.end_crit_edge, label %if.end5.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @inode_init_always(ptr noundef %sb, ptr noundef nonnull %inode.0.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then, label %if.then10.i, !prof !296

if.then10.i:                                      ; preds = %if.end5.i
  %destroy_inode.i = getelementptr inbounds %struct.super_operations, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %destroy_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %destroy_inode.i, align 4
  %tobool11.not.i = icmp eq ptr %6, null
  br i1 %tobool11.not.i, label %if.then10.i.if.end17.i_crit_edge, label %if.then12.i

if.then10.i.if.end17.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.then10.i
  tail call void %6(ptr noundef nonnull %inode.0.i) #16
  %free_inode.i = getelementptr inbounds %struct.super_operations, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %free_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %free_inode.i, align 4
  %tobool14.not.i = icmp eq ptr %8, null
  br i1 %tobool14.not.i, label %if.then12.i.if.end_crit_edge, label %if.then12.i.if.end17.i_crit_edge

if.then12.i.if.end17.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.then12.i.if.end_crit_edge:                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end17.i:                                       ; preds = %if.then12.i.if.end17.i_crit_edge, %if.then10.i.if.end17.i_crit_edge
  %free_inode18.i = getelementptr inbounds %struct.super_operations, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %free_inode18.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %free_inode18.i, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 44
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %11, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %10(ptr noundef nonnull %inode.0.i) #16
  br label %if.end

if.else.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = load ptr, ptr @inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef nonnull %inode.0.i) #16
  br label %if.end

if.then:                                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %i_state = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 24
  %14 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %i_state, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  %i_sb_list = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 35
  %15 = ptrtoint ptr %i_sb_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %i_sb_list, ptr %i_sb_list, align 4
  %prev.i = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 35, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %i_sb_list, ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else.i.i, %if.then.i.i, %if.then12.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %retval.0.i9 = phi ptr [ %inode.0.i, %if.then ], [ null, %if.end.i.if.end_crit_edge ], [ null, %if.then12.i.if.end_crit_edge ], [ null, %if.then.i.i ], [ null, %if.else.i.i ]
  ret ptr %retval.0.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @new_inode(ptr noundef %sb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_inode_list_lock = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 61
  tail call void @llvm.prefetch.p0(ptr %s_inode_list_lock, i32 1, i32 3, i32 1)
  %call = tail call ptr @new_inode_pseudo(ptr noundef %sb)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_inode_list_lock.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 61
  tail call void @_raw_spin_lock(ptr noundef %s_inode_list_lock.i) #16
  %i_sb_list.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 35
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_inodes.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 62
  %4 = ptrtoint ptr %s_inodes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_inodes.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %i_sb_list.i, ptr noundef %s_inodes.i, ptr noundef %5) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.inode_sb_list_add.exit_crit_edge

if.then.inode_sb_list_add.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_sb_list_add.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %i_sb_list.i, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %i_sb_list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %i_sb_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 35, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %s_inodes.i, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %s_inodes.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %i_sb_list.i, ptr %s_inodes.i, align 4
  br label %inode_sb_list_add.exit

inode_sb_list_add.exit:                           ; preds = %if.end.i.i.i, %if.then.inode_sb_list_add.exit_crit_edge
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_inode_list_lock3.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 61
  tail call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock3.i) #16
  br label %if.end

if.end:                                           ; preds = %inode_sb_list_add.exit, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lockdep_annotate_inode_mutex_key(ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_type = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_type, align 32
  %dep_map = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25, i32 6
  %i_mutex_key = getelementptr inbounds %struct.file_system_type, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %dep_map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dep_map, align 4
  %cmp.i.not = icmp eq ptr %8, %i_mutex_key
  br i1 %cmp.i.not, label %do.body, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @__init_rwsem(ptr noundef %i_rwsem, ptr noundef nonnull @.str.3, ptr noundef nonnull @lockdep_annotate_inode_mutex_key.__key) #16
  %i_mutex_dir_key = getelementptr inbounds %struct.file_system_type, ptr %6, i32 0, i32 16
  %wait_type_inner = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25, i32 6, i32 4
  %9 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.27, ptr noundef %i_mutex_dir_key, i32 noundef 0, i8 noundef zeroext %10, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  br label %if.end10

if.end10:                                         ; preds = %do.body, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unlock_new_inode(ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp.i = icmp eq i16 %2, 16384
  br i1 %cmp.i, label %if.then.i, label %entry.lockdep_annotate_inode_mutex_key.exit_crit_edge

entry.lockdep_annotate_inode_mutex_key.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lockdep_annotate_inode_mutex_key.exit

if.then.i:                                        ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_type.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_type.i, align 32
  %dep_map.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25, i32 6
  %i_mutex_key.i = getelementptr inbounds %struct.file_system_type, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %dep_map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dep_map.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %i_mutex_key.i
  br i1 %cmp.i.not.i, label %do.body.i, label %if.then.i.lockdep_annotate_inode_mutex_key.exit_crit_edge

if.then.i.lockdep_annotate_inode_mutex_key.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lockdep_annotate_inode_mutex_key.exit

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @__init_rwsem(ptr noundef %i_rwsem.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @lockdep_annotate_inode_mutex_key.__key) #16
  %i_mutex_dir_key.i = getelementptr inbounds %struct.file_system_type, ptr %6, i32 0, i32 16
  %wait_type_inner.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25, i32 6, i32 4
  %9 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wait_type_inner.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.27, ptr noundef %i_mutex_dir_key.i, i32 noundef 0, i8 noundef zeroext %10, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  br label %lockdep_annotate_inode_mutex_key.exit

lockdep_annotate_inode_mutex_key.exit:            ; preds = %do.body.i, %if.then.i.lockdep_annotate_inode_mutex_key.exit_crit_edge, %entry.lockdep_annotate_inode_mutex_key.exit_crit_edge
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %11 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_state, align 8
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %lockdep_annotate_inode_mutex_key.exit.if.end_crit_edge, !prof !294

lockdep_annotate_inode_mutex_key.exit.if.end_crit_edge: ; preds = %lockdep_annotate_inode_mutex_key.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %lockdep_annotate_inode_mutex_key.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1086, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %lockdep_annotate_inode_mutex_key.exit.if.end_crit_edge
  %13 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_state, align 8
  %and22 = and i32 %14, -32777
  store i32 %and22, ptr %i_state, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !320
  tail call void @wake_up_bit(ptr noundef %i_state, i32 noundef 3) #16
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @discard_new_inode(ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp.i = icmp eq i16 %2, 16384
  br i1 %cmp.i, label %if.then.i, label %entry.lockdep_annotate_inode_mutex_key.exit_crit_edge

entry.lockdep_annotate_inode_mutex_key.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lockdep_annotate_inode_mutex_key.exit

if.then.i:                                        ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_type.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_type.i, align 32
  %dep_map.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25, i32 6
  %i_mutex_key.i = getelementptr inbounds %struct.file_system_type, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %dep_map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dep_map.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %i_mutex_key.i
  br i1 %cmp.i.not.i, label %do.body.i, label %if.then.i.lockdep_annotate_inode_mutex_key.exit_crit_edge

if.then.i.lockdep_annotate_inode_mutex_key.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lockdep_annotate_inode_mutex_key.exit

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @__init_rwsem(ptr noundef %i_rwsem.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @lockdep_annotate_inode_mutex_key.__key) #16
  %i_mutex_dir_key.i = getelementptr inbounds %struct.file_system_type, ptr %6, i32 0, i32 16
  %wait_type_inner.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25, i32 6, i32 4
  %9 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wait_type_inner.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.27, ptr noundef %i_mutex_dir_key.i, i32 noundef 0, i8 noundef zeroext %10, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  br label %lockdep_annotate_inode_mutex_key.exit

lockdep_annotate_inode_mutex_key.exit:            ; preds = %do.body.i, %if.then.i.lockdep_annotate_inode_mutex_key.exit_crit_edge, %entry.lockdep_annotate_inode_mutex_key.exit_crit_edge
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %11 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_state, align 8
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %lockdep_annotate_inode_mutex_key.exit.if.end_crit_edge, !prof !294

lockdep_annotate_inode_mutex_key.exit.if.end_crit_edge: ; preds = %lockdep_annotate_inode_mutex_key.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %lockdep_annotate_inode_mutex_key.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1098, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %lockdep_annotate_inode_mutex_key.exit.if.end_crit_edge
  %13 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_state, align 8
  %and22 = and i32 %14, -9
  store i32 %and22, ptr %i_state, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !321
  tail call void @wake_up_bit(ptr noundef %i_state, i32 noundef 3) #16
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  tail call void @iput(ptr noundef %inode)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iput(ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %do.body

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

do.body:                                          ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %0 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_state, align 8
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %retry.preheader, label %do.body5, !prof !296

retry.preheader:                                  ; preds = %do.body
  %i_count = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 40
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  %call36 = tail call i32 @_atomic_dec_and_lock(ptr noundef %i_count, ptr noundef %i_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool10.not37 = icmp eq i32 %call36, 0
  br i1 %tobool10.not37, label %retry.preheader.if.end20_crit_edge, label %if.then11.lr.ph

retry.preheader.if.end20_crit_edge:               ; preds = %retry.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then11.lr.ph:                                  ; preds = %retry.preheader
  %2 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  br label %if.then11

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1760, 0\0A.popsection", ""() #16, !srcloc !322
  unreachable

if.then11:                                        ; preds = %if.then16.if.then11_crit_edge, %if.then11.lr.ph
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  br i1 %tobool12.not, label %if.then11.if.end19_crit_edge, label %land.lhs.true

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then11
  %5 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_state, align 8
  %and14 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end19_crit_edge, label %if.then16

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then16:                                        ; preds = %land.lhs.true
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %i_count, i32 1, i32 3, i32 1) #16
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_count, ptr %i_count, i32 1, ptr elementtype(i32) %i_count) #16, !srcloc !307
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  tail call fastcc void @trace_writeback_lazytime_iput(ptr noundef nonnull %inode)
  tail call void @__mark_inode_dirty(ptr noundef nonnull %inode, i32 noundef 1) #16
  %call = tail call i32 @_atomic_dec_and_lock(ptr noundef %i_count, ptr noundef %i_lock) #16
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.then16.if.end20_crit_edge, label %if.then16.if.then11_crit_edge

if.then16.if.then11_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.then11.if.end19_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_op.i, align 4
  %12 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_state, align 8
  %and.i = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end19.if.end.i_crit_edge, label %do.end.i, !prof !296

if.end19.if.end.i_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1711, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end19.if.end.i_crit_edge
  %drop_inode.i = getelementptr inbounds %struct.super_operations, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %drop_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drop_inode.i, align 4
  %tobool21.not.i = icmp eq ptr %15, null
  br i1 %tobool21.not.i, label %if.else.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 %15(ptr noundef nonnull %inode) #16
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %if.else.i.if.end34.i_crit_edge, label %lor.rhs.i.i

if.else.i.if.end34.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.i

lor.rhs.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %18 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %19, null
  %lnot.ext.i.i.i.i = zext i1 %tobool.not.i.i.i.i to i32
  br label %if.end25.i

if.end25.i:                                       ; preds = %lor.rhs.i.i, %if.then22.i
  %drop.0.i = phi i32 [ %call.i, %if.then22.i ], [ %lnot.ext.i.i.i.i, %lor.rhs.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %drop.0.i)
  %tobool26.not.i = icmp eq i32 %drop.0.i, 0
  br i1 %tobool26.not.i, label %land.lhs.true.i, label %if.end25.i.if.end34.i_crit_edge

if.end25.i.if.end34.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.i

land.lhs.true.i:                                  ; preds = %if.end25.i
  %20 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_state, align 8
  %and28.i = and i32 %21, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true30.i, label %land.lhs.true.i.do.body42.i_crit_edge

land.lhs.true.i.do.body42.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body42.i

land.lhs.true30.i:                                ; preds = %land.lhs.true.i
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 10
  %22 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_flags.i, align 4
  %and31.i = and i32 %23, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true30.i.do.body42.i_crit_edge, label %if.then33.i

land.lhs.true30.i.do.body42.i_crit_edge:          ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body42.i

if.then33.i:                                      ; preds = %land.lhs.true30.i
  %and.i.i = and i32 %21, 2231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i130.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i130.i, label %if.end.i.i, label %if.then33.i.__inode_add_lru.exit.i_crit_edge

if.then33.i.__inode_add_lru.exit.i_crit_edge:     ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__inode_add_lru.exit.i

if.end.i.i:                                       ; preds = %if.then33.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_count, i32 noundef 4) #16
  %24 = ptrtoint ptr %i_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %i_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %if.end.i.i.__inode_add_lru.exit.i_crit_edge

if.end.i.i.__inode_add_lru.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__inode_add_lru.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %26 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_flags.i.i, align 4
  %and4.i.i = and i32 %29, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end3.i.i.__inode_add_lru.exit.i_crit_edge, label %if.end7.i.i

if.end3.i.i.__inode_add_lru.exit.i_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__inode_add_lru.exit.i

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %s_inode_lru.i.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 55
  %i_lru.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 34
  %call12.i.i = tail call zeroext i1 @list_lru_add(ptr noundef %s_inode_lru.i.i, ptr noundef %i_lru.i.i) #16
  br i1 %call12.i.i, label %do.body14.i.i, label %if.else.i.i

do.body14.i.i:                                    ; preds = %if.end7.i.i
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !292
  %31 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %36, ptrtoint (ptr @nr_unused to i32)
  %37 = inttoptr i32 %add.i.i to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add27.i.i = add i32 %39, 1
  store i32 %add27.i.i, ptr %37, align 4
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !293
  %and.i.i.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool38.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool38.not.i.i, label %if.then42.i.i, label %do.body14.i.i.do.end45.i.i_crit_edge, !prof !294

do.body14.i.i.do.end45.i.i_crit_edge:             ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end45.i.i

if.then42.i.i:                                    ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end45.i.i

do.end45.i.i:                                     ; preds = %if.then42.i.i, %do.body14.i.i.do.end45.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #16, !srcloc !295
  br label %__inode_add_lru.exit.i

if.else.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_state, align 8
  %or.i.i = or i32 %42, 256
  store i32 %or.i.i, ptr %i_state, align 8
  br label %__inode_add_lru.exit.i

__inode_add_lru.exit.i:                           ; preds = %if.else.i.i, %do.end45.i.i, %if.end3.i.i.__inode_add_lru.exit.i_crit_edge, %if.end.i.i.__inode_add_lru.exit.i_crit_edge, %if.then33.i.__inode_add_lru.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  br label %if.end20

if.end34.i:                                       ; preds = %if.end25.i.if.end34.i_crit_edge, %if.else.i.if.end34.i_crit_edge
  %43 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_state, align 8
  br label %do.body90.i

do.body42.i:                                      ; preds = %land.lhs.true30.i.do.body42.i_crit_edge, %land.lhs.true.i.do.body42.i_crit_edge
  %or.i = or i32 %21, 16
  %45 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %or.i, ptr %i_state, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  %call49.i = tail call i32 @write_inode_now(ptr noundef nonnull %inode, i32 noundef 1) #16
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %46 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_state, align 8
  %and53.i = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %do.body42.i.if.end76.i_crit_edge, label %do.end70.i, !prof !296

do.body42.i.if.end76.i_crit_edge:                 ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76.i

do.end70.i:                                       ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1735, i32 noundef 9, ptr noundef null) #16
  br label %if.end76.i

if.end76.i:                                       ; preds = %do.end70.i, %do.body42.i.if.end76.i_crit_edge
  %and84.i = and i32 %47, -17
  br label %do.body90.i

do.body90.i:                                      ; preds = %if.end76.i, %if.end34.i
  %state.0.i = phi i32 [ %44, %if.end34.i ], [ %and84.i, %if.end76.i ]
  %or91.i = or i32 %state.0.i, 32
  %48 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %or91.i, ptr %i_state, align 8
  %i_lru.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 34
  %49 = ptrtoint ptr %i_lru.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %i_lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %50, %i_lru.i
  br i1 %cmp.i.not.i, label %do.body90.i.if.end100.i_crit_edge, label %if.then99.i

do.body90.i.if.end100.i_crit_edge:                ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end100.i

if.then99.i:                                      ; preds = %do.body90.i
  %51 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb.i, align 4
  %s_inode_lru.i132.i = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 55
  %call.i.i31 = tail call zeroext i1 @list_lru_del(ptr noundef %s_inode_lru.i132.i, ptr noundef %i_lru.i) #16
  br i1 %call.i.i31, label %do.body1.i.i, label %if.then99.i.if.end100.i_crit_edge

if.then99.i.if.end100.i_crit_edge:                ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end100.i

do.body1.i.i:                                     ; preds = %if.then99.i
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !292
  %54 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i134.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i134.i to ptr
  %cpu.i135.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpu.i135.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i135.i, align 4
  %arrayidx.i136.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx.i136.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i136.i, align 4
  %add.i137.i = add i32 %59, ptrtoint (ptr @nr_unused to i32)
  %60 = inttoptr i32 %add.i137.i to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %add14.i.i = add i32 %62, -1
  store i32 %add14.i.i, ptr %60, align 4
  %63 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !293
  %and.i.i.i138.i = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i138.i)
  %tobool.not.i139.i = icmp eq i32 %and.i.i.i138.i, 0
  br i1 %tobool.not.i139.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !294

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %53) #16, !srcloc !295
  br label %if.end100.i

if.end100.i:                                      ; preds = %do.end30.i.i, %if.then99.i.if.end100.i_crit_edge, %do.body90.i.if.end100.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  tail call fastcc void @evict(ptr noundef nonnull %inode) #16
  br label %if.end20

if.end20:                                         ; preds = %if.end100.i, %__inode_add_lru.exit.i, %if.then16.if.end20_crit_edge, %retry.preheader.if.end20_crit_edge, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lock_two_nondirectories(ptr noundef %inode1, ptr noundef %inode2) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp ugt ptr %inode1, %inode2
  %spec.select = select i1 %cmp, ptr %inode1, ptr %inode2
  %spec.select27 = select i1 %cmp, ptr %inode2, ptr %inode1
  %tobool.not = icmp eq ptr %spec.select27, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %land.lhs.true

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %spec.select27 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %spec.select27, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp1 = icmp eq i16 %2, 16384
  br i1 %cmp1, label %land.lhs.true.if.end4_crit_edge, label %if.then3

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %spec.select27, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #16
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %spec.select, null
  br i1 %tobool5.not, label %if.end4.if.end16_crit_edge, label %land.lhs.true6

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

land.lhs.true6:                                   ; preds = %if.end4
  %3 = ptrtoint ptr %spec.select to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %spec.select, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %5)
  %cmp10 = icmp eq i16 %5, 16384
  %cmp13.not = icmp eq ptr %spec.select, %spec.select27
  %or.cond = or i1 %cmp13.not, %cmp10
  br i1 %or.cond, label %land.lhs.true6.if.end16_crit_edge, label %if.then15

land.lhs.true6.if.end16_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  %i_rwsem.i28 = getelementptr inbounds %struct.inode, ptr %spec.select, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i28, i32 noundef 4) #16
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true6.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unlock_two_nondirectories(ptr noundef %inode1, ptr noundef %inode2) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inode1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %inode1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode1, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode1, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %inode2, null
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %land.lhs.true3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

land.lhs.true3:                                   ; preds = %if.end
  %3 = ptrtoint ptr %inode2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %inode2, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %5)
  %cmp7 = icmp eq i16 %5, 16384
  %cmp10.not = icmp eq ptr %inode2, %inode1
  %or.cond = or i1 %cmp10.not, %cmp7
  br i1 %or.cond, label %land.lhs.true3.if.end13_crit_edge, label %if.then12

land.lhs.true3.if.end13_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then12:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  %i_rwsem.i20 = getelementptr inbounds %struct.inode, ptr %inode2, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i20) #16
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true3.if.end13_crit_edge, %if.end.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @inode_insert5(ptr noundef %inode, i32 noundef %hashval, ptr nocapture noundef readonly %test, ptr noundef readonly %set, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @inode_hashtable, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %3 = ptrtoint ptr %2 to i32
  %mul.i = mul i32 %3, %hashval
  %add.i = add i32 %hashval, 1640531527
  %div6.i = lshr i32 %add.i, 7
  %xor.i = xor i32 %mul.i, %div6.i
  %xor1.i = xor i32 %xor.i, 1640531527
  %4 = load i32, ptr @i_hash_shift, align 4
  %shr.i = lshr i32 %xor1.i, %4
  %xor2.i = xor i32 %shr.i, %xor.i
  %5 = load i32, ptr @i_hash_mask, align 4
  %and.i = and i32 %xor2.i, %5
  %add.ptr = getelementptr %struct.hlist_head, ptr %0, i32 %and.i
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %6 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_state, align 8
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %call254 = tail call fastcc ptr @find_inode(ptr noundef %9, ptr noundef %add.ptr, ptr noundef %test, ptr noundef %data)
  %tobool3.not55 = icmp eq ptr %call254, null
  br i1 %tobool3.not55, label %entry.if.end18_crit_edge, label %entry.if.then_crit_edge, !prof !296

entry.if.then_crit_edge:                          ; preds = %entry
  br label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then:                                          ; preds = %if.then16.if.then_crit_edge, %entry.if.then_crit_edge
  %call256 = phi ptr [ %call2, %if.then16.if.then_crit_edge ], [ %call254, %entry.if.then_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  %cmp.i = icmp ugt ptr %call256, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call fastcc void @wait_on_inode(ptr noundef nonnull %call256)
  %pprev.i.i = getelementptr inbounds %struct.inode, ptr %call256, i32 0, i32 28, i32 1
  %10 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.not, label %if.then16, label %if.end.cleanup_crit_edge, !prof !294

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then16:                                        ; preds = %if.end
  tail call void @iput(ptr noundef nonnull %call256)
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %call2 = tail call fastcc ptr @find_inode(ptr noundef %13, ptr noundef %add.ptr, ptr noundef %test, ptr noundef %data)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then16.if.end18_crit_edge, label %if.then16.if.then_crit_edge, !prof !296

if.then16.if.then_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then16.if.end18_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.end18:                                         ; preds = %if.then16.if.end18_crit_edge, %entry.if.end18_crit_edge
  %tobool19.not = icmp eq ptr %set, null
  br i1 %tobool19.not, label %if.end18.if.end29_crit_edge, label %land.lhs.true

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end18
  %call20 = tail call i32 %set(ptr noundef %inode, ptr noundef %data) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end29_crit_edge, label %land.lhs.true.unlock_crit_edge, !prof !296

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %if.end18.if.end29_crit_edge
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %14 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_state, align 8
  %or = or i32 %15, 8
  store i32 %or, ptr %i_state, align 8
  %i_hash = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %18 = ptrtoint ptr %i_hash to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %i_hash, align 4
  %pprev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %19 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %add.ptr, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !311
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %i_hash, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end29.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.end29.hlist_add_head_rcu.exit_crit_edge:       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %i_hash, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.end29.hlist_add_head_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  br i1 %tobool.not, label %if.then33, label %hlist_add_head_rcu.exit.unlock_crit_edge

hlist_add_head_rcu.exit.unlock_crit_edge:         ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.then33:                                        ; preds = %hlist_add_head_rcu.exit
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_inode_list_lock.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 61
  tail call void @_raw_spin_lock(ptr noundef %s_inode_list_lock.i) #16
  %i_sb_list.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 35
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  %s_inodes.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 62
  %26 = ptrtoint ptr %s_inodes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_inodes.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %i_sb_list.i, ptr noundef %s_inodes.i, ptr noundef %27) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then33.inode_sb_list_add.exit_crit_edge

if.then33.inode_sb_list_add.exit_crit_edge:       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_sb_list_add.exit

if.end.i.i.i:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %i_sb_list.i, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %i_sb_list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %i_sb_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 35, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %s_inodes.i, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %s_inodes.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %i_sb_list.i, ptr %s_inodes.i, align 4
  br label %inode_sb_list_add.exit

inode_sb_list_add.exit:                           ; preds = %if.end.i.i.i, %if.then33.inode_sb_list_add.exit_crit_edge
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %s_inode_list_lock3.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 61
  tail call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock3.i) #16
  br label %unlock

unlock:                                           ; preds = %inode_sb_list_add.exit, %hlist_add_head_rcu.exit.unlock_crit_edge, %land.lhs.true.unlock_crit_edge
  %inode.addr.0 = phi ptr [ %inode, %hlist_add_head_rcu.exit.unlock_crit_edge ], [ %inode, %inode_sb_list_add.exit ], [ null, %land.lhs.true.unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %inode.addr.0, %unlock ], [ %call256, %if.end.cleanup_crit_edge ], [ null, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_inode(ptr noundef readnone %sb, ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %test, ptr noundef %data) unnamed_addr #3 align 64 {
entry:
  %wait.i = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %tobool.not50 = icmp eq ptr %1, null
  %add.ptr51 = getelementptr i8, ptr %1, i32 -308
  %tobool2.not475355 = icmp eq ptr %add.ptr51, null
  %tobool2.not4753 = or i1 %tobool.not50, %tobool2.not475355
  br i1 %tobool2.not4753, label %entry.cleanup_crit_edge, label %for.body.lr.ph.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph.lr.ph:                             ; preds = %entry
  %2 = getelementptr inbounds %struct.wait_bit_key, ptr %wait.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_bit_key, ptr %wait.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait.i, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait.i, i32 0, i32 1, i32 2
  %7 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait.i, i32 0, i32 1, i32 3
  %8 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait.i, i32 0, i32 1, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.lr.ph.lr.ph
  %inode.048 = phi ptr [ %add.ptr51, %for.body.lr.ph.lr.ph ], [ %inode.048.be, %for.body.backedge ]
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode.048, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %cmp.not = icmp eq ptr %10, %sb
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = call i32 %test(ptr noundef nonnull %inode.048, ptr noundef %data) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %if.end5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode.048, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %i_state = getelementptr inbounds %struct.inode, ptr %inode.048, i32 0, i32 24
  %11 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_state, align 8
  %and = and i32 %12, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wait.i) #16
  %13 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %i_state, ptr %wait.i, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %3, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %4, align 4
  %17 = call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %5, align 4
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @wake_bit_function, ptr %6, align 4
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %7, ptr %7, align 4
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %7, ptr %8, align 4
  %call8.i = call ptr @bit_waitqueue(ptr noundef %i_state, i32 noundef 3) #16
  call void @prepare_to_wait(ptr noundef %call8.i, ptr noundef %4, i32 noundef 2) #16
  call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  call void @schedule() #16
  call void @finish_wait(ptr noundef %call8.i, ptr noundef %4) #16
  call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wait.i) #16
  %25 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head, align 4
  %tobool.not = icmp eq ptr %26, null
  %add.ptr = getelementptr i8, ptr %26, i32 -308
  %tobool2.not4767 = icmp eq ptr %add.ptr, null
  %tobool2.not47 = or i1 %tobool.not, %tobool2.not4767
  br i1 %tobool2.not47, label %if.then7.cleanup_crit_edge, label %if.then7.for.body.backedge_crit_edge

if.then7.for.body.backedge_crit_edge:             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.backedge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %and10 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end17, label %if.end8.cleanup.sink.split_crit_edge, !prof !296

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %i_count.i = getelementptr inbounds %struct.inode, ptr %inode.048, i32 0, i32 40
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_count.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %i_count.i, i32 1, i32 3, i32 1) #16
  %27 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_count.i, ptr %i_count.i, i32 1, ptr elementtype(i32) %i_count.i) #16, !srcloc !307
  br label %cleanup.sink.split

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i_hash = getelementptr inbounds %struct.inode, ptr %inode.048, i32 0, i32 28
  %28 = ptrtoint ptr %i_hash to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_hash, align 4
  %tobool21.not = icmp eq ptr %29, null
  %add.ptr25 = getelementptr i8, ptr %29, i32 -308
  %tobool2.not66 = icmp eq ptr %add.ptr25, null
  %tobool2.not = or i1 %tobool21.not, %tobool2.not66
  br i1 %tobool2.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.backedge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %if.then7.for.body.backedge_crit_edge
  %inode.048.be = phi ptr [ %add.ptr25, %for.inc.for.body.backedge_crit_edge ], [ %add.ptr, %if.then7.for.body.backedge_crit_edge ]
  br label %for.body

cleanup.sink.split:                               ; preds = %if.end17, %if.end8.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %inode.048, %if.end17 ], [ inttoptr (i32 -116 to ptr), %if.end8.cleanup.sink.split_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ null, %for.inc.cleanup_crit_edge ], [ null, %if.then7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_on_inode(ptr noundef %inode) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__might_sleep(ptr noundef nonnull @.str.45, i32 noundef 202) #16
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  tail call void @__might_sleep(ptr noundef nonnull @.str.52, i32 noundef 73) #16
  %0 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_state, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.wait_on_bit.exit_crit_edge, label %if.end.i

entry.wait_on_bit.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_on_bit.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %i_state, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #16
  br label %wait_on_bit.exit

wait_on_bit.exit:                                 ; preds = %if.end.i, %entry.wait_on_bit.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iget5_locked(ptr noundef %sb, i32 noundef %hashval, ptr nocapture noundef readonly %test, ptr noundef %set, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ilookup5(ptr noundef %sb, i32 noundef %hashval, ptr noundef %test, ptr noundef %data)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then:                                          ; preds = %entry
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %0 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_op.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr %3(ptr noundef %sb) #16
  br label %if.end.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %4 = load ptr, ptr @inode_cachep, align 4
  %call2.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3264) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %inode.0.i = phi ptr [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %tobool3.not.i = icmp eq ptr %inode.0.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.end9_crit_edge, label %if.end5.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @inode_init_always(ptr noundef %sb, ptr noundef nonnull %inode.0.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then3, label %if.then10.i, !prof !296

if.then10.i:                                      ; preds = %if.end5.i
  %destroy_inode.i = getelementptr inbounds %struct.super_operations, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %destroy_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %destroy_inode.i, align 4
  %tobool11.not.i = icmp eq ptr %6, null
  br i1 %tobool11.not.i, label %if.then10.i.if.end17.i_crit_edge, label %if.then12.i

if.then10.i.if.end17.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.then10.i
  tail call void %6(ptr noundef nonnull %inode.0.i) #16
  %free_inode.i = getelementptr inbounds %struct.super_operations, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %free_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %free_inode.i, align 4
  %tobool14.not.i = icmp eq ptr %8, null
  br i1 %tobool14.not.i, label %if.then12.i.if.end9_crit_edge, label %if.then12.i.if.end17.i_crit_edge

if.then12.i.if.end17.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.then12.i.if.end9_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.end17.i:                                       ; preds = %if.then12.i.if.end17.i_crit_edge, %if.then10.i.if.end17.i_crit_edge
  %free_inode18.i = getelementptr inbounds %struct.super_operations, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %free_inode18.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %free_inode18.i, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 44
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %11, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %10(ptr noundef nonnull %inode.0.i) #16
  br label %if.end9

if.else.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = load ptr, ptr @inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef nonnull %inode.0.i) #16
  br label %if.end9

if.then3:                                         ; preds = %if.end5.i
  %i_state = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 24
  %14 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %i_state, align 8
  %call4 = tail call ptr @inode_insert5(ptr noundef nonnull %inode.0.i, i32 noundef %hashval, ptr noundef %test, ptr noundef %set, ptr noundef %data)
  %cmp.not = icmp eq ptr %call4, %inode.0.i
  br i1 %cmp.not, label %if.then3.if.end9_crit_edge, label %if.then7, !prof !296

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @destroy_inode(ptr noundef nonnull %inode.0.i)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then3.if.end9_crit_edge, %if.else.i.i, %if.then.i.i, %if.then12.i.if.end9_crit_edge, %if.end.i.if.end9_crit_edge, %entry.if.end9_crit_edge
  %inode.1 = phi ptr [ %call, %entry.if.end9_crit_edge ], [ %call4, %if.then7 ], [ %inode.0.i, %if.then3.if.end9_crit_edge ], [ null, %if.end.i.if.end9_crit_edge ], [ null, %if.then12.i.if.end9_crit_edge ], [ null, %if.then.i.i ], [ null, %if.else.i.i ]
  ret ptr %inode.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ilookup5(ptr noundef %sb, i32 noundef %hashval, ptr nocapture noundef readonly %test, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  %mul.i.i = mul i32 %0, %hashval
  %add.i.i = add i32 %hashval, 1640531527
  %div6.i.i = lshr i32 %add.i.i, 7
  %xor.i.i = xor i32 %div6.i.i, %mul.i.i
  %xor1.i.i = xor i32 %xor.i.i, 1640531527
  br label %again

again:                                            ; preds = %if.then5, %entry
  %1 = load ptr, ptr @inode_hashtable, align 4
  %2 = load i32, ptr @i_hash_shift, align 4
  %shr.i.i = lshr i32 %xor1.i.i, %2
  %xor2.i.i = xor i32 %shr.i.i, %xor.i.i
  %3 = load i32, ptr @i_hash_mask, align 4
  %and.i.i = and i32 %xor2.i.i, %3
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %1, i32 %and.i.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  %call1.i = tail call fastcc ptr @find_inode(ptr noundef %sb, ptr noundef %add.ptr.i, ptr noundef %test, ptr noundef %data) #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  %tobool.not12 = icmp eq ptr %call1.i, null
  %tobool.not = or i1 %cmp.i.i, %tobool.not12
  br i1 %tobool.not, label %again.if.end6_crit_edge, label %if.then

again.if.end6_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then:                                          ; preds = %again
  tail call void @__might_sleep(ptr noundef nonnull @.str.45, i32 noundef 202) #16
  %i_state.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 24
  tail call void @__might_sleep(ptr noundef nonnull @.str.52, i32 noundef 73) #16
  %4 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_state.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.then.wait_on_inode.exit_crit_edge, label %if.end.i.i

if.then.wait_on_inode.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_on_inode.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %i_state.i, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #16
  br label %wait_on_inode.exit

wait_on_inode.exit:                               ; preds = %if.end.i.i, %if.then.wait_on_inode.exit_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 28, i32 1
  %7 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i11.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.i11.not, label %if.then5, label %wait_on_inode.exit.if.end6_crit_edge, !prof !294

wait_on_inode.exit.if.end6_crit_edge:             ; preds = %wait_on_inode.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then5:                                         ; preds = %wait_on_inode.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iput(ptr noundef nonnull %call1.i)
  br label %again

if.end6:                                          ; preds = %wait_on_inode.exit.if.end6_crit_edge, %again.if.end6_crit_edge
  %spec.select.i.lcssa = phi ptr [ %call1.i, %wait_on_inode.exit.if.end6_crit_edge ], [ null, %again.if.end6_crit_edge ]
  ret ptr %spec.select.i.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_inode(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_op, align 4
  %i_lru = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 34
  %4 = ptrtoint ptr %i_lru to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %i_lru, align 4
  %cmp.i.not = icmp eq ptr %5, %i_lru
  br i1 %cmp.i.not, label %do.end9, label %do.body4, !prof !296

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 307, 0\0A.popsection", ""() #16, !srcloc !323
  unreachable

do.end9:                                          ; preds = %entry
  tail call void @__destroy_inode(ptr noundef %inode)
  %destroy_inode = getelementptr inbounds %struct.super_operations, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %destroy_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destroy_inode, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %do.end9.if.end16_crit_edge, label %if.then11

do.end9.if.end16_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then11:                                        ; preds = %do.end9
  tail call void %7(ptr noundef %inode) #16
  %free_inode = getelementptr inbounds %struct.super_operations, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %free_inode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_inode, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %if.then11.if.end16_crit_edge

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.then11.if.end16_crit_edge, %do.end9.if.end16_crit_edge
  %free_inode17 = getelementptr inbounds %struct.super_operations, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %free_inode17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %free_inode17, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 37
  tail call void @call_rcu(ptr noundef %14, ptr noundef nonnull @i_callback) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then11.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iget_locked(ptr noundef %sb, i32 noundef %ino) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @inode_hashtable, align 4
  %1 = ptrtoint ptr %sb to i32
  %mul.i = mul i32 %1, %ino
  %add.i = add i32 %ino, 1640531527
  %div6.i = lshr i32 %add.i, 7
  %xor.i = xor i32 %div6.i, %mul.i
  %xor1.i = xor i32 %xor.i, 1640531527
  %2 = load i32, ptr @i_hash_shift, align 4
  %shr.i = lshr i32 %xor1.i, %2
  %xor2.i = xor i32 %shr.i, %xor.i
  %3 = load i32, ptr @i_hash_mask, align 4
  %and.i = and i32 %xor2.i, %3
  %add.ptr = getelementptr %struct.hlist_head, ptr %0, i32 %and.i
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  br label %again

again:                                            ; preds = %again.backedge, %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  %call1 = tail call fastcc ptr @find_inode_fast(ptr noundef %sb, ptr noundef %add.ptr, i32 noundef %ino)
  tail call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %again
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.cleanup33_crit_edge, label %if.end

if.then.cleanup33_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup33

if.end:                                           ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str.45, i32 noundef 202) #16
  %i_state.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 24
  tail call void @__might_sleep(ptr noundef nonnull @.str.52, i32 noundef 73) #16
  %4 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_state.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.end.wait_on_inode.exit_crit_edge, label %if.end.i.i

if.end.wait_on_inode.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_on_inode.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %i_state.i, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #16
  br label %wait_on_inode.exit

wait_on_inode.exit:                               ; preds = %if.end.i.i, %if.end.wait_on_inode.exit_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 28, i32 1
  %7 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i63.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.i63.not, label %wait_on_inode.exit.again.backedge_crit_edge, label %wait_on_inode.exit.cleanup33_crit_edge, !prof !294

wait_on_inode.exit.cleanup33_crit_edge:           ; preds = %wait_on_inode.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup33

wait_on_inode.exit.again.backedge_crit_edge:      ; preds = %wait_on_inode.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %again.backedge

again.backedge:                                   ; preds = %wait_on_inode.exit75.again.backedge_crit_edge, %wait_on_inode.exit.again.backedge_crit_edge
  %call1.sink = phi ptr [ %call14, %wait_on_inode.exit75.again.backedge_crit_edge ], [ %call1, %wait_on_inode.exit.again.backedge_crit_edge ]
  tail call void @iput(ptr noundef nonnull %call1.sink)
  br label %again

if.end10:                                         ; preds = %again
  %9 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_op.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr %12(ptr noundef %sb) #16
  br label %if.end.i

if.else.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %13 = load ptr, ptr @inode_cachep, align 4
  %call2.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %13, i32 noundef 3264) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %inode.0.i = phi ptr [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %tobool3.not.i = icmp eq ptr %inode.0.i, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup33_crit_edge, label %if.end5.i

if.end.i.cleanup33_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup33

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @inode_init_always(ptr noundef %sb, ptr noundef nonnull %inode.0.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then13, label %if.then10.i, !prof !296

if.then10.i:                                      ; preds = %if.end5.i
  %destroy_inode.i = getelementptr inbounds %struct.super_operations, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %destroy_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %destroy_inode.i, align 4
  %tobool11.not.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i, label %if.then10.i.if.end17.i_crit_edge, label %if.then12.i

if.then10.i.if.end17.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.then10.i
  tail call void %15(ptr noundef nonnull %inode.0.i) #16
  %free_inode.i = getelementptr inbounds %struct.super_operations, ptr %10, i32 0, i32 2
  %16 = ptrtoint ptr %free_inode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free_inode.i, align 4
  %tobool14.not.i = icmp eq ptr %17, null
  br i1 %tobool14.not.i, label %if.then12.i.cleanup33_crit_edge, label %if.then12.i.if.end17.i_crit_edge

if.then12.i.if.end17.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.then12.i.cleanup33_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup33

if.end17.i:                                       ; preds = %if.then12.i.if.end17.i_crit_edge, %if.then10.i.if.end17.i_crit_edge
  %free_inode18.i = getelementptr inbounds %struct.super_operations, ptr %10, i32 0, i32 2
  %18 = ptrtoint ptr %free_inode18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %free_inode18.i, align 4
  %20 = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 44
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %20, align 8
  %tobool.not.i.i64 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i64, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %19(ptr noundef nonnull %inode.0.i) #16
  br label %cleanup33

if.else.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  %22 = load ptr, ptr @inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %22, ptr noundef nonnull %inode.0.i) #16
  br label %cleanup33

if.then13:                                        ; preds = %if.end5.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  %call14 = tail call fastcc ptr @find_inode_fast(ptr noundef %sb, ptr noundef %add.ptr, i32 noundef %ino)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then13
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %ino, ptr %i_ino, align 8
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %i_state = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 24
  %24 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %i_state, align 8
  %i_hash = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 28
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  %27 = ptrtoint ptr %i_hash to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %i_hash, align 4
  %pprev.i = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 28, i32 1
  %28 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %add.ptr, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !311
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %i_hash, ptr %add.ptr, align 4
  %tobool.not.i65 = icmp eq ptr %26, null
  br i1 %tobool.not.i65, label %if.then16.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.then16.hlist_add_head_rcu.exit_crit_edge:      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %i_hash, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.then16.hlist_add_head_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 8
  %31 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb.i, align 4
  %s_inode_list_lock.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 61
  tail call void @_raw_spin_lock(ptr noundef %s_inode_list_lock.i) #16
  %i_sb_list.i = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 35
  %33 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb.i, align 4
  %s_inodes.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 62
  %35 = ptrtoint ptr %s_inodes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_inodes.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %i_sb_list.i, ptr noundef %s_inodes.i, ptr noundef %36) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %hlist_add_head_rcu.exit.inode_sb_list_add.exit_crit_edge

hlist_add_head_rcu.exit.inode_sb_list_add.exit_crit_edge: ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_sb_list_add.exit

if.end.i.i.i:                                     ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %i_sb_list.i, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %i_sb_list.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %i_sb_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 35, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %s_inodes.i, ptr %prev3.i.i.i, align 4
  %40 = ptrtoint ptr %s_inodes.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %i_sb_list.i, ptr %s_inodes.i, align 4
  br label %inode_sb_list_add.exit

inode_sb_list_add.exit:                           ; preds = %if.end.i.i.i, %hlist_add_head_rcu.exit.inode_sb_list_add.exit_crit_edge
  %41 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb.i, align 4
  %s_inode_list_lock3.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 61
  tail call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock3.i) #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  br label %cleanup33

if.end18:                                         ; preds = %if.then13
  tail call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  %i_sb.i66 = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 8
  %43 = ptrtoint ptr %i_sb.i66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb.i66, align 4
  %s_op.i67 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %s_op.i67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_op.i67, align 4
  %i_lru.i = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 34
  %47 = ptrtoint ptr %i_lru.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %i_lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %48, %i_lru.i
  br i1 %cmp.i.not.i, label %do.end9.i, label %do.body4.i, !prof !296

do.body4.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 307, 0\0A.popsection", ""() #16, !srcloc !323
  unreachable

do.end9.i:                                        ; preds = %if.end18
  tail call void @__destroy_inode(ptr noundef nonnull %inode.0.i) #16
  %destroy_inode.i68 = getelementptr inbounds %struct.super_operations, ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %destroy_inode.i68 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %destroy_inode.i68, align 4
  %tobool10.not.i = icmp eq ptr %50, null
  br i1 %tobool10.not.i, label %do.end9.i.if.end16.i_crit_edge, label %if.then11.i

do.end9.i.if.end16.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then11.i:                                      ; preds = %do.end9.i
  tail call void %50(ptr noundef nonnull %inode.0.i) #16
  %free_inode.i69 = getelementptr inbounds %struct.super_operations, ptr %46, i32 0, i32 2
  %51 = ptrtoint ptr %free_inode.i69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %free_inode.i69, align 4
  %tobool13.not.i = icmp eq ptr %52, null
  br i1 %tobool13.not.i, label %if.then11.i.destroy_inode.exit_crit_edge, label %if.then11.i.if.end16.i_crit_edge

if.then11.i.if.end16.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then11.i.destroy_inode.exit_crit_edge:         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %destroy_inode.exit

if.end16.i:                                       ; preds = %if.then11.i.if.end16.i_crit_edge, %do.end9.i.if.end16.i_crit_edge
  %free_inode17.i = getelementptr inbounds %struct.super_operations, ptr %46, i32 0, i32 2
  %53 = ptrtoint ptr %free_inode17.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %free_inode17.i, align 4
  %55 = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 44
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %55, align 8
  %57 = getelementptr inbounds %struct.inode, ptr %inode.0.i, i32 0, i32 37
  tail call void @call_rcu(ptr noundef %57, ptr noundef nonnull @i_callback) #16
  br label %destroy_inode.exit

destroy_inode.exit:                               ; preds = %if.end16.i, %if.then11.i.destroy_inode.exit_crit_edge
  %cmp.i70 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %destroy_inode.exit.cleanup33_crit_edge, label %if.end21

destroy_inode.exit.cleanup33_crit_edge:           ; preds = %destroy_inode.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup33

if.end21:                                         ; preds = %destroy_inode.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.45, i32 noundef 202) #16
  %i_state.i71 = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 24
  tail call void @__might_sleep(ptr noundef nonnull @.str.52, i32 noundef 73) #16
  %58 = ptrtoint ptr %i_state.i71 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %i_state.i71, align 4
  %60 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i72 = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i72, label %if.end21.wait_on_inode.exit75_crit_edge, label %if.end.i.i74

if.end21.wait_on_inode.exit75_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_on_inode.exit75

if.end.i.i74:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i.i73 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %i_state.i71, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #16
  br label %wait_on_inode.exit75

wait_on_inode.exit75:                             ; preds = %if.end.i.i74, %if.end21.wait_on_inode.exit75_crit_edge
  %pprev.i.i76 = getelementptr inbounds %struct.inode, ptr %call14, i32 0, i32 28, i32 1
  %61 = ptrtoint ptr %pprev.i.i76 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pprev.i.i76, align 4
  %tobool.not.i.i77.not = icmp eq ptr %62, null
  br i1 %tobool.not.i.i77.not, label %wait_on_inode.exit75.again.backedge_crit_edge, label %wait_on_inode.exit75.cleanup33_crit_edge, !prof !294

wait_on_inode.exit75.cleanup33_crit_edge:         ; preds = %wait_on_inode.exit75
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup33

wait_on_inode.exit75.again.backedge_crit_edge:    ; preds = %wait_on_inode.exit75
  call void @__sanitizer_cov_trace_pc() #18
  br label %again.backedge

cleanup33:                                        ; preds = %wait_on_inode.exit75.cleanup33_crit_edge, %destroy_inode.exit.cleanup33_crit_edge, %inode_sb_list_add.exit, %if.else.i.i, %if.then.i.i, %if.then12.i.cleanup33_crit_edge, %if.end.i.cleanup33_crit_edge, %wait_on_inode.exit.cleanup33_crit_edge, %if.then.cleanup33_crit_edge
  %retval.2 = phi ptr [ null, %if.then12.i.cleanup33_crit_edge ], [ null, %if.then.i.i ], [ null, %if.else.i.i ], [ %inode.0.i, %inode_sb_list_add.exit ], [ null, %destroy_inode.exit.cleanup33_crit_edge ], [ %call14, %wait_on_inode.exit75.cleanup33_crit_edge ], [ null, %if.end.i.cleanup33_crit_edge ], [ %call1, %wait_on_inode.exit.cleanup33_crit_edge ], [ null, %if.then.cleanup33_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_inode_fast(ptr noundef readnone %sb, ptr nocapture noundef readonly %head, i32 noundef %ino) unnamed_addr #3 align 64 {
entry:
  %wait.i = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %tobool.not49 = icmp eq ptr %1, null
  %add.ptr50 = getelementptr i8, ptr %1, i32 -308
  %tobool2.not465254 = icmp eq ptr %add.ptr50, null
  %tobool2.not4652 = or i1 %tobool.not49, %tobool2.not465254
  br i1 %tobool2.not4652, label %entry.cleanup_crit_edge, label %for.body.lr.ph.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph.lr.ph:                             ; preds = %entry
  %2 = getelementptr inbounds %struct.wait_bit_key, ptr %wait.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_bit_key, ptr %wait.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait.i, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait.i, i32 0, i32 1, i32 2
  %7 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait.i, i32 0, i32 1, i32 3
  %8 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wait.i, i32 0, i32 1, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.lr.ph.lr.ph
  %inode.047 = phi ptr [ %add.ptr50, %for.body.lr.ph.lr.ph ], [ %inode.047.be, %for.body.backedge ]
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode.047, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %ino)
  %cmp.not = icmp eq i32 %10, %ino
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode.047, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %cmp3.not = icmp eq ptr %12, %sb
  br i1 %cmp3.not, label %if.end5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode.047, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %i_state = getelementptr inbounds %struct.inode, ptr %inode.047, i32 0, i32 24
  %13 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_state, align 8
  %and = and i32 %14, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wait.i) #16
  %15 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %i_state, ptr %wait.i, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %2, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %3, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %4, align 4
  %19 = call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %5, align 4
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @wake_bit_function, ptr %6, align 4
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %7, ptr %7, align 4
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %7, ptr %8, align 4
  %call8.i = call ptr @bit_waitqueue(ptr noundef %i_state, i32 noundef 3) #16
  call void @prepare_to_wait(ptr noundef %call8.i, ptr noundef %4, i32 noundef 2) #16
  call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  call void @schedule() #16
  call void @finish_wait(ptr noundef %call8.i, ptr noundef %4) #16
  call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wait.i) #16
  %27 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head, align 4
  %tobool.not = icmp eq ptr %28, null
  %add.ptr = getelementptr i8, ptr %28, i32 -308
  %tobool2.not4666 = icmp eq ptr %add.ptr, null
  %tobool2.not46 = or i1 %tobool.not, %tobool2.not4666
  br i1 %tobool2.not46, label %if.then7.cleanup_crit_edge, label %if.then7.for.body.backedge_crit_edge

if.then7.for.body.backedge_crit_edge:             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.backedge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %and10 = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end16, label %if.end8.cleanup.sink.split_crit_edge, !prof !296

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %i_count.i = getelementptr inbounds %struct.inode, ptr %inode.047, i32 0, i32 40
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_count.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %i_count.i, i32 1, i32 3, i32 1) #16
  %29 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_count.i, ptr %i_count.i, i32 1, ptr elementtype(i32) %i_count.i) #16, !srcloc !307
  br label %cleanup.sink.split

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i_hash = getelementptr inbounds %struct.inode, ptr %inode.047, i32 0, i32 28
  %30 = ptrtoint ptr %i_hash to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_hash, align 4
  %tobool20.not = icmp eq ptr %31, null
  %add.ptr24 = getelementptr i8, ptr %31, i32 -308
  %tobool2.not65 = icmp eq ptr %add.ptr24, null
  %tobool2.not = or i1 %tobool20.not, %tobool2.not65
  br i1 %tobool2.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.backedge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %if.then7.for.body.backedge_crit_edge
  %inode.047.be = phi ptr [ %add.ptr24, %for.inc.for.body.backedge_crit_edge ], [ %add.ptr, %if.then7.for.body.backedge_crit_edge ]
  br label %for.body

cleanup.sink.split:                               ; preds = %if.end16, %if.end8.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %inode.047, %if.end16 ], [ inttoptr (i32 -116 to ptr), %if.end8.cleanup.sink.split_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ null, %for.inc.cleanup_crit_edge ], [ null, %if.then7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iunique(ptr noundef %sb, i32 noundef %max_reserved) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 696, ptr noundef nonnull @.str.54) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @iunique.iunique_lock) #16
  %4 = ptrtoint ptr %sb to i32
  %add = add i32 %max_reserved, 1
  br label %do.body

do.body:                                          ; preds = %land.lhs.true15.i.do.body_crit_edge, %rcu_read_lock.exit
  %5 = load i32, ptr @iunique.counter, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %max_reserved)
  %cmp.not = icmp ugt i32 %5, %max_reserved
  br i1 %cmp.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  store i32 %add, ptr @iunique.counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %6 = load i32, ptr @iunique.counter, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr @iunique.counter, align 4
  %7 = load ptr, ptr @inode_hashtable, align 4
  %mul.i.i = mul i32 %6, %4
  %add.i.i = add i32 %6, 1640531527
  %div6.i.i = lshr i32 %add.i.i, 7
  %xor.i.i = xor i32 %div6.i.i, %mul.i.i
  %xor1.i.i = xor i32 %xor.i.i, 1640531527
  %8 = load i32, ptr @i_hash_shift, align 4
  %shr.i.i = lshr i32 %xor1.i.i, %8
  %xor2.i.i = xor i32 %shr.i.i, %xor.i.i
  %9 = load i32, ptr @i_hash_mask, align 4
  %and.i.i = and i32 %xor2.i.i, %9
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %7, i32 %and.i.i
  %call1.i3 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true.i5:                                 ; preds = %if.end
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i5.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i5.do.end.i_crit_edge:              ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i5
  %.b43.i = load i1, ptr @test_inode_iunique.__warned, align 1
  br i1 %.b43.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i6

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then.i6:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @test_inode_iunique.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1337, ptr noundef nonnull @.str.31) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i6, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i5.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %add.ptr.i, align 4
  %tobool11.not.i = icmp eq ptr %11, null
  %add.ptr13.i = getelementptr i8, ptr %11, i32 -308
  %tobool14.not4751.i = icmp eq ptr %add.ptr13.i, null
  %tobool14.not47.i = or i1 %tobool11.not.i, %tobool14.not4751.i
  br i1 %tobool14.not47.i, label %do.end.i.do.end_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.do.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %inode.048.i = phi ptr [ %add.ptr30.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr13.i, %do.end.i.for.body.i_crit_edge ]
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode.048.i, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %6)
  %cmp.i = icmp eq i32 %13, %6
  br i1 %cmp.i, label %land.lhs.true15.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %for.body.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode.048.i, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %cmp16.i = icmp eq ptr %15, %sb
  br i1 %cmp16.i, label %land.lhs.true15.i.do.body_crit_edge, label %land.lhs.true15.i.for.inc.i_crit_edge

land.lhs.true15.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true15.i.do.body_crit_edge:              ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

for.inc.i:                                        ; preds = %land.lhs.true15.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %i_hash.i = getelementptr inbounds %struct.inode, ptr %inode.048.i, i32 0, i32 28
  %16 = ptrtoint ptr %i_hash.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %i_hash.i, align 4
  %tobool26.not.i = icmp eq ptr %17, null
  %add.ptr30.i = getelementptr i8, ptr %17, i32 -308
  %tobool14.not52.i = icmp eq ptr %add.ptr30.i, null
  %tobool14.not.i = or i1 %tobool26.not.i, %tobool14.not52.i
  br i1 %tobool14.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %do.end.i.do.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @iunique.iunique_lock) #16
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i7, label %do.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

do.end.rcu_read_unlock.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %do.end
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 724, ptr noundef nonnull @.str.55) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %do.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !302
  %18 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i.i.i14 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @igrab(ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %0 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_state, align 8
  %and = and i32 %1, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %i_count.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 40
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %i_count.i, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_count.i, ptr %i_count.i, i32 1, ptr elementtype(i32) %i_count.i) #16, !srcloc !307
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %inode.addr.0 = phi ptr [ %inode, %if.then ], [ null, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  ret ptr %inode.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ilookup5_nowait(ptr noundef %sb, i32 noundef %hashval, ptr nocapture noundef readonly %test, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @inode_hashtable, align 4
  %1 = ptrtoint ptr %sb to i32
  %mul.i = mul i32 %1, %hashval
  %add.i = add i32 %hashval, 1640531527
  %div6.i = lshr i32 %add.i, 7
  %xor.i = xor i32 %div6.i, %mul.i
  %xor1.i = xor i32 %xor.i, 1640531527
  %2 = load i32, ptr @i_hash_shift, align 4
  %shr.i = lshr i32 %xor1.i, %2
  %xor2.i = xor i32 %shr.i, %xor.i
  %3 = load i32, ptr @i_hash_mask, align 4
  %and.i = and i32 %xor2.i, %3
  %add.ptr = getelementptr %struct.hlist_head, ptr %0, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  %call1 = tail call fastcc ptr @find_inode(ptr noundef %sb, ptr noundef %add.ptr, ptr noundef %test, ptr noundef %data)
  tail call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %call1
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ilookup(ptr noundef %sb, i32 noundef %ino) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @inode_hashtable, align 4
  %1 = ptrtoint ptr %sb to i32
  %mul.i = mul i32 %1, %ino
  %add.i = add i32 %ino, 1640531527
  %div6.i = lshr i32 %add.i, 7
  %xor.i = xor i32 %div6.i, %mul.i
  %xor1.i = xor i32 %xor.i, 1640531527
  %2 = load i32, ptr @i_hash_shift, align 4
  %shr.i = lshr i32 %xor1.i, %2
  %xor2.i = xor i32 %shr.i, %xor.i
  %3 = load i32, ptr @i_hash_mask, align 4
  %and.i = and i32 %xor2.i, %3
  %add.ptr = getelementptr %struct.hlist_head, ptr %0, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  %call120 = tail call fastcc ptr @find_inode_fast(ptr noundef %sb, ptr noundef %add.ptr, i32 noundef %ino)
  tail call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  %tobool.not21 = icmp eq ptr %call120, null
  %cmp.i22 = icmp ugt ptr %call120, inttoptr (i32 -4096 to ptr)
  %or.cond23 = or i1 %tobool.not21, %cmp.i22
  br i1 %or.cond23, label %entry.cleanup_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %if.then8.if.end_crit_edge, %entry.if.end_crit_edge
  %call124 = phi ptr [ %call1, %if.then8.if.end_crit_edge ], [ %call120, %entry.if.end_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.45, i32 noundef 202) #16
  %i_state.i = getelementptr inbounds %struct.inode, ptr %call124, i32 0, i32 24
  tail call void @__might_sleep(ptr noundef nonnull @.str.52, i32 noundef 73) #16
  %4 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_state.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.end.wait_on_inode.exit_crit_edge, label %if.end.i.i

if.end.wait_on_inode.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_on_inode.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %i_state.i, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #16
  br label %wait_on_inode.exit

wait_on_inode.exit:                               ; preds = %if.end.i.i, %if.end.wait_on_inode.exit_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.inode, ptr %call124, i32 0, i32 28, i32 1
  %7 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i19.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.i19.not, label %if.then8, label %wait_on_inode.exit.cleanup_crit_edge, !prof !294

wait_on_inode.exit.cleanup_crit_edge:             ; preds = %wait_on_inode.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then8:                                         ; preds = %wait_on_inode.exit
  tail call void @iput(ptr noundef nonnull %call124)
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  %call1 = tail call fastcc ptr @find_inode_fast(ptr noundef %sb, ptr noundef %add.ptr, i32 noundef %ino)
  tail call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  %tobool.not = icmp eq ptr %call1, null
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %if.then8.cleanup_crit_edge, label %if.then8.if.end_crit_edge

if.then8.if.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.then8.cleanup_crit_edge, %wait_on_inode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.then8.cleanup_crit_edge ], [ %call124, %wait_on_inode.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_inode_nowait(ptr noundef %sb, i32 noundef %hashval, ptr nocapture noundef readonly %match, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @inode_hashtable, align 4
  %1 = ptrtoint ptr %sb to i32
  %mul.i = mul i32 %1, %hashval
  %add.i = add i32 %hashval, 1640531527
  %div6.i = lshr i32 %add.i, 7
  %xor.i = xor i32 %div6.i, %mul.i
  %xor1.i = xor i32 %xor.i, 1640531527
  %2 = load i32, ptr @i_hash_shift, align 4
  %shr.i = lshr i32 %xor1.i, %2
  %xor2.i = xor i32 %shr.i, %xor.i
  %3 = load i32, ptr @i_hash_mask, align 4
  %and.i = and i32 %xor2.i, %3
  %add.ptr = getelementptr %struct.hlist_head, ptr %0, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %5, null
  %add.ptr2 = getelementptr i8, ptr %5, i32 -308
  %tobool3.not3540 = icmp eq ptr %add.ptr2, null
  %tobool3.not35 = or i1 %tobool.not, %tobool3.not3540
  br i1 %tobool3.not35, label %entry.out_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %inode.036 = phi ptr [ %add.ptr17, %for.inc.for.body_crit_edge ], [ %add.ptr2, %entry.for.body_crit_edge ]
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode.036, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %cmp.not = icmp eq ptr %7, %sb
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call4 = tail call i32 %match(ptr noundef nonnull %inode.036, i32 noundef %hashval, ptr noundef %data) #16
  %8 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %if.end.out.loopexit_crit_edge [
    i32 0, label %if.end.for.inc_crit_edge
    i32 1, label %if.end.out_crit_edge
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end.out.loopexit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.loopexit

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i_hash = getelementptr inbounds %struct.inode, ptr %inode.036, i32 0, i32 28
  %9 = ptrtoint ptr %i_hash to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_hash, align 4
  %tobool13.not = icmp eq ptr %10, null
  %add.ptr17 = getelementptr i8, ptr %10, i32 -308
  %tobool3.not42 = icmp eq ptr %add.ptr17, null
  %tobool3.not = or i1 %tobool13.not, %tobool3.not42
  br i1 %tobool3.not, label %for.inc.out.loopexit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.out.loopexit_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.loopexit

out.loopexit:                                     ; preds = %for.inc.out.loopexit_crit_edge, %if.end.out.loopexit_crit_edge
  br label %out

out:                                              ; preds = %out.loopexit, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_inode.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %out.loopexit ], [ %inode.036, %if.end.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  ret ptr %ret_inode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_inode_rcu(ptr noundef %sb, i32 noundef %hashval, ptr nocapture noundef readonly %test, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @inode_hashtable, align 4
  %1 = ptrtoint ptr %sb to i32
  %mul.i = mul i32 %1, %hashval
  %add.i = add i32 %hashval, 1640531527
  %div6.i = lshr i32 %add.i, 7
  %xor.i = xor i32 %div6.i, %mul.i
  %xor1.i = xor i32 %xor.i, 1640531527
  %2 = load i32, ptr @i_hash_shift, align 4
  %shr.i = lshr i32 %xor1.i, %2
  %xor2.i = xor i32 %shr.i, %xor.i
  %3 = load i32, ptr @i_hash_mask, align 4
  %and.i = and i32 %xor2.i, %3
  %add.ptr = getelementptr %struct.hlist_head, ptr %0, i32 %and.i
  %call1 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body6

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.body6_crit_edge, label %land.lhs.true4

land.lhs.true.do.body6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body6

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b65 = load i1, ptr @find_inode_rcu.__warned, align 1
  br i1 %.b65, label %land.lhs.true4.do.body6_crit_edge, label %if.then

land.lhs.true4.do.body6_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body6

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @find_inode_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1574, ptr noundef nonnull @.str.29) #16
  br label %do.body6

do.body6:                                         ; preds = %if.then, %land.lhs.true4.do.body6_crit_edge, %land.lhs.true.do.body6_crit_edge, %entry.do.body6_crit_edge
  %call7 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %do.body6.do.end17_crit_edge

do.body6.do.end17_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17

land.lhs.true9:                                   ; preds = %do.body6
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true9.do.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %.b6364 = load i1, ptr @find_inode_rcu.__warned.30, align 1
  br i1 %.b6364, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @find_inode_rcu.__warned.30, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1576, ptr noundef nonnull @.str.31) #16
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true9.do.end17_crit_edge, %do.body6.do.end17_crit_edge
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %add.ptr, align 4
  %tobool23.not = icmp eq ptr %5, null
  %add.ptr25 = getelementptr i8, ptr %5, i32 -308
  %tobool26.not6973 = icmp eq ptr %add.ptr25, null
  %tobool26.not69 = or i1 %tobool23.not, %tobool26.not6973
  br i1 %tobool26.not69, label %do.end17.cleanup_crit_edge, label %do.end17.for.body_crit_edge

do.end17.for.body_crit_edge:                      ; preds = %do.end17
  br label %for.body

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end17.for.body_crit_edge
  %inode.070 = phi ptr [ %add.ptr49, %for.inc.for.body_crit_edge ], [ %add.ptr25, %do.end17.for.body_crit_edge ]
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode.070, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %cmp = icmp eq ptr %7, %sb
  br i1 %cmp, label %do.end30, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end30:                                         ; preds = %for.body
  %i_state = getelementptr inbounds %struct.inode, ptr %inode.070, i32 0, i32 24
  %8 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_state, align 8
  %and = and i32 %9, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %do.end30.for.inc_crit_edge

do.end30.for.inc_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true33:                                  ; preds = %do.end30
  %call34 = tail call i32 %test(ptr noundef nonnull %inode.070, ptr noundef %data) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true33.for.inc_crit_edge, label %land.lhs.true33.cleanup_crit_edge

land.lhs.true33.cleanup_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true33.for.inc_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true33.for.inc_crit_edge, %do.end30.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i_hash = getelementptr inbounds %struct.inode, ptr %inode.070, i32 0, i32 28
  %10 = ptrtoint ptr %i_hash to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %i_hash, align 4
  %tobool45.not = icmp eq ptr %11, null
  %add.ptr49 = getelementptr i8, ptr %11, i32 -308
  %tobool26.not74 = icmp eq ptr %add.ptr49, null
  %tobool26.not = or i1 %tobool45.not, %tobool26.not74
  br i1 %tobool26.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true33.cleanup_crit_edge, %do.end17.cleanup_crit_edge
  %inode.0.lcssa = phi ptr [ null, %do.end17.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %inode.070, %land.lhs.true33.cleanup_crit_edge ]
  ret ptr %inode.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_inode_by_ino_rcu(ptr noundef %sb, i32 noundef %ino) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @inode_hashtable, align 4
  %1 = ptrtoint ptr %sb to i32
  %mul.i = mul i32 %1, %ino
  %add.i = add i32 %ino, 1640531527
  %div6.i = lshr i32 %add.i, 7
  %xor.i = xor i32 %div6.i, %mul.i
  %xor1.i = xor i32 %xor.i, 1640531527
  %2 = load i32, ptr @i_hash_shift, align 4
  %shr.i = lshr i32 %xor1.i, %2
  %xor2.i = xor i32 %shr.i, %xor.i
  %3 = load i32, ptr @i_hash_mask, align 4
  %and.i = and i32 %xor2.i, %3
  %add.ptr = getelementptr %struct.hlist_head, ptr %0, i32 %and.i
  %call1 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body6

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.body6_crit_edge, label %land.lhs.true4

land.lhs.true.do.body6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body6

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b65 = load i1, ptr @find_inode_by_ino_rcu.__warned, align 1
  br i1 %.b65, label %land.lhs.true4.do.body6_crit_edge, label %if.then

land.lhs.true4.do.body6_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body6

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @find_inode_by_ino_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1612, ptr noundef nonnull @.str.32) #16
  br label %do.body6

do.body6:                                         ; preds = %if.then, %land.lhs.true4.do.body6_crit_edge, %land.lhs.true.do.body6_crit_edge, %entry.do.body6_crit_edge
  %call7 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %do.body6.do.end17_crit_edge

do.body6.do.end17_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17

land.lhs.true9:                                   ; preds = %do.body6
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true9.do.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %.b6364 = load i1, ptr @find_inode_by_ino_rcu.__warned.33, align 1
  br i1 %.b6364, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @find_inode_by_ino_rcu.__warned.33, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1614, ptr noundef nonnull @.str.31) #16
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true9.do.end17_crit_edge, %do.body6.do.end17_crit_edge
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %add.ptr, align 4
  %tobool23.not = icmp eq ptr %5, null
  %add.ptr25 = getelementptr i8, ptr %5, i32 -308
  %tobool26.not6973 = icmp eq ptr %add.ptr25, null
  %tobool26.not69 = or i1 %tobool23.not, %tobool26.not6973
  br i1 %tobool26.not69, label %do.end17.cleanup_crit_edge, label %do.end17.for.body_crit_edge

do.end17.for.body_crit_edge:                      ; preds = %do.end17
  br label %for.body

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end17.for.body_crit_edge
  %inode.070 = phi ptr [ %add.ptr48, %for.inc.for.body_crit_edge ], [ %add.ptr25, %do.end17.for.body_crit_edge ]
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode.070, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %ino)
  %cmp = icmp eq i32 %7, %ino
  br i1 %cmp, label %land.lhs.true27, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true27:                                  ; preds = %for.body
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode.070, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %cmp28 = icmp eq ptr %9, %sb
  br i1 %cmp28, label %do.end32, label %land.lhs.true27.for.inc_crit_edge

land.lhs.true27.for.inc_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end32:                                         ; preds = %land.lhs.true27
  %i_state = getelementptr inbounds %struct.inode, ptr %inode.070, i32 0, i32 24
  %10 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %i_state, align 8
  %and = and i32 %11, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %do.end32.cleanup_crit_edge, label %do.end32.for.inc_crit_edge

do.end32.for.inc_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc:                                          ; preds = %do.end32.for.inc_crit_edge, %land.lhs.true27.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i_hash = getelementptr inbounds %struct.inode, ptr %inode.070, i32 0, i32 28
  %12 = ptrtoint ptr %i_hash to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %i_hash, align 4
  %tobool44.not = icmp eq ptr %13, null
  %add.ptr48 = getelementptr i8, ptr %13, i32 -308
  %tobool26.not74 = icmp eq ptr %add.ptr48, null
  %tobool26.not = or i1 %tobool44.not, %tobool26.not74
  br i1 %tobool26.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end32.cleanup_crit_edge, %do.end17.cleanup_crit_edge
  %inode.0.lcssa = phi ptr [ null, %do.end17.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %inode.070, %do.end32.cleanup_crit_edge ]
  ret ptr %inode.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @insert_inode_locked(ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %4 = load ptr, ptr @inode_hashtable, align 4
  %5 = ptrtoint ptr %1 to i32
  %mul.i = mul i32 %3, %5
  %add.i = add i32 %3, 1640531527
  %div6.i = lshr i32 %add.i, 7
  %xor.i = xor i32 %div6.i, %mul.i
  %xor1.i = xor i32 %xor.i, 1640531527
  %6 = load i32, ptr @i_hash_shift, align 4
  %shr.i = lshr i32 %xor1.i, %6
  %xor2.i = xor i32 %shr.i, %xor.i
  %7 = load i32, ptr @i_hash_mask, align 4
  %and.i = and i32 %xor2.i, %7
  %add.ptr = getelementptr %struct.hlist_head, ptr %4, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %tobool.not101 = icmp eq ptr %9, null
  %add.ptr2102 = getelementptr i8, ptr %9, i32 -308
  %tobool3.not98104112 = icmp eq ptr %add.ptr2102, null
  %tobool3.not98104 = or i1 %tobool.not101, %tobool3.not98104112
  br i1 %tobool3.not98104, label %entry.if.then27.critedge_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then27.critedge_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then27.critedge

for.body:                                         ; preds = %for.body.backedge, %entry.for.body_crit_edge
  %old.099 = phi ptr [ %old.099.be, %for.body.backedge ], [ %add.ptr2102, %entry.for.body_crit_edge ]
  %i_ino4 = getelementptr inbounds %struct.inode, ptr %old.099, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp.not = icmp eq i32 %11, %3
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %i_sb5 = getelementptr inbounds %struct.inode, ptr %old.099, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb5, align 4
  %cmp6.not = icmp eq ptr %13, %1
  br i1 %cmp6.not, label %if.end8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %i_lock = getelementptr inbounds %struct.inode, ptr %old.099, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %i_state = getelementptr inbounds %struct.inode, ptr %old.099, i32 0, i32 24
  %14 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_state, align 8
  %and = and i32 %15, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end32, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i_hash = getelementptr inbounds %struct.inode, ptr %old.099, i32 0, i32 28
  %16 = ptrtoint ptr %i_hash to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_hash, align 4
  %tobool15.not = icmp eq ptr %17, null
  %add.ptr19 = getelementptr i8, ptr %17, i32 -308
  %tobool3.not120 = icmp eq ptr %add.ptr19, null
  %tobool3.not = or i1 %tobool15.not, %tobool3.not120
  br i1 %tobool3.not, label %for.inc.if.then27.critedge_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.backedge

for.inc.if.then27.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then27.critedge

for.body.backedge:                                ; preds = %cleanup.for.body.backedge_crit_edge, %for.inc.for.body.backedge_crit_edge
  %old.099.be = phi ptr [ %add.ptr19, %for.inc.for.body.backedge_crit_edge ], [ %add.ptr2, %cleanup.for.body.backedge_crit_edge ]
  br label %for.body

if.then27.critedge:                               ; preds = %cleanup.if.then27.critedge_crit_edge, %for.inc.if.then27.critedge_crit_edge, %entry.if.then27.critedge_crit_edge
  %i_lock28 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock28) #16
  %i_state29 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %18 = ptrtoint ptr %i_state29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_state29, align 8
  %or = or i32 %19, 32776
  store i32 %or, ptr %i_state29, align 8
  %i_hash30 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %22 = ptrtoint ptr %i_hash30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %i_hash30, align 4
  %pprev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %23 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %add.ptr, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !311
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %i_hash30, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then27.critedge.cleanup58.sink.split_crit_edge, label %do.body49.i

if.then27.critedge.cleanup58.sink.split_crit_edge: ; preds = %if.then27.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup58.sink.split

do.body49.i:                                      ; preds = %if.then27.critedge
  call void @__sanitizer_cov_trace_pc() #18
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %i_hash30, ptr %pprev51.i, align 4
  br label %cleanup58.sink.split

if.end32:                                         ; preds = %if.end8
  %i_state.le = getelementptr inbounds %struct.inode, ptr %old.099, i32 0, i32 24
  %and34 = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end44, label %if.end32.cleanup58.sink.split_crit_edge, !prof !296

if.end32.cleanup58.sink.split_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup58.sink.split

if.end44:                                         ; preds = %if.end32
  %i_count.i = getelementptr inbounds %struct.inode, ptr %old.099, i32 0, i32 40
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %i_count.i, i32 1, i32 3, i32 1) #16
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_count.i, ptr %i_count.i, i32 1, ptr elementtype(i32) %i_count.i) #16, !srcloc !307
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  tail call void @__might_sleep(ptr noundef nonnull @.str.45, i32 noundef 202) #16
  tail call void @__might_sleep(ptr noundef nonnull @.str.52, i32 noundef 73) #16
  %27 = ptrtoint ptr %i_state.le to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %i_state.le, align 4
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %if.end44.wait_on_inode.exit_crit_edge, label %if.end.i.i

if.end44.wait_on_inode.exit_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_on_inode.exit

if.end.i.i:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %i_state.le, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #16
  br label %wait_on_inode.exit

wait_on_inode.exit:                               ; preds = %if.end.i.i, %if.end44.wait_on_inode.exit_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.inode, ptr %old.099, i32 0, i32 28, i32 1
  %30 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i89.not = icmp eq ptr %31, null
  tail call void @iput(ptr noundef nonnull %old.099)
  br i1 %tobool.not.i.i89.not, label %cleanup, label %wait_on_inode.exit.cleanup58_crit_edge, !prof !296

wait_on_inode.exit.cleanup58_crit_edge:           ; preds = %wait_on_inode.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup58

cleanup:                                          ; preds = %wait_on_inode.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %33, null
  %add.ptr2 = getelementptr i8, ptr %33, i32 -308
  %tobool3.not98121 = icmp eq ptr %add.ptr2, null
  %tobool3.not98 = or i1 %tobool.not, %tobool3.not98121
  br i1 %tobool3.not98, label %cleanup.if.then27.critedge_crit_edge, label %cleanup.for.body.backedge_crit_edge

cleanup.for.body.backedge_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.backedge

cleanup.if.then27.critedge_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then27.critedge

cleanup58.sink.split:                             ; preds = %if.end32.cleanup58.sink.split_crit_edge, %do.body49.i, %if.then27.critedge.cleanup58.sink.split_crit_edge
  %i_lock28.sink = phi ptr [ %i_lock28, %if.then27.critedge.cleanup58.sink.split_crit_edge ], [ %i_lock28, %do.body49.i ], [ %i_lock, %if.end32.cleanup58.sink.split_crit_edge ]
  %retval.1.ph.ph = phi i32 [ 0, %if.then27.critedge.cleanup58.sink.split_crit_edge ], [ 0, %do.body49.i ], [ -16, %if.end32.cleanup58.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i_lock28.sink) #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  br label %cleanup58

cleanup58:                                        ; preds = %cleanup58.sink.split, %wait_on_inode.exit.cleanup58_crit_edge
  %retval.1.ph = phi i32 [ %retval.1.ph.ph, %cleanup58.sink.split ], [ -16, %wait_on_inode.exit.cleanup58_crit_edge ]
  ret i32 %retval.1.ph
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @insert_inode_locked4(ptr noundef %inode, i32 noundef %hashval, ptr nocapture noundef readonly %test, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %0 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_state, align 8
  %or = or i32 %1, 32768
  store i32 %or, ptr %i_state, align 8
  %call = tail call ptr @inode_insert5(ptr noundef %inode, i32 noundef %hashval, ptr noundef %test, ptr noundef null, ptr noundef %data)
  %cmp.not = icmp eq ptr %call, %inode
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iput(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @generic_delete_inode(ptr nocapture readnone %inode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_atomic_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_writeback_lazytime_iput(ptr noundef %inode) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_lazytime_iput, i32 0, i32 1), ptr blockaddress(@trace_writeback_lazytime_iput, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !324

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !296

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !325
  %call42 = tail call i32 @__traceiter_writeback_lazytime_iput(ptr noundef null, ptr noundef %inode) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !326
  %13 = tail call i32 @llvm.read_register.i32(metadata !282) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !282) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !296

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !327
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_lazytime_iput, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_lazytime_iput, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_writeback_lazytime_iput.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_writeback_lazytime_iput.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 863, ptr noundef nonnull @.str.57) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !328
  %31 = tail call i32 @llvm.read_register.i32(metadata !282) #16
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bmap(ptr nocapture noundef readonly %inode, ptr nocapture noundef %block) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %a_ops, align 4
  %bmap = getelementptr inbounds %struct.address_space_operations, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmap, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %block, align 8
  %call = tail call i64 %5(ptr noundef %1, i64 noundef %7) #16
  %8 = ptrtoint ptr %block to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call, ptr %block, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_update_time(ptr noundef %inode, ptr nocapture noundef readonly %time, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then:                                          ; preds = %entry
  %and1 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %0 = call ptr @memcpy(ptr %i_atime, ptr %time, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %and4 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %1 = call ptr @memcpy(ptr %i_ctime, ptr %time, i32 16)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %and8 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %2 = call ptr @memcpy(ptr %i_mtime, ptr %time, i32 16)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags, align 4
  %and12 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %. = select i1 %tobool13.not, i32 1, i32 2048
  br label %if.end17

if.end17:                                         ; preds = %if.end11, %entry.if.end17_crit_edge
  %dirty_flags.0 = phi i32 [ 0, %entry.if.end17_crit_edge ], [ %., %if.end11 ]
  %and18 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end22_crit_edge, label %land.lhs.true

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !329
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #16
  %call.i.i1.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #16
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %land.lhs.true
  %cur.0.i = phi i64 [ %call.i.i1.i, %land.lhs.true ], [ %call.i.i, %if.end.i.for.cond.i_crit_edge ]
  %and.i = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool4.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool4.not.i, label %for.cond.i.inode_maybe_inc_iversion.exit_crit_edge, label %if.end.i

for.cond.i.inode_maybe_inc_iversion.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_maybe_inc_iversion.exit

if.end.i:                                         ; preds = %for.cond.i
  %7 = add i64 %cur.0.i, 2
  %add.i = and i64 %7, -2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #16
  %call.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %add.i) #16
  %cmp.i = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i, label %if.end.i.inode_maybe_inc_iversion.exit_crit_edge, label %if.end.i.for.cond.i_crit_edge, !prof !296

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.end.i.inode_maybe_inc_iversion.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_maybe_inc_iversion.exit

inode_maybe_inc_iversion.exit:                    ; preds = %if.end.i.inode_maybe_inc_iversion.exit_crit_edge, %for.cond.i.inode_maybe_inc_iversion.exit_crit_edge
  %8 = xor i1 %tobool4.not.i, true
  %or21 = zext i1 %8 to i32
  %spec.select = or i32 %dirty_flags.0, %or21
  br label %if.end22

if.end22:                                         ; preds = %inode_maybe_inc_iversion.exit, %if.end17.if.end22_crit_edge
  %dirty_flags.1 = phi i32 [ %dirty_flags.0, %if.end17.if.end22_crit_edge ], [ %spec.select, %inode_maybe_inc_iversion.exit ]
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef %dirty_flags.1) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inode_update_time(ptr noundef %inode, ptr noundef %time, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %0 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_op, align 8
  %update_time = getelementptr inbounds %struct.inode_operations, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %update_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_time, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 %3(ptr noundef %inode, ptr noundef %time, i32 noundef %flags) #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 @generic_update_time(ptr noundef %inode, ptr noundef %time, i32 noundef %flags)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @atime_needs_update(ptr nocapture noundef readonly %path, ptr nocapture noundef readonly %inode) local_unnamed_addr #3 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 4
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mnt_userns.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !330
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %10 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %11 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %cmp.i.i.i.i.i = icmp eq ptr %5, @init_user_ns
  %cmp.i.i.i.i = icmp eq ptr %9, %5
  %spec.select.i.i.i.i = or i1 %cmp.i.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %if.end.i_uid_into_mnt.exit.i_crit_edge, label %if.end.i.i.i

if.end.i_uid_into_mnt.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_uid_into_mnt.exit.i

if.end.i.i.i:                                     ; preds = %if.end
  %cmp.i21.i.i.i = icmp eq ptr %9, @init_user_ns
  br i1 %cmp.i21.i.i.i, label %if.end.i.i.i.if.end7.i.i.i_crit_edge, label %if.else.i.i.i

if.end.i.i.i.if.end7.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i.i.i = tail call i32 @from_kuid(ptr noundef %9, [1 x i32] %11) #16
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.else.i.i.i, %if.end.i.i.i.if.end7.i.i.i_crit_edge
  %uid.0.i.i.i = phi i32 [ %call6.i.i.i, %if.else.i.i.i ], [ %.unpack.i.i, %if.end.i.i.i.if.end7.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i.i)
  %cmp.i.i.i = icmp eq i32 %uid.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end9.i.i.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9.i.i.i:                                    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call10.i.i.i = tail call i32 @make_kuid(ptr noundef %5, i32 noundef %uid.0.i.i.i) #16
  br label %i_uid_into_mnt.exit.i

i_uid_into_mnt.exit.i:                            ; preds = %if.end9.i.i.i, %if.end.i_uid_into_mnt.exit.i_crit_edge
  %retval.sroa.0.0.i.i.i = phi i32 [ %call10.i.i.i, %if.end9.i.i.i ], [ %.unpack.i.i, %if.end.i_uid_into_mnt.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i.i.i)
  %cmp.i.not.i = icmp eq i32 %retval.sroa.0.0.i.i.i, -1
  br i1 %cmp.i.not.i, label %i_uid_into_mnt.exit.i.cleanup_crit_edge, label %lor.rhs.i

i_uid_into_mnt.exit.i.cleanup_crit_edge:          ; preds = %i_uid_into_mnt.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.rhs.i:                                        ; preds = %i_uid_into_mnt.exit.i
  %12 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i12.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 53
  %14 = ptrtoint ptr %s_user_ns.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_user_ns.i.i12.i, align 8
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %16 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack.i13.i = load i32, ptr %i_gid.i.i, align 8
  %17 = insertvalue [1 x i32] undef, i32 %.unpack.i13.i, 0
  %cmp.i.i.i15.i = icmp eq ptr %15, %5
  %spec.select.i.i.i16.i = or i1 %cmp.i.i.i.i.i, %cmp.i.i.i15.i
  br i1 %spec.select.i.i.i16.i, label %lor.rhs.i.HAS_UNMAPPED_ID.exit_crit_edge, label %if.end.i.i18.i

lor.rhs.i.HAS_UNMAPPED_ID.exit_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %HAS_UNMAPPED_ID.exit

if.end.i.i18.i:                                   ; preds = %lor.rhs.i
  %cmp.i21.i.i17.i = icmp eq ptr %15, @init_user_ns
  br i1 %cmp.i21.i.i17.i, label %if.end.i.i18.i.if.end7.i.i22.i_crit_edge, label %if.else.i.i20.i

if.end.i.i18.i.if.end7.i.i22.i_crit_edge:         ; preds = %if.end.i.i18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i.i22.i

if.else.i.i20.i:                                  ; preds = %if.end.i.i18.i
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i.i19.i = tail call i32 @from_kgid(ptr noundef %15, [1 x i32] %17) #16
  br label %if.end7.i.i22.i

if.end7.i.i22.i:                                  ; preds = %if.else.i.i20.i, %if.end.i.i18.i.if.end7.i.i22.i_crit_edge
  %gid.0.i.i.i = phi i32 [ %call6.i.i19.i, %if.else.i.i20.i ], [ %.unpack.i13.i, %if.end.i.i18.i.if.end7.i.i22.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i.i)
  %cmp.i.i21.i = icmp eq i32 %gid.0.i.i.i, -1
  br i1 %cmp.i.i21.i, label %if.end7.i.i22.i.cleanup_crit_edge, label %if.end9.i.i24.i

if.end7.i.i22.i.cleanup_crit_edge:                ; preds = %if.end7.i.i22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9.i.i24.i:                                  ; preds = %if.end7.i.i22.i
  call void @__sanitizer_cov_trace_pc() #18
  %call10.i.i23.i = tail call i32 @make_kgid(ptr noundef %5, i32 noundef %gid.0.i.i.i) #16
  br label %HAS_UNMAPPED_ID.exit

HAS_UNMAPPED_ID.exit:                             ; preds = %if.end9.i.i24.i, %lor.rhs.i.HAS_UNMAPPED_ID.exit_crit_edge
  %retval.sroa.0.0.i.i25.i = phi i32 [ %call10.i.i23.i, %if.end9.i.i24.i ], [ %.unpack.i13.i, %lor.rhs.i.HAS_UNMAPPED_ID.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i.i25.i)
  %cmp.i26.not.i = icmp eq i32 %retval.sroa.0.0.i.i25.i, -1
  br i1 %cmp.i26.not.i, label %HAS_UNMAPPED_ID.exit.cleanup_crit_edge, label %if.end4

HAS_UNMAPPED_ID.exit.cleanup_crit_edge:           ; preds = %HAS_UNMAPPED_ID.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %HAS_UNMAPPED_ID.exit
  %18 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_flags, align 4
  %and5 = and i32 %21, 1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %and11 = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end8.if.end16_crit_edge, label %land.lhs.true

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end8
  %22 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %inode, align 8
  %24 = and i16 %23, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %24)
  %cmp = icmp eq i16 %24, 16384
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mnt_flags, align 4
  %and17 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %and22 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end31_crit_edge, label %land.lhs.true24

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

land.lhs.true24:                                  ; preds = %if.end20
  %27 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %inode, align 8
  %29 = and i16 %28, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %29)
  %cmp28 = icmp eq i16 %29, 16384
  br i1 %cmp28, label %land.lhs.true24.cleanup_crit_edge, label %land.lhs.true24.if.end31_crit_edge

land.lhs.true24.if.end31_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true24.if.end31_crit_edge, %if.end20.if.end31_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode)
  %30 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %30)
  %now.sroa.0.0.copyload53 = load i64, ptr %tmp, align 8
  %now.sroa.6.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %31 = ptrtoint ptr %now.sroa.6.0.tmp.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %31)
  %now.sroa.6.0.copyload54 = load i64, ptr %now.sroa.6.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #16
  %32 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mnt_flags, align 4
  %and.i = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end31.if.end35_crit_edge, label %if.end.i

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.end.i:                                         ; preds = %if.end31
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %34 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_mtime.i, align 8
  %36 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %i_atime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %37)
  %cmp.i.i = icmp slt i64 %35, %37
  br i1 %cmp.i.i, label %if.end.i.if.end2.i_crit_edge, label %if.end.i.i

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end2.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %37)
  %cmp4.i.i = icmp sgt i64 %35, %37
  br i1 %cmp4.i.i, label %if.end.i.i.if.end35_crit_edge, label %timespec64_compare.exit.i

if.end.i.i.if.end35_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

timespec64_compare.exit.i:                        ; preds = %if.end.i.i
  %tv_nsec.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %38 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tv_nsec.i.i, align 8
  %tv_nsec7.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %40 = ptrtoint ptr %tv_nsec7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tv_nsec7.i.i, align 8
  %sub.i.i = sub i32 %39, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp.i, label %timespec64_compare.exit.i.if.end35_crit_edge, label %timespec64_compare.exit.i.if.end2.i_crit_edge

timespec64_compare.exit.i.if.end2.i_crit_edge:    ; preds = %timespec64_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end2.i

timespec64_compare.exit.i.if.end35_crit_edge:     ; preds = %timespec64_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.end2.i:                                        ; preds = %timespec64_compare.exit.i.if.end2.i_crit_edge, %if.end.i.if.end2.i_crit_edge
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %42 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_ctime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %37)
  %cmp.i18.i = icmp slt i64 %43, %37
  br i1 %cmp.i18.i, label %relatime_need_update.exit, label %if.end.i20.i

if.end.i20.i:                                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %37)
  %cmp4.i19.i = icmp sgt i64 %43, %37
  br i1 %cmp4.i19.i, label %if.end.i20.i.if.end35_crit_edge, label %timespec64_compare.exit26.i

if.end.i20.i.if.end35_crit_edge:                  ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

timespec64_compare.exit26.i:                      ; preds = %if.end.i20.i
  %tv_nsec.i21.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %44 = ptrtoint ptr %tv_nsec.i21.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tv_nsec.i21.i, align 8
  %tv_nsec7.i22.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %46 = ptrtoint ptr %tv_nsec7.i22.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tv_nsec7.i22.i, align 8
  %sub.i23.i = sub i32 %45, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i23.i)
  %cmp5.i = icmp slt i32 %sub.i23.i, 0
  %sub.i = sub i64 %now.sroa.0.0.copyload53, %37
  %conv.i = trunc i64 %sub.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 86400, i32 %conv.i)
  %cmp10.i = icmp slt i32 %conv.i, 86400
  %or.cond = select i1 %cmp5.i, i1 %cmp10.i, i1 false
  br i1 %or.cond, label %timespec64_compare.exit26.i.cleanup_crit_edge, label %timespec64_compare.exit26.i.if.end35_crit_edge

timespec64_compare.exit26.i.if.end35_crit_edge:   ; preds = %timespec64_compare.exit26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

timespec64_compare.exit26.i.cleanup_crit_edge:    ; preds = %timespec64_compare.exit26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

relatime_need_update.exit:                        ; preds = %if.end2.i
  %sub.i.old = sub i64 %now.sroa.0.0.copyload53, %37
  %conv.i.old = trunc i64 %sub.i.old to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 86400, i32 %conv.i.old)
  %cmp10.i.old = icmp slt i32 %conv.i.old, 86400
  br i1 %cmp10.i.old, label %relatime_need_update.exit.cleanup_crit_edge, label %relatime_need_update.exit.if.end35_crit_edge

relatime_need_update.exit.if.end35_crit_edge:     ; preds = %relatime_need_update.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

relatime_need_update.exit.cleanup_crit_edge:      ; preds = %relatime_need_update.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end35:                                         ; preds = %relatime_need_update.exit.if.end35_crit_edge, %timespec64_compare.exit26.i.if.end35_crit_edge, %if.end.i20.i.if.end35_crit_edge, %timespec64_compare.exit.i.if.end35_crit_edge, %if.end.i.i.if.end35_crit_edge, %if.end31.if.end35_crit_edge
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %48 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %i_atime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %now.sroa.0.0.copyload53)
  %cmp.i52 = icmp eq i64 %49, %now.sroa.0.0.copyload53
  br i1 %cmp.i52, label %land.rhs.i, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.rhs.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %50 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tv_nsec.i, align 8
  %now.sroa.6.8.extract.shift = lshr i64 %now.sroa.6.0.copyload54, 32
  %now.sroa.6.8.extract.trunc = trunc i64 %now.sroa.6.8.extract.shift to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %now.sroa.6.8.extract.trunc)
  %cmp3.i = icmp ne i32 %51, %now.sroa.6.8.extract.trunc
  br label %cleanup

cleanup:                                          ; preds = %land.rhs.i, %if.end35.cleanup_crit_edge, %relatime_need_update.exit.cleanup_crit_edge, %timespec64_compare.exit26.i.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %HAS_UNMAPPED_ID.exit.cleanup_crit_edge, %if.end7.i.i22.i.cleanup_crit_edge, %i_uid_into_mnt.exit.i.cleanup_crit_edge, %if.end7.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %HAS_UNMAPPED_ID.exit.cleanup_crit_edge ], [ false, %if.end4.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.end16.cleanup_crit_edge ], [ false, %land.lhs.true24.cleanup_crit_edge ], [ false, %relatime_need_update.exit.cleanup_crit_edge ], [ false, %if.end7.i.i22.i.cleanup_crit_edge ], [ false, %i_uid_into_mnt.exit.i.cleanup_crit_edge ], [ false, %if.end7.i.i.i.cleanup_crit_edge ], [ false, %timespec64_compare.exit26.i.cleanup_crit_edge ], [ true, %if.end35.cleanup_crit_edge ], [ %cmp3.i, %land.rhs.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @current_time(ptr noalias nocapture writeonly sret(%struct.timespec64) align 8 %agg.result, ptr nocapture noundef readonly %inode) #3 align 64 {
entry:
  %now = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now) #16
  %0 = call ptr @memset(ptr %now, i32 255, i32 16)
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %now) #16
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !294

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2401, i32 noundef 9, ptr noundef nonnull @.str.40) #16
  %3 = call ptr @memcpy(ptr %agg.result, ptr %now, i32 16)
  br label %cleanup

if.end24:                                         ; preds = %entry
  %4 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %4)
  %.fca.0.load = load i64, ptr %now, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %now, i32 0, i32 1
  %5 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %5)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %s_time_gran.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 34
  %6 = ptrtoint ptr %s_time_gran.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_time_gran.i, align 4, !noalias !331
  %s_time_min.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 35
  %8 = ptrtoint ptr %s_time_min.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %s_time_min.i, align 8, !noalias !331
  %10 = call i64 @llvm.smax.i64(i64 %.fca.0.load, i64 %9) #16
  %s_time_max.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 36
  %11 = ptrtoint ptr %s_time_max.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %s_time_max.i, align 64, !noalias !331
  %13 = call i64 @llvm.smin.i64(i64 %10, i64 %12) #16
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %10)
  %cmp10.i = icmp sle i64 %12, %10
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %9)
  %cmp13.i = icmp eq i64 %13, %9
  %or.cond79.i = select i1 %cmp10.i, i1 true, i1 %cmp13.i
  br i1 %or.cond79.i, label %if.then.i, label %if.end24.if.end.i_crit_edge, !prof !334

if.end24.if.end.i_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %t.sroa.6.8.insert.mask.i = and i64 %.fca.1.load, 4294967295
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end24.if.end.i_crit_edge
  %t.sroa.6.0.i = phi i64 [ %t.sroa.6.8.insert.mask.i, %if.then.i ], [ %.fca.1.load, %if.end24.if.end.i_crit_edge ]
  %14 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %7, label %if.else20.i [
    i32 1, label %if.end.i.timestamp_truncate.exit_crit_edge
    i32 1000000000, label %if.then18.i
  ]

if.end.i.timestamp_truncate.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %timestamp_truncate.exit

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %t.sroa.6.8.insert.mask69.i = and i64 %t.sroa.6.0.i, 4294967295
  br label %timestamp_truncate.exit

if.else20.i:                                      ; preds = %if.end.i
  %15 = add i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999998, i32 %15)
  %16 = icmp ult i32 %15, 999999998
  br i1 %16, label %if.then23.i, label %do.end.i

if.then23.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #18
  %t.sroa.6.8.extract.shift.i = lshr i64 %t.sroa.6.0.i, 32
  %t.sroa.6.8.extract.trunc.i = trunc i64 %t.sroa.6.8.extract.shift.i to i32
  %rem.i = urem i32 %t.sroa.6.8.extract.trunc.i, %7
  %sub.i = sub i32 %t.sroa.6.8.extract.trunc.i, %rem.i
  %t.sroa.6.8.insert.ext.i = zext i32 %sub.i to i64
  %t.sroa.6.8.insert.shift.i = shl nuw i64 %t.sroa.6.8.insert.ext.i, 32
  %t.sroa.6.8.insert.mask75.i = and i64 %t.sroa.6.0.i, 4294967295
  %t.sroa.6.8.insert.insert76.i = or i64 %t.sroa.6.8.insert.shift.i, %t.sroa.6.8.insert.mask75.i
  br label %timestamp_truncate.exit

do.end.i:                                         ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2379, i32 noundef 9, ptr noundef nonnull @.str.39, i32 noundef %7) #16, !noalias !331
  br label %timestamp_truncate.exit

timestamp_truncate.exit:                          ; preds = %do.end.i, %if.then23.i, %if.then18.i, %if.end.i.timestamp_truncate.exit_crit_edge
  %t.sroa.6.1.i = phi i64 [ %t.sroa.6.0.i, %if.end.i.timestamp_truncate.exit_crit_edge ], [ %t.sroa.6.8.insert.mask69.i, %if.then18.i ], [ %t.sroa.6.8.insert.insert76.i, %if.then23.i ], [ %t.sroa.6.0.i, %do.end.i ]
  %17 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %13, ptr %agg.result, align 8, !alias.scope !331
  %t.sroa.6.0.agg.result.sroa_idx.i = getelementptr inbounds i8, ptr %agg.result, i32 8
  %18 = ptrtoint ptr %t.sroa.6.0.agg.result.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %t.sroa.6.1.i, ptr %t.sroa.6.0.agg.result.sroa_idx.i, align 8, !alias.scope !331
  br label %cleanup

cleanup:                                          ; preds = %timestamp_truncate.exit, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @touch_atime(ptr nocapture noundef readonly %path) #3 align 64 {
entry:
  %now = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 4
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now) #16
  %6 = call ptr @memset(ptr %now, i32 255, i32 16)
  %call2 = tail call zeroext i1 @atime_needs_update(ptr noundef %path, ptr noundef %5)
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %8, i32 0, i32 32, i32 2
  %9 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !335
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end.rcu_sync_is_idle.exit.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 35, ptr noundef nonnull @.str.60) #16
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %13 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body3.i.i.i, label %if.else.i.i.i, !prof !296

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !292
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %8, i32 0, i32 32, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_count.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add19.i.i.i = add i32 %27, 1
  store i32 %add19.i.i.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !293
  %and.i.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool30.not.i.i.i, label %if.then39.i.i.i, label %do.body3.i.i.i.do.end41.i.i.i_crit_edge, !prof !294

do.body3.i.i.i.do.end41.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end41.i.i.i

if.then39.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end41.i.i.i

do.end41.i.i.i:                                   ; preds = %if.then39.i.i.i, %do.body3.i.i.i.do.end41.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #16, !srcloc !295
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !336
  %29 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i61.i.i.i.c = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i61.i.i.i.c to ptr
  %preempt_count.i.i62.i.i.i.c = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i62.i.i.i.c to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i62.i.i.i.c, align 4
  %sub.i.i.i.i.c = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i.c, ptr %preempt_count.i.i62.i.i.i.c, align 4
  br label %if.end5

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  %call48.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext true) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !336
  %33 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i61.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i61.i.i.i to ptr
  %preempt_count.i.i62.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i62.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i62.i.i.i, align 4
  %sub.i.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i62.i.i.i, align 4
  br i1 %call48.i.i.i, label %if.else.i.i.i.if.end5_crit_edge, label %if.else.i.i.i.cleanup_crit_edge

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i.i.i.if.end5_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end5:                                          ; preds = %if.else.i.i.i.if.end5_crit_edge, %do.end41.i.i.i
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %8, i32 0, i32 32, i32 2, i32 0, i32 5
  %37 = tail call ptr @llvm.returnaddress(i32 0) #16
  %38 = ptrtoint ptr %37 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %38) #16
  %call6 = tail call i32 @__mnt_want_write(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %if.end8, label %if.end5.skip_update_crit_edge

if.end5.skip_update_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip_update

if.end8:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %5)
  %39 = call ptr @memcpy(ptr %now, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #16
  %i_op.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 7
  %40 = ptrtoint ptr %i_op.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_op.i, align 8
  %update_time.i = getelementptr inbounds %struct.inode_operations, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %update_time.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %update_time.i, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = call i32 %43(ptr noundef %5, ptr noundef nonnull %now, i32 noundef 1) #16
  br label %inode_update_time.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 15
  %44 = call ptr @memcpy(ptr %i_atime.i, ptr %now, i32 16)
  %45 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_flags.i, align 4
  %and12.i = and i32 %48, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %..i = select i1 %tobool13.not.i, i32 1, i32 2048
  tail call void @__mark_inode_dirty(ptr noundef %5, i32 noundef %..i) #16
  br label %inode_update_time.exit

inode_update_time.exit:                           ; preds = %if.end.i, %if.then.i
  call void @__mnt_drop_write(ptr noundef %1) #16
  br label %skip_update

skip_update:                                      ; preds = %inode_update_time.exit, %if.end5.skip_update_crit_edge
  %49 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i20 = getelementptr %struct.super_block, ptr %50, i32 0, i32 32, i32 2
  %dep_map.i.i.i21 = getelementptr %struct.super_block, ptr %50, i32 0, i32 32, i32 2, i32 0, i32 5
  call void @lock_release(ptr noundef %dep_map.i.i.i21, i32 noundef %38) #16
  %51 = call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i.i.i.i22 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i.i23, align 4
  %add.i.i.i.i24 = add i32 %54, 1
  store volatile i32 %add.i.i.i.i24, ptr %preempt_count.i.i.i.i.i23, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !337
  %call.i.i.i.i25 = call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i25)
  %tobool.not.i.i.i.i26 = icmp eq i32 %call.i.i.i.i25, 0
  br i1 %tobool.not.i.i.i.i26, label %land.lhs.true.i.i.i.i29, label %skip_update.rcu_sync_is_idle.exit.i.i.i34_crit_edge

skip_update.rcu_sync_is_idle.exit.i.i.i34_crit_edge: ; preds = %skip_update
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_sync_is_idle.exit.i.i.i34

land.lhs.true.i.i.i.i29:                          ; preds = %skip_update
  %call1.i.i.i.i27 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i27)
  %tobool2.not.i.i.i.i28 = icmp eq i32 %call1.i.i.i.i27, 0
  br i1 %tobool2.not.i.i.i.i28, label %land.lhs.true.i.i.i.i29.rcu_sync_is_idle.exit.i.i.i34_crit_edge, label %land.lhs.true3.i.i.i.i31

land.lhs.true.i.i.i.i29.rcu_sync_is_idle.exit.i.i.i34_crit_edge: ; preds = %land.lhs.true.i.i.i.i29
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_sync_is_idle.exit.i.i.i34

land.lhs.true3.i.i.i.i31:                         ; preds = %land.lhs.true.i.i.i.i29
  %.b8.i.i.i.i30 = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i30, label %land.lhs.true3.i.i.i.i31.rcu_sync_is_idle.exit.i.i.i34_crit_edge, label %if.then.i.i.i.i32

land.lhs.true3.i.i.i.i31.rcu_sync_is_idle.exit.i.i.i34_crit_edge: ; preds = %land.lhs.true3.i.i.i.i31
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_sync_is_idle.exit.i.i.i34

if.then.i.i.i.i32:                                ; preds = %land.lhs.true3.i.i.i.i31
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 35, ptr noundef nonnull @.str.60) #16
  br label %rcu_sync_is_idle.exit.i.i.i34

rcu_sync_is_idle.exit.i.i.i34:                    ; preds = %if.then.i.i.i.i32, %land.lhs.true3.i.i.i.i31.rcu_sync_is_idle.exit.i.i.i34_crit_edge, %land.lhs.true.i.i.i.i29.rcu_sync_is_idle.exit.i.i.i34_crit_edge, %skip_update.rcu_sync_is_idle.exit.i.i.i34_crit_edge
  %55 = ptrtoint ptr %add.ptr1.i.i20 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %add.ptr1.i.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool7.not.i.i.i.i33 = icmp eq i32 %56, 0
  br i1 %tobool7.not.i.i.i.i33, label %do.body3.i.i.i41, label %do.end49.i.i.i, !prof !296

do.body3.i.i.i41:                                 ; preds = %rcu_sync_is_idle.exit.i.i.i34
  %57 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !292
  %read_count.i.i.i35 = getelementptr %struct.super_block, ptr %50, i32 0, i32 32, i32 2, i32 0, i32 1
  %58 = ptrtoint ptr %read_count.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read_count.i.i.i35, align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i.i36 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i36 to ptr
  %cpu.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %cpu.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu.i.i.i37, align 4
  %arrayidx.i.i.i38 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i.i38, align 4
  %add.i.i.i39 = add i32 %66, %60
  %67 = inttoptr i32 %add.i.i.i39 to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add17.i.i.i = add i32 %69, -1
  store i32 %add17.i.i.i, ptr %67, align 4
  %70 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !293
  %and.i.i.i.i.i40 = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i40)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i40, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i41.do.end39.i.i.i_crit_edge, !prof !294

do.body3.i.i.i41.do.end39.i.i.i_crit_edge:        ; preds = %do.body3.i.i.i41
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i41
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i41.do.end39.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %57) #16, !srcloc !295
  br label %sb_end_write.exit

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !338
  %71 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !292
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %50, i32 0, i32 32, i32 2, i32 0, i32 1
  %72 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read_count75.i.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  %75 = call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i122.i.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %80, %74
  %81 = inttoptr i32 %add80.i.i.i to ptr
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %add81.i.i.i = add i32 %83, -1
  store i32 %add81.i.i.i, ptr %81, align 4
  %84 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !293
  %and.i.i123.i.i.i = and i32 %84, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !294

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %71) #16, !srcloc !295
  %writer.i.i.i = getelementptr %struct.super_block, ptr %50, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i.i = call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #16
  br label %sb_end_write.exit

sb_end_write.exit:                                ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !339
  %85 = call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i120.i.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i42 = add i32 %88, -1
  store volatile i32 %sub.i.i.i.i42, ptr %preempt_count.i.i121.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sb_end_write.exit, %if.else.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mnt_want_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mnt_drop_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @should_remove_suid(ptr nocapture noundef readonly %dentry) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %4 = and i32 %conv, 1032
  call void @__sanitizer_cov_trace_const_cmp4(i32 1032, i32 %4)
  %5 = icmp eq i32 %4, 1032
  br i1 %tobool.not, label %if.end, label %if.end.thread, !prof !296

if.end:                                           ; preds = %entry
  br i1 %5, label %if.end.if.end16.thread_crit_edge, label %if.end.land.end23.thread_crit_edge, !prof !294

if.end.land.end23.thread_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end23.thread

if.end.if.end16.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.thread

if.end.thread:                                    ; preds = %entry
  br i1 %5, label %if.end.thread.if.end16.thread_crit_edge, label %if.end.thread.land.lhs.true_crit_edge, !prof !294

if.end.thread.land.lhs.true_crit_edge:            ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end.thread.if.end16.thread_crit_edge:          ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.thread

if.end16.thread:                                  ; preds = %if.end.thread.if.end16.thread_crit_edge, %if.end.if.end16.thread_crit_edge
  %kill.044 = phi i32 [ 6144, %if.end.thread.if.end16.thread_crit_edge ], [ 4096, %if.end.if.end16.thread_crit_edge ]
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end16.thread, %if.end.thread.land.lhs.true_crit_edge
  %kill.140 = phi i32 [ %kill.044, %if.end16.thread ], [ 2048, %if.end.thread.land.lhs.true_crit_edge ]
  %call18 = tail call zeroext i1 @capable(i32 noundef 4) #16
  %call18.not = xor i1 %call18, true
  %and21 = and i32 %conv, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and21)
  %cmp = icmp eq i32 %and21, 32768
  %or.cond = select i1 %call18.not, i1 %cmp, i1 false
  %spec.select = select i1 %or.cond, i32 %kill.140, i32 0
  br label %land.end23.thread

land.end23.thread:                                ; preds = %land.lhs.true, %if.end.land.end23.thread_crit_edge
  %6 = phi i32 [ %spec.select, %land.lhs.true ], [ 0, %if.end.land.end23.thread_crit_edge ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dentry_needs_remove_privs(ptr noundef %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 8
  %conv.i = zext i16 %5 to i32
  %and.i = and i32 %conv.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %6 = and i32 %conv.i, 1032
  call void @__sanitizer_cov_trace_const_cmp4(i32 1032, i32 %6)
  %7 = icmp eq i32 %6, 1032
  br i1 %tobool.not.i, label %if.end.i, label %if.end.thread.i, !prof !296

if.end.i:                                         ; preds = %if.end
  br i1 %7, label %if.end.i.if.end16.thread.i_crit_edge, label %if.end.i.should_remove_suid.exit_crit_edge, !prof !294

if.end.i.should_remove_suid.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %should_remove_suid.exit

if.end.i.if.end16.thread.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.thread.i

if.end.thread.i:                                  ; preds = %if.end
  br i1 %7, label %if.end.thread.i.if.end16.thread.i_crit_edge, label %if.end.thread.i.land.lhs.true.i_crit_edge, !prof !294

if.end.thread.i.land.lhs.true.i_crit_edge:        ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i

if.end.thread.i.if.end16.thread.i_crit_edge:      ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.thread.i

if.end16.thread.i:                                ; preds = %if.end.thread.i.if.end16.thread.i_crit_edge, %if.end.i.if.end16.thread.i_crit_edge
  %kill.044.i = phi i32 [ 6144, %if.end.thread.i.if.end16.thread.i_crit_edge ], [ 4096, %if.end.i.if.end16.thread.i_crit_edge ]
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end16.thread.i, %if.end.thread.i.land.lhs.true.i_crit_edge
  %kill.140.i = phi i32 [ %kill.044.i, %if.end16.thread.i ], [ 2048, %if.end.thread.i.land.lhs.true.i_crit_edge ]
  %call18.i = tail call zeroext i1 @capable(i32 noundef 4) #16
  %call18.not.i = xor i1 %call18.i, true
  %and21.i = and i32 %conv.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and21.i)
  %cmp.i = icmp eq i32 %and21.i, 32768
  %or.cond.i = select i1 %call18.not.i, i1 %cmp.i, i1 false
  %spec.select.i = select i1 %or.cond.i, i32 %kill.140.i, i32 0
  br label %should_remove_suid.exit

should_remove_suid.exit:                          ; preds = %land.lhs.true.i, %if.end.i.should_remove_suid.exit_crit_edge
  %8 = phi i32 [ %spec.select.i, %land.lhs.true.i ], [ 0, %if.end.i.should_remove_suid.exit_crit_edge ]
  %call2 = tail call i32 @security_inode_need_killpriv(ptr noundef %dentry) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %should_remove_suid.exit.cleanup_crit_edge, label %if.end4

should_remove_suid.exit.cleanup_crit_edge:        ; preds = %should_remove_suid.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %should_remove_suid.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool5.not = icmp eq i32 %call2, 0
  %or = or i32 %8, 16384
  %spec.select = select i1 %tobool5.not, i32 %8, i32 %or
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %should_remove_suid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %should_remove_suid.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_need_killpriv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @file_remove_privs(ptr nocapture noundef readonly %file) #3 align 64 {
entry:
  %newattrs.i = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and.i.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !296

entry.file_dentry.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %9(ptr noundef %1, ptr noundef %5) #16
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %entry.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %1, %entry.file_dentry.exit_crit_edge ]
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %10 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags, align 4
  %and = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %file_dentry.exit.cleanup_crit_edge

file_dentry.exit.cleanup_crit_edge:               ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %file_dentry.exit
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %11, align 8
  %16 = and i16 %15, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %16)
  %cmp = icmp eq i16 %16, -32768
  br i1 %cmp, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i.i, align 8
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then15_crit_edge

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15

if.end.i:                                         ; preds = %if.end
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %18, align 8
  %conv.i.i = zext i16 %22 to i32
  %and.i.i29 = and i32 %conv.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i29)
  %tobool.not.i.i30 = icmp eq i32 %and.i.i29, 0
  %23 = and i32 %conv.i.i, 1032
  call void @__sanitizer_cov_trace_const_cmp4(i32 1032, i32 %23)
  %24 = icmp eq i32 %23, 1032
  br i1 %tobool.not.i.i30, label %if.end.i.i, label %if.end.thread.i.i, !prof !296

if.end.i.i:                                       ; preds = %if.end.i
  br i1 %24, label %if.end.i.i.if.end16.thread.i.i_crit_edge, label %if.end.i.i.should_remove_suid.exit.i_crit_edge, !prof !294

if.end.i.i.should_remove_suid.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %should_remove_suid.exit.i

if.end.i.i.if.end16.thread.i.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.thread.i.i

if.end.thread.i.i:                                ; preds = %if.end.i
  br i1 %24, label %if.end.thread.i.i.if.end16.thread.i.i_crit_edge, label %if.end.thread.i.i.land.lhs.true.i.i_crit_edge, !prof !294

if.end.thread.i.i.land.lhs.true.i.i_crit_edge:    ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i.i

if.end.thread.i.i.if.end16.thread.i.i_crit_edge:  ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.thread.i.i

if.end16.thread.i.i:                              ; preds = %if.end.thread.i.i.if.end16.thread.i.i_crit_edge, %if.end.i.i.if.end16.thread.i.i_crit_edge
  %kill.044.i.i = phi i32 [ 6144, %if.end.thread.i.i.if.end16.thread.i.i_crit_edge ], [ 4096, %if.end.i.i.if.end16.thread.i.i_crit_edge ]
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end16.thread.i.i, %if.end.thread.i.i.land.lhs.true.i.i_crit_edge
  %kill.140.i.i = phi i32 [ %kill.044.i.i, %if.end16.thread.i.i ], [ 2048, %if.end.thread.i.i.land.lhs.true.i.i_crit_edge ]
  %call18.i.i = tail call zeroext i1 @capable(i32 noundef 4) #16
  %call18.not.i.i = xor i1 %call18.i.i, true
  %and21.i.i = and i32 %conv.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and21.i.i)
  %cmp.i.i = icmp eq i32 %and21.i.i, 32768
  %or.cond.i.i = select i1 %call18.not.i.i, i1 %cmp.i.i, i1 false
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %kill.140.i.i, i32 0
  br label %should_remove_suid.exit.i

should_remove_suid.exit.i:                        ; preds = %land.lhs.true.i.i, %if.end.i.i.should_remove_suid.exit.i_crit_edge
  %25 = phi i32 [ %spec.select.i.i, %land.lhs.true.i.i ], [ 0, %if.end.i.i.should_remove_suid.exit.i_crit_edge ]
  %call2.i = tail call i32 @security_inode_need_killpriv(ptr noundef %retval.0.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %should_remove_suid.exit.i.cleanup_crit_edge, label %if.end4.i

should_remove_suid.exit.i.cleanup_crit_edge:      ; preds = %should_remove_suid.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4.i:                                        ; preds = %should_remove_suid.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool5.not.i, label %if.end8, label %dentry_needs_remove_privs.exit

dentry_needs_remove_privs.exit:                   ; preds = %if.end4.i
  %or.i = or i32 %25, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp5 = icmp slt i32 %or.i, 0
  br i1 %cmp5, label %dentry_needs_remove_privs.exit.cleanup_crit_edge, label %dentry_needs_remove_privs.exit.if.end13_crit_edge

dentry_needs_remove_privs.exit.if.end13_crit_edge: ; preds = %dentry_needs_remove_privs.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

dentry_needs_remove_privs.exit.cleanup_crit_edge: ; preds = %dentry_needs_remove_privs.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool9.not = icmp eq i32 %25, 0
  br i1 %tobool9.not, label %if.end8.if.then15_crit_edge, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end8.if.then15_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15

if.end13:                                         ; preds = %if.end8.if.end13_crit_edge, %dentry_needs_remove_privs.exit.if.end13_crit_edge
  %retval.0.i4248 = phi i32 [ %25, %if.end8.if.end13_crit_edge ], [ %or.i, %dentry_needs_remove_privs.exit.if.end13_crit_edge ]
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %26 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %f_path.i, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !330
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %newattrs.i) #16
  %30 = call ptr @memset(ptr %newattrs.i, i32 255, i32 80)
  %or.i31 = or i32 %retval.0.i4248, 512
  %31 = ptrtoint ptr %newattrs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i31, ptr %newattrs.i, align 8
  %call.i = call i32 @notify_change(ptr noundef %29, ptr noundef %retval.0.i.i, ptr noundef nonnull %newattrs.i, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %newattrs.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end13.if.then15_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15

if.then15:                                        ; preds = %if.end13.if.then15_crit_edge, %if.end8.if.then15_crit_edge, %if.end.if.then15_crit_edge
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %11, align 8
  %conv.i.i32 = zext i16 %33 to i32
  %and.i.i33 = and i32 %conv.i.i32, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i33)
  %tobool.not.i.i34 = icmp ne i32 %and.i.i33, 0
  %34 = and i32 %conv.i.i32, 1032
  call void @__sanitizer_cov_trace_const_cmp4(i32 1032, i32 %34)
  %35 = icmp eq i32 %34, 1032
  %or.cond.i = or i1 %tobool.not.i.i34, %35
  br i1 %or.cond.i, label %if.then15.cleanup_crit_edge, label %land.lhs.true.i

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then15
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %36 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_flags.i, align 4
  %and.i35 = and i32 %39, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %tobool.not.i36 = icmp eq i32 %and.i35, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_flags, align 4
  %or.i38 = or i32 %41, 4096
  store i32 %or.i38, ptr %i_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %dentry_needs_remove_privs.exit.cleanup_crit_edge, %should_remove_suid.exit.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %file_dentry.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %file_dentry.exit.cleanup_crit_edge ], [ %or.i, %dentry_needs_remove_privs.exit.cleanup_crit_edge ], [ %call.i, %if.end13.cleanup_crit_edge ], [ 0, %if.then15.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then.i ], [ %call2.i, %should_remove_suid.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @file_update_time(ptr noundef %file) #3 align 64 {
entry:
  %now = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now) #16
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1)
  %4 = call ptr @memcpy(ptr %now, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #16
  %i_mtime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_mtime, align 8
  %7 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %now, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp.i = icmp eq i64 %6, %8
  br i1 %cmp.i, label %timespec64_equal.exit, label %if.end.timespec64_equal.exit.thread_crit_edge

if.end.timespec64_equal.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %timespec64_equal.exit.thread

timespec64_equal.exit:                            ; preds = %if.end
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec.i, align 8
  %tv_nsec2.i = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 1
  %11 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tv_nsec2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp3.i.not = icmp eq i32 %10, %12
  br i1 %cmp3.i.not, label %timespec64_equal.exit._crit_edge, label %timespec64_equal.exit.timespec64_equal.exit.thread_crit_edge

timespec64_equal.exit.timespec64_equal.exit.thread_crit_edge: ; preds = %timespec64_equal.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %timespec64_equal.exit.thread

timespec64_equal.exit._crit_edge:                 ; preds = %timespec64_equal.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %13

timespec64_equal.exit.thread:                     ; preds = %timespec64_equal.exit.timespec64_equal.exit.thread_crit_edge, %if.end.timespec64_equal.exit.thread_crit_edge
  br label %13

13:                                               ; preds = %timespec64_equal.exit.thread, %timespec64_equal.exit._crit_edge
  %14 = phi i32 [ 2, %timespec64_equal.exit.thread ], [ 0, %timespec64_equal.exit._crit_edge ]
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_ctime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %8)
  %cmp.i38 = icmp eq i64 %16, %8
  br i1 %cmp.i38, label %timespec64_equal.exit44, label %.timespec64_equal.exit44.thread_crit_edge

.timespec64_equal.exit44.thread_crit_edge:        ; preds = %13
  call void @__sanitizer_cov_trace_pc() #18
  br label %timespec64_equal.exit44.thread

timespec64_equal.exit44:                          ; preds = %13
  %tv_nsec.i39 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17, i32 1
  %17 = ptrtoint ptr %tv_nsec.i39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tv_nsec.i39, align 8
  %tv_nsec2.i40 = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 1
  %19 = ptrtoint ptr %tv_nsec2.i40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tv_nsec2.i40, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp3.i41.not = icmp eq i32 %18, %20
  br i1 %cmp3.i41.not, label %timespec64_equal.exit44._crit_edge, label %timespec64_equal.exit44.timespec64_equal.exit44.thread_crit_edge

timespec64_equal.exit44.timespec64_equal.exit44.thread_crit_edge: ; preds = %timespec64_equal.exit44
  call void @__sanitizer_cov_trace_pc() #18
  br label %timespec64_equal.exit44.thread

timespec64_equal.exit44._crit_edge:               ; preds = %timespec64_equal.exit44
  call void @__sanitizer_cov_trace_pc() #18
  br label %21

timespec64_equal.exit44.thread:                   ; preds = %timespec64_equal.exit44.timespec64_equal.exit44.thread_crit_edge, %.timespec64_equal.exit44.thread_crit_edge
  %or48 = or i32 %14, 4
  br label %21

21:                                               ; preds = %timespec64_equal.exit44.thread, %timespec64_equal.exit44._crit_edge
  %22 = phi i32 [ %or48, %timespec64_equal.exit44.thread ], [ %14, %timespec64_equal.exit44._crit_edge ]
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_flags, align 4
  %and9 = and i32 %26, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %.if.end14_crit_edge, label %land.lhs.true

.if.end14_crit_edge:                              ; preds = %21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

land.lhs.true:                                    ; preds = %21
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #16
  %call.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #16
  %and.i = and i64 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %or13 = or i32 %22, 8
  br i1 %tobool.i.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not = icmp eq i32 %22, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17:                                         ; preds = %if.end14.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge
  %sync_it.251 = phi i32 [ %22, %if.end14.if.end17_crit_edge ], [ %or13, %land.lhs.true.if.end17_crit_edge ]
  %call18 = tail call i32 @__mnt_want_write_file(ptr noundef %file) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %i_op.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %i_op.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_op.i, align 8
  %update_time.i = getelementptr inbounds %struct.inode_operations, ptr %28, i32 0, i32 17
  %29 = ptrtoint ptr %update_time.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %update_time.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = call i32 %30(ptr noundef %1, ptr noundef nonnull %now, i32 noundef %sync_it.251) #16
  br label %inode_update_time.exit

if.end.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i = call i32 @generic_update_time(ptr noundef %1, ptr noundef nonnull %now, i32 noundef %sync_it.251) #16
  br label %inode_update_time.exit

inode_update_time.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %if.end.i ]
  call void @__mnt_drop_write_file(ptr noundef %file) #16
  br label %cleanup

cleanup:                                          ; preds = %inode_update_time.exit, %if.end17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %inode_update_time.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mnt_want_write_file(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mnt_drop_write_file(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @file_modified(ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @file_remove_privs(ptr noundef %file)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end5, label %if.end.cleanup_crit_edge, !prof !296

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = tail call i32 @file_update_time(ptr noundef %file)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @inode_needs_sync(ptr nocapture noundef readonly %inode) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and1 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %8)
  %cmp = icmp eq i16 %8, 16384
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %and7 = and i32 %3, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %and11 = and i32 %5, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond = select i1 %tobool8.not, i1 %tobool12.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  br label %return

return:                                           ; preds = %if.end14, %land.lhs.true.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 1, %lor.lhs.false.return_crit_edge ], [ 1, %entry.return_crit_edge ], [ 1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @set_ihash_entries(ptr noundef %str) #2 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = call i32 @simple_strtoul(ptr noundef nonnull %str, ptr noundef nonnull %str.addr, i32 noundef 0) #16
  store i32 %call, ptr @ihash_entries, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @inode_init_early() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ihash_entries, align 4
  %call = tail call ptr @alloc_large_system_hash(ptr noundef nonnull @.str.34, i32 noundef 4, i32 noundef %0, i32 noundef 14, i32 noundef 5, ptr noundef nonnull @i_hash_shift, ptr noundef nonnull @i_hash_mask, i32 noundef 0, i32 noundef 0) #16
  store ptr %call, ptr @inode_hashtable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_large_system_hash(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @inode_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.35, i32 noundef 784, i32 noundef 0, i32 noundef 68550656, ptr noundef nonnull @init_once) #16
  store ptr %call, ptr @inode_cachep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_devices.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 47
  %0 = call ptr @memset(ptr %foo, i32 0, i32 784)
  %1 = ptrtoint ptr %i_devices.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %i_devices.i, ptr %i_devices.i, align 4
  %prev.i.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 47, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i_devices.i, ptr %prev.i.i, align 4
  %i_io_list.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 29
  %3 = ptrtoint ptr %i_io_list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %i_io_list.i, ptr %i_io_list.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 29, i32 1
  %4 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %i_io_list.i, ptr %prev.i8.i, align 4
  %i_wb_list.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 36
  %5 = ptrtoint ptr %i_wb_list.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %i_wb_list.i, ptr %i_wb_list.i, align 4
  %prev.i9.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 36, i32 1
  %6 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %i_wb_list.i, ptr %prev.i9.i, align 4
  %i_lru.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 34
  %7 = ptrtoint ptr %i_lru.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %i_lru.i, ptr %i_lru.i, align 4
  %prev.i10.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 34, i32 1
  %8 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i_lru.i, ptr %prev.i10.i, align 4
  %i_pages.i.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 46, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %i_pages.i.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #16
  %xa_flags.i.i.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 46, i32 1, i32 1
  %9 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 33, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 46, i32 1, i32 2
  %10 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %i_mmap_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 46, i32 6
  tail call void @__init_rwsem(ptr noundef %i_mmap_rwsem.i.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @__address_space_init_once.__key) #16
  %private_list.i.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 46, i32 13
  %11 = ptrtoint ptr %private_list.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %private_list.i.i, ptr %private_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 46, i32 13, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %private_list.i.i, ptr %prev.i.i.i, align 4
  %private_lock.i.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 46, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %private_lock.i.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @__address_space_init_once.__key.48, i16 noundef signext 3) #16
  %i_mmap.i.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 46, i32 5
  %13 = ptrtoint ptr %i_mmap.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %i_mmap.i.i, align 4
  %.compoundliteral.sroa.2.0.i_mmap.sroa_idx.i.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 46, i32 5, i32 1
  %14 = ptrtoint ptr %.compoundliteral.sroa.2.0.i_mmap.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %.compoundliteral.sroa.2.0.i_mmap.sroa_idx.i.i, align 4
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 23
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %foo, i32 0, i32 23, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @inode_init_once.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %15 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %i_size_seqcount.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_special_inode(ptr nocapture noundef %inode, i16 noundef zeroext %mode, i32 noundef %rdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %mode, ptr %inode, align 8
  %and = and i16 %mode, -4096
  %1 = zext i16 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %and, label %do.end [
    i16 8192, label %if.then
    i16 24576, label %if.then6
    i16 4096, label %if.then13
    i16 -16384, label %entry.if.end24_crit_edge
  ]

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @def_chr_fops, ptr %2, align 8
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %4 = ptrtoint ptr %i_rdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %rdev, ptr %i_rdev, align 8
  br label %if.end24

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @def_blk_fops, ptr %5, align 8
  %i_rdev7 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %7 = ptrtoint ptr %i_rdev7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %rdev, ptr %i_rdev7, align 8
  br label %if.end24

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @pipefifo_fops, ptr %8, align 8
  br label %if.end24

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i16 %mode to i32
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 39
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv, ptr noundef %s_id, i32 noundef %13) #20
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.then13, %if.then6, %if.then, %entry.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inode_init_owner(ptr noundef %mnt_userns, ptr nocapture noundef %inode, ptr noundef %dir, i16 noundef zeroext %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_user_ns.i.i, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 99
  %8 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred.i.i, align 16
  %fsuid.i.i = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %fsuid.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %agg.tmp.sroa.0.0.copyload.i.i = load i32, ptr %fsuid.i.i, align 4
  %cmp.i.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i.i = icmp eq ptr %3, %mnt_userns
  %spec.select.i.i.i.i = or i1 %cmp.i.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %entry.inode_fsuid_set.exit_crit_edge, label %if.end.i.i.i

entry.inode_fsuid_set.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_fsuid_set.exit

if.end.i.i.i:                                     ; preds = %entry
  %.fca.0.insert.i.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i.i, 0
  %call2.i.i.i = tail call i32 @from_kuid(ptr noundef %mnt_userns, [1 x i32] %.fca.0.insert.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call2.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.end.i.i.i.inode_fsuid_set.exit_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.inode_fsuid_set.exit_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_fsuid_set.exit

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %cmp.i17.i.i.i = icmp eq ptr %3, @init_user_ns
  br i1 %cmp.i17.i.i.i, label %if.end4.i.i.i.inode_fsuid_set.exit_crit_edge, label %if.end8.i.i.i

if.end4.i.i.i.inode_fsuid_set.exit_crit_edge:     ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_fsuid_set.exit

if.end8.i.i.i:                                    ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call9.i.i.i = tail call i32 @make_kuid(ptr noundef %3, i32 noundef %call2.i.i.i) #16
  br label %inode_fsuid_set.exit

inode_fsuid_set.exit:                             ; preds = %if.end8.i.i.i, %if.end4.i.i.i.inode_fsuid_set.exit_crit_edge, %if.end.i.i.i.inode_fsuid_set.exit_crit_edge, %entry.inode_fsuid_set.exit_crit_edge
  %retval.sroa.0.0.i.i.i = phi i32 [ %call9.i.i.i, %if.end8.i.i.i ], [ -1, %if.end.i.i.i.inode_fsuid_set.exit_crit_edge ], [ %call2.i.i.i, %if.end4.i.i.i.inode_fsuid_set.exit_crit_edge ], [ %agg.tmp.sroa.0.0.copyload.i.i, %entry.inode_fsuid_set.exit_crit_edge ]
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %11 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.sroa.0.0.i.i.i, ptr %i_uid.i, align 4
  %tobool.not = icmp eq ptr %dir, null
  br i1 %tobool.not, label %inode_fsuid_set.exit.if.else24_crit_edge, label %land.lhs.true

inode_fsuid_set.exit.if.else24_crit_edge:         ; preds = %inode_fsuid_set.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else24

land.lhs.true:                                    ; preds = %inode_fsuid_set.exit
  %12 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dir, align 8
  %14 = and i16 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool1.not = icmp eq i16 %14, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else24_crit_edge, label %if.then

land.lhs.true.if.else24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else24

if.then:                                          ; preds = %land.lhs.true
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %i_gid2 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 3
  %15 = ptrtoint ptr %i_gid2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_gid2, align 8
  %17 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %i_gid, align 8
  %conv3 = zext i16 %mode to i32
  %and4 = and i32 %conv3, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and4)
  %cmp = icmp eq i32 %and4, 16384
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %or = or i16 %mode, 1024
  br label %if.end25

if.else:                                          ; preds = %if.then
  %and10 = and i32 %conv3, 1032
  call void @__sanitizer_cov_trace_const_cmp4(i32 1032, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 1032
  br i1 %cmp11, label %land.lhs.true13, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

land.lhs.true13:                                  ; preds = %if.else
  %i_sb.i.i41 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i.i41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i.i41, align 4
  %s_user_ns.i.i42 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 53
  %20 = ptrtoint ptr %s_user_ns.i.i42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_user_ns.i.i42, align 8
  %22 = ptrtoint ptr %i_gid2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack.i = load i32, ptr %i_gid2, align 8
  %23 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i44 = icmp eq ptr %21, %mnt_userns
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i.i, %cmp.i.i.i44
  br i1 %spec.select.i.i.i, label %land.lhs.true13.i_gid_into_mnt.exit_crit_edge, label %if.end.i.i

land.lhs.true13.i_gid_into_mnt.exit_crit_edge:    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_gid_into_mnt.exit

if.end.i.i:                                       ; preds = %land.lhs.true13
  %cmp.i21.i.i = icmp eq ptr %21, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i.i = tail call i32 @from_kgid(ptr noundef %21, [1 x i32] %23) #16
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %gid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i)
  %cmp.i.i = icmp eq i32 %gid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_gid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_gid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_gid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call10.i.i = tail call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i.i) #16
  br label %i_gid_into_mnt.exit

i_gid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_gid_into_mnt.exit_crit_edge, %land.lhs.true13.i_gid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_gid_into_mnt.exit_crit_edge ], [ %.unpack.i, %land.lhs.true13.i_gid_into_mnt.exit_crit_edge ]
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %call15 = tail call i32 @in_group_p([1 x i32] %.fca.0.insert) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %i_gid_into_mnt.exit.if.end25_crit_edge

i_gid_into_mnt.exit.if.end25_crit_edge:           ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

land.lhs.true17:                                  ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call18 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %mnt_userns, ptr noundef nonnull %dir, i32 noundef 4) #16
  %and21 = and i16 %mode, -1025
  %spec.select = select i1 %call18, i16 %mode, i16 %and21
  br label %if.end25

if.else24:                                        ; preds = %land.lhs.true.if.else24_crit_edge, %inode_fsuid_set.exit.if.else24_crit_edge
  %24 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i46 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 53
  %26 = ptrtoint ptr %s_user_ns.i.i46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_user_ns.i.i46, align 8
  %28 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i.i47 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i47 to ptr
  %task.i.i48 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i48, align 8
  %cred.i.i49 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 99
  %32 = ptrtoint ptr %cred.i.i49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cred.i.i49, align 16
  %fsgid.i.i = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %fsgid.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %agg.tmp.sroa.0.0.copyload.i.i50 = load i32, ptr %fsgid.i.i, align 4
  %cmp.i.i.i.i52 = icmp eq ptr %27, %mnt_userns
  %spec.select.i.i.i.i53 = or i1 %cmp.i.i.i.i.i, %cmp.i.i.i.i52
  br i1 %spec.select.i.i.i.i53, label %if.else24.inode_fsgid_set.exit_crit_edge, label %if.end.i.i.i57

if.else24.inode_fsgid_set.exit_crit_edge:         ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_fsgid_set.exit

if.end.i.i.i57:                                   ; preds = %if.else24
  %.fca.0.insert.i.i54 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i.i50, 0
  %call2.i.i.i55 = tail call i32 @from_kgid(ptr noundef %mnt_userns, [1 x i32] %.fca.0.insert.i.i54) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i.i55)
  %cmp.i.i.i56 = icmp eq i32 %call2.i.i.i55, -1
  br i1 %cmp.i.i.i56, label %if.end.i.i.i57.inode_fsgid_set.exit_crit_edge, label %if.end4.i.i.i59

if.end.i.i.i57.inode_fsgid_set.exit_crit_edge:    ; preds = %if.end.i.i.i57
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_fsgid_set.exit

if.end4.i.i.i59:                                  ; preds = %if.end.i.i.i57
  %cmp.i17.i.i.i58 = icmp eq ptr %27, @init_user_ns
  br i1 %cmp.i17.i.i.i58, label %if.end4.i.i.i59.inode_fsgid_set.exit_crit_edge, label %if.end8.i.i.i61

if.end4.i.i.i59.inode_fsgid_set.exit_crit_edge:   ; preds = %if.end4.i.i.i59
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_fsgid_set.exit

if.end8.i.i.i61:                                  ; preds = %if.end4.i.i.i59
  call void @__sanitizer_cov_trace_pc() #18
  %call9.i.i.i60 = tail call i32 @make_kgid(ptr noundef %27, i32 noundef %call2.i.i.i55) #16
  br label %inode_fsgid_set.exit

inode_fsgid_set.exit:                             ; preds = %if.end8.i.i.i61, %if.end4.i.i.i59.inode_fsgid_set.exit_crit_edge, %if.end.i.i.i57.inode_fsgid_set.exit_crit_edge, %if.else24.inode_fsgid_set.exit_crit_edge
  %retval.sroa.0.0.i.i.i62 = phi i32 [ %call9.i.i.i60, %if.end8.i.i.i61 ], [ -1, %if.end.i.i.i57.inode_fsgid_set.exit_crit_edge ], [ %call2.i.i.i55, %if.end4.i.i.i59.inode_fsgid_set.exit_crit_edge ], [ %agg.tmp.sroa.0.0.copyload.i.i50, %if.else24.inode_fsgid_set.exit_crit_edge ]
  %i_gid.i63 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %35 = ptrtoint ptr %i_gid.i63 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.sroa.0.0.i.i.i62, ptr %i_gid.i63, align 8
  br label %if.end25

if.end25:                                         ; preds = %inode_fsgid_set.exit, %land.lhs.true17, %i_gid_into_mnt.exit.if.end25_crit_edge, %if.else.if.end25_crit_edge, %if.then6
  %mode.addr.0 = phi i16 [ %or, %if.then6 ], [ %mode, %i_gid_into_mnt.exit.if.end25_crit_edge ], [ %mode, %if.else.if.end25_crit_edge ], [ %mode, %inode_fsgid_set.exit ], [ %spec.select, %land.lhs.true17 ]
  %36 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %mode.addr.0, ptr %inode, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @inode_owner_or_capable(ptr noundef %mnt_userns, ptr nocapture noundef readonly %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %4 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %5 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i = icmp eq ptr %3, %mnt_userns
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %entry.i_uid_into_mnt.exit_crit_edge, label %if.end.i.i

entry.i_uid_into_mnt.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_uid_into_mnt.exit

if.end.i.i:                                       ; preds = %entry
  %cmp.i21.i.i = icmp eq ptr %3, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i.i = tail call i32 @from_kuid(ptr noundef %3, [1 x i32] %5) #16
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %uid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i)
  %cmp.i.i = icmp eq i32 %uid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_uid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %i_uid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call10.i.i = tail call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i.i) #16
  br label %i_uid_into_mnt.exit

i_uid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, %entry.i_uid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge ], [ %.unpack.i, %entry.i_uid_into_mnt.exit_crit_edge ]
  %6 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %12)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload, i32 %retval.sroa.0.0.i.i)
  %cmp.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload, %retval.sroa.0.0.i.i
  br i1 %cmp.i, label %i_uid_into_mnt.exit.cleanup_crit_edge, label %do.end9

i_uid_into_mnt.exit.cleanup_crit_edge:            ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end9:                                          ; preds = %i_uid_into_mnt.exit
  %.fca.0.insert21 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %user_ns = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %13 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %user_ns, align 4
  %call.i = tail call i32 @from_kuid(ptr noundef %14, [1 x i32] %.fca.0.insert21) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i26.not = icmp eq i32 %call.i, -1
  br i1 %cmp.i26.not, label %do.end9.if.end18_crit_edge, label %land.lhs.true

do.end9.if.end18_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

land.lhs.true:                                    ; preds = %do.end9
  %call16 = tail call zeroext i1 @ns_capable(ptr noundef %14, i32 noundef 3) #16
  br i1 %call16, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %do.end9.if.end18_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %land.lhs.true.cleanup_crit_edge, %i_uid_into_mnt.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end18 ], [ true, %i_uid_into_mnt.exit.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inode_dio_wait(ptr noundef %inode) #3 align 64 {
entry:
  %q.i = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_dio_count = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_dio_count, i32 noundef 4) #16
  %0 = ptrtoint ptr %i_dio_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_dio_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %i_state.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %call.i = tail call ptr @bit_waitqueue(ptr noundef %i_state.i, i32 noundef 9) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %q.i) #16
  %2 = getelementptr inbounds %struct.wait_bit_key, ptr %q.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_bit_key, ptr %q.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %q.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %q.i, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %q.i, i32 0, i32 1, i32 2
  %7 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %q.i, i32 0, i32 1, i32 3
  %8 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %q.i, i32 0, i32 1, i32 3, i32 1
  %9 = ptrtoint ptr %q.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %i_state.i, ptr %q.i, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 9, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %4, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !282) #16
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %5, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @wake_bit_function, ptr %6, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %7, ptr %7, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %7, ptr %8, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then
  call void @prepare_to_wait(ptr noundef %call.i, ptr noundef %4, i32 noundef 2) #16
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_dio_count, i32 noundef 4) #16
  %21 = ptrtoint ptr %i_dio_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %i_dio_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i.do.cond.i_crit_edge, label %if.then.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @schedule() #16
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then.i, %do.body.i.do.cond.i_crit_edge
  %call.i.i19.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_dio_count, i32 noundef 4) #16
  %23 = ptrtoint ptr %i_dio_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %i_dio_count, align 4
  %tobool13.not.i = icmp eq i32 %24, 0
  br i1 %tobool13.not.i, label %__inode_dio_wait.exit, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

__inode_dio_wait.exit:                            ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @finish_wait(ptr noundef %call.i, ptr noundef %4) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %q.i) #16
  br label %if.end

if.end:                                           ; preds = %__inode_dio_wait.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inode_set_flags(ptr noundef %inode, i32 noundef %flags, i32 noundef %mask) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = xor i32 %mask, -1
  %and = and i32 %neg, %flags
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b74 = load i1, ptr @inode_set_flags.__already_done, align 1
  br i1 %.b74, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !296

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @inode_set_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2342, i32 noundef 9, ptr noundef null) #16
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  br label %do.body36

do.body36:                                        ; preds = %__cmpxchg.exit.do.body36_crit_edge, %if.end28
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_flags, align 4
  %and42 = and i32 %1, %neg
  %or = or i32 %and42, %flags
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_flags, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !340
  tail call void @llvm.prefetch.p0(ptr %i_flags, i32 1, i32 3, i32 1) #16
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body36
  %2 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %i_flags, i32 %1, i32 %or) #16, !srcloc !341
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !342
  %cmp.not = icmp eq i32 %asmresult1.i, %1
  br i1 %cmp.not, label %do.end63, label %__cmpxchg.exit.do.body36_crit_edge

__cmpxchg.exit.do.body36_crit_edge:               ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body36

do.end63:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @inode_nohighmem(ptr nocapture noundef readonly %inode) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1051840, ptr %gfp_mask.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @timestamp_truncate(ptr noalias nocapture writeonly sret(%struct.timespec64) align 8 %agg.result, [2 x i64] %t.coerce, ptr nocapture noundef readonly %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %t.coerce.fca.0.extract = extractvalue [2 x i64] %t.coerce, 0
  %t.coerce.fca.1.extract = extractvalue [2 x i64] %t.coerce, 1
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_time_gran, align 4
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %s_time_min to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %s_time_min, align 8
  %6 = tail call i64 @llvm.smax.i64(i64 %t.coerce.fca.0.extract, i64 %5)
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 36
  %7 = ptrtoint ptr %s_time_max to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %s_time_max, align 64
  %9 = tail call i64 @llvm.smin.i64(i64 %6, i64 %8)
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %6)
  %cmp10 = icmp sle i64 %8, %6
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %5)
  %cmp13 = icmp eq i64 %9, %5
  %or.cond79 = select i1 %cmp10, i1 true, i1 %cmp13
  br i1 %or.cond79, label %if.then, label %entry.if.end_crit_edge, !prof !334

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %t.sroa.6.8.insert.mask = and i64 %t.coerce.fca.1.extract, 4294967295
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %t.sroa.6.0 = phi i64 [ %t.sroa.6.8.insert.mask, %if.then ], [ %t.coerce.fca.1.extract, %entry.if.end_crit_edge ]
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %3, label %if.else20 [
    i32 1, label %if.end.if.end51_crit_edge
    i32 1000000000, label %if.then18
  ]

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %t.sroa.6.8.insert.mask69 = and i64 %t.sroa.6.0, 4294967295
  br label %if.end51

if.else20:                                        ; preds = %if.end
  %11 = add i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999998, i32 %11)
  %12 = icmp ult i32 %11, 999999998
  br i1 %12, label %if.then23, label %do.end

if.then23:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #18
  %t.sroa.6.8.extract.shift = lshr i64 %t.sroa.6.0, 32
  %t.sroa.6.8.extract.trunc = trunc i64 %t.sroa.6.8.extract.shift to i32
  %rem = urem i32 %t.sroa.6.8.extract.trunc, %3
  %sub = sub i32 %t.sroa.6.8.extract.trunc, %rem
  %t.sroa.6.8.insert.ext = zext i32 %sub to i64
  %t.sroa.6.8.insert.shift = shl nuw i64 %t.sroa.6.8.insert.ext, 32
  %t.sroa.6.8.insert.mask75 = and i64 %t.sroa.6.0, 4294967295
  %t.sroa.6.8.insert.insert76 = or i64 %t.sroa.6.8.insert.shift, %t.sroa.6.8.insert.mask75
  br label %if.end51

do.end:                                           ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2379, i32 noundef 9, ptr noundef nonnull @.str.39, i32 noundef %3) #16
  br label %if.end51

if.end51:                                         ; preds = %do.end, %if.then23, %if.then18, %if.end.if.end51_crit_edge
  %t.sroa.6.1 = phi i64 [ %t.sroa.6.0, %if.end.if.end51_crit_edge ], [ %t.sroa.6.8.insert.mask69, %if.then18 ], [ %t.sroa.6.8.insert.insert76, %if.then23 ], [ %t.sroa.6.0, %do.end ]
  %13 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %9, ptr %agg.result, align 8
  %t.sroa.6.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 8
  %14 = ptrtoint ptr %t.sroa.6.0.agg.result.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %t.sroa.6.1, ptr %t.sroa.6.0.agg.result.sroa_idx, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_real_ts64(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_nr_inodes(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call8.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %0)
  %cmp9.i = icmp ult i32 %call8.i, %0
  br i1 %cmp9.i, label %entry.do.body.i_crit_edge, label %entry.get_nr_inodes.exit_crit_edge

entry.get_nr_inodes.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_nr_inodes.exit

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %call11.i = phi i32 [ %call.i, %do.body.i.do.body.i_crit_edge ], [ %call8.i, %entry.do.body.i_crit_edge ]
  %sum.010.i = phi i32 [ %add2.i, %do.body.i.do.body.i_crit_edge ], [ 0, %entry.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %2, ptrtoint (ptr @nr_inodes to i32)
  %3 = inttoptr i32 %add.i to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add2.i = add i32 %5, %sum.010.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call11.i, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp.i = icmp ult i32 %call.i, %0
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.get_nr_inodes.exit_crit_edge

do.body.i.get_nr_inodes.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_nr_inodes.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

get_nr_inodes.exit:                               ; preds = %do.body.i.get_nr_inodes.exit_crit_edge, %entry.get_nr_inodes.exit_crit_edge
  %sum.0.lcssa.i = phi i32 [ 0, %entry.get_nr_inodes.exit_crit_edge ], [ %add2.i, %do.body.i.get_nr_inodes.exit_crit_edge ]
  %6 = tail call i32 @llvm.smax.i32(i32 %sum.0.lcssa.i, i32 0) #16
  store i32 %6, ptr @inodes_stat, align 4
  %call8.i3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i3, i32 %0)
  %cmp9.i4 = icmp ult i32 %call8.i3, %0
  br i1 %cmp9.i4, label %get_nr_inodes.exit.do.body.i12_crit_edge, label %get_nr_inodes.exit.get_nr_inodes_unused.exit_crit_edge

get_nr_inodes.exit.get_nr_inodes_unused.exit_crit_edge: ; preds = %get_nr_inodes.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_nr_inodes_unused.exit

get_nr_inodes.exit.do.body.i12_crit_edge:         ; preds = %get_nr_inodes.exit
  br label %do.body.i12

do.body.i12:                                      ; preds = %do.body.i12.do.body.i12_crit_edge, %get_nr_inodes.exit.do.body.i12_crit_edge
  %call11.i5 = phi i32 [ %call.i10, %do.body.i12.do.body.i12_crit_edge ], [ %call8.i3, %get_nr_inodes.exit.do.body.i12_crit_edge ]
  %sum.010.i6 = phi i32 [ %add2.i9, %do.body.i12.do.body.i12_crit_edge ], [ 0, %get_nr_inodes.exit.do.body.i12_crit_edge ]
  %arrayidx.i7 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11.i5
  %7 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i7, align 4
  %add.i8 = add i32 %8, ptrtoint (ptr @nr_unused to i32)
  %9 = inttoptr i32 %add.i8 to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add2.i9 = add i32 %11, %sum.010.i6
  %call.i10 = tail call i32 @cpumask_next(i32 noundef %call11.i5, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp.i11 = icmp ult i32 %call.i10, %0
  br i1 %cmp.i11, label %do.body.i12.do.body.i12_crit_edge, label %do.body.i12.get_nr_inodes_unused.exit_crit_edge

do.body.i12.get_nr_inodes_unused.exit_crit_edge:  ; preds = %do.body.i12
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_nr_inodes_unused.exit

do.body.i12.do.body.i12_crit_edge:                ; preds = %do.body.i12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i12

get_nr_inodes_unused.exit:                        ; preds = %do.body.i12.get_nr_inodes_unused.exit_crit_edge, %get_nr_inodes.exit.get_nr_inodes_unused.exit_crit_edge
  %sum.0.lcssa.i13 = phi i32 [ 0, %get_nr_inodes.exit.get_nr_inodes_unused.exit_crit_edge ], [ %add2.i9, %do.body.i12.get_nr_inodes_unused.exit_crit_edge ]
  %12 = tail call i32 @llvm.smax.i32(i32 %sum.0.lcssa.i13, i32 0) #16
  store i32 %12, ptr getelementptr inbounds (%struct.inodes_stat_t, ptr @inodes_stat, i32 0, i32 1), align 4
  %call2 = tail call i32 @proc_doulongvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #16
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fsnotify_inode_delete(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_del(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @evict(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_op, align 4
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %4 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_state, align 8
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !294

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 647, 0\0A.popsection", ""() #16, !srcloc !343
  unreachable

do.body10:                                        ; preds = %entry
  %i_lru = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 34
  %6 = ptrtoint ptr %i_lru to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %i_lru, align 4
  %cmp.i.not = icmp eq ptr %7, %i_lru
  br i1 %cmp.i.not, label %do.end29, label %do.body21, !prof !296

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 648, 0\0A.popsection", ""() #16, !srcloc !344
  unreachable

do.end29:                                         ; preds = %do.body10
  %i_io_list = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 29
  %8 = ptrtoint ptr %i_io_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %i_io_list, align 4
  %cmp.i84.not = icmp eq ptr %9, %i_io_list
  br i1 %cmp.i84.not, label %do.end29.if.end33_crit_edge, label %if.then32

do.end29.if.end33_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then32:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @inode_io_list_del(ptr noundef %inode) #16
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %do.end29.if.end33_crit_edge
  %i_sb_list.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 35
  %10 = ptrtoint ptr %i_sb_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %i_sb_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %i_sb_list.i
  br i1 %cmp.i.not.i, label %if.end33.inode_sb_list_del.exit_crit_edge, label %if.then.i

if.end33.inode_sb_list_del.exit_crit_edge:        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %inode_sb_list_del.exit

if.then.i:                                        ; preds = %if.end33
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_inode_list_lock.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 61
  tail call void @_raw_spin_lock(ptr noundef %s_inode_list_lock.i) #16
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_sb_list.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 35, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %i_sb_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %20 = ptrtoint ptr %i_sb_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %i_sb_list.i, ptr %i_sb_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 35, i32 1
  %21 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %i_sb_list.i, ptr %prev.i3.i.i, align 4
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_inode_list_lock3.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 61
  tail call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock3.i) #16
  br label %inode_sb_list_del.exit

inode_sb_list_del.exit:                           ; preds = %list_del_init.exit.i, %if.end33.inode_sb_list_del.exit_crit_edge
  tail call void @inode_wait_for_writeback(ptr noundef %inode) #16
  %evict_inode = getelementptr inbounds %struct.super_operations, ptr %3, i32 0, i32 6
  %24 = ptrtoint ptr %evict_inode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %evict_inode, align 4
  %tobool34.not = icmp eq ptr %25, null
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %inode_sb_list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %25(ptr noundef %inode) #16
  br label %if.end37

if.else:                                          ; preds = %inode_sb_list_del.exit
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #16
  %i_pages.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages.i) #16
  %nrpages.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 7
  %26 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nrpages.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %do.end7.i, label %do.body4.i, !prof !296

do.body4.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 611, 0\0A.popsection", ""() #16, !srcloc !313
  unreachable

do.end7.i:                                        ; preds = %if.else
  tail call void @_raw_spin_unlock_irq(ptr noundef %i_pages.i) #16
  %private_list.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 13
  %28 = ptrtoint ptr %private_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %private_list.i, align 4
  %cmp.i.not.i86 = icmp eq ptr %29, %private_list.i
  br i1 %cmp.i.not.i86, label %do.body29.i, label %do.body23.i, !prof !296

do.body23.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 621, 0\0A.popsection", ""() #16, !srcloc !314
  unreachable

do.body29.i:                                      ; preds = %do.end7.i
  %30 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_state, align 8
  %and.i = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool30.not.i, label %do.body40.i, label %do.body46.i, !prof !294

do.body40.i:                                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 622, 0\0A.popsection", ""() #16, !srcloc !315
  unreachable

do.body46.i:                                      ; preds = %do.body29.i
  %and48.i = and i32 %31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %do.body63.i, label %do.body57.i, !prof !296

do.body57.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 623, 0\0A.popsection", ""() #16, !srcloc !316
  unreachable

do.body63.i:                                      ; preds = %do.body46.i
  %i_wb_list.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 36
  %32 = ptrtoint ptr %i_wb_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %i_wb_list.i, align 4
  %cmp.i89.not.i = icmp eq ptr %33, %i_wb_list.i
  br i1 %cmp.i89.not.i, label %clear_inode.exit, label %do.body75.i, !prof !296

do.body75.i:                                      ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 624, 0\0A.popsection", ""() #16, !srcloc !317
  unreachable

clear_inode.exit:                                 ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 96, ptr %i_state, align 8
  br label %if.end37

if.end37:                                         ; preds = %clear_inode.exit, %if.then35
  %35 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %inode, align 8
  %37 = and i16 %36, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %37)
  %cmp = icmp eq i16 %37, 8192
  br i1 %cmp, label %land.lhs.true, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end37
  %38 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %tobool40.not = icmp eq ptr %40, null
  br i1 %tobool40.not, label %land.lhs.true.if.end42_crit_edge, label %if.then41

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @cd_forget(ptr noundef %inode) #16
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %land.lhs.true.if.end42_crit_edge, %if.end37.if.end42_crit_edge
  %pprev.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %41 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.not.i, label %if.end42.remove_inode_hash.exit_crit_edge, label %land.lhs.true.i

if.end42.remove_inode_hash.exit_crit_edge:        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %remove_inode_hash.exit

land.lhs.true.i:                                  ; preds = %if.end42
  %i_hash.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28
  %cmp.i.i = icmp eq ptr %42, %i_hash.i
  br i1 %cmp.i.i, label %land.lhs.true.i.remove_inode_hash.exit_crit_edge, label %if.then.i87

land.lhs.true.i.remove_inode_hash.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %remove_inode_hash.exit

if.then.i87:                                      ; preds = %land.lhs.true.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #16
  %i_lock.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i.i) #16
  %43 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.not.i.i.i, label %if.then.i87.__remove_inode_hash.exit.i_crit_edge, label %if.then.i.i.i

if.then.i87.__remove_inode_hash.exit.i_crit_edge: ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #18
  br label %__remove_inode_hash.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i87
  %45 = ptrtoint ptr %i_hash.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_hash.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %46, ptr %44, align 4
  %tobool.not.i7.i.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i7.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %46, i32 0, i32 1
  %48 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %44, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %49 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %__remove_inode_hash.exit.i

__remove_inode_hash.exit.i:                       ; preds = %__hlist_del.exit.i.i.i, %if.then.i87.__remove_inode_hash.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i.i) #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @inode_hash_lock) #16
  br label %remove_inode_hash.exit

remove_inode_hash.exit:                           ; preds = %__remove_inode_hash.exit.i, %land.lhs.true.i.remove_inode_hash.exit_crit_edge, %if.end42.remove_inode_hash.exit_crit_edge
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #16
  tail call void @wake_up_bit(ptr noundef %i_state, i32 noundef 3) #16
  %50 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %51)
  %cmp46.not = icmp eq i32 %51, 96
  br i1 %cmp46.not, label %do.end63, label %do.body55, !prof !296

do.body55:                                        ; preds = %remove_inode_hash.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 676, 0\0A.popsection", ""() #16, !srcloc !345
  unreachable

do.end63:                                         ; preds = %remove_inode_hash.exit
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  %52 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb, align 4
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %s_op.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_op.i, align 4
  %56 = ptrtoint ptr %i_lru to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %i_lru, align 4
  %cmp.i.not.i89 = icmp eq ptr %57, %i_lru
  br i1 %cmp.i.not.i89, label %do.end9.i, label %do.body4.i90, !prof !296

do.body4.i90:                                     ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 307, 0\0A.popsection", ""() #16, !srcloc !323
  unreachable

do.end9.i:                                        ; preds = %do.end63
  tail call void @__destroy_inode(ptr noundef %inode) #16
  %destroy_inode.i = getelementptr inbounds %struct.super_operations, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %destroy_inode.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %destroy_inode.i, align 4
  %tobool10.not.i = icmp eq ptr %59, null
  br i1 %tobool10.not.i, label %do.end9.i.if.end16.i_crit_edge, label %if.then11.i

do.end9.i.if.end16.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then11.i:                                      ; preds = %do.end9.i
  tail call void %59(ptr noundef %inode) #16
  %free_inode.i = getelementptr inbounds %struct.super_operations, ptr %55, i32 0, i32 2
  %60 = ptrtoint ptr %free_inode.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %free_inode.i, align 4
  %tobool13.not.i = icmp eq ptr %61, null
  br i1 %tobool13.not.i, label %if.then11.i.destroy_inode.exit_crit_edge, label %if.then11.i.if.end16.i_crit_edge

if.then11.i.if.end16.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then11.i.destroy_inode.exit_crit_edge:         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %destroy_inode.exit

if.end16.i:                                       ; preds = %if.then11.i.if.end16.i_crit_edge, %do.end9.i.if.end16.i_crit_edge
  %free_inode17.i = getelementptr inbounds %struct.super_operations, ptr %55, i32 0, i32 2
  %62 = ptrtoint ptr %free_inode17.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %free_inode17.i, align 4
  %64 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %63, ptr %64, align 8
  %66 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 37
  tail call void @call_rcu(ptr noundef %66, ptr noundef nonnull @i_callback) #16
  br label %destroy_inode.exit

destroy_inode.exit:                               ; preds = %if.end16.i, %if.then11.i.destroy_inode.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_io_list_del(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_wait_for_writeback(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cd_forget(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_one(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_inode_buffers(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate_move(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i_callback(ptr noundef %head) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -360
  %0 = getelementptr i8, ptr %head, i32 40
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %2(ptr noundef %add.ptr) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %3 = load ptr, ptr @inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %3, ptr noundef %add.ptr) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_bit_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bit_waitqueue(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_writeback_lazytime_iput(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !133, !134, !136, !138, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !178, !179, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !215, !217, !218, !220, !222, !223, !225, !227, !228, !230, !232, !234, !236, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !254, !256, !258, !259, !260, !262, !264, !265, !267, !268, !269, !270, !272, !273, !275, !276, !277, !278, !280}
!llvm.named.register.sp = !{!282}
!llvm.module.flags = !{!283, !284, !285, !286, !287, !288, !289, !290}
!llvm.ident = !{!291}

!0 = !{ptr @empty_aops, !1, !"empty_aops", i1 false, i1 false}
!1 = !{!"../fs/inode.c", i32 66, i32 39}
!2 = !{ptr @__ksymtab_empty_aops, !3, !"__ksymtab_empty_aops", i1 false, i1 false}
!3 = !{!"../fs/inode.c", i32 68, i32 1}
!4 = !{ptr @__initcall__kmod_inode__362_140_init_fs_inode_sysctlsearly, !5, !"__initcall__kmod_inode__362_140_init_fs_inode_sysctlsearly", i1 false, i1 false}
!5 = !{!"../fs/inode.c", i32 140, i32 1}
!6 = !{ptr @inode_init_always.empty_iops, !7, !"empty_iops", i1 false, i1 false}
!7 = !{!"../fs/inode.c", i32 158, i32 39}
!8 = !{ptr @inode_init_always.no_open_fops, !9, !"no_open_fops", i1 false, i1 false}
!9 = !{!"../fs/inode.c", i32 159, i32 38}
!10 = !{ptr @inode_init_always.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../fs/inode.c", i32 197, i32 2}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/inode.c", i32 198, i32 2}
!15 = !{ptr @inode_init_always.__key.2, !16, !"__key", i1 false, i1 false}
!16 = !{!"../fs/inode.c", i32 200, i32 2}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/inode.c", i32 201, i32 2}
!20 = !{ptr @inode_init_always.__key.5, !21, !"__key", i1 false, i1 false}
!21 = !{!"../fs/inode.c", i32 216, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/inode.c", i32 217, i32 2}
!25 = !{ptr @__ksymtab_inode_init_always, !26, !"__ksymtab_inode_init_always", i1 false, i1 false}
!26 = !{!"../fs/inode.c", i32 237, i32 1}
!27 = !{ptr @__ksymtab_free_inode_nonrcu, !28, !"__ksymtab_free_inode_nonrcu", i1 false, i1 false}
!28 = !{!"../fs/inode.c", i32 243, i32 1}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/inode.c", i32 289, i32 3}
!31 = !{ptr @__ksymtab___destroy_inode, !32, !"__ksymtab___destroy_inode", i1 false, i1 false}
!32 = !{!"../fs/inode.c", i32 301, i32 1}
!33 = !{ptr @__ksymtab_drop_nlink, !34, !"__ksymtab_drop_nlink", i1 false, i1 false}
!34 = !{!"../fs/inode.c", i32 336, i32 1}
!35 = !{ptr @__ksymtab_clear_nlink, !36, !"__ksymtab_clear_nlink", i1 false, i1 false}
!36 = !{!"../fs/inode.c", i32 353, i32 1}
!37 = !{ptr @__ksymtab_set_nlink, !38, !"__ksymtab_set_nlink", i1 false, i1 false}
!38 = !{!"../fs/inode.c", i32 375, i32 1}
!39 = !{ptr @__ksymtab_inc_nlink, !40, !"__ksymtab_inc_nlink", i1 false, i1 false}
!40 = !{!"../fs/inode.c", i32 394, i32 1}
!41 = !{ptr @__ksymtab_address_space_init_once, !42, !"__ksymtab_address_space_init_once", i1 false, i1 false}
!42 = !{!"../fs/inode.c", i32 410, i32 1}
!43 = !{ptr @inode_init_once.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../fs/inode.c", i32 426, i32 2}
!45 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__ksymtab_inode_init_once, !47, !"__ksymtab_inode_init_once", i1 false, i1 false}
!47 = !{!"../fs/inode.c", i32 428, i32 1}
!48 = !{ptr @__ksymtab_ihold, !49, !"__ksymtab_ihold", i1 false, i1 false}
!49 = !{!"../fs/inode.c", i32 452, i32 1}
!50 = !{ptr @__ksymtab_inode_sb_list_add, !51, !"__ksymtab_inode_sb_list_add", i1 false, i1 false}
!51 = !{!"../fs/inode.c", i32 497, i32 1}
!52 = !{ptr @__ksymtab___insert_inode_hash, !53, !"__ksymtab___insert_inode_hash", i1 false, i1 false}
!53 = !{!"../fs/inode.c", i32 536, i32 1}
!54 = !{ptr @__ksymtab___remove_inode_hash, !55, !"__ksymtab___remove_inode_hash", i1 false, i1 false}
!55 = !{!"../fs/inode.c", i32 552, i32 1}
!56 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/inode.c", i32 569, i32 3}
!58 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dump_mapping._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @dump_mapping._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/inode.c", i32 574, i32 3}
!63 = !{ptr @dump_mapping._entry.12, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @dump_mapping._entry_ptr.14, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/inode.c", i32 580, i32 3}
!67 = !{ptr @dump_mapping._entry.15, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @dump_mapping._entry_ptr.17, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/inode.c", i32 585, i32 3}
!71 = !{ptr @dump_mapping._entry.18, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @dump_mapping._entry_ptr.20, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/inode.c", i32 591, i32 3}
!75 = !{ptr @dump_mapping._entry.21, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @dump_mapping._entry_ptr.23, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/inode.c", i32 600, i32 2}
!79 = !{ptr @dump_mapping._entry.24, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @dump_mapping._entry_ptr.26, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @__ksymtab_clear_inode, !82, !"__ksymtab_clear_inode", i1 false, i1 false}
!82 = !{!"../fs/inode.c", i32 628, i32 1}
!83 = !{ptr @__ksymtab_evict_inodes, !84, !"__ksymtab_evict_inodes", i1 false, i1 false}
!84 = !{!"../fs/inode.c", i32 749, i32 1}
!85 = !{ptr @get_next_ino.shared_last_ino, !86, !"shared_last_ino", i1 false, i1 false}
!86 = !{!"../fs/inode.c", i32 989, i32 19}
!87 = !{ptr @__ksymtab_get_next_ino, !88, !"__ksymtab_get_next_ino", i1 false, i1 false}
!88 = !{!"../fs/inode.c", i32 1004, i32 1}
!89 = !{ptr @__ksymtab_new_inode, !90, !"__ksymtab_new_inode", i1 false, i1 false}
!90 = !{!"../fs/inode.c", i32 1052, i32 1}
!91 = !{ptr @lockdep_annotate_inode_mutex_key.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../fs/inode.c", i32 1066, i32 4}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/inode.c", i32 1067, i32 4}
!95 = !{ptr @__ksymtab_lockdep_annotate_inode_mutex_key, !96, !"__ksymtab_lockdep_annotate_inode_mutex_key", i1 false, i1 false}
!96 = !{!"../fs/inode.c", i32 1072, i32 1}
!97 = !{ptr @__ksymtab_unlock_new_inode, !98, !"__ksymtab_unlock_new_inode", i1 false, i1 false}
!98 = !{!"../fs/inode.c", i32 1092, i32 1}
!99 = !{ptr @__ksymtab_discard_new_inode, !100, !"__ksymtab_discard_new_inode", i1 false, i1 false}
!100 = !{!"../fs/inode.c", i32 1105, i32 1}
!101 = !{ptr @__ksymtab_lock_two_nondirectories, !102, !"__ksymtab_lock_two_nondirectories", i1 false, i1 false}
!102 = !{!"../fs/inode.c", i32 1126, i32 1}
!103 = !{ptr @__ksymtab_unlock_two_nondirectories, !104, !"__ksymtab_unlock_two_nondirectories", i1 false, i1 false}
!104 = !{!"../fs/inode.c", i32 1140, i32 1}
!105 = !{ptr @__ksymtab_inode_insert5, !106, !"__ksymtab_inode_insert5", i1 false, i1 false}
!106 = !{!"../fs/inode.c", i32 1209, i32 1}
!107 = !{ptr @__ksymtab_iget5_locked, !108, !"__ksymtab_iget5_locked", i1 false, i1 false}
!108 = !{!"../fs/inode.c", i32 1249, i32 1}
!109 = !{ptr @__ksymtab_iget_locked, !110, !"__ksymtab_iget_locked", i1 false, i1 false}
!110 = !{!"../fs/inode.c", i32 1323, i32 1}
!111 = !{ptr @.str.28, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/inode.c", i32 1365, i32 9}
!113 = !{ptr @iunique.iunique_lock, !112, !"iunique_lock", i1 false, i1 false}
!114 = !{ptr @iunique.counter, !115, !"counter", i1 false, i1 false}
!115 = !{!"../fs/inode.c", i32 1366, i32 22}
!116 = !{ptr @__ksymtab_iunique, !117, !"__ksymtab_iunique", i1 false, i1 false}
!117 = !{!"../fs/inode.c", i32 1381, i32 1}
!118 = !{ptr @__ksymtab_igrab, !119, !"__ksymtab_igrab", i1 false, i1 false}
!119 = !{!"../fs/inode.c", i32 1400, i32 1}
!120 = !{ptr @__ksymtab_ilookup5_nowait, !121, !"__ksymtab_ilookup5_nowait", i1 false, i1 false}
!121 = !{!"../fs/inode.c", i32 1430, i32 1}
!122 = !{ptr @__ksymtab_ilookup5, !123, !"__ksymtab_ilookup5", i1 false, i1 false}
!123 = !{!"../fs/inode.c", i32 1464, i32 1}
!124 = !{ptr @__ksymtab_ilookup, !125, !"__ksymtab_ilookup", i1 false, i1 false}
!125 = !{!"../fs/inode.c", i32 1494, i32 1}
!126 = !{ptr @__ksymtab_find_inode_nowait, !127, !"__ksymtab_find_inode_nowait", i1 false, i1 false}
!127 = !{!"../fs/inode.c", i32 1544, i32 1}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../fs/inode.c", i32 1573, i32 2}
!130 = !{ptr @.str.29, !129, !"<string literal>", i1 false, i1 false}
!131 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!132 = !{!"../fs/inode.c", i32 1576, i32 2}
!133 = !{ptr @.str.31, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @__ksymtab_find_inode_rcu, !135, !"__ksymtab_find_inode_rcu", i1 false, i1 false}
!135 = !{!"../fs/inode.c", i32 1584, i32 1}
!136 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!137 = !{!"../fs/inode.c", i32 1611, i32 2}
!138 = !{ptr @.str.32, !137, !"<string literal>", i1 false, i1 false}
!139 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!140 = !{!"../fs/inode.c", i32 1614, i32 2}
!141 = !{ptr @__ksymtab_find_inode_by_ino_rcu, !142, !"__ksymtab_find_inode_by_ino_rcu", i1 false, i1 false}
!142 = !{!"../fs/inode.c", i32 1622, i32 1}
!143 = !{ptr @__ksymtab_insert_inode_locked, !144, !"__ksymtab_insert_inode_locked", i1 false, i1 false}
!144 = !{!"../fs/inode.c", i32 1669, i32 1}
!145 = !{ptr @__ksymtab_insert_inode_locked4, !146, !"__ksymtab_insert_inode_locked4", i1 false, i1 false}
!146 = !{!"../fs/inode.c", i32 1685, i32 1}
!147 = !{ptr @__ksymtab_generic_delete_inode, !148, !"__ksymtab_generic_delete_inode", i1 false, i1 false}
!148 = !{!"../fs/inode.c", i32 1692, i32 1}
!149 = !{ptr @__ksymtab_iput, !150, !"__ksymtab_iput", i1 false, i1 false}
!150 = !{!"../fs/inode.c", i32 1773, i32 1}
!151 = !{ptr @__ksymtab_bmap, !152, !"__ksymtab_bmap", i1 false, i1 false}
!152 = !{!"../fs/inode.c", i32 1798, i32 1}
!153 = !{ptr @__ksymtab_generic_update_time, !154, !"__ksymtab_generic_update_time", i1 false, i1 false}
!154 = !{!"../fs/inode.c", i32 1859, i32 1}
!155 = !{ptr @__ksymtab_inode_update_time, !156, !"__ksymtab_inode_update_time", i1 false, i1 false}
!156 = !{!"../fs/inode.c", i32 1871, i32 1}
!157 = !{ptr @__ksymtab_touch_atime, !158, !"__ksymtab_touch_atime", i1 false, i1 false}
!158 = !{!"../fs/inode.c", i32 1946, i32 1}
!159 = !{ptr @__ksymtab_should_remove_suid, !160, !"__ksymtab_should_remove_suid", i1 false, i1 false}
!160 = !{!"../fs/inode.c", i32 1975, i32 1}
!161 = !{ptr @__ksymtab_file_remove_privs, !162, !"__ksymtab_file_remove_privs", i1 false, i1 false}
!162 = !{!"../fs/inode.c", i32 2043, i32 1}
!163 = !{ptr @__ksymtab_file_update_time, !164, !"__ksymtab_file_update_time", i1 false, i1 false}
!164 = !{!"../fs/inode.c", i32 2091, i32 1}
!165 = !{ptr @__ksymtab_file_modified, !166, !"__ksymtab_file_modified", i1 false, i1 false}
!166 = !{!"../fs/inode.c", i32 2111, i32 1}
!167 = !{ptr @__ksymtab_inode_needs_sync, !168, !"__ksymtab_inode_needs_sync", i1 false, i1 false}
!168 = !{!"../fs/inode.c", i32 2121, i32 1}
!169 = !{ptr @__setup_set_ihash_entries, !170, !"__setup_set_ihash_entries", i1 false, i1 false}
!170 = !{!"../fs/inode.c", i32 2155, i32 1}
!171 = !{ptr @.str.34, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/inode.c", i32 2169, i32 27}
!173 = !{ptr @.str.35, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/inode.c", i32 2183, i32 35}
!175 = !{ptr @.str.36, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/inode.c", i32 2220, i32 3}
!177 = !{ptr @.str.37, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @init_special_inode._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @init_special_inode._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @__ksymtab_init_special_inode, !181, !"__ksymtab_init_special_inode", i1 false, i1 false}
!181 = !{!"../fs/inode.c", i32 2224, i32 1}
!182 = !{ptr @__ksymtab_inode_init_owner, !183, !"__ksymtab_inode_init_owner", i1 false, i1 false}
!183 = !{!"../fs/inode.c", i32 2257, i32 1}
!184 = distinct !{null, !185, !"__warned", i1 false, i1 false}
!185 = !{!"../fs/inode.c", i32 2280, i32 13}
!186 = distinct !{null, !187, !"__warned", i1 false, i1 false}
!187 = !{!"../fs/inode.c", i32 2283, i32 7}
!188 = !{ptr @__ksymtab_inode_owner_or_capable, !189, !"__ksymtab_inode_owner_or_capable", i1 false, i1 false}
!189 = !{!"../fs/inode.c", i32 2288, i32 1}
!190 = !{ptr @__ksymtab_inode_dio_wait, !191, !"__ksymtab_inode_dio_wait", i1 false, i1 false}
!191 = !{!"../fs/inode.c", i32 2321, i32 1}
!192 = distinct !{null, !193, !"__already_done", i1 false, i1 false}
!193 = !{!"../fs/inode.c", i32 2342, i32 2}
!194 = !{ptr @__ksymtab_inode_set_flags, !195, !"__ksymtab_inode_set_flags", i1 false, i1 false}
!195 = !{!"../fs/inode.c", i32 2345, i32 1}
!196 = !{ptr @__ksymtab_inode_nohighmem, !197, !"__ksymtab_inode_nohighmem", i1 false, i1 false}
!197 = !{!"../fs/inode.c", i32 2351, i32 1}
!198 = !{ptr @.str.39, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/inode.c", i32 2379, i32 3}
!200 = !{ptr @__ksymtab_timestamp_truncate, !201, !"__ksymtab_timestamp_truncate", i1 false, i1 false}
!201 = !{!"../fs/inode.c", i32 2382, i32 1}
!202 = !{ptr @.str.40, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/inode.c", i32 2401, i32 3}
!204 = !{ptr @__ksymtab_current_time, !205, !"__ksymtab_current_time", i1 false, i1 false}
!205 = !{!"../fs/inode.c", i32 2407, i32 1}
!206 = !{ptr @i_hash_mask, !207, !"i_hash_mask", i1 false, i1 false}
!207 = !{!"../fs/inode.c", i32 57, i32 21}
!208 = !{ptr @i_hash_shift, !209, !"i_hash_shift", i1 false, i1 false}
!209 = !{!"../fs/inode.c", i32 58, i32 21}
!210 = !{ptr @inode_hashtable, !211, !"inode_hashtable", i1 false, i1 false}
!211 = !{!"../fs/inode.c", i32 59, i32 27}
!212 = !{ptr @__pcpu_unique_nr_inodes, !213, !"__pcpu_unique_nr_inodes", i1 false, i1 false}
!213 = !{!"../fs/inode.c", i32 70, i32 8}
!214 = !{ptr @nr_inodes, !213, !"nr_inodes", i1 false, i1 false}
!215 = !{ptr @__pcpu_unique_nr_unused, !216, !"__pcpu_unique_nr_unused", i1 false, i1 false}
!216 = !{!"../fs/inode.c", i32 71, i32 8}
!217 = !{ptr @nr_unused, !216, !"nr_unused", i1 false, i1 false}
!218 = !{ptr @inode_cachep, !219, !"inode_cachep", i1 false, i1 false}
!219 = !{!"../fs/inode.c", i32 73, i32 27}
!220 = !{ptr @__pcpu_unique_last_ino, !221, !"__pcpu_unique_last_ino", i1 false, i1 false}
!221 = !{!"../fs/inode.c", i32 980, i32 8}
!222 = !{ptr @last_ino, !221, !"last_ino", i1 false, i1 false}
!223 = !{ptr @ihash_entries, !224, !"ihash_entries", i1 false, i1 false}
!224 = !{!"../fs/inode.c", i32 2147, i32 33}
!225 = !{ptr @.str.41, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/inode.c", i32 137, i32 2}
!227 = !{ptr @.str.42, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.43, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/inode.c", i32 119, i32 15}
!230 = !{ptr @.str.44, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/inode.c", i32 126, i32 15}
!232 = !{ptr @inodes_sysctls, !233, !"inodes_sysctls", i1 false, i1 false}
!233 = !{!"../fs/inode.c", i32 117, i32 25}
!234 = !{ptr @inodes_stat, !235, !"inodes_stat", i1 false, i1 false}
!235 = !{!"../fs/inode.c", i32 107, i32 29}
!236 = distinct !{null, !237, !"__already_done", i1 false, i1 false}
!237 = !{!"../include/linux/writeback.h", i32 247, i32 3}
!238 = !{ptr @.str.45, !237, !"<string literal>", i1 false, i1 false}
!239 = distinct !{null, !240, !"__already_done", i1 false, i1 false}
!240 = !{!"../include/linux/backing-dev-defs.h", i32 253, i32 6}
!241 = !{ptr @.str.46, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @__address_space_init_once.__key, !243, !"__key", i1 false, i1 false}
!243 = !{!"../fs/inode.c", i32 399, i32 2}
!244 = !{ptr @.str.47, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @__address_space_init_once.__key.48, !246, !"__key", i1 false, i1 false}
!246 = !{!"../fs/inode.c", i32 401, i32 2}
!247 = !{ptr @.str.49, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @xa_init_flags.__key, !249, !"__key", i1 false, i1 false}
!249 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!250 = !{ptr @.str.50, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.51, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/inode.c", i32 60, i32 35}
!253 = !{ptr @inode_hash_lock, !252, !"inode_hash_lock", i1 false, i1 false}
!254 = !{ptr @.str.52, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!256 = distinct !{null, !257, !"__warned", i1 false, i1 false}
!257 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!258 = !{ptr @.str.53, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.54, !257, !"<string literal>", i1 false, i1 false}
!260 = distinct !{null, !261, !"__warned", i1 false, i1 false}
!261 = !{!"../fs/inode.c", i32 1337, i32 2}
!262 = distinct !{null, !263, !"__warned", i1 false, i1 false}
!263 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!264 = !{ptr @.str.55, !263, !"<string literal>", i1 false, i1 false}
!265 = distinct !{null, !266, !"__already_done", i1 false, i1 false}
!266 = !{!"../include/trace/events/writeback.h", i32 859, i32 1}
!267 = !{ptr @.str.56, !266, !"<string literal>", i1 false, i1 false}
!268 = distinct !{null, !266, !"__warned", i1 false, i1 false}
!269 = !{ptr @.str.57, !266, !"<string literal>", i1 false, i1 false}
!270 = distinct !{null, !271, !"__already_done", i1 false, i1 false}
!271 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!272 = !{ptr @.str.58, !271, !"<string literal>", i1 false, i1 false}
!273 = distinct !{null, !274, !"__warned", i1 false, i1 false}
!274 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!275 = !{ptr @.str.59, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.60, !274, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @__setup_str_set_ihash_entries, !170, !"__setup_str_set_ihash_entries", i1 false, i1 false}
!278 = distinct !{null, !279, !"__warned", i1 false, i1 false}
!279 = !{!"../include/linux/mnt_idmapping.h", i32 212, i32 49}
!280 = distinct !{null, !281, !"__warned", i1 false, i1 false}
!281 = !{!"../include/linux/mnt_idmapping.h", i32 231, i32 49}
!282 = !{!"sp"}
!283 = !{i32 1, !"wchar_size", i32 2}
!284 = !{i32 1, !"min_enum_size", i32 4}
!285 = !{i32 8, !"branch-target-enforcement", i32 0}
!286 = !{i32 8, !"sign-return-address", i32 0}
!287 = !{i32 8, !"sign-return-address-all", i32 0}
!288 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!289 = !{i32 7, !"uwtable", i32 1}
!290 = !{i32 7, !"frame-pointer", i32 2}
!291 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!292 = !{i64 1120726, i64 1120787}
!293 = !{i64 1123458}
!294 = !{!"branch_weights", i32 1, i32 2000}
!295 = !{i64 1123743}
!296 = !{!"branch_weights", i32 2000, i32 1}
!297 = !{i64 2155979971, i64 2155980446, i64 2155980008, i64 2155980064, i64 2155980098, i64 2155980122, i64 2155980163, i64 2155980184, i64 2155980212, i64 2155980246}
!298 = !{i64 2149528492}
!299 = !{i64 2148804522}
!300 = !{i64 2148719231, i64 2148719263, i64 2148719292, i64 2148719326, i64 2148719357, i64 2148719380}
!301 = !{i64 2148804751}
!302 = !{i64 2149528758}
!303 = !{i64 2148718511, i64 2148718537, i64 2148718566, i64 2148718600, i64 2148718631, i64 2148718654}
!304 = !{i64 2148805601}
!305 = !{i64 2148720041, i64 2148720073, i64 2148720102, i64 2148720136, i64 2148720167, i64 2148720190}
!306 = !{i64 2150426690}
!307 = !{i64 2148716046, i64 2148716072, i64 2148716101, i64 2148716135, i64 2148716166, i64 2148716189}
!308 = !{i64 2148801481}
!309 = !{i64 2148716766, i64 2148716798, i64 2148716827, i64 2148716861, i64 2148716892, i64 2148716915}
!310 = !{i64 2148801710}
!311 = !{i64 2149630103}
!312 = !{!"auto-init"}
!313 = !{i64 2156038853, i64 2156039328, i64 2156038890, i64 2156038946, i64 2156038980, i64 2156039004, i64 2156039045, i64 2156039066, i64 2156039094, i64 2156039128}
!314 = !{i64 2156044578, i64 2156045053, i64 2156044615, i64 2156044671, i64 2156044705, i64 2156044729, i64 2156044770, i64 2156044791, i64 2156044819, i64 2156044853}
!315 = !{i64 2156046174, i64 2156046649, i64 2156046211, i64 2156046267, i64 2156046301, i64 2156046325, i64 2156046366, i64 2156046387, i64 2156046415, i64 2156046449}
!316 = !{i64 2156047762, i64 2156048237, i64 2156047799, i64 2156047855, i64 2156047889, i64 2156047913, i64 2156047954, i64 2156047975, i64 2156048003, i64 2156048037}
!317 = !{i64 2156049351, i64 2156049826, i64 2156049388, i64 2156049444, i64 2156049478, i64 2156049502, i64 2156049543, i64 2156049564, i64 2156049592, i64 2156049626}
!318 = !{i64 2156097642}
!319 = !{i64 2156098788}
!320 = !{i64 2156108615}
!321 = !{i64 2156110750}
!322 = !{i64 2156218084, i64 2156218560, i64 2156218121, i64 2156218177, i64 2156218211, i64 2156218235, i64 2156218276, i64 2156218297, i64 2156218325, i64 2156218359}
!323 = !{i64 2155992268, i64 2155992743, i64 2155992305, i64 2155992361, i64 2155992395, i64 2155992419, i64 2155992460, i64 2155992481, i64 2155992509, i64 2155992543}
!324 = !{i64 2148540644, i64 2148540649, i64 2148540662, i64 2148540706, i64 2148540740, i64 2148540761}
!325 = !{i64 2155876288}
!326 = !{i64 2155876507}
!327 = !{i64 2149537051}
!328 = !{i64 2149538087}
!329 = !{i64 2155243592}
!330 = !{i64 2152467506}
!331 = !{!332}
!332 = distinct !{!332, !333, !"timestamp_truncate: %agg.result"}
!333 = distinct !{!333, !"timestamp_truncate"}
!334 = !{!"branch_weights", i32 4001, i32 4000000}
!335 = !{i64 2152408400}
!336 = !{i64 2152417250}
!337 = !{i64 2152417992}
!338 = !{i64 2152427487}
!339 = !{i64 2152436964}
!340 = !{i64 2156256374}
!341 = !{i64 1225538, i64 1225559, i64 1225582, i64 1225601, i64 1225620}
!342 = !{i64 2156256783}
!343 = !{i64 2156052282, i64 2156052757, i64 2156052319, i64 2156052375, i64 2156052409, i64 2156052433, i64 2156052474, i64 2156052495, i64 2156052523, i64 2156052557}
!344 = !{i64 2156053863, i64 2156054338, i64 2156053900, i64 2156053956, i64 2156053990, i64 2156054014, i64 2156054055, i64 2156054076, i64 2156054104, i64 2156054138}
!345 = !{i64 2156055553, i64 2156056028, i64 2156055590, i64 2156055646, i64 2156055680, i64 2156055704, i64 2156055745, i64 2156055766, i64 2156055794, i64 2156055828}
