; ModuleID = '/llk/IR_all_yes/security/security.c_pt.bc'
source_filename = "../security/security.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+call_blocking_lsm_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_call_blocking_lsm_notifier\09\09\09\09"
module asm "\09.long\09__crc_call_blocking_lsm_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_blocking_lsm_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22call_blocking_lsm_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_call_blocking_lsm_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+register_blocking_lsm_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_register_blocking_lsm_notifier\09\09\09\09"
module asm "\09.long\09__crc_register_blocking_lsm_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_blocking_lsm_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_blocking_lsm_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_blocking_lsm_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_blocking_lsm_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_blocking_lsm_notifier\09\09\09\09"
module asm "\09.long\09__crc_unregister_blocking_lsm_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_blocking_lsm_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_blocking_lsm_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_blocking_lsm_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_free_mnt_opts\22, \22a\22\09"
module asm "\09.weak\09__crc_security_free_mnt_opts\09\09\09\09"
module asm "\09.long\09__crc_security_free_mnt_opts\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_free_mnt_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22security_free_mnt_opts\22\09\09\09\09\09"
module asm "__kstrtabns_security_free_mnt_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_sb_eat_lsm_opts\22, \22a\22\09"
module asm "\09.weak\09__crc_security_sb_eat_lsm_opts\09\09\09\09"
module asm "\09.long\09__crc_security_sb_eat_lsm_opts\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_sb_eat_lsm_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22security_sb_eat_lsm_opts\22\09\09\09\09\09"
module asm "__kstrtabns_security_sb_eat_lsm_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_sb_mnt_opts_compat\22, \22a\22\09"
module asm "\09.weak\09__crc_security_sb_mnt_opts_compat\09\09\09\09"
module asm "\09.long\09__crc_security_sb_mnt_opts_compat\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_sb_mnt_opts_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22security_sb_mnt_opts_compat\22\09\09\09\09\09"
module asm "__kstrtabns_security_sb_mnt_opts_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_sb_remount\22, \22a\22\09"
module asm "\09.weak\09__crc_security_sb_remount\09\09\09\09"
module asm "\09.long\09__crc_security_sb_remount\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_sb_remount:\09\09\09\09\09"
module asm "\09.asciz \09\22security_sb_remount\22\09\09\09\09\09"
module asm "__kstrtabns_security_sb_remount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_sb_set_mnt_opts\22, \22a\22\09"
module asm "\09.weak\09__crc_security_sb_set_mnt_opts\09\09\09\09"
module asm "\09.long\09__crc_security_sb_set_mnt_opts\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_sb_set_mnt_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22security_sb_set_mnt_opts\22\09\09\09\09\09"
module asm "__kstrtabns_security_sb_set_mnt_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_sb_clone_mnt_opts\22, \22a\22\09"
module asm "\09.weak\09__crc_security_sb_clone_mnt_opts\09\09\09\09"
module asm "\09.long\09__crc_security_sb_clone_mnt_opts\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_sb_clone_mnt_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22security_sb_clone_mnt_opts\22\09\09\09\09\09"
module asm "__kstrtabns_security_sb_clone_mnt_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_dentry_init_security\22, \22a\22\09"
module asm "\09.weak\09__crc_security_dentry_init_security\09\09\09\09"
module asm "\09.long\09__crc_security_dentry_init_security\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_dentry_init_security:\09\09\09\09\09"
module asm "\09.asciz \09\22security_dentry_init_security\22\09\09\09\09\09"
module asm "__kstrtabns_security_dentry_init_security:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_dentry_create_files_as\22, \22a\22\09"
module asm "\09.weak\09__crc_security_dentry_create_files_as\09\09\09\09"
module asm "\09.long\09__crc_security_dentry_create_files_as\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_dentry_create_files_as:\09\09\09\09\09"
module asm "\09.asciz \09\22security_dentry_create_files_as\22\09\09\09\09\09"
module asm "__kstrtabns_security_dentry_create_files_as:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_inode_init_security\22, \22a\22\09"
module asm "\09.weak\09__crc_security_inode_init_security\09\09\09\09"
module asm "\09.long\09__crc_security_inode_init_security\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_inode_init_security:\09\09\09\09\09"
module asm "\09.asciz \09\22security_inode_init_security\22\09\09\09\09\09"
module asm "__kstrtabns_security_inode_init_security:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_old_inode_init_security\22, \22a\22\09"
module asm "\09.weak\09__crc_security_old_inode_init_security\09\09\09\09"
module asm "\09.long\09__crc_security_old_inode_init_security\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_old_inode_init_security:\09\09\09\09\09"
module asm "\09.asciz \09\22security_old_inode_init_security\22\09\09\09\09\09"
module asm "__kstrtabns_security_old_inode_init_security:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_path_mknod\22, \22a\22\09"
module asm "\09.weak\09__crc_security_path_mknod\09\09\09\09"
module asm "\09.long\09__crc_security_path_mknod\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_path_mknod:\09\09\09\09\09"
module asm "\09.asciz \09\22security_path_mknod\22\09\09\09\09\09"
module asm "__kstrtabns_security_path_mknod:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_path_mkdir\22, \22a\22\09"
module asm "\09.weak\09__crc_security_path_mkdir\09\09\09\09"
module asm "\09.long\09__crc_security_path_mkdir\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_path_mkdir:\09\09\09\09\09"
module asm "\09.asciz \09\22security_path_mkdir\22\09\09\09\09\09"
module asm "__kstrtabns_security_path_mkdir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_path_unlink\22, \22a\22\09"
module asm "\09.weak\09__crc_security_path_unlink\09\09\09\09"
module asm "\09.long\09__crc_security_path_unlink\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_path_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22security_path_unlink\22\09\09\09\09\09"
module asm "__kstrtabns_security_path_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_path_rename\22, \22a\22\09"
module asm "\09.weak\09__crc_security_path_rename\09\09\09\09"
module asm "\09.long\09__crc_security_path_rename\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_path_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22security_path_rename\22\09\09\09\09\09"
module asm "__kstrtabns_security_path_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+security_inode_create\22, \22a\22\09"
module asm "\09.weak\09__crc_security_inode_create\09\09\09\09"
module asm "\09.long\09__crc_security_inode_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_inode_create:\09\09\09\09\09"
module asm "\09.asciz \09\22security_inode_create\22\09\09\09\09\09"
module asm "__kstrtabns_security_inode_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+security_inode_mkdir\22, \22a\22\09"
module asm "\09.weak\09__crc_security_inode_mkdir\09\09\09\09"
module asm "\09.long\09__crc_security_inode_mkdir\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_inode_mkdir:\09\09\09\09\09"
module asm "\09.asciz \09\22security_inode_mkdir\22\09\09\09\09\09"
module asm "__kstrtabns_security_inode_mkdir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+security_inode_setattr\22, \22a\22\09"
module asm "\09.weak\09__crc_security_inode_setattr\09\09\09\09"
module asm "\09.long\09__crc_security_inode_setattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_inode_setattr:\09\09\09\09\09"
module asm "\09.asciz \09\22security_inode_setattr\22\09\09\09\09\09"
module asm "__kstrtabns_security_inode_setattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_inode_listsecurity\22, \22a\22\09"
module asm "\09.weak\09__crc_security_inode_listsecurity\09\09\09\09"
module asm "\09.long\09__crc_security_inode_listsecurity\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_inode_listsecurity:\09\09\09\09\09"
module asm "\09.asciz \09\22security_inode_listsecurity\22\09\09\09\09\09"
module asm "__kstrtabns_security_inode_listsecurity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_inode_copy_up\22, \22a\22\09"
module asm "\09.weak\09__crc_security_inode_copy_up\09\09\09\09"
module asm "\09.long\09__crc_security_inode_copy_up\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_inode_copy_up:\09\09\09\09\09"
module asm "\09.asciz \09\22security_inode_copy_up\22\09\09\09\09\09"
module asm "__kstrtabns_security_inode_copy_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_inode_copy_up_xattr\22, \22a\22\09"
module asm "\09.weak\09__crc_security_inode_copy_up_xattr\09\09\09\09"
module asm "\09.long\09__crc_security_inode_copy_up_xattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_inode_copy_up_xattr:\09\09\09\09\09"
module asm "\09.asciz \09\22security_inode_copy_up_xattr\22\09\09\09\09\09"
module asm "__kstrtabns_security_inode_copy_up_xattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+security_file_ioctl\22, \22a\22\09"
module asm "\09.weak\09__crc_security_file_ioctl\09\09\09\09"
module asm "\09.long\09__crc_security_file_ioctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_file_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22security_file_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_security_file_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_cred_getsecid\22, \22a\22\09"
module asm "\09.weak\09__crc_security_cred_getsecid\09\09\09\09"
module asm "\09.long\09__crc_security_cred_getsecid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_cred_getsecid:\09\09\09\09\09"
module asm "\09.asciz \09\22security_cred_getsecid\22\09\09\09\09\09"
module asm "__kstrtabns_security_cred_getsecid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+security_kernel_read_file\22, \22a\22\09"
module asm "\09.weak\09__crc_security_kernel_read_file\09\09\09\09"
module asm "\09.long\09__crc_security_kernel_read_file\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_kernel_read_file:\09\09\09\09\09"
module asm "\09.asciz \09\22security_kernel_read_file\22\09\09\09\09\09"
module asm "__kstrtabns_security_kernel_read_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+security_kernel_post_read_file\22, \22a\22\09"
module asm "\09.weak\09__crc_security_kernel_post_read_file\09\09\09\09"
module asm "\09.long\09__crc_security_kernel_post_read_file\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_kernel_post_read_file:\09\09\09\09\09"
module asm "\09.asciz \09\22security_kernel_post_read_file\22\09\09\09\09\09"
module asm "__kstrtabns_security_kernel_post_read_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+security_kernel_load_data\22, \22a\22\09"
module asm "\09.weak\09__crc_security_kernel_load_data\09\09\09\09"
module asm "\09.long\09__crc_security_kernel_load_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_kernel_load_data:\09\09\09\09\09"
module asm "\09.asciz \09\22security_kernel_load_data\22\09\09\09\09\09"
module asm "__kstrtabns_security_kernel_load_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+security_kernel_post_load_data\22, \22a\22\09"
module asm "\09.weak\09__crc_security_kernel_post_load_data\09\09\09\09"
module asm "\09.long\09__crc_security_kernel_post_load_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_kernel_post_load_data:\09\09\09\09\09"
module asm "\09.asciz \09\22security_kernel_post_load_data\22\09\09\09\09\09"
module asm "__kstrtabns_security_kernel_post_load_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_current_getsecid_subj\22, \22a\22\09"
module asm "\09.weak\09__crc_security_current_getsecid_subj\09\09\09\09"
module asm "\09.long\09__crc_security_current_getsecid_subj\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_current_getsecid_subj:\09\09\09\09\09"
module asm "\09.asciz \09\22security_current_getsecid_subj\22\09\09\09\09\09"
module asm "__kstrtabns_security_current_getsecid_subj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_task_getsecid_obj\22, \22a\22\09"
module asm "\09.weak\09__crc_security_task_getsecid_obj\09\09\09\09"
module asm "\09.long\09__crc_security_task_getsecid_obj\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_task_getsecid_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22security_task_getsecid_obj\22\09\09\09\09\09"
module asm "__kstrtabns_security_task_getsecid_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_d_instantiate\22, \22a\22\09"
module asm "\09.weak\09__crc_security_d_instantiate\09\09\09\09"
module asm "\09.long\09__crc_security_d_instantiate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_d_instantiate:\09\09\09\09\09"
module asm "\09.asciz \09\22security_d_instantiate\22\09\09\09\09\09"
module asm "__kstrtabns_security_d_instantiate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_ismaclabel\22, \22a\22\09"
module asm "\09.weak\09__crc_security_ismaclabel\09\09\09\09"
module asm "\09.long\09__crc_security_ismaclabel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_ismaclabel:\09\09\09\09\09"
module asm "\09.asciz \09\22security_ismaclabel\22\09\09\09\09\09"
module asm "__kstrtabns_security_ismaclabel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_secid_to_secctx\22, \22a\22\09"
module asm "\09.weak\09__crc_security_secid_to_secctx\09\09\09\09"
module asm "\09.long\09__crc_security_secid_to_secctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_secid_to_secctx:\09\09\09\09\09"
module asm "\09.asciz \09\22security_secid_to_secctx\22\09\09\09\09\09"
module asm "__kstrtabns_security_secid_to_secctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_secctx_to_secid\22, \22a\22\09"
module asm "\09.weak\09__crc_security_secctx_to_secid\09\09\09\09"
module asm "\09.long\09__crc_security_secctx_to_secid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_secctx_to_secid:\09\09\09\09\09"
module asm "\09.asciz \09\22security_secctx_to_secid\22\09\09\09\09\09"
module asm "__kstrtabns_security_secctx_to_secid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_release_secctx\22, \22a\22\09"
module asm "\09.weak\09__crc_security_release_secctx\09\09\09\09"
module asm "\09.long\09__crc_security_release_secctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_release_secctx:\09\09\09\09\09"
module asm "\09.asciz \09\22security_release_secctx\22\09\09\09\09\09"
module asm "__kstrtabns_security_release_secctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_inode_invalidate_secctx\22, \22a\22\09"
module asm "\09.weak\09__crc_security_inode_invalidate_secctx\09\09\09\09"
module asm "\09.long\09__crc_security_inode_invalidate_secctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_inode_invalidate_secctx:\09\09\09\09\09"
module asm "\09.asciz \09\22security_inode_invalidate_secctx\22\09\09\09\09\09"
module asm "__kstrtabns_security_inode_invalidate_secctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_inode_notifysecctx\22, \22a\22\09"
module asm "\09.weak\09__crc_security_inode_notifysecctx\09\09\09\09"
module asm "\09.long\09__crc_security_inode_notifysecctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_inode_notifysecctx:\09\09\09\09\09"
module asm "\09.asciz \09\22security_inode_notifysecctx\22\09\09\09\09\09"
module asm "__kstrtabns_security_inode_notifysecctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_inode_setsecctx\22, \22a\22\09"
module asm "\09.weak\09__crc_security_inode_setsecctx\09\09\09\09"
module asm "\09.long\09__crc_security_inode_setsecctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_inode_setsecctx:\09\09\09\09\09"
module asm "\09.asciz \09\22security_inode_setsecctx\22\09\09\09\09\09"
module asm "__kstrtabns_security_inode_setsecctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_inode_getsecctx\22, \22a\22\09"
module asm "\09.weak\09__crc_security_inode_getsecctx\09\09\09\09"
module asm "\09.long\09__crc_security_inode_getsecctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_inode_getsecctx:\09\09\09\09\09"
module asm "\09.asciz \09\22security_inode_getsecctx\22\09\09\09\09\09"
module asm "__kstrtabns_security_inode_getsecctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_unix_stream_connect\22, \22a\22\09"
module asm "\09.weak\09__crc_security_unix_stream_connect\09\09\09\09"
module asm "\09.long\09__crc_security_unix_stream_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_unix_stream_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22security_unix_stream_connect\22\09\09\09\09\09"
module asm "__kstrtabns_security_unix_stream_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_unix_may_send\22, \22a\22\09"
module asm "\09.weak\09__crc_security_unix_may_send\09\09\09\09"
module asm "\09.long\09__crc_security_unix_may_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_unix_may_send:\09\09\09\09\09"
module asm "\09.asciz \09\22security_unix_may_send\22\09\09\09\09\09"
module asm "__kstrtabns_security_unix_may_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_socket_socketpair\22, \22a\22\09"
module asm "\09.weak\09__crc_security_socket_socketpair\09\09\09\09"
module asm "\09.long\09__crc_security_socket_socketpair\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_socket_socketpair:\09\09\09\09\09"
module asm "\09.asciz \09\22security_socket_socketpair\22\09\09\09\09\09"
module asm "__kstrtabns_security_socket_socketpair:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_sock_rcv_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_security_sock_rcv_skb\09\09\09\09"
module asm "\09.long\09__crc_security_sock_rcv_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_sock_rcv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22security_sock_rcv_skb\22\09\09\09\09\09"
module asm "__kstrtabns_security_sock_rcv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_socket_getpeersec_dgram\22, \22a\22\09"
module asm "\09.weak\09__crc_security_socket_getpeersec_dgram\09\09\09\09"
module asm "\09.long\09__crc_security_socket_getpeersec_dgram\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_socket_getpeersec_dgram:\09\09\09\09\09"
module asm "\09.asciz \09\22security_socket_getpeersec_dgram\22\09\09\09\09\09"
module asm "__kstrtabns_security_socket_getpeersec_dgram:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_sk_clone\22, \22a\22\09"
module asm "\09.weak\09__crc_security_sk_clone\09\09\09\09"
module asm "\09.long\09__crc_security_sk_clone\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_sk_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22security_sk_clone\22\09\09\09\09\09"
module asm "__kstrtabns_security_sk_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_sk_classify_flow\22, \22a\22\09"
module asm "\09.weak\09__crc_security_sk_classify_flow\09\09\09\09"
module asm "\09.long\09__crc_security_sk_classify_flow\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_sk_classify_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22security_sk_classify_flow\22\09\09\09\09\09"
module asm "__kstrtabns_security_sk_classify_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_req_classify_flow\22, \22a\22\09"
module asm "\09.weak\09__crc_security_req_classify_flow\09\09\09\09"
module asm "\09.long\09__crc_security_req_classify_flow\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_req_classify_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22security_req_classify_flow\22\09\09\09\09\09"
module asm "__kstrtabns_security_req_classify_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_sock_graft\22, \22a\22\09"
module asm "\09.weak\09__crc_security_sock_graft\09\09\09\09"
module asm "\09.long\09__crc_security_sock_graft\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_sock_graft:\09\09\09\09\09"
module asm "\09.asciz \09\22security_sock_graft\22\09\09\09\09\09"
module asm "__kstrtabns_security_sock_graft:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_inet_conn_request\22, \22a\22\09"
module asm "\09.weak\09__crc_security_inet_conn_request\09\09\09\09"
module asm "\09.long\09__crc_security_inet_conn_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_inet_conn_request:\09\09\09\09\09"
module asm "\09.asciz \09\22security_inet_conn_request\22\09\09\09\09\09"
module asm "__kstrtabns_security_inet_conn_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_inet_conn_established\22, \22a\22\09"
module asm "\09.weak\09__crc_security_inet_conn_established\09\09\09\09"
module asm "\09.long\09__crc_security_inet_conn_established\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_inet_conn_established:\09\09\09\09\09"
module asm "\09.asciz \09\22security_inet_conn_established\22\09\09\09\09\09"
module asm "__kstrtabns_security_inet_conn_established:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_secmark_relabel_packet\22, \22a\22\09"
module asm "\09.weak\09__crc_security_secmark_relabel_packet\09\09\09\09"
module asm "\09.long\09__crc_security_secmark_relabel_packet\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_secmark_relabel_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22security_secmark_relabel_packet\22\09\09\09\09\09"
module asm "__kstrtabns_security_secmark_relabel_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_secmark_refcount_inc\22, \22a\22\09"
module asm "\09.weak\09__crc_security_secmark_refcount_inc\09\09\09\09"
module asm "\09.long\09__crc_security_secmark_refcount_inc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_secmark_refcount_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22security_secmark_refcount_inc\22\09\09\09\09\09"
module asm "__kstrtabns_security_secmark_refcount_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_secmark_refcount_dec\22, \22a\22\09"
module asm "\09.weak\09__crc_security_secmark_refcount_dec\09\09\09\09"
module asm "\09.long\09__crc_security_secmark_refcount_dec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_secmark_refcount_dec:\09\09\09\09\09"
module asm "\09.asciz \09\22security_secmark_refcount_dec\22\09\09\09\09\09"
module asm "__kstrtabns_security_secmark_refcount_dec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_tun_dev_alloc_security\22, \22a\22\09"
module asm "\09.weak\09__crc_security_tun_dev_alloc_security\09\09\09\09"
module asm "\09.long\09__crc_security_tun_dev_alloc_security\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_tun_dev_alloc_security:\09\09\09\09\09"
module asm "\09.asciz \09\22security_tun_dev_alloc_security\22\09\09\09\09\09"
module asm "__kstrtabns_security_tun_dev_alloc_security:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_tun_dev_free_security\22, \22a\22\09"
module asm "\09.weak\09__crc_security_tun_dev_free_security\09\09\09\09"
module asm "\09.long\09__crc_security_tun_dev_free_security\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_tun_dev_free_security:\09\09\09\09\09"
module asm "\09.asciz \09\22security_tun_dev_free_security\22\09\09\09\09\09"
module asm "__kstrtabns_security_tun_dev_free_security:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_tun_dev_create\22, \22a\22\09"
module asm "\09.weak\09__crc_security_tun_dev_create\09\09\09\09"
module asm "\09.long\09__crc_security_tun_dev_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_tun_dev_create:\09\09\09\09\09"
module asm "\09.asciz \09\22security_tun_dev_create\22\09\09\09\09\09"
module asm "__kstrtabns_security_tun_dev_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_tun_dev_attach_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_security_tun_dev_attach_queue\09\09\09\09"
module asm "\09.long\09__crc_security_tun_dev_attach_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_tun_dev_attach_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22security_tun_dev_attach_queue\22\09\09\09\09\09"
module asm "__kstrtabns_security_tun_dev_attach_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_tun_dev_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_security_tun_dev_attach\09\09\09\09"
module asm "\09.long\09__crc_security_tun_dev_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_tun_dev_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22security_tun_dev_attach\22\09\09\09\09\09"
module asm "__kstrtabns_security_tun_dev_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_tun_dev_open\22, \22a\22\09"
module asm "\09.weak\09__crc_security_tun_dev_open\09\09\09\09"
module asm "\09.long\09__crc_security_tun_dev_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_tun_dev_open:\09\09\09\09\09"
module asm "\09.asciz \09\22security_tun_dev_open\22\09\09\09\09\09"
module asm "__kstrtabns_security_tun_dev_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_sctp_assoc_request\22, \22a\22\09"
module asm "\09.weak\09__crc_security_sctp_assoc_request\09\09\09\09"
module asm "\09.long\09__crc_security_sctp_assoc_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_sctp_assoc_request:\09\09\09\09\09"
module asm "\09.asciz \09\22security_sctp_assoc_request\22\09\09\09\09\09"
module asm "__kstrtabns_security_sctp_assoc_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_sctp_bind_connect\22, \22a\22\09"
module asm "\09.weak\09__crc_security_sctp_bind_connect\09\09\09\09"
module asm "\09.long\09__crc_security_sctp_bind_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_sctp_bind_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22security_sctp_bind_connect\22\09\09\09\09\09"
module asm "__kstrtabns_security_sctp_bind_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_sctp_sk_clone\22, \22a\22\09"
module asm "\09.weak\09__crc_security_sctp_sk_clone\09\09\09\09"
module asm "\09.long\09__crc_security_sctp_sk_clone\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_sctp_sk_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22security_sctp_sk_clone\22\09\09\09\09\09"
module asm "__kstrtabns_security_sctp_sk_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_ib_pkey_access\22, \22a\22\09"
module asm "\09.weak\09__crc_security_ib_pkey_access\09\09\09\09"
module asm "\09.long\09__crc_security_ib_pkey_access\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_ib_pkey_access:\09\09\09\09\09"
module asm "\09.asciz \09\22security_ib_pkey_access\22\09\09\09\09\09"
module asm "__kstrtabns_security_ib_pkey_access:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_ib_endport_manage_subnet\22, \22a\22\09"
module asm "\09.weak\09__crc_security_ib_endport_manage_subnet\09\09\09\09"
module asm "\09.long\09__crc_security_ib_endport_manage_subnet\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_ib_endport_manage_subnet:\09\09\09\09\09"
module asm "\09.asciz \09\22security_ib_endport_manage_subnet\22\09\09\09\09\09"
module asm "__kstrtabns_security_ib_endport_manage_subnet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_ib_alloc_security\22, \22a\22\09"
module asm "\09.weak\09__crc_security_ib_alloc_security\09\09\09\09"
module asm "\09.long\09__crc_security_ib_alloc_security\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_ib_alloc_security:\09\09\09\09\09"
module asm "\09.asciz \09\22security_ib_alloc_security\22\09\09\09\09\09"
module asm "__kstrtabns_security_ib_alloc_security:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_ib_free_security\22, \22a\22\09"
module asm "\09.weak\09__crc_security_ib_free_security\09\09\09\09"
module asm "\09.long\09__crc_security_ib_free_security\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_ib_free_security:\09\09\09\09\09"
module asm "\09.asciz \09\22security_ib_free_security\22\09\09\09\09\09"
module asm "__kstrtabns_security_ib_free_security:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_xfrm_policy_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_security_xfrm_policy_alloc\09\09\09\09"
module asm "\09.long\09__crc_security_xfrm_policy_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_xfrm_policy_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22security_xfrm_policy_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_security_xfrm_policy_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_xfrm_policy_free\22, \22a\22\09"
module asm "\09.weak\09__crc_security_xfrm_policy_free\09\09\09\09"
module asm "\09.long\09__crc_security_xfrm_policy_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_xfrm_policy_free:\09\09\09\09\09"
module asm "\09.asciz \09\22security_xfrm_policy_free\22\09\09\09\09\09"
module asm "__kstrtabns_security_xfrm_policy_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_xfrm_state_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_security_xfrm_state_alloc\09\09\09\09"
module asm "\09.long\09__crc_security_xfrm_state_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_xfrm_state_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22security_xfrm_state_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_security_xfrm_state_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_xfrm_state_delete\22, \22a\22\09"
module asm "\09.weak\09__crc_security_xfrm_state_delete\09\09\09\09"
module asm "\09.long\09__crc_security_xfrm_state_delete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_xfrm_state_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22security_xfrm_state_delete\22\09\09\09\09\09"
module asm "__kstrtabns_security_xfrm_state_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_skb_classify_flow\22, \22a\22\09"
module asm "\09.weak\09__crc_security_skb_classify_flow\09\09\09\09"
module asm "\09.long\09__crc_security_skb_classify_flow\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_skb_classify_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22security_skb_classify_flow\22\09\09\09\09\09"
module asm "__kstrtabns_security_skb_classify_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+security_locked_down\22, \22a\22\09"
module asm "\09.weak\09__crc_security_locked_down\09\09\09\09"
module asm "\09.long\09__crc_security_locked_down\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_security_locked_down:\09\09\09\09\09"
module asm "\09.asciz \09\22security_locked_down\22\09\09\09\09\09"
module asm "__kstrtabns_security_locked_down:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.security_hook_heads = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.lsm_info = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.security_hook_list = type { %struct.hlist_node, ptr, %union.security_list_options, ptr }
%union.security_list_options = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.77 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xattr = type { ptr, ptr, i32 }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { %struct.spinlock, i32 }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.14 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.14 = type { %struct.callback_head }
%struct.msg_msg = type { %struct.list_head, i32, i32, ptr, ptr }
%struct.kern_ipc_perm = type { %struct.spinlock, i8, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i32, ptr, %struct.rhash_head, %struct.callback_head, %struct.refcount_struct, [28 x i8] }
%struct.rhash_head = type { ptr }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsigned module loading\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"/dev/mem,kmem,port\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"/dev/efi_test access\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kexec of unsigned images\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hibernation\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"direct PCI access\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"raw io port access\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"raw MSR access\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"modifying ACPI tables\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"direct PCMCIA CIS storage\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reconfiguration of serial port IO\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsafe module parameters\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unsafe mmio\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"debugfs access\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xmon write access\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"use of bpf to write user RAM\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"integrity\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"/proc/kcore access\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"use of kprobes\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"use of bpf to read kernel RAM\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unsafe use of perf\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"use of tracefs\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xmon read and write access\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xfrm SA secret\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"confidentiality\00", [16 x i8] zeroinitializer }, align 32
@lockdown_reasons = dso_local constant { [26 x ptr], [56 x i8] } { [26 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], [56 x i8] zeroinitializer }, align 32
@security_hook_heads = dso_local global { %struct.security_hook_heads, [228 x i8] } zeroinitializer, align 32
@__start_early_lsm_info = external dso_local global [0 x %struct.lsm_info], align 4
@__end_early_lsm_info = external dso_local global [0 x %struct.lsm_info], align 4
@lsm_enabled_true = internal global i32 1, section ".init.data", align 4
@security_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.28, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016LSM: Security Framework initializing\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"security_init\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"security/security.c\00", [44 x i8] zeroinitializer }, align 32
@security_init._entry_ptr = internal global ptr @security_init._entry, section ".printk_index", align 4
@lsm_names = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__setup_str_choose_major_lsm = internal constant [10 x i8] c"security=\00", section ".init.rodata", align 1
@__setup_choose_major_lsm = internal global %struct.obs_kernel_param { ptr @__setup_str_choose_major_lsm, ptr @choose_major_lsm, i32 0 }, section ".init.setup", align 4
@__setup_str_choose_lsm_order = internal constant [5 x i8] c"lsm=\00", section ".init.rodata", align 1
@__setup_choose_lsm_order = internal global %struct.obs_kernel_param { ptr @__setup_str_choose_lsm_order, ptr @choose_lsm_order, i32 0 }, section ".init.setup", align 4
@__setup_str_enable_debug = internal constant [10 x i8] c"lsm.debug\00", section ".init.rodata", align 1
@__setup_enable_debug = internal global %struct.obs_kernel_param { ptr @__setup_str_enable_debug, ptr @enable_debug, i32 0 }, section ".init.setup", align 4
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - Cannot get early memory.\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.security_add_hooks = private unnamed_addr constant [19 x i8] c"security_add_hooks\00", align 1
@blocking_lsm_notifier_chain = internal global { %struct.blocking_notifier_head, [60 x i8] } { %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.84, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @blocking_lsm_notifier_chain, i64 56), ptr getelementptr (i8, ptr @blocking_lsm_notifier_chain, i64 56) }, ptr @blocking_lsm_notifier_chain, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.85, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_call_blocking_lsm_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_blocking_lsm_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_call_blocking_lsm_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_blocking_lsm_notifier to i32), ptr @__kstrtab_call_blocking_lsm_notifier, ptr @__kstrtabns_call_blocking_lsm_notifier }, section "___ksymtab+call_blocking_lsm_notifier", align 4
@__kstrtab_register_blocking_lsm_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_blocking_lsm_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_blocking_lsm_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_blocking_lsm_notifier to i32), ptr @__kstrtab_register_blocking_lsm_notifier, ptr @__kstrtabns_register_blocking_lsm_notifier }, section "___ksymtab+register_blocking_lsm_notifier", align 4
@__kstrtab_unregister_blocking_lsm_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_blocking_lsm_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_blocking_lsm_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_blocking_lsm_notifier to i32), ptr @__kstrtab_unregister_blocking_lsm_notifier, ptr @__kstrtabns_unregister_blocking_lsm_notifier }, section "___ksymtab+unregister_blocking_lsm_notifier", align 4
@lsm_inode_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_security_free_mnt_opts = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_free_mnt_opts = external dso_local constant [0 x i8], align 1
@__ksymtab_security_free_mnt_opts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_free_mnt_opts to i32), ptr @__kstrtab_security_free_mnt_opts, ptr @__kstrtabns_security_free_mnt_opts }, section "___ksymtab+security_free_mnt_opts", align 4
@__kstrtab_security_sb_eat_lsm_opts = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_sb_eat_lsm_opts = external dso_local constant [0 x i8], align 1
@__ksymtab_security_sb_eat_lsm_opts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_sb_eat_lsm_opts to i32), ptr @__kstrtab_security_sb_eat_lsm_opts, ptr @__kstrtabns_security_sb_eat_lsm_opts }, section "___ksymtab+security_sb_eat_lsm_opts", align 4
@__kstrtab_security_sb_mnt_opts_compat = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_sb_mnt_opts_compat = external dso_local constant [0 x i8], align 1
@__ksymtab_security_sb_mnt_opts_compat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_sb_mnt_opts_compat to i32), ptr @__kstrtab_security_sb_mnt_opts_compat, ptr @__kstrtabns_security_sb_mnt_opts_compat }, section "___ksymtab+security_sb_mnt_opts_compat", align 4
@__kstrtab_security_sb_remount = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_sb_remount = external dso_local constant [0 x i8], align 1
@__ksymtab_security_sb_remount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_sb_remount to i32), ptr @__kstrtab_security_sb_remount, ptr @__kstrtabns_security_sb_remount }, section "___ksymtab+security_sb_remount", align 4
@__kstrtab_security_sb_set_mnt_opts = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_sb_set_mnt_opts = external dso_local constant [0 x i8], align 1
@__ksymtab_security_sb_set_mnt_opts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_sb_set_mnt_opts to i32), ptr @__kstrtab_security_sb_set_mnt_opts, ptr @__kstrtabns_security_sb_set_mnt_opts }, section "___ksymtab+security_sb_set_mnt_opts", align 4
@__kstrtab_security_sb_clone_mnt_opts = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_sb_clone_mnt_opts = external dso_local constant [0 x i8], align 1
@__ksymtab_security_sb_clone_mnt_opts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_sb_clone_mnt_opts to i32), ptr @__kstrtab_security_sb_clone_mnt_opts, ptr @__kstrtabns_security_sb_clone_mnt_opts }, section "___ksymtab+security_sb_clone_mnt_opts", align 4
@__kstrtab_security_dentry_init_security = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_dentry_init_security = external dso_local constant [0 x i8], align 1
@__ksymtab_security_dentry_init_security = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_dentry_init_security to i32), ptr @__kstrtab_security_dentry_init_security, ptr @__kstrtabns_security_dentry_init_security }, section "___ksymtab+security_dentry_init_security", align 4
@__kstrtab_security_dentry_create_files_as = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_dentry_create_files_as = external dso_local constant [0 x i8], align 1
@__ksymtab_security_dentry_create_files_as = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_dentry_create_files_as to i32), ptr @__kstrtab_security_dentry_create_files_as, ptr @__kstrtabns_security_dentry_create_files_as }, section "___ksymtab+security_dentry_create_files_as", align 4
@__kstrtab_security_inode_init_security = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_inode_init_security = external dso_local constant [0 x i8], align 1
@__ksymtab_security_inode_init_security = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_inode_init_security to i32), ptr @__kstrtab_security_inode_init_security, ptr @__kstrtabns_security_inode_init_security }, section "___ksymtab+security_inode_init_security", align 4
@__kstrtab_security_old_inode_init_security = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_old_inode_init_security = external dso_local constant [0 x i8], align 1
@__ksymtab_security_old_inode_init_security = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_old_inode_init_security to i32), ptr @__kstrtab_security_old_inode_init_security, ptr @__kstrtabns_security_old_inode_init_security }, section "___ksymtab+security_old_inode_init_security", align 4
@__kstrtab_security_path_mknod = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_path_mknod = external dso_local constant [0 x i8], align 1
@__ksymtab_security_path_mknod = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_path_mknod to i32), ptr @__kstrtab_security_path_mknod, ptr @__kstrtabns_security_path_mknod }, section "___ksymtab+security_path_mknod", align 4
@__kstrtab_security_path_mkdir = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_path_mkdir = external dso_local constant [0 x i8], align 1
@__ksymtab_security_path_mkdir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_path_mkdir to i32), ptr @__kstrtab_security_path_mkdir, ptr @__kstrtabns_security_path_mkdir }, section "___ksymtab+security_path_mkdir", align 4
@__kstrtab_security_path_unlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_path_unlink = external dso_local constant [0 x i8], align 1
@__ksymtab_security_path_unlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_path_unlink to i32), ptr @__kstrtab_security_path_unlink, ptr @__kstrtabns_security_path_unlink }, section "___ksymtab+security_path_unlink", align 4
@__kstrtab_security_path_rename = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_path_rename = external dso_local constant [0 x i8], align 1
@__ksymtab_security_path_rename = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_path_rename to i32), ptr @__kstrtab_security_path_rename, ptr @__kstrtabns_security_path_rename }, section "___ksymtab+security_path_rename", align 4
@__kstrtab_security_inode_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_inode_create = external dso_local constant [0 x i8], align 1
@__ksymtab_security_inode_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_inode_create to i32), ptr @__kstrtab_security_inode_create, ptr @__kstrtabns_security_inode_create }, section "___ksymtab_gpl+security_inode_create", align 4
@__kstrtab_security_inode_mkdir = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_inode_mkdir = external dso_local constant [0 x i8], align 1
@__ksymtab_security_inode_mkdir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_inode_mkdir to i32), ptr @__kstrtab_security_inode_mkdir, ptr @__kstrtabns_security_inode_mkdir }, section "___ksymtab_gpl+security_inode_mkdir", align 4
@__kstrtab_security_inode_setattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_inode_setattr = external dso_local constant [0 x i8], align 1
@__ksymtab_security_inode_setattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_inode_setattr to i32), ptr @__kstrtab_security_inode_setattr, ptr @__kstrtabns_security_inode_setattr }, section "___ksymtab_gpl+security_inode_setattr", align 4
@__kstrtab_security_inode_listsecurity = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_inode_listsecurity = external dso_local constant [0 x i8], align 1
@__ksymtab_security_inode_listsecurity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_inode_listsecurity to i32), ptr @__kstrtab_security_inode_listsecurity, ptr @__kstrtabns_security_inode_listsecurity }, section "___ksymtab+security_inode_listsecurity", align 4
@__kstrtab_security_inode_copy_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_inode_copy_up = external dso_local constant [0 x i8], align 1
@__ksymtab_security_inode_copy_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_inode_copy_up to i32), ptr @__kstrtab_security_inode_copy_up, ptr @__kstrtabns_security_inode_copy_up }, section "___ksymtab+security_inode_copy_up", align 4
@__kstrtab_security_inode_copy_up_xattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_inode_copy_up_xattr = external dso_local constant [0 x i8], align 1
@__ksymtab_security_inode_copy_up_xattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_inode_copy_up_xattr to i32), ptr @__kstrtab_security_inode_copy_up_xattr, ptr @__kstrtabns_security_inode_copy_up_xattr }, section "___ksymtab+security_inode_copy_up_xattr", align 4
@lsm_file_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_security_file_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_file_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_security_file_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_file_ioctl to i32), ptr @__kstrtab_security_file_ioctl, ptr @__kstrtabns_security_file_ioctl }, section "___ksymtab_gpl+security_file_ioctl", align 4
@__kstrtab_security_cred_getsecid = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_cred_getsecid = external dso_local constant [0 x i8], align 1
@__ksymtab_security_cred_getsecid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_cred_getsecid to i32), ptr @__kstrtab_security_cred_getsecid, ptr @__kstrtabns_security_cred_getsecid }, section "___ksymtab+security_cred_getsecid", align 4
@__kstrtab_security_kernel_read_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_kernel_read_file = external dso_local constant [0 x i8], align 1
@__ksymtab_security_kernel_read_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_kernel_read_file to i32), ptr @__kstrtab_security_kernel_read_file, ptr @__kstrtabns_security_kernel_read_file }, section "___ksymtab_gpl+security_kernel_read_file", align 4
@__kstrtab_security_kernel_post_read_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_kernel_post_read_file = external dso_local constant [0 x i8], align 1
@__ksymtab_security_kernel_post_read_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_kernel_post_read_file to i32), ptr @__kstrtab_security_kernel_post_read_file, ptr @__kstrtabns_security_kernel_post_read_file }, section "___ksymtab_gpl+security_kernel_post_read_file", align 4
@__kstrtab_security_kernel_load_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_kernel_load_data = external dso_local constant [0 x i8], align 1
@__ksymtab_security_kernel_load_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_kernel_load_data to i32), ptr @__kstrtab_security_kernel_load_data, ptr @__kstrtabns_security_kernel_load_data }, section "___ksymtab_gpl+security_kernel_load_data", align 4
@__kstrtab_security_kernel_post_load_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_kernel_post_load_data = external dso_local constant [0 x i8], align 1
@__ksymtab_security_kernel_post_load_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_kernel_post_load_data to i32), ptr @__kstrtab_security_kernel_post_load_data, ptr @__kstrtabns_security_kernel_post_load_data }, section "___ksymtab_gpl+security_kernel_post_load_data", align 4
@__kstrtab_security_current_getsecid_subj = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_current_getsecid_subj = external dso_local constant [0 x i8], align 1
@__ksymtab_security_current_getsecid_subj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_current_getsecid_subj to i32), ptr @__kstrtab_security_current_getsecid_subj, ptr @__kstrtabns_security_current_getsecid_subj }, section "___ksymtab+security_current_getsecid_subj", align 4
@__kstrtab_security_task_getsecid_obj = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_task_getsecid_obj = external dso_local constant [0 x i8], align 1
@__ksymtab_security_task_getsecid_obj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_task_getsecid_obj to i32), ptr @__kstrtab_security_task_getsecid_obj, ptr @__kstrtabns_security_task_getsecid_obj }, section "___ksymtab+security_task_getsecid_obj", align 4
@__kstrtab_security_d_instantiate = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_d_instantiate = external dso_local constant [0 x i8], align 1
@__ksymtab_security_d_instantiate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_d_instantiate to i32), ptr @__kstrtab_security_d_instantiate, ptr @__kstrtabns_security_d_instantiate }, section "___ksymtab+security_d_instantiate", align 4
@__kstrtab_security_ismaclabel = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_ismaclabel = external dso_local constant [0 x i8], align 1
@__ksymtab_security_ismaclabel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_ismaclabel to i32), ptr @__kstrtab_security_ismaclabel, ptr @__kstrtabns_security_ismaclabel }, section "___ksymtab+security_ismaclabel", align 4
@__kstrtab_security_secid_to_secctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_secid_to_secctx = external dso_local constant [0 x i8], align 1
@__ksymtab_security_secid_to_secctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_secid_to_secctx to i32), ptr @__kstrtab_security_secid_to_secctx, ptr @__kstrtabns_security_secid_to_secctx }, section "___ksymtab+security_secid_to_secctx", align 4
@__kstrtab_security_secctx_to_secid = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_secctx_to_secid = external dso_local constant [0 x i8], align 1
@__ksymtab_security_secctx_to_secid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_secctx_to_secid to i32), ptr @__kstrtab_security_secctx_to_secid, ptr @__kstrtabns_security_secctx_to_secid }, section "___ksymtab+security_secctx_to_secid", align 4
@__kstrtab_security_release_secctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_release_secctx = external dso_local constant [0 x i8], align 1
@__ksymtab_security_release_secctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_release_secctx to i32), ptr @__kstrtab_security_release_secctx, ptr @__kstrtabns_security_release_secctx }, section "___ksymtab+security_release_secctx", align 4
@__kstrtab_security_inode_invalidate_secctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_inode_invalidate_secctx = external dso_local constant [0 x i8], align 1
@__ksymtab_security_inode_invalidate_secctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_inode_invalidate_secctx to i32), ptr @__kstrtab_security_inode_invalidate_secctx, ptr @__kstrtabns_security_inode_invalidate_secctx }, section "___ksymtab+security_inode_invalidate_secctx", align 4
@__kstrtab_security_inode_notifysecctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_inode_notifysecctx = external dso_local constant [0 x i8], align 1
@__ksymtab_security_inode_notifysecctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_inode_notifysecctx to i32), ptr @__kstrtab_security_inode_notifysecctx, ptr @__kstrtabns_security_inode_notifysecctx }, section "___ksymtab+security_inode_notifysecctx", align 4
@__kstrtab_security_inode_setsecctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_inode_setsecctx = external dso_local constant [0 x i8], align 1
@__ksymtab_security_inode_setsecctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_inode_setsecctx to i32), ptr @__kstrtab_security_inode_setsecctx, ptr @__kstrtabns_security_inode_setsecctx }, section "___ksymtab+security_inode_setsecctx", align 4
@__kstrtab_security_inode_getsecctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_inode_getsecctx = external dso_local constant [0 x i8], align 1
@__ksymtab_security_inode_getsecctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_inode_getsecctx to i32), ptr @__kstrtab_security_inode_getsecctx, ptr @__kstrtabns_security_inode_getsecctx }, section "___ksymtab+security_inode_getsecctx", align 4
@__kstrtab_security_unix_stream_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_unix_stream_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_security_unix_stream_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_unix_stream_connect to i32), ptr @__kstrtab_security_unix_stream_connect, ptr @__kstrtabns_security_unix_stream_connect }, section "___ksymtab+security_unix_stream_connect", align 4
@__kstrtab_security_unix_may_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_unix_may_send = external dso_local constant [0 x i8], align 1
@__ksymtab_security_unix_may_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_unix_may_send to i32), ptr @__kstrtab_security_unix_may_send, ptr @__kstrtabns_security_unix_may_send }, section "___ksymtab+security_unix_may_send", align 4
@__kstrtab_security_socket_socketpair = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_socket_socketpair = external dso_local constant [0 x i8], align 1
@__ksymtab_security_socket_socketpair = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_socket_socketpair to i32), ptr @__kstrtab_security_socket_socketpair, ptr @__kstrtabns_security_socket_socketpair }, section "___ksymtab+security_socket_socketpair", align 4
@__kstrtab_security_sock_rcv_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_sock_rcv_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_security_sock_rcv_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_sock_rcv_skb to i32), ptr @__kstrtab_security_sock_rcv_skb, ptr @__kstrtabns_security_sock_rcv_skb }, section "___ksymtab+security_sock_rcv_skb", align 4
@__kstrtab_security_socket_getpeersec_dgram = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_socket_getpeersec_dgram = external dso_local constant [0 x i8], align 1
@__ksymtab_security_socket_getpeersec_dgram = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_socket_getpeersec_dgram to i32), ptr @__kstrtab_security_socket_getpeersec_dgram, ptr @__kstrtabns_security_socket_getpeersec_dgram }, section "___ksymtab+security_socket_getpeersec_dgram", align 4
@__kstrtab_security_sk_clone = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_sk_clone = external dso_local constant [0 x i8], align 1
@__ksymtab_security_sk_clone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_sk_clone to i32), ptr @__kstrtab_security_sk_clone, ptr @__kstrtabns_security_sk_clone }, section "___ksymtab+security_sk_clone", align 4
@__kstrtab_security_sk_classify_flow = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_sk_classify_flow = external dso_local constant [0 x i8], align 1
@__ksymtab_security_sk_classify_flow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_sk_classify_flow to i32), ptr @__kstrtab_security_sk_classify_flow, ptr @__kstrtabns_security_sk_classify_flow }, section "___ksymtab+security_sk_classify_flow", align 4
@__kstrtab_security_req_classify_flow = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_req_classify_flow = external dso_local constant [0 x i8], align 1
@__ksymtab_security_req_classify_flow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_req_classify_flow to i32), ptr @__kstrtab_security_req_classify_flow, ptr @__kstrtabns_security_req_classify_flow }, section "___ksymtab+security_req_classify_flow", align 4
@__kstrtab_security_sock_graft = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_sock_graft = external dso_local constant [0 x i8], align 1
@__ksymtab_security_sock_graft = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_sock_graft to i32), ptr @__kstrtab_security_sock_graft, ptr @__kstrtabns_security_sock_graft }, section "___ksymtab+security_sock_graft", align 4
@__kstrtab_security_inet_conn_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_inet_conn_request = external dso_local constant [0 x i8], align 1
@__ksymtab_security_inet_conn_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_inet_conn_request to i32), ptr @__kstrtab_security_inet_conn_request, ptr @__kstrtabns_security_inet_conn_request }, section "___ksymtab+security_inet_conn_request", align 4
@__kstrtab_security_inet_conn_established = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_inet_conn_established = external dso_local constant [0 x i8], align 1
@__ksymtab_security_inet_conn_established = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_inet_conn_established to i32), ptr @__kstrtab_security_inet_conn_established, ptr @__kstrtabns_security_inet_conn_established }, section "___ksymtab+security_inet_conn_established", align 4
@__kstrtab_security_secmark_relabel_packet = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_secmark_relabel_packet = external dso_local constant [0 x i8], align 1
@__ksymtab_security_secmark_relabel_packet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_secmark_relabel_packet to i32), ptr @__kstrtab_security_secmark_relabel_packet, ptr @__kstrtabns_security_secmark_relabel_packet }, section "___ksymtab+security_secmark_relabel_packet", align 4
@__kstrtab_security_secmark_refcount_inc = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_secmark_refcount_inc = external dso_local constant [0 x i8], align 1
@__ksymtab_security_secmark_refcount_inc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_secmark_refcount_inc to i32), ptr @__kstrtab_security_secmark_refcount_inc, ptr @__kstrtabns_security_secmark_refcount_inc }, section "___ksymtab+security_secmark_refcount_inc", align 4
@__kstrtab_security_secmark_refcount_dec = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_secmark_refcount_dec = external dso_local constant [0 x i8], align 1
@__ksymtab_security_secmark_refcount_dec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_secmark_refcount_dec to i32), ptr @__kstrtab_security_secmark_refcount_dec, ptr @__kstrtabns_security_secmark_refcount_dec }, section "___ksymtab+security_secmark_refcount_dec", align 4
@__kstrtab_security_tun_dev_alloc_security = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_tun_dev_alloc_security = external dso_local constant [0 x i8], align 1
@__ksymtab_security_tun_dev_alloc_security = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_tun_dev_alloc_security to i32), ptr @__kstrtab_security_tun_dev_alloc_security, ptr @__kstrtabns_security_tun_dev_alloc_security }, section "___ksymtab+security_tun_dev_alloc_security", align 4
@__kstrtab_security_tun_dev_free_security = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_tun_dev_free_security = external dso_local constant [0 x i8], align 1
@__ksymtab_security_tun_dev_free_security = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_tun_dev_free_security to i32), ptr @__kstrtab_security_tun_dev_free_security, ptr @__kstrtabns_security_tun_dev_free_security }, section "___ksymtab+security_tun_dev_free_security", align 4
@__kstrtab_security_tun_dev_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_tun_dev_create = external dso_local constant [0 x i8], align 1
@__ksymtab_security_tun_dev_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_tun_dev_create to i32), ptr @__kstrtab_security_tun_dev_create, ptr @__kstrtabns_security_tun_dev_create }, section "___ksymtab+security_tun_dev_create", align 4
@__kstrtab_security_tun_dev_attach_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_tun_dev_attach_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_security_tun_dev_attach_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_tun_dev_attach_queue to i32), ptr @__kstrtab_security_tun_dev_attach_queue, ptr @__kstrtabns_security_tun_dev_attach_queue }, section "___ksymtab+security_tun_dev_attach_queue", align 4
@__kstrtab_security_tun_dev_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_tun_dev_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_security_tun_dev_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_tun_dev_attach to i32), ptr @__kstrtab_security_tun_dev_attach, ptr @__kstrtabns_security_tun_dev_attach }, section "___ksymtab+security_tun_dev_attach", align 4
@__kstrtab_security_tun_dev_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_tun_dev_open = external dso_local constant [0 x i8], align 1
@__ksymtab_security_tun_dev_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_tun_dev_open to i32), ptr @__kstrtab_security_tun_dev_open, ptr @__kstrtabns_security_tun_dev_open }, section "___ksymtab+security_tun_dev_open", align 4
@__kstrtab_security_sctp_assoc_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_sctp_assoc_request = external dso_local constant [0 x i8], align 1
@__ksymtab_security_sctp_assoc_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_sctp_assoc_request to i32), ptr @__kstrtab_security_sctp_assoc_request, ptr @__kstrtabns_security_sctp_assoc_request }, section "___ksymtab+security_sctp_assoc_request", align 4
@__kstrtab_security_sctp_bind_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_sctp_bind_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_security_sctp_bind_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_sctp_bind_connect to i32), ptr @__kstrtab_security_sctp_bind_connect, ptr @__kstrtabns_security_sctp_bind_connect }, section "___ksymtab+security_sctp_bind_connect", align 4
@__kstrtab_security_sctp_sk_clone = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_sctp_sk_clone = external dso_local constant [0 x i8], align 1
@__ksymtab_security_sctp_sk_clone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_sctp_sk_clone to i32), ptr @__kstrtab_security_sctp_sk_clone, ptr @__kstrtabns_security_sctp_sk_clone }, section "___ksymtab+security_sctp_sk_clone", align 4
@__kstrtab_security_ib_pkey_access = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_ib_pkey_access = external dso_local constant [0 x i8], align 1
@__ksymtab_security_ib_pkey_access = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_ib_pkey_access to i32), ptr @__kstrtab_security_ib_pkey_access, ptr @__kstrtabns_security_ib_pkey_access }, section "___ksymtab+security_ib_pkey_access", align 4
@__kstrtab_security_ib_endport_manage_subnet = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_ib_endport_manage_subnet = external dso_local constant [0 x i8], align 1
@__ksymtab_security_ib_endport_manage_subnet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_ib_endport_manage_subnet to i32), ptr @__kstrtab_security_ib_endport_manage_subnet, ptr @__kstrtabns_security_ib_endport_manage_subnet }, section "___ksymtab+security_ib_endport_manage_subnet", align 4
@__kstrtab_security_ib_alloc_security = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_ib_alloc_security = external dso_local constant [0 x i8], align 1
@__ksymtab_security_ib_alloc_security = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_ib_alloc_security to i32), ptr @__kstrtab_security_ib_alloc_security, ptr @__kstrtabns_security_ib_alloc_security }, section "___ksymtab+security_ib_alloc_security", align 4
@__kstrtab_security_ib_free_security = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_ib_free_security = external dso_local constant [0 x i8], align 1
@__ksymtab_security_ib_free_security = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_ib_free_security to i32), ptr @__kstrtab_security_ib_free_security, ptr @__kstrtabns_security_ib_free_security }, section "___ksymtab+security_ib_free_security", align 4
@__kstrtab_security_xfrm_policy_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_xfrm_policy_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_security_xfrm_policy_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_xfrm_policy_alloc to i32), ptr @__kstrtab_security_xfrm_policy_alloc, ptr @__kstrtabns_security_xfrm_policy_alloc }, section "___ksymtab+security_xfrm_policy_alloc", align 4
@__kstrtab_security_xfrm_policy_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_xfrm_policy_free = external dso_local constant [0 x i8], align 1
@__ksymtab_security_xfrm_policy_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_xfrm_policy_free to i32), ptr @__kstrtab_security_xfrm_policy_free, ptr @__kstrtabns_security_xfrm_policy_free }, section "___ksymtab+security_xfrm_policy_free", align 4
@__kstrtab_security_xfrm_state_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_xfrm_state_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_security_xfrm_state_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_xfrm_state_alloc to i32), ptr @__kstrtab_security_xfrm_state_alloc, ptr @__kstrtabns_security_xfrm_state_alloc }, section "___ksymtab+security_xfrm_state_alloc", align 4
@__kstrtab_security_xfrm_state_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_xfrm_state_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_security_xfrm_state_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_xfrm_state_delete to i32), ptr @__kstrtab_security_xfrm_state_delete, ptr @__kstrtabns_security_xfrm_state_delete }, section "___ksymtab+security_xfrm_state_delete", align 4
@__kstrtab_security_skb_classify_flow = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_skb_classify_flow = external dso_local constant [0 x i8], align 1
@__ksymtab_security_skb_classify_flow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_skb_classify_flow to i32), ptr @__kstrtab_security_skb_classify_flow, ptr @__kstrtabns_security_skb_classify_flow }, section "___ksymtab+security_skb_classify_flow", align 4
@__kstrtab_security_locked_down = external dso_local constant [0 x i8], align 1
@__kstrtabns_security_locked_down = external dso_local constant [0 x i8], align 1
@__ksymtab_security_locked_down = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @security_locked_down to i32), ptr @__kstrtab_security_locked_down, ptr @__kstrtabns_security_locked_down }, section "___ksymtab+security_locked_down", align 4
@exclusive = internal unnamed_addr global ptr null, section ".init.data", align 4
@debug = internal unnamed_addr global i1 false, section ".init.data", align 1
@prepare_lsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.28, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016LSM: exclusive chosen: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"prepare_lsm\00", [20 x i8] zeroinitializer }, align 32
@prepare_lsm._entry_ptr = internal global ptr @prepare_lsm._entry, section ".printk_index", align 4
@lsm_allowed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.28, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016LSM: exclusive disabled: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lsm_allowed\00", [20 x i8] zeroinitializer }, align 32
@lsm_allowed._entry_ptr = internal global ptr @lsm_allowed._entry, section ".printk_index", align 4
@lsm_enabled_false = internal global i32 0, section ".init.data", align 4
@blob_sizes.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@blob_sizes.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@blob_sizes.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@blob_sizes.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@blob_sizes.4 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@blob_sizes.5 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@blob_sizes.6 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@initialize_lsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.28, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016LSM: initializing %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"initialize_lsm\00", [17 x i8] zeroinitializer }, align 32
@initialize_lsm._entry_ptr = internal global ptr @initialize_lsm._entry, section ".printk_index", align 4
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s failed to initialize: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__end_lsm_info = external dso_local global [0 x %struct.lsm_info], align 4
@__start_lsm_info = external dso_local global [0 x %struct.lsm_info], align 4
@ordered_lsms = internal unnamed_addr global ptr null, section ".init.data", align 4
@chosen_lsm_order = internal unnamed_addr global ptr null, section ".init.data", align 4
@chosen_major_lsm = internal unnamed_addr global ptr null, section ".init.data", align 4
@ordered_lsm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.28, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016LSM: security= is ignored because it is superseded by lsm=\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ordered_lsm_init\00", [47 x i8] zeroinitializer }, align 32
@ordered_lsm_init._entry_ptr = internal global ptr @ordered_lsm_init._entry, section ".printk_index", align 4
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cmdline\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"landlock,lockdown,yama,loadpin,safesetid,integrity,selinux,smack,tomoyo,apparmor,bpf\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"builtin\00", [24 x i8] zeroinitializer }, align 32
@ordered_lsm_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.28, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016LSM: cred blob size       = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ordered_lsm_init._entry_ptr.44 = internal global ptr @ordered_lsm_init._entry.42, section ".printk_index", align 4
@ordered_lsm_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.28, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016LSM: file blob size       = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ordered_lsm_init._entry_ptr.47 = internal global ptr @ordered_lsm_init._entry.45, section ".printk_index", align 4
@ordered_lsm_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.28, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016LSM: inode blob size      = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ordered_lsm_init._entry_ptr.50 = internal global ptr @ordered_lsm_init._entry.48, section ".printk_index", align 4
@ordered_lsm_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.38, ptr @.str.28, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016LSM: ipc blob size        = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ordered_lsm_init._entry_ptr.53 = internal global ptr @ordered_lsm_init._entry.51, section ".printk_index", align 4
@ordered_lsm_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.38, ptr @.str.28, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016LSM: msg_msg blob size    = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ordered_lsm_init._entry_ptr.56 = internal global ptr @ordered_lsm_init._entry.54, section ".printk_index", align 4
@ordered_lsm_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.38, ptr @.str.28, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016LSM: superblock blob size = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ordered_lsm_init._entry_ptr.59 = internal global ptr @ordered_lsm_init._entry.57, section ".printk_index", align 4
@ordered_lsm_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.38, ptr @.str.28, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016LSM: task blob size       = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ordered_lsm_init._entry_ptr.62 = internal global ptr @ordered_lsm_init._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lsm_file_cache\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lsm_inode_cache\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"first\00", [26 x i8] zeroinitializer }, align 32
@ordered_lsm_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.28, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016LSM: security=%s disabled: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ordered_lsm_parse\00", [46 x i8] zeroinitializer }, align 32
@ordered_lsm_parse._entry_ptr = internal global ptr @ordered_lsm_parse._entry, section ".printk_index", align 4
@.str.68 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@ordered_lsm_parse._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.67, ptr @.str.28, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016LSM: %s ignored: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@ordered_lsm_parse._entry_ptr.71 = internal global ptr @ordered_lsm_parse._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security=\00", [22 x i8] zeroinitializer }, align 32
@ordered_lsm_parse._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.67, ptr @.str.28, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016LSM: %s disabled: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@ordered_lsm_parse._entry_ptr.75 = internal global ptr @ordered_lsm_parse._entry.73, section ".printk_index", align 4
@last_lsm = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: out of LSM slots!?\0A\00", [40 x i8] zeroinitializer }, align 32
@append_ordered_lsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.28, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016LSM: %s ordering: %s (%sabled)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"append_ordered_lsm\00", [45 x i8] zeroinitializer }, align 32
@append_ordered_lsm._entry_ptr = internal global ptr @append_ordered_lsm._entry, section ".printk_index", align 4
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Early cred alloc failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.lsm_early_cred = private unnamed_addr constant [15 x i8] c"lsm_early_cred\00", align 1
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Early task alloc failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.lsm_early_task = private unnamed_addr constant [15 x i8] c"lsm_early_task\00", align 1
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s,%s\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(blocking_lsm_notifier_chain).rwsem.wait_lock\00", [50 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(blocking_lsm_notifier_chain).rwsem\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 45, i32 20 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 46, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 47, i32 23 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 48, i32 24 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 49, i32 21 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 50, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 51, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 52, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 53, i32 19 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 54, i32 27 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 55, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 56, i32 27 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 57, i32 33 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 58, i32 25 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 59, i32 23 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 60, i32 23 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 61, i32 30 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 62, i32 29 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 63, i32 21 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 64, i32 23 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 65, i32 31 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 66, i32 20 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 67, i32 23 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 68, i32 23 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 69, i32 27 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 70, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"lockdown_reasons\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 44, i32 19 }
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c"security_hook_heads\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 73, i32 28 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 395, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [10 x i8] c"lsm_names\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 79, i32 7 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 496, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant [28 x i8] c"blocking_lsm_notifier_chain\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [16 x i8] c"lsm_inode_cache\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 77, i32 27 }
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"lsm_file_cache\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 76, i32 27 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 223, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 173, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [13 x i8] c"blob_sizes.0\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [13 x i8] c"blob_sizes.1\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [13 x i8] c"blob_sizes.2\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [13 x i8] c"blob_sizes.3\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [13 x i8] c"blob_sizes.4\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [13 x i8] c"blob_sizes.5\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [13 x i8] c"blob_sizes.6\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 236, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 238, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 328, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 331, i32 39 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 86, i32 59 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 333, i32 40 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 338, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 339, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 340, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 341, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 342, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 343, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 344, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 350, i32 38 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 354, i32 39 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 251, i32 28 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 269, i32 5 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 278, i32 31 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 290, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 299, i32 29 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 308, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 152, i32 6 }
@___asan_gen_.335 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 160, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 554, i32 9 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 673, i32 9 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 463, i32 30 }
@___asan_gen_.362 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.363 = private constant [23 x i8] c"../security/security.c\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 74, i32 8 }
@llvm.compiler.used = appending global [189 x ptr] [ptr @__ksymtab_call_blocking_lsm_notifier, ptr @__ksymtab_register_blocking_lsm_notifier, ptr @__ksymtab_security_cred_getsecid, ptr @__ksymtab_security_current_getsecid_subj, ptr @__ksymtab_security_d_instantiate, ptr @__ksymtab_security_dentry_create_files_as, ptr @__ksymtab_security_dentry_init_security, ptr @__ksymtab_security_file_ioctl, ptr @__ksymtab_security_free_mnt_opts, ptr @__ksymtab_security_ib_alloc_security, ptr @__ksymtab_security_ib_endport_manage_subnet, ptr @__ksymtab_security_ib_free_security, ptr @__ksymtab_security_ib_pkey_access, ptr @__ksymtab_security_inet_conn_established, ptr @__ksymtab_security_inet_conn_request, ptr @__ksymtab_security_inode_copy_up, ptr @__ksymtab_security_inode_copy_up_xattr, ptr @__ksymtab_security_inode_create, ptr @__ksymtab_security_inode_getsecctx, ptr @__ksymtab_security_inode_init_security, ptr @__ksymtab_security_inode_invalidate_secctx, ptr @__ksymtab_security_inode_listsecurity, ptr @__ksymtab_security_inode_mkdir, ptr @__ksymtab_security_inode_notifysecctx, ptr @__ksymtab_security_inode_setattr, ptr @__ksymtab_security_inode_setsecctx, ptr @__ksymtab_security_ismaclabel, ptr @__ksymtab_security_kernel_load_data, ptr @__ksymtab_security_kernel_post_load_data, ptr @__ksymtab_security_kernel_post_read_file, ptr @__ksymtab_security_kernel_read_file, ptr @__ksymtab_security_locked_down, ptr @__ksymtab_security_old_inode_init_security, ptr @__ksymtab_security_path_mkdir, ptr @__ksymtab_security_path_mknod, ptr @__ksymtab_security_path_rename, ptr @__ksymtab_security_path_unlink, ptr @__ksymtab_security_release_secctx, ptr @__ksymtab_security_req_classify_flow, ptr @__ksymtab_security_sb_clone_mnt_opts, ptr @__ksymtab_security_sb_eat_lsm_opts, ptr @__ksymtab_security_sb_mnt_opts_compat, ptr @__ksymtab_security_sb_remount, ptr @__ksymtab_security_sb_set_mnt_opts, ptr @__ksymtab_security_sctp_assoc_request, ptr @__ksymtab_security_sctp_bind_connect, ptr @__ksymtab_security_sctp_sk_clone, ptr @__ksymtab_security_secctx_to_secid, ptr @__ksymtab_security_secid_to_secctx, ptr @__ksymtab_security_secmark_refcount_dec, ptr @__ksymtab_security_secmark_refcount_inc, ptr @__ksymtab_security_secmark_relabel_packet, ptr @__ksymtab_security_sk_classify_flow, ptr @__ksymtab_security_sk_clone, ptr @__ksymtab_security_skb_classify_flow, ptr @__ksymtab_security_sock_graft, ptr @__ksymtab_security_sock_rcv_skb, ptr @__ksymtab_security_socket_getpeersec_dgram, ptr @__ksymtab_security_socket_socketpair, ptr @__ksymtab_security_task_getsecid_obj, ptr @__ksymtab_security_tun_dev_alloc_security, ptr @__ksymtab_security_tun_dev_attach, ptr @__ksymtab_security_tun_dev_attach_queue, ptr @__ksymtab_security_tun_dev_create, ptr @__ksymtab_security_tun_dev_free_security, ptr @__ksymtab_security_tun_dev_open, ptr @__ksymtab_security_unix_may_send, ptr @__ksymtab_security_unix_stream_connect, ptr @__ksymtab_security_xfrm_policy_alloc, ptr @__ksymtab_security_xfrm_policy_free, ptr @__ksymtab_security_xfrm_state_alloc, ptr @__ksymtab_security_xfrm_state_delete, ptr @__ksymtab_unregister_blocking_lsm_notifier, ptr @__setup_choose_lsm_order, ptr @__setup_choose_major_lsm, ptr @__setup_enable_debug, ptr @append_ordered_lsm._entry, ptr @append_ordered_lsm._entry_ptr, ptr @initialize_lsm._entry, ptr @initialize_lsm._entry_ptr, ptr @lsm_allowed._entry, ptr @lsm_allowed._entry_ptr, ptr @ordered_lsm_init._entry, ptr @ordered_lsm_init._entry.42, ptr @ordered_lsm_init._entry.45, ptr @ordered_lsm_init._entry.48, ptr @ordered_lsm_init._entry.51, ptr @ordered_lsm_init._entry.54, ptr @ordered_lsm_init._entry.57, ptr @ordered_lsm_init._entry.60, ptr @ordered_lsm_init._entry_ptr, ptr @ordered_lsm_init._entry_ptr.44, ptr @ordered_lsm_init._entry_ptr.47, ptr @ordered_lsm_init._entry_ptr.50, ptr @ordered_lsm_init._entry_ptr.53, ptr @ordered_lsm_init._entry_ptr.56, ptr @ordered_lsm_init._entry_ptr.59, ptr @ordered_lsm_init._entry_ptr.62, ptr @ordered_lsm_parse._entry, ptr @ordered_lsm_parse._entry.69, ptr @ordered_lsm_parse._entry.73, ptr @ordered_lsm_parse._entry_ptr, ptr @ordered_lsm_parse._entry_ptr.71, ptr @ordered_lsm_parse._entry_ptr.75, ptr @prepare_lsm._entry, ptr @prepare_lsm._entry_ptr, ptr @security_init._entry, ptr @security_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @lockdown_reasons, ptr @security_hook_heads, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @lsm_names, ptr @.str.29, ptr @blocking_lsm_notifier_chain, ptr @lsm_inode_cache, ptr @lsm_file_cache, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @blob_sizes.0, ptr @blob_sizes.1, ptr @blob_sizes.2, ptr @blob_sizes.3, ptr @blob_sizes.4, ptr @blob_sizes.5, ptr @blob_sizes.6, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockdown_reasons to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @security_hook_heads to i32), i32 956, i32 1184, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @security_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsm_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blocking_lsm_notifier_chain to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsm_inode_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsm_file_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_lsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsm_allowed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blob_sizes.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blob_sizes.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blob_sizes.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blob_sizes.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blob_sizes.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blob_sizes.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blob_sizes.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialize_lsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ordered_lsm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ordered_lsm_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ordered_lsm_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ordered_lsm_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ordered_lsm_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ordered_lsm_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ordered_lsm_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ordered_lsm_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ordered_lsm_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ordered_lsm_parse._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ordered_lsm_parse._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_ordered_lsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @early_security_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @security_hook_heads, i32 0, i32 956)
  br i1 icmp ult (ptr @__start_early_lsm_info, ptr @__end_early_lsm_info), label %entry.for.body3_crit_edge, label %entry.for.end6_crit_edge

entry.for.end6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end6

entry.for.body3_crit_edge:                        ; preds = %entry
  br label %for.body3

for.body3:                                        ; preds = %if.end.for.body3_crit_edge, %entry.for.body3_crit_edge
  %lsm.015 = phi ptr [ %incdec.ptr, %if.end.for.body3_crit_edge ], [ @__start_early_lsm_info, %entry.for.body3_crit_edge ]
  %enabled = getelementptr inbounds %struct.lsm_info, ptr %lsm.015, i32 0, i32 3
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %enabled, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %for.body3.if.end_crit_edge

for.body3.if.end_crit_edge:                       ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @lsm_enabled_true, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3.if.end_crit_edge
  tail call fastcc void @prepare_lsm(ptr noundef %lsm.015) #16
  tail call fastcc void @initialize_lsm(ptr noundef %lsm.015) #16
  %incdec.ptr = getelementptr %struct.lsm_info, ptr %lsm.015, i32 1
  %cmp2 = icmp ult ptr %incdec.ptr, @__end_early_lsm_info
  br i1 %cmp2, label %if.end.for.body3_crit_edge, label %if.end.for.end6_crit_edge

if.end.for.end6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end6

if.end.for.body3_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3

for.end6:                                         ; preds = %if.end.for.end6_crit_edge, %entry.for.end6_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prepare_lsm(ptr noundef %lsm) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @lsm_allowed(ptr noundef %lsm) #16
  %enabled1.i = getelementptr inbounds %struct.lsm_info, ptr %lsm, i32 0, i32 3
  %0 = ptrtoint ptr %enabled1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enabled1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else6.i

if.then.i:                                        ; preds = %entry
  br i1 %call, label %if.then.i.if.then.sink.split_crit_edge, label %if.else.i

if.then.i.if.then.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.sink.split

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %enabled1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @lsm_enabled_false, ptr %enabled1.i, align 4
  br label %if.end12

if.else6.i:                                       ; preds = %entry
  %cmp.i = icmp eq ptr %1, @lsm_enabled_true
  br i1 %cmp.i, label %if.then8.i, label %if.else13.i

if.then8.i:                                       ; preds = %if.else6.i
  br i1 %call, label %if.then8.i.if.then_crit_edge, label %if.then10.i

if.then8.i.if.then_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then10.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %enabled1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @lsm_enabled_false, ptr %enabled1.i, align 4
  br label %if.end12

if.else13.i:                                      ; preds = %if.else6.i
  %cmp15.i = icmp eq ptr %1, @lsm_enabled_false
  br i1 %cmp15.i, label %if.then16.i, label %set_enabled.exit

if.then16.i:                                      ; preds = %if.else13.i
  br i1 %call, label %if.then16.i.if.then.sink.split_crit_edge, label %if.then16.i.if.end12_crit_edge

if.then16.i.if.end12_crit_edge:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then16.i.if.then.sink.split_crit_edge:         ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.sink.split

set_enabled.exit:                                 ; preds = %if.else13.i
  %conv.i = zext i1 %call to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv.i, ptr %1, align 4
  br i1 %call, label %set_enabled.exit.if.then_crit_edge, label %set_enabled.exit.if.end12_crit_edge

set_enabled.exit.if.end12_crit_edge:              ; preds = %set_enabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

set_enabled.exit.if.then_crit_edge:               ; preds = %set_enabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then.sink.split:                               ; preds = %if.then16.i.if.then.sink.split_crit_edge, %if.then.i.if.then.sink.split_crit_edge
  %5 = ptrtoint ptr %enabled1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @lsm_enabled_true, ptr %enabled1.i, align 4
  br label %if.then

if.then:                                          ; preds = %if.then.sink.split, %set_enabled.exit.if.then_crit_edge, %if.then8.i.if.then_crit_edge
  %flags = getelementptr inbounds %struct.lsm_info, ptr %lsm, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.end11_crit_edge, label %land.lhs.true

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.lhs.true:                                    ; preds = %if.then
  %8 = load ptr, ptr @exclusive, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then4:                                         ; preds = %land.lhs.true
  store ptr %lsm, ptr @exclusive, align 4
  %.b19 = load i1, ptr @debug, align 1
  br i1 %.b19, label %do.end, label %if.then4.if.end11_crit_edge

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %lsm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lsm, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %10) #17
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.then4.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %blobs = getelementptr inbounds %struct.lsm_info, ptr %lsm, i32 0, i32 5
  %11 = ptrtoint ptr %blobs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %blobs, align 4
  tail call fastcc void @lsm_set_blob_sizes(ptr noundef %12) #16
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %set_enabled.exit.if.end12_crit_edge, %if.then16.i.if.end12_crit_edge, %if.then10.i, %if.else.i
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @initialize_lsm(ptr nocapture noundef readonly %lsm) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled.i = getelementptr inbounds %struct.lsm_info, ptr %lsm, i32 0, i32 3
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enabled.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end34_crit_edge, label %is_enabled.exit

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

is_enabled.exit:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.i.not = icmp eq i32 %3, 0
  br i1 %tobool2.i.not, label %is_enabled.exit.if.end34_crit_edge, label %if.then

is_enabled.exit.if.end34_crit_edge:               ; preds = %is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then:                                          ; preds = %is_enabled.exit
  %.b40 = load i1, ptr @debug, align 1
  br i1 %.b40, label %do.end, label %if.then.do.end5_crit_edge

if.then.do.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %lsm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lsm, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %5) #17
  br label %do.end5

do.end5:                                          ; preds = %do.end, %if.then.do.end5_crit_edge
  %init = getelementptr inbounds %struct.lsm_info, ptr %lsm, i32 0, i32 4
  %6 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init, align 4
  %call6 = tail call i32 %7() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end5.if.end34_crit_edge, label %do.end19, !prof !357

do.end5.if.end34_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

do.end19:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %lsm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lsm, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 238, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef %9, i32 noundef %call6) #13
  br label %if.end34

if.end34:                                         ; preds = %do.end19, %do.end5.if.end34_crit_edge, %is_enabled.exit.if.end34_crit_edge, %entry.if.end34_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #17
  br i1 icmp ult (ptr @__start_early_lsm_info, ptr @__end_early_lsm_info), label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %lsm.05 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @__start_early_lsm_info, %entry.for.body_crit_edge ]
  %enabled = getelementptr inbounds %struct.lsm_info, ptr %lsm.05, i32 0, i32 3
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enabled, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %lsm.05 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lsm.05, align 4
  %4 = tail call fastcc i32 @lsm_append(ptr noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.lsm_info, ptr %lsm.05, i32 1
  %cmp = icmp ult ptr %incdec.ptr, @__end_early_lsm_info
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @ordered_lsm_init() #16
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lsm_append(ptr noundef %new) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lsm_names, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call noalias ptr @kstrdup(ptr noundef %new, i32 noundef 3264) #13
  store ptr %call, ptr @lsm_names, align 4
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %entry
  %tobool1.not.i = icmp eq ptr %new, null
  br i1 %tobool1.not.i, label %match_last_lsm.exit.thread, label %match_last_lsm.exit, !prof !358

match_last_lsm.exit.thread:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 440, i32 noundef 9, ptr noundef null) #13
  br label %if.end5

match_last_lsm.exit:                              ; preds = %if.else
  %call.i = tail call ptr @strrchr(ptr noundef nonnull %0, i32 noundef 44) #13
  %tobool25.not.i = icmp eq ptr %call.i, null
  %incdec.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %last.0.i = select i1 %tobool25.not.i, ptr %0, ptr %incdec.ptr.i
  %call28.i = tail call i32 @strcmp(ptr noundef %last.0.i, ptr noundef nonnull %new) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %match_last_lsm.exit.cleanup_crit_edge, label %match_last_lsm.exit.if.end5_crit_edge

match_last_lsm.exit.if.end5_crit_edge:            ; preds = %match_last_lsm.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

match_last_lsm.exit.cleanup_crit_edge:            ; preds = %match_last_lsm.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %match_last_lsm.exit.if.end5_crit_edge, %match_last_lsm.exit.thread
  %1 = load ptr, ptr @lsm_names, align 4
  %call6 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.83, ptr noundef %1, ptr noundef %new) #13
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %2 = load ptr, ptr @lsm_names, align 4
  tail call void @kfree(ptr noundef %2) #13
  store ptr %call6, ptr @lsm_names, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then.if.end10_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %match_last_lsm.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -12, %if.then.cleanup_crit_edge ], [ 0, %match_last_lsm.exit.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ordered_lsm_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 add (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__end_lsm_info to i32), i32 ptrtoint (ptr @__start_lsm_info to i32)), i32 24), i32 1), i32 4) #13
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !358

entry.kcalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #19
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %entry.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %entry.kcalloc.exit_crit_edge ]
  store ptr %retval.0.i.i, ptr @ordered_lsms, align 4
  %3 = load ptr, ptr @chosen_lsm_order, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %kcalloc.exit
  %4 = load ptr, ptr @chosen_major_lsm, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #17
  store ptr null, ptr @chosen_major_lsm, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %5 = load ptr, ptr @chosen_lsm_order, align 4
  tail call fastcc void @ordered_lsm_parse(ptr noundef %5, ptr noundef nonnull @.str.39) #16
  br label %if.end4

if.else:                                          ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ordered_lsm_parse(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #16
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  %6 = load ptr, ptr @ordered_lsms, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool5.not135 = icmp eq ptr %8, null
  br i1 %tobool5.not135, label %if.end4.do.body6_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.do.body6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4.for.body_crit_edge
  %9 = phi ptr [ %11, %for.body.for.body_crit_edge ], [ %8, %if.end4.for.body_crit_edge ]
  %lsm.0136 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %6, %if.end4.for.body_crit_edge ]
  tail call fastcc void @prepare_lsm(ptr noundef nonnull %9) #16
  %incdec.ptr = getelementptr ptr, ptr %lsm.0136, i32 1
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %incdec.ptr, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %for.body.do.body6_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.do.body6_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

do.body6:                                         ; preds = %for.body.do.body6_crit_edge, %if.end4.do.body6_crit_edge
  %.b113114 = load i1, ptr @debug, align 1
  br i1 %.b113114, label %do.body17, label %do.body6.do.end82_crit_edge

do.body6.do.end82_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end82

do.body17:                                        ; preds = %do.body6
  %12 = load i32, ptr @blob_sizes.0, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %12) #17
  %.b112115.pr = load i1, ptr @debug, align 1
  br i1 %.b112115.pr, label %do.body28, label %do.body17.do.end82_crit_edge

do.body17.do.end82_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end82

do.body28:                                        ; preds = %do.body17
  %13 = load i32, ptr @blob_sizes.1, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %13) #17
  %.b111116.pr = load i1, ptr @debug, align 1
  br i1 %.b111116.pr, label %do.body39, label %do.body28.do.end82_crit_edge

do.body28.do.end82_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end82

do.body39:                                        ; preds = %do.body28
  %14 = load i32, ptr @blob_sizes.2, align 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %14) #17
  %.b110117.pr.pr = load i1, ptr @debug, align 1
  br i1 %.b110117.pr.pr, label %do.body50, label %do.body39.do.end82_crit_edge

do.body39.do.end82_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end82

do.body50:                                        ; preds = %do.body39
  %15 = load i32, ptr @blob_sizes.4, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %15) #17
  %.b109118.pr = load i1, ptr @debug, align 1
  br i1 %.b109118.pr, label %do.body61, label %do.body50.do.end82_crit_edge

do.body50.do.end82_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end82

do.body61:                                        ; preds = %do.body50
  %16 = load i32, ptr @blob_sizes.5, align 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %16) #17
  %.b108119.pr.pr.pr = load i1, ptr @debug, align 1
  br i1 %.b108119.pr.pr.pr, label %do.body72, label %do.body61.do.end82_crit_edge

do.body61.do.end82_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end82

do.body72:                                        ; preds = %do.body61
  %17 = load i32, ptr @blob_sizes.3, align 4
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %17) #17
  %.b120.pr = load i1, ptr @debug, align 1
  br i1 %.b120.pr, label %do.end77, label %do.body72.do.end82_crit_edge

do.body72.do.end82_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end82

do.end77:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #15
  %18 = load i32, ptr @blob_sizes.6, align 4
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %18) #17
  br label %do.end82

do.end82:                                         ; preds = %do.end77, %do.body72.do.end82_crit_edge, %do.body61.do.end82_crit_edge, %do.body50.do.end82_crit_edge, %do.body39.do.end82_crit_edge, %do.body28.do.end82_crit_edge, %do.body17.do.end82_crit_edge, %do.body6.do.end82_crit_edge
  %19 = load i32, ptr @blob_sizes.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool83.not = icmp eq i32 %19, 0
  br i1 %tobool83.not, label %do.end82.if.end86_crit_edge, label %if.then84

do.end82.if.end86_crit_edge:                      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then84:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #15
  %call85 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.63, i32 noundef %19, i32 noundef 0, i32 noundef 262144, ptr noundef null) #13
  store ptr %call85, ptr @lsm_file_cache, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %do.end82.if.end86_crit_edge
  %20 = load i32, ptr @blob_sizes.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool87.not = icmp eq i32 %20, 0
  br i1 %tobool87.not, label %if.end86.if.end90_crit_edge, label %if.then88

if.end86.if.end90_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  %call89 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.64, i32 noundef %20, i32 noundef 0, i32 noundef 262144, ptr noundef null) #13
  store ptr %call89, ptr @lsm_inode_cache, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end86.if.end90_crit_edge
  %21 = tail call i32 @llvm.read_register.i32(metadata !347) #13
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 99
  %25 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cred, align 16
  tail call fastcc void @lsm_early_cred(ptr noundef %26) #16
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  tail call fastcc void @lsm_early_task(ptr noundef %28) #16
  %29 = load ptr, ptr @ordered_lsms, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool95.not137 = icmp eq ptr %31, null
  br i1 %tobool95.not137, label %if.end90.for.end99_crit_edge, label %if.end90.for.body96_crit_edge

if.end90.for.body96_crit_edge:                    ; preds = %if.end90
  br label %for.body96

if.end90.for.end99_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end99

for.body96:                                       ; preds = %for.body96.for.body96_crit_edge, %if.end90.for.body96_crit_edge
  %32 = phi ptr [ %34, %for.body96.for.body96_crit_edge ], [ %31, %if.end90.for.body96_crit_edge ]
  %lsm.1138 = phi ptr [ %incdec.ptr98, %for.body96.for.body96_crit_edge ], [ %29, %if.end90.for.body96_crit_edge ]
  tail call fastcc void @initialize_lsm(ptr noundef nonnull %32) #16
  %incdec.ptr98 = getelementptr ptr, ptr %lsm.1138, i32 1
  %33 = ptrtoint ptr %incdec.ptr98 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %incdec.ptr98, align 4
  %tobool95.not = icmp eq ptr %34, null
  br i1 %tobool95.not, label %for.body96.for.end99_crit_edge, label %for.body96.for.body96_crit_edge

for.body96.for.body96_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body96

for.body96.for.end99_crit_edge:                   ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end99

for.end99:                                        ; preds = %for.body96.for.end99_crit_edge, %if.end90.for.end99_crit_edge
  %35 = load ptr, ptr @ordered_lsms, align 4
  tail call void @kfree(ptr noundef %35) #13
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @choose_major_lsm(ptr noundef %str) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %str, ptr @chosen_major_lsm, align 4
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @choose_lsm_order(ptr noundef %str) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %str, ptr @chosen_lsm_order, align 4
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @enable_debug(ptr nocapture noundef readnone %str) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @debug, align 1
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @security_add_hooks(ptr noundef %hooks, i32 noundef %count, ptr noundef %lsm) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp15 = icmp sgt i32 %count, 0
  br i1 %cmp15, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %hlist_add_tail_rcu.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %hlist_add_tail_rcu.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %lsm1 = getelementptr %struct.security_hook_list, ptr %hooks, i32 %i.016, i32 3
  %0 = ptrtoint ptr %lsm1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %lsm, ptr %lsm1, align 4
  %head = getelementptr %struct.security_hook_list, ptr %hooks, i32 %i.016, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.body
  %last.0.i = phi ptr [ null, %for.body ], [ %i.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %i.0.in.i = phi ptr [ %2, %for.body ], [ %i.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %i.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %i.0.i = load ptr, ptr %i.0.in.i, align 4
  %tobool.not.i = icmp eq ptr %i.0.i, null
  br i1 %tobool.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %arrayidx = getelementptr %struct.security_hook_list, ptr %hooks, i32 %i.016
  %tobool1.not.i = icmp eq ptr %last.0.i, null
  br i1 %tobool1.not.i, label %if.else47.i, label %if.then.i

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %last.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %last.0.i, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %arrayidx, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %arrayidx, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %last.0.i, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !359
  br label %if.end48.sink.split.i

if.else47.i:                                      ; preds = %for.end.i
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %arrayidx, align 4
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %arrayidx, i32 0, i32 1
  %11 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %2, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !360
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %arrayidx, ptr %2, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.else47.i.hlist_add_tail_rcu.exit_crit_edge, label %do.body49.i.i

if.else47.i.hlist_add_tail_rcu.exit_crit_edge:    ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_tail_rcu.exit

do.body49.i.i:                                    ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  br label %if.end48.sink.split.i

if.end48.sink.split.i:                            ; preds = %do.body49.i.i, %if.then.i
  %pprev51.i.sink.i = phi ptr [ %pprev51.i.i, %do.body49.i.i ], [ %last.0.i, %if.then.i ]
  %13 = ptrtoint ptr %pprev51.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx, ptr %pprev51.i.sink.i, align 4
  br label %hlist_add_tail_rcu.exit

hlist_add_tail_rcu.exit:                          ; preds = %if.end48.sink.split.i, %if.else47.i.hlist_add_tail_rcu.exit_crit_edge
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %hlist_add_tail_rcu.exit.for.end_crit_edge, label %hlist_add_tail_rcu.exit.for.body_crit_edge

hlist_add_tail_rcu.exit.for.body_crit_edge:       ; preds = %hlist_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

hlist_add_tail_rcu.exit.for.end_crit_edge:        ; preds = %hlist_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %hlist_add_tail_rcu.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %call = tail call zeroext i1 @slab_is_available() #13
  br i1 %call, label %if.then, label %for.end.if.end7_crit_edge

for.end.if.end7_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %for.end
  %call4 = tail call fastcc i32 @lsm_append(ptr noundef %lsm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.security_add_hooks) #20
  unreachable

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %for.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @slab_is_available() local_unnamed_addr #5

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @call_blocking_lsm_notifier(i32 noundef %event, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @blocking_lsm_notifier_chain, i32 noundef %event, ptr noundef %data) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_blocking_lsm_notifier(ptr noundef %nb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @blocking_lsm_notifier_chain, ptr noundef %nb) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_blocking_lsm_notifier(ptr noundef %nb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @blocking_lsm_notifier_chain, ptr noundef %nb) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lsm_inode_alloc(ptr nocapture noundef writeonly %inode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lsm_inode_cache, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef nonnull %0, i32 noundef 3392) #13
  %cmp = icmp eq ptr %call.i, null
  %. = select i1 %cmp, i32 -12, i32 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %call.i.sink = phi ptr [ %call.i, %if.end ], [ null, %entry.return_crit_edge ]
  %retval.0 = phi i32 [ %., %if.end ], [ 0, %entry.return_crit_edge ]
  %1 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.sink, ptr %1, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_binder_set_context_mgr(ptr noundef %mgr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ @security_hook_heads, %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %mgr) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_binder_transaction(ptr noundef %from, ptr noundef %to) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 1), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %from, ptr noundef %to) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_binder_transfer_binder(ptr noundef %from, ptr noundef %to) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 2), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %from, ptr noundef %to) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_binder_transfer_file(ptr noundef %from, ptr noundef %to, ptr noundef %file) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 3), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %from, ptr noundef %to, ptr noundef %file) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_ptrace_access_check(ptr noundef %child, i32 noundef %mode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 4), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %child, i32 noundef %mode) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_ptrace_traceme(ptr noundef %parent) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 5), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %parent) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_capget(ptr noundef %target, ptr noundef %effective, ptr noundef %inheritable, ptr noundef %permitted) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 6), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %target, ptr noundef %effective, ptr noundef %inheritable, ptr noundef %permitted) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_capset(ptr noundef %new, ptr noundef %old, ptr noundef %effective, ptr noundef %inheritable, ptr noundef %permitted) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 7), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %new, ptr noundef %old, ptr noundef %effective, ptr noundef %inheritable, ptr noundef %permitted) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_capable(ptr noundef %cred, ptr noundef %ns, i32 noundef %cap, i32 noundef %opts) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 8), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %cred, ptr noundef %ns, i32 noundef %cap, i32 noundef %opts) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_quotactl(i32 noundef %cmds, i32 noundef %type, i32 noundef %id, ptr noundef %sb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 9), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(i32 noundef %cmds, i32 noundef %type, i32 noundef %id, ptr noundef %sb) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_quota_on(ptr noundef %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 10), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %dentry) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_syslog(i32 noundef %type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 11), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(i32 noundef %type) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_settime64(ptr noundef %ts, ptr noundef %tz) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 12), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %ts, ptr noundef %tz) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_vm_enough_memory_mm(ptr noundef %mm, i32 noundef %pages) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %hp.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 13), %entry ], [ %hp.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %hp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %hp.0 = load ptr, ptr %hp.0.in, align 4
  %tobool2.not = icmp eq ptr %hp.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %hp.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %mm, i32 noundef %pages) #13
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %cap_sys_admin.0 = phi i32 [ 1, %for.cond.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ]
  %call13 = tail call i32 @__vm_enough_memory(ptr noundef %mm, i32 noundef %pages, i32 noundef %cap_sys_admin.0) #13
  ret i32 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vm_enough_memory(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_bprm_creds_for_exec(ptr noundef %bprm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 14), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %bprm) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_bprm_creds_from_file(ptr noundef %bprm, ptr noundef %file) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 15), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %bprm, ptr noundef %file) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_bprm_check(ptr noundef %bprm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 16), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %if.end16, label %for.body

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %bprm) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end16:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 @ima_bprm_check(ptr noundef %bprm) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_bprm_check(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_bprm_committing_creds(ptr noundef %bprm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 17), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %bprm) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_bprm_committed_creds(ptr noundef %bprm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 18), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %bprm) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_fs_context_dup(ptr noundef %fc, ptr noundef %src_fc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 19), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %fc, ptr noundef %src_fc) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_fs_context_parse_param(ptr noundef %fc, ptr noundef %param) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.021 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 20), align 4
  %tobool2.not22 = icmp eq ptr %P.021, null
  br i1 %tobool2.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond:                                         ; preds = %for.body
  %0 = ptrtoint ptr %P.023 to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.023, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %P.023 = phi ptr [ %P.0, %for.cond.for.body_crit_edge ], [ %P.021, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.023, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %fc, ptr noundef %param) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %RC.1 = phi i32 [ -519, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sb_alloc(ptr noundef %sb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @blob_sizes.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %if.end8.i.i.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %s_security.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 17
  %1 = ptrtoint ptr %s_security.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %s_security.i, align 4
  br label %for.cond.preheader

if.end8.i.i.i:                                    ; preds = %entry
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #19
  %s_security1.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 17
  %2 = ptrtoint ptr %s_security1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i.i, ptr %s_security1.i, align 4
  %cmp3.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp3.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end8.i.i.i.for.cond.preheader_crit_edge

if.end8.i.i.i.for.cond.preheader_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8.i.i.i.for.cond.preheader_crit_edge, %if.then.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 21), %for.cond.preheader ]
  %3 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %4 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %5(ptr noundef %sb) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %if.then27

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @security_sb_free(ptr noundef %sb)
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %for.cond.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then27 ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_sb_free(ptr noundef %sb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.022 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 23), align 4
  %tobool2.not23 = icmp eq ptr %P.022, null
  br i1 %tobool2.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.024 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.022, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.024, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %sb) #13
  %2 = ptrtoint ptr %P.024 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.024, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %s_security = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 17
  %3 = ptrtoint ptr %s_security to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_security, align 4
  tail call void @kfree(ptr noundef %4) #13
  %5 = ptrtoint ptr %s_security to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %s_security, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_sb_delete(ptr noundef %sb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 22), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %sb) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_free_mnt_opts(ptr nocapture noundef %mnt_opts) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mnt_opts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mnt_opts, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %for.cond.preheader

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.cond.preheader:                               ; preds = %entry
  %P.022 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 24), align 4
  %tobool3.not23 = icmp eq ptr %P.022, null
  br i1 %tobool3.not23, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %P.024 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.022, %for.cond.preheader.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.024, i32 0, i32 2
  %2 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hook, align 4
  %4 = ptrtoint ptr %mnt_opts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mnt_opts, align 4
  tail call void %3(ptr noundef %5) #13
  %6 = ptrtoint ptr %P.024 to i32
  call void @__asan_load4_noabort(i32 %6)
  %P.0 = load ptr, ptr %P.024, align 4
  %tobool3.not = icmp eq ptr %P.0, null
  br i1 %tobool3.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %7 = ptrtoint ptr %mnt_opts to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %mnt_opts, align 4
  br label %return

return:                                           ; preds = %for.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sb_eat_lsm_opts(ptr noundef %options, ptr noundef %mnt_opts) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 25), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %options, ptr noundef %mnt_opts) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sb_mnt_opts_compat(ptr noundef %sb, ptr noundef %mnt_opts) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 26), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sb, ptr noundef %mnt_opts) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sb_remount(ptr noundef %sb, ptr noundef %mnt_opts) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 27), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sb, ptr noundef %mnt_opts) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sb_kern_mount(ptr noundef %sb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 28), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sb) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sb_show_options(ptr noundef %m, ptr noundef %sb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 29), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %m, ptr noundef %sb) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sb_statfs(ptr noundef %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 30), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %dentry) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sb_mount(ptr noundef %dev_name, ptr noundef %path, ptr noundef %type, i32 noundef %flags, ptr noundef %data) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 31), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %dev_name, ptr noundef %path, ptr noundef %type, i32 noundef %flags, ptr noundef %data) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sb_umount(ptr noundef %mnt, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 32), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %mnt, i32 noundef %flags) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sb_pivotroot(ptr noundef %old_path, ptr noundef %new_path) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 33), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %old_path, ptr noundef %new_path) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sb_set_mnt_opts(ptr noundef %sb, ptr noundef %mnt_opts, i32 noundef %kern_flags, ptr noundef %set_kern_flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mnt_opts, null
  %cond = select i1 %tobool.not, i32 0, i32 -95
  %P.024 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 34), align 4
  %tobool4.not25 = icmp eq ptr %P.024, null
  br i1 %tobool4.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond:                                         ; preds = %for.body
  %0 = ptrtoint ptr %P.026 to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.026, align 4
  %tobool4.not = icmp eq ptr %P.0, null
  br i1 %tobool4.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %P.026 = phi ptr [ %P.0, %for.cond.for.body_crit_edge ], [ %P.024, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.026, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sb, ptr noundef %mnt_opts, i32 noundef %kern_flags, ptr noundef %set_kern_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %RC.1 = phi i32 [ %cond, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sb_clone_mnt_opts(ptr noundef %oldsb, ptr noundef %newsb, i32 noundef %kern_flags, ptr noundef %set_kern_flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 35), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %oldsb, ptr noundef %newsb, i32 noundef %kern_flags, ptr noundef %set_kern_flags) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_move_mount(ptr noundef %from_path, ptr noundef %to_path) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 36), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %from_path, ptr noundef %to_path) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_path_notify(ptr noundef %path, i64 noundef %mask, i32 noundef %obj_type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 50), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %path, i64 noundef %mask, i32 noundef %obj_type) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_alloc(ptr noundef %inode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lsm_inode_cache, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef nonnull %0, i32 noundef 3392) #13
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %lsm_inode_alloc.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lsm_inode_alloc.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %1 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %1, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.sink.i.ph = phi ptr [ null, %entry.if.end_crit_edge ], [ %call.i.i, %if.end.i.if.end_crit_edge ]
  %3 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.sink.i.ph, ptr %3, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 51), %if.end ], [ %P.0, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %6 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %7(ptr noundef %inode) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %if.then27

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @security_inode_free(ptr noundef %inode)
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %for.cond.cleanup_crit_edge, %lsm_inode_alloc.exit
  %retval.0 = phi i32 [ -12, %lsm_inode_alloc.exit ], [ %call6, %if.then27 ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_inode_free(ptr noundef %inode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @integrity_inode_free(ptr noundef %inode) #13
  %P.025 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 52), align 4
  %tobool2.not26 = icmp eq ptr %P.025, null
  br i1 %tobool2.not26, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.027 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.025, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.027, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %inode) #13
  %2 = ptrtoint ptr %P.027 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.027, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i_security = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %3 = ptrtoint ptr %i_security to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_security, align 4
  %tobool13.not = icmp eq ptr %4, null
  br i1 %tobool13.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @call_rcu(ptr noundef nonnull %4, ptr noundef nonnull @inode_free_by_rcu) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @integrity_inode_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inode_free_by_rcu(ptr noundef %head) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lsm_inode_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %head) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_dentry_init_security(ptr noundef %dentry, i32 noundef %mode, ptr noundef %name, ptr noundef %xattr_name, ptr noundef %ctx, ptr noundef %ctxlen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %hp.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 37), %entry ], [ %hp.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %hp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %hp.0 = load ptr, ptr %hp.0.in, align 4
  %tobool2.not = icmp eq ptr %hp.0, null
  br i1 %tobool2.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %hp.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %dentry, i32 noundef %mode, ptr noundef %name, ptr noundef %xattr_name, ptr noundef %ctx, ptr noundef %ctxlen) #13
  %cmp.not = icmp eq i32 %call, -95
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %for.body.cleanup_crit_edge ], [ -95, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_dentry_create_files_as(ptr noundef %dentry, i32 noundef %mode, ptr noundef %name, ptr noundef %old, ptr noundef %new) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 38), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %dentry, i32 noundef %mode, ptr noundef %name, ptr noundef %old, ptr noundef %new) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_init_security(ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr, ptr noundef readonly %initxattrs, ptr noundef %fs_data) #3 align 64 {
entry:
  %new_xattrs = alloca [3 x %struct.xattr], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %new_xattrs) #13
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !357

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %initxattrs, null
  br i1 %tobool3.not, label %for.cond.preheader, label %if.end21

for.cond.preheader:                               ; preds = %if.end
  %P.0133 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 53), align 4
  %tobool7.not134 = icmp eq ptr %P.0133, null
  br i1 %tobool7.not134, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %2 = ptrtoint ptr %P.0135 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.0135, align 4
  %tobool7.not = icmp eq ptr %P.0, null
  br i1 %tobool7.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %P.0135 = phi ptr [ %P.0, %for.cond.for.body_crit_edge ], [ %P.0133, %for.cond.preheader.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0135, i32 0, i32 2
  %3 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hook, align 4
  %call = tail call i32 %4(ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr, ptr noundef null, ptr noundef null, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %5 = call ptr @memset(ptr %new_xattrs, i32 0, i32 36)
  %P25.0126 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 53), align 4
  %tobool37.not127 = icmp eq ptr %P25.0126, null
  br i1 %tobool37.not127, label %if.end21.out_crit_edge, label %for.body38.lr.ph

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body38.lr.ph:                                 ; preds = %if.end21
  %value = getelementptr inbounds %struct.xattr, ptr %new_xattrs, i32 0, i32 1
  %value_len = getelementptr inbounds %struct.xattr, ptr %new_xattrs, i32 0, i32 2
  br label %for.body38

for.cond36:                                       ; preds = %for.body38
  %6 = ptrtoint ptr %P25.0128 to i32
  call void @__asan_load4_noabort(i32 %6)
  %P25.0 = load ptr, ptr %P25.0128, align 4
  %tobool37.not = icmp eq ptr %P25.0, null
  br i1 %tobool37.not, label %for.end57, label %for.cond36.for.body38_crit_edge

for.cond36.for.body38_crit_edge:                  ; preds = %for.cond36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body38

for.body38:                                       ; preds = %for.cond36.for.body38_crit_edge, %for.body38.lr.ph
  %P25.0128 = phi ptr [ %P25.0126, %for.body38.lr.ph ], [ %P25.0, %for.cond36.for.body38_crit_edge ]
  %hook39 = getelementptr inbounds %struct.security_hook_list, ptr %P25.0128, i32 0, i32 2
  %7 = ptrtoint ptr %hook39 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hook39, align 4
  %call40 = call i32 %8(ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr, ptr noundef nonnull %new_xattrs, ptr noundef %value, ptr noundef %value_len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41.not = icmp eq i32 %call40, 0
  br i1 %cmp41.not, label %for.cond36, label %for.body38.out_crit_edge

for.body38.out_crit_edge:                         ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.end57:                                        ; preds = %for.cond36
  br i1 %tobool37.not127, label %for.end57.out_crit_edge, label %if.end63

for.end57.out_crit_edge:                          ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end63:                                         ; preds = %for.end57
  %add.ptr64 = getelementptr inbounds %struct.xattr, ptr %new_xattrs, i32 1
  %call65 = call i32 @evm_inode_init_security(ptr noundef %inode, ptr noundef nonnull %new_xattrs, ptr noundef %add.ptr64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end63.out_crit_edge

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end68:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %call70 = call i32 %initxattrs(ptr noundef %inode, ptr noundef nonnull %new_xattrs, ptr noundef %fs_data) #13
  br label %out

out:                                              ; preds = %if.end68, %if.end63.out_crit_edge, %for.end57.out_crit_edge, %for.body38.out_crit_edge, %if.end21.out_crit_edge
  %ret.0 = phi i32 [ 0, %for.end57.out_crit_edge ], [ %call65, %if.end63.out_crit_edge ], [ %call70, %if.end68 ], [ -95, %if.end21.out_crit_edge ], [ %call40, %for.body38.out_crit_edge ]
  %value73130 = getelementptr inbounds %struct.xattr, ptr %new_xattrs, i32 0, i32 1
  %9 = ptrtoint ptr %value73130 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %value73130, align 4
  %cmp74.not131 = icmp eq ptr %10, null
  br i1 %cmp74.not131, label %out.for.end78_crit_edge, label %out.for.body75_crit_edge

out.for.body75_crit_edge:                         ; preds = %out
  br label %for.body75

out.for.end78_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end78

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %out.for.body75_crit_edge
  %11 = phi ptr [ %13, %for.body75.for.body75_crit_edge ], [ %10, %out.for.body75_crit_edge ]
  %xattr.0132 = phi ptr [ %incdec.ptr, %for.body75.for.body75_crit_edge ], [ %new_xattrs, %out.for.body75_crit_edge ]
  call void @kfree(ptr noundef nonnull %11) #13
  %incdec.ptr = getelementptr %struct.xattr, ptr %xattr.0132, i32 1
  %value73 = getelementptr %struct.xattr, ptr %xattr.0132, i32 1, i32 1
  %12 = ptrtoint ptr %value73 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %value73, align 4
  %cmp74.not = icmp eq ptr %13, null
  br i1 %cmp74.not, label %for.body75.for.end78_crit_edge, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body75

for.body75.for.end78_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end78

for.end78:                                        ; preds = %for.body75.for.end78_crit_edge, %out.for.end78_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %ret.0)
  %cmp79 = icmp eq i32 %ret.0, -95
  %spec.select121 = select i1 %cmp79, i32 0, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %for.end78, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select121, %for.end78 ], [ 0, %entry.cleanup_crit_edge ], [ -95, %for.cond.preheader.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %new_xattrs) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evm_inode_init_security(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_init_security_anon(ptr noundef %inode, ptr noundef %name, ptr noundef %context_inode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 54), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %inode, ptr noundef %name, ptr noundef %context_inode) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_old_inode_init_security(ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr, ptr noundef %name, ptr noundef %value, ptr noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.cond.preheader:                               ; preds = %entry
  %P.027 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 53), align 4
  %tobool5.not28 = icmp eq ptr %P.027, null
  br i1 %tobool5.not28, label %for.cond.preheader.return_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.return_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.cond:                                         ; preds = %for.body
  %2 = ptrtoint ptr %P.029 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.029, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %P.029 = phi ptr [ %P.0, %for.cond.for.body_crit_edge ], [ %P.027, %for.cond.preheader.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.029, i32 0, i32 2
  %3 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hook, align 4
  %call = tail call i32 %4(ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr, ptr noundef %name, ptr noundef %value, ptr noundef %len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.cond, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %for.cond.preheader.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -95, %for.cond.preheader.return_crit_edge ], [ %call, %for.body.return_crit_edge ], [ 0, %for.cond.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_path_mknod(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %dir, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 42), %entry.for.cond_crit_edge ]
  %6 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool6.not = icmp eq ptr %P.0, null
  br i1 %tobool6.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %7 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hook, align 4
  %call7 = tail call i32 %8(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %dev) #13
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call7, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_path_mkdir(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %dir, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 40), %entry.for.cond_crit_edge ]
  %6 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool6.not = icmp eq ptr %P.0, null
  br i1 %tobool6.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %7 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hook, align 4
  %call7 = tail call i32 %8(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #13
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call7, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_path_rmdir(ptr noundef %dir, ptr noundef %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %dir, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 41), %entry.for.cond_crit_edge ]
  %6 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool6.not = icmp eq ptr %P.0, null
  br i1 %tobool6.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %7 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hook, align 4
  %call7 = tail call i32 %8(ptr noundef %dir, ptr noundef %dentry) #13
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call7, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_path_unlink(ptr noundef %dir, ptr noundef %dentry) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %dir, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 39), %entry.for.cond_crit_edge ]
  %6 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool6.not = icmp eq ptr %P.0, null
  br i1 %tobool6.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %7 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hook, align 4
  %call7 = tail call i32 %8(ptr noundef %dir, ptr noundef %dentry) #13
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call7, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_path_symlink(ptr noundef %dir, ptr noundef %dentry, ptr noundef %old_name) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %dir, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 44), %entry.for.cond_crit_edge ]
  %6 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool6.not = icmp eq ptr %P.0, null
  br i1 %tobool6.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %7 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hook, align 4
  %call7 = tail call i32 %8(ptr noundef %dir, ptr noundef %dentry, ptr noundef %old_name) #13
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call7, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_path_link(ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 45), %entry.for.cond_crit_edge ]
  %4 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %5 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %6(ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call6, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_path_rename(ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.rhs:                                          ; preds = %entry
  %4 = ptrtoint ptr %new_dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new_dentry, align 8
  %and.i.i.i.i = and i32 %5, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i.not, label %lor.rhs.if.end_crit_edge, label %land.rhs

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %lor.rhs
  %d_inode.i94 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i94 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i94, align 8
  %i_flags3 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %i_flags3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags3, align 4
  %and4 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.rhs.if.end_crit_edge, label %land.rhs.return_crit_edge, !prof !357

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %lor.rhs.if.end_crit_edge
  %and8 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.for.cond45.preheader_crit_edge, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

if.end.for.cond45.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.cond.for.cond45.preheader_crit_edge, %if.end.for.cond45.preheader_crit_edge
  br label %for.cond45

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 46), %if.end.for.cond_crit_edge ]
  %10 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool13.not = icmp eq ptr %P.0, null
  br i1 %tobool13.not, label %for.cond.for.cond45.preheader_crit_edge, label %for.body

for.cond.for.cond45.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond45.preheader

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %11 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hook, align 4
  %call14 = tail call i32 %12(ptr noundef %new_dir, ptr noundef %new_dentry, ptr noundef %old_dir, ptr noundef %old_dentry) #13
  %cmp.not = icmp eq i32 %call14, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.cond45:                                       ; preds = %for.body47.for.cond45_crit_edge, %for.cond45.preheader
  %P34.0.in = phi ptr [ %P34.0, %for.body47.for.cond45_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 46), %for.cond45.preheader ]
  %13 = ptrtoint ptr %P34.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %P34.0 = load ptr, ptr %P34.0.in, align 4
  %tobool46.not = icmp eq ptr %P34.0, null
  br i1 %tobool46.not, label %for.cond45.return_crit_edge, label %for.body47

for.cond45.return_crit_edge:                      ; preds = %for.cond45
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body47:                                       ; preds = %for.cond45
  %hook48 = getelementptr inbounds %struct.security_hook_list, ptr %P34.0, i32 0, i32 2
  %14 = ptrtoint ptr %hook48 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hook48, align 4
  %call49 = tail call i32 %15(ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry) #13
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %for.body47.for.cond45_crit_edge, label %for.body47.return_crit_edge

for.body47.return_crit_edge:                      ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body47.for.cond45_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond45

return:                                           ; preds = %for.body47.return_crit_edge, %for.cond45.return_crit_edge, %for.body.return_crit_edge, %land.rhs.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 0, %land.rhs.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %for.cond45.return_crit_edge ], [ %call49, %for.body47.return_crit_edge ], [ %call14, %for.body.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_path_truncate(ptr noundef %path) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 43), %entry.for.cond_crit_edge ]
  %6 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %7 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %8(ptr noundef %path) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call6, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_path_chmod(ptr noundef %path, i16 noundef zeroext %mode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 47), %entry.for.cond_crit_edge ]
  %6 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %7 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %8(ptr noundef %path, i16 noundef zeroext %mode) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call6, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_path_chown(ptr noundef %path, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 48), %entry.for.cond_crit_edge ]
  %6 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool6.not = icmp eq ptr %P.0, null
  br i1 %tobool6.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %7 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hook, align 4
  %call9 = tail call i32 %8(ptr noundef %path, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce) #13
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call9, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_path_chroot(ptr noundef %path) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 49), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %path) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_create(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 55), %entry.for.cond_crit_edge ]
  %2 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %3 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hook, align 4
  %call = tail call i32 %4(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_link(ptr noundef %old_dentry, ptr noundef %dir, ptr noundef %new_dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 56), %entry.for.cond_crit_edge ]
  %4 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %5 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %6(ptr noundef %old_dentry, ptr noundef %dir, ptr noundef %new_dentry) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call6, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_unlink(ptr noundef %dir, ptr noundef %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 57), %entry.for.cond_crit_edge ]
  %4 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %5 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %6(ptr noundef %dir, ptr noundef %dentry) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call6, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_symlink(ptr noundef %dir, ptr noundef %dentry, ptr noundef %old_name) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 58), %entry.for.cond_crit_edge ]
  %2 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %3 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hook, align 4
  %call = tail call i32 %4(ptr noundef %dir, ptr noundef %dentry, ptr noundef %old_name) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_mkdir(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 59), %entry.for.cond_crit_edge ]
  %2 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %3 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hook, align 4
  %call = tail call i32 %4(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_rmdir(ptr noundef %dir, ptr noundef %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 60), %entry.for.cond_crit_edge ]
  %4 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %5 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %6(ptr noundef %dir, ptr noundef %dentry) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call6, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_mknod(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 61), %entry.for.cond_crit_edge ]
  %2 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %3 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hook, align 4
  %call = tail call i32 %4(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %dev) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_rename(ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.rhs:                                          ; preds = %entry
  %4 = ptrtoint ptr %new_dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new_dentry, align 8
  %and.i.i.i.i = and i32 %5, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i.not, label %lor.rhs.if.end_crit_edge, label %land.rhs

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %lor.rhs
  %d_inode.i94 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i94 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i94, align 8
  %i_flags3 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %i_flags3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags3, align 4
  %and4 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.rhs.if.end_crit_edge, label %land.rhs.return_crit_edge, !prof !357

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %lor.rhs.if.end_crit_edge
  %and8 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.for.cond45.preheader_crit_edge, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

if.end.for.cond45.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.cond.for.cond45.preheader_crit_edge, %if.end.for.cond45.preheader_crit_edge
  br label %for.cond45

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 62), %if.end.for.cond_crit_edge ]
  %10 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool13.not = icmp eq ptr %P.0, null
  br i1 %tobool13.not, label %for.cond.for.cond45.preheader_crit_edge, label %for.body

for.cond.for.cond45.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond45.preheader

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %11 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hook, align 4
  %call14 = tail call i32 %12(ptr noundef %new_dir, ptr noundef %new_dentry, ptr noundef %old_dir, ptr noundef %old_dentry) #13
  %cmp.not = icmp eq i32 %call14, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.cond45:                                       ; preds = %for.body47.for.cond45_crit_edge, %for.cond45.preheader
  %P34.0.in = phi ptr [ %P34.0, %for.body47.for.cond45_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 62), %for.cond45.preheader ]
  %13 = ptrtoint ptr %P34.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %P34.0 = load ptr, ptr %P34.0.in, align 4
  %tobool46.not = icmp eq ptr %P34.0, null
  br i1 %tobool46.not, label %for.cond45.return_crit_edge, label %for.body47

for.cond45.return_crit_edge:                      ; preds = %for.cond45
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body47:                                       ; preds = %for.cond45
  %hook48 = getelementptr inbounds %struct.security_hook_list, ptr %P34.0, i32 0, i32 2
  %14 = ptrtoint ptr %hook48 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hook48, align 4
  %call49 = tail call i32 %15(ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry) #13
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %for.body47.for.cond45_crit_edge, label %for.body47.return_crit_edge

for.body47.return_crit_edge:                      ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body47.for.cond45_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond45

return:                                           ; preds = %for.body47.return_crit_edge, %for.cond45.return_crit_edge, %for.body.return_crit_edge, %land.rhs.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 0, %land.rhs.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %for.cond45.return_crit_edge ], [ %call49, %for.body47.return_crit_edge ], [ %call14, %for.body.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_readlink(ptr noundef %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 63), %entry.for.cond_crit_edge ]
  %4 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %5 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %6(ptr noundef %dentry) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call6, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_follow_link(ptr noundef %dentry, ptr noundef %inode, i1 noundef zeroext %rcu) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 64), %entry.for.cond_crit_edge ]
  %2 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %3 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hook, align 4
  %call = tail call i32 %4(ptr noundef %dentry, ptr noundef %inode, i1 noundef zeroext %rcu) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_permission(ptr noundef %inode, i32 noundef %mask) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 65), %entry.for.cond_crit_edge ]
  %2 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %3 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hook, align 4
  %call = tail call i32 %4(ptr noundef %inode, i32 noundef %mask) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_setattr(ptr noundef %dentry, ptr noundef %attr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.cleanup_crit_edge, !prof !357

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 66), %entry.for.cond_crit_edge ]
  %4 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %if.end22, label %for.body

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %5 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %6(ptr noundef %dentry, ptr noundef %attr) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end22:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = tail call i32 @evm_inode_setattr(ptr noundef %dentry, ptr noundef %attr) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ 0, %entry.cleanup_crit_edge ], [ %call6, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evm_inode_setattr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_getattr(ptr noundef %path) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 67), %entry.for.cond_crit_edge ]
  %6 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %7 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %8(ptr noundef %path) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call6, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_setxattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge, !prof !357

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %P.058 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 68), align 4
  %tobool5.not59 = icmp eq ptr %P.058, null
  br i1 %tobool5.not59, label %for.cond.preheader.if.end23_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end23_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.cond:                                         ; preds = %for.body
  %4 = ptrtoint ptr %P.060 to i32
  call void @__asan_load4_noabort(i32 %4)
  %P.0 = load ptr, ptr %P.060, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.if.end26_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.if.end26_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %P.060 = phi ptr [ %P.0, %for.cond.for.body_crit_edge ], [ %P.058, %for.cond.preheader.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.060, i32 0, i32 2
  %5 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %6(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #13
  %7 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %for.body.cleanup_crit_edge [
    i32 0, label %for.cond
    i32 1, label %for.body.if.end23_crit_edge
  ]

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %for.body.if.end23_crit_edge, %for.cond.preheader.if.end23_crit_edge
  %call22 = tail call i32 @cap_inode_setxattr(ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.end26:                                         ; preds = %if.end23.if.end26_crit_edge, %for.cond.if.end26_crit_edge
  %call27 = tail call i32 @ima_inode_setxattr(ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %call31 = tail call i32 @evm_inode_setxattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.end30 ], [ 0, %entry.cleanup_crit_edge ], [ %call22, %if.end23.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call6, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_setxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_inode_setxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evm_inode_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_inode_post_setxattr(ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.cond.preheader:                               ; preds = %entry
  %P.027 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 69), align 4
  %tobool5.not28 = icmp eq ptr %P.027, null
  br i1 %tobool5.not28, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %P.029 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.027, %for.cond.preheader.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.029, i32 0, i32 2
  %4 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hook, align 4
  tail call void %5(ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #13
  %6 = ptrtoint ptr %P.029 to i32
  call void @__asan_load4_noabort(i32 %6)
  %P.0 = load ptr, ptr %P.029, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @evm_inode_post_setxattr(ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size) #13
  br label %return

return:                                           ; preds = %for.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @evm_inode_post_setxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_getxattr(ptr noundef %dentry, ptr noundef %name) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 70), %entry.for.cond_crit_edge ]
  %4 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %5 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %6(ptr noundef %dentry, ptr noundef %name) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call6, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_listxattr(ptr noundef %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 71), %entry.for.cond_crit_edge ]
  %4 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %5 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %6(ptr noundef %dentry) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call6, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_removexattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge, !prof !357

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %P.052 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 72), align 4
  %tobool5.not53 = icmp eq ptr %P.052, null
  br i1 %tobool5.not53, label %for.cond.preheader.if.end23_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end23_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.cond:                                         ; preds = %for.body
  %4 = ptrtoint ptr %P.054 to i32
  call void @__asan_load4_noabort(i32 %4)
  %P.0 = load ptr, ptr %P.054, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.if.end26_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.if.end26_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %P.054 = phi ptr [ %P.0, %for.cond.for.body_crit_edge ], [ %P.052, %for.cond.preheader.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.054, i32 0, i32 2
  %5 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %6(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name) #13
  %7 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %call6, label %for.body.cleanup_crit_edge [
    i32 0, label %for.cond
    i32 1, label %for.body.if.end23_crit_edge
  ]

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %for.body.if.end23_crit_edge, %for.cond.preheader.if.end23_crit_edge
  %call22 = tail call i32 @cap_inode_removexattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.end26:                                         ; preds = %if.end23.if.end26_crit_edge, %for.cond.if.end26_crit_edge
  %call27 = tail call i32 @ima_inode_removexattr(ptr noundef %dentry, ptr noundef %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %call31 = tail call i32 @evm_inode_removexattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.end30 ], [ 0, %entry.cleanup_crit_edge ], [ %call22, %if.end23.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call6, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_inode_removexattr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evm_inode_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_need_killpriv(ptr noundef %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 73), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %dentry) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_killpriv(ptr noundef %mnt_userns, ptr noundef %dentry) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 74), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %mnt_userns, ptr noundef %dentry) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_getsecurity(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i1 noundef zeroext %alloc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.cleanup_crit_edge, !prof !357

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %hp.0.in = phi ptr [ %hp.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 75), %entry.for.cond_crit_edge ]
  %2 = ptrtoint ptr %hp.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %hp.0 = load ptr, ptr %hp.0.in, align 4
  %tobool5.not = icmp eq ptr %hp.0, null
  br i1 %tobool5.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %hp.0, i32 0, i32 2
  %3 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hook, align 4
  %call = tail call i32 %4(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i1 noundef zeroext %alloc) #13
  %cmp.not = icmp eq i32 %call, -95
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_setsecurity(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.cleanup_crit_edge, !prof !357

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %hp.0.in = phi ptr [ %hp.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 76), %entry.for.cond_crit_edge ]
  %2 = ptrtoint ptr %hp.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %hp.0 = load ptr, ptr %hp.0.in, align 4
  %tobool5.not = icmp eq ptr %hp.0, null
  br i1 %tobool5.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %hp.0, i32 0, i32 2
  %3 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hook, align 4
  %call = tail call i32 %4(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #13
  %cmp.not = icmp eq i32 %call, -95
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_listsecurity(ptr noundef %inode, ptr noundef %buffer, i32 noundef %buffer_size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %entry.return_crit_edge, !prof !357

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 77), %entry.for.cond_crit_edge ]
  %2 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.return_crit_edge, label %for.body

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %3 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hook, align 4
  %call = tail call i32 %4(ptr noundef %inode, ptr noundef %buffer, i32 noundef %buffer_size) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

return:                                           ; preds = %for.body.return_crit_edge, %for.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %for.cond.return_crit_edge ], [ %call, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_inode_getsecid(ptr noundef %inode, ptr noundef %secid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 78), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %inode, ptr noundef %secid) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_copy_up(ptr noundef %src, ptr noundef %new) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 79), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %src, ptr noundef %new) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_copy_up_xattr(ptr noundef %name) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %hp.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 80), %entry ], [ %hp.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %hp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %hp.0 = load ptr, ptr %hp.0.in, align 4
  %tobool2.not = icmp eq ptr %hp.0, null
  br i1 %tobool2.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %hp.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %name) #13
  %cmp.not = icmp eq i32 %call, -95
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %for.body.cleanup_crit_edge ], [ -95, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_kernfs_init_security(ptr noundef %kn_dir, ptr noundef %kn) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 81), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %kn_dir, ptr noundef %kn) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_file_permission(ptr noundef %file, i32 noundef %mask) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 82), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %if.end16, label %for.body

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %file, i32 noundef %mask) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end16:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call fastcc i32 @fsnotify_perm(ptr noundef %file, i32 noundef %mask)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsnotify_perm(ptr noundef %file, i32 noundef %mask) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %and = and i32 %mask, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %and4 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then3.if.end15_crit_edge, label %if.then6

if.then3.if.end15_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then6:                                         ; preds = %if.then3
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.if.end15_crit_edge

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end.i:                                         ; preds = %if.then6
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry.i, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i.i, align 4
  %s_fsnotify_connectors.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 48
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i, i32 noundef 4) #13
  %10 = ptrtoint ptr %s_fsnotify_connectors.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %s_fsnotify_connectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i, label %if.end.i.if.end15_crit_edge, label %if.end.i.i

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end.i.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %7, align 8
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %14)
  %cmp2.i.i = icmp eq i16 %14, 16384
  br i1 %cmp2.i.i, label %if.then4.i.i, label %if.end.i.i.if.end8.i.i_crit_edge

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 8
  %and5.i.i = and i32 %16, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool.not.i.i, label %if.then4.i.i.notify_child.i.i_crit_edge, label %if.then4.i.i.if.end8.i.i_crit_edge

if.then4.i.i.if.end8.i.i_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.then4.i.i.notify_child.i.i_crit_edge:          ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %notify_child.i.i

if.end8.i.i:                                      ; preds = %if.then4.i.i.if.end8.i.i_crit_edge, %if.end.i.i.if.end8.i.i_crit_edge
  %mask.addr.0.i.i = phi i32 [ 1074003968, %if.then4.i.i.if.end8.i.i_crit_edge ], [ 262144, %if.end.i.i.if.end8.i.i_crit_edge ]
  %d_parent.i.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %d_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_parent.i.i, align 8
  %cmp9.i.i = icmp eq ptr %18, %5
  br i1 %cmp9.i.i, label %if.end8.i.i.notify_child.i.i_crit_edge, label %if.end12.i.i

if.end8.i.i.notify_child.i.i_crit_edge:           ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %notify_child.i.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call13.i.i = tail call i32 @__fsnotify_parent(ptr noundef %5, i32 noundef %mask.addr.0.i.i, ptr noundef %f_path.i, i32 noundef 1) #13
  br label %fsnotify_file.exit

notify_child.i.i:                                 ; preds = %if.end8.i.i.notify_child.i.i_crit_edge, %if.then4.i.i.notify_child.i.i_crit_edge
  %mask.addr.1.i.i = phi i32 [ %mask.addr.0.i.i, %if.end8.i.i.notify_child.i.i_crit_edge ], [ 1074003968, %if.then4.i.i.notify_child.i.i_crit_edge ]
  %call14.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i, ptr noundef %f_path.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %7, i32 noundef 0) #13
  br label %fsnotify_file.exit

fsnotify_file.exit:                               ; preds = %notify_child.i.i, %if.end12.i.i
  %retval.0.i = phi i32 [ %call14.i.i, %notify_child.i.i ], [ %call13.i.i, %if.end12.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool7.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool7.not, label %fsnotify_file.exit.if.end15_crit_edge, label %fsnotify_file.exit.cleanup_crit_edge

fsnotify_file.exit.cleanup_crit_edge:             ; preds = %fsnotify_file.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

fsnotify_file.exit.if.end15_crit_edge:            ; preds = %fsnotify_file.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %and11 = shl i32 %mask, 15
  %19 = and i32 %and11, 131072
  br label %if.end15

if.end15:                                         ; preds = %if.else, %fsnotify_file.exit.if.end15_crit_edge, %if.end.i.if.end15_crit_edge, %if.then6.if.end15_crit_edge, %if.then3.if.end15_crit_edge
  %fsnotify_mask.0 = phi i32 [ 65536, %fsnotify_file.exit.if.end15_crit_edge ], [ 65536, %if.then3.if.end15_crit_edge ], [ %19, %if.else ], [ 65536, %if.then6.if.end15_crit_edge ], [ 65536, %if.end.i.if.end15_crit_edge ]
  %f_mode.i23 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %20 = ptrtoint ptr %f_mode.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f_mode.i23, align 8
  %and.i24 = and i32 %21, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i25 = icmp eq i32 %and.i24, 0
  br i1 %tobool.not.i25, label %if.end.i33, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i33:                                       ; preds = %if.end15
  %f_path.i26 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry.i27 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %dentry.i27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dentry.i27, align 4
  %d_inode.i.i.i28 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %d_inode.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i.i.i28, align 8
  %i_sb.i.i29 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb.i.i29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i.i29, align 4
  %s_fsnotify_connectors.i.i30 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 48
  %call.i.i.i.i31 = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i30, i32 noundef 4) #13
  %28 = ptrtoint ptr %s_fsnotify_connectors.i.i30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %s_fsnotify_connectors.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i32 = icmp eq i32 %29, 0
  br i1 %cmp.i.i32, label %if.end.i33.cleanup_crit_edge, label %if.end.i.i35

if.end.i33.cleanup_crit_edge:                     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i35:                                     ; preds = %if.end.i33
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %25, align 8
  %32 = and i16 %31, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %32)
  %cmp2.i.i34 = icmp eq i16 %32, 16384
  br i1 %cmp2.i.i34, label %if.then4.i.i38, label %if.end.i.i35.if.end8.i.i42_crit_edge

if.end.i.i35.if.end8.i.i42_crit_edge:             ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i42

if.then4.i.i38:                                   ; preds = %if.end.i.i35
  %or.i.i = or i32 %fsnotify_mask.0, 1073741824
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %23, align 8
  %and5.i.i36 = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %and5.i.i36, 0
  br i1 %tobool.not.i.i37, label %if.then4.i.i38.notify_child.i.i47_crit_edge, label %if.then4.i.i38.if.end8.i.i42_crit_edge

if.then4.i.i38.if.end8.i.i42_crit_edge:           ; preds = %if.then4.i.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i42

if.then4.i.i38.notify_child.i.i47_crit_edge:      ; preds = %if.then4.i.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %notify_child.i.i47

if.end8.i.i42:                                    ; preds = %if.then4.i.i38.if.end8.i.i42_crit_edge, %if.end.i.i35.if.end8.i.i42_crit_edge
  %mask.addr.0.i.i39 = phi i32 [ %or.i.i, %if.then4.i.i38.if.end8.i.i42_crit_edge ], [ %fsnotify_mask.0, %if.end.i.i35.if.end8.i.i42_crit_edge ]
  %d_parent.i.i40 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 3
  %35 = ptrtoint ptr %d_parent.i.i40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_parent.i.i40, align 8
  %cmp9.i.i41 = icmp eq ptr %36, %23
  br i1 %cmp9.i.i41, label %if.end8.i.i42.notify_child.i.i47_crit_edge, label %if.end12.i.i44

if.end8.i.i42.notify_child.i.i47_crit_edge:       ; preds = %if.end8.i.i42
  call void @__sanitizer_cov_trace_pc() #15
  br label %notify_child.i.i47

if.end12.i.i44:                                   ; preds = %if.end8.i.i42
  call void @__sanitizer_cov_trace_pc() #15
  %call13.i.i43 = tail call i32 @__fsnotify_parent(ptr noundef %23, i32 noundef %mask.addr.0.i.i39, ptr noundef %f_path.i26, i32 noundef 1) #13
  br label %cleanup

notify_child.i.i47:                               ; preds = %if.end8.i.i42.notify_child.i.i47_crit_edge, %if.then4.i.i38.notify_child.i.i47_crit_edge
  %mask.addr.1.i.i45 = phi i32 [ %mask.addr.0.i.i39, %if.end8.i.i42.notify_child.i.i47_crit_edge ], [ %or.i.i, %if.then4.i.i38.notify_child.i.i47_crit_edge ]
  %call14.i.i46 = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i45, ptr noundef %f_path.i26, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %25, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %notify_child.i.i47, %if.end12.i.i44, %if.end.i33.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %fsnotify_file.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i, %fsnotify_file.exit.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ %call14.i.i46, %notify_child.i.i47 ], [ %call13.i.i43, %if.end12.i.i44 ], [ 0, %if.end.i33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_file_alloc(ptr noundef %file) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lsm_file_cache, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef nonnull %0, i32 noundef 3520) #13
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %lsm_file_alloc.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lsm_file_alloc.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %1 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %1, align 8
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.sink.i.ph = phi ptr [ null, %entry.if.end_crit_edge ], [ %call.i.i, %if.end.i.if.end_crit_edge ]
  %3 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.sink.i.ph, ptr %3, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 83), %if.end ], [ %P.0, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool3.not = icmp eq ptr %P.0, null
  br i1 %tobool3.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %6 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hook, align 4
  %call4 = tail call i32 %7(ptr noundef %file) #13
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %if.then21

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @security_file_free(ptr noundef %file)
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %for.cond.cleanup_crit_edge, %lsm_file_alloc.exit
  %retval.0 = phi i32 [ -12, %lsm_file_alloc.exit ], [ %call4, %if.then21 ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_file_free(ptr noundef %file) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.025 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 84), align 4
  %tobool2.not26 = icmp eq ptr %P.025, null
  br i1 %tobool2.not26, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.027 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.025, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.027, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %file) #13
  %2 = ptrtoint ptr %P.027 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.027, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %f_security = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 15
  %3 = ptrtoint ptr %f_security to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_security, align 8
  %tobool13.not = icmp eq ptr %4, null
  br i1 %tobool13.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %f_security to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %f_security, align 8
  %6 = load ptr, ptr @lsm_file_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef nonnull %4) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_file_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 85), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_mmap_file(ptr noundef %file, i32 noundef %prot, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %prot, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 1
  %tobool4.not.i = icmp eq ptr %file, null
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %or9.i = or i32 %prot, 4
  br label %for.cond

for.cond:                                         ; preds = %mmap_prot.exit.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 87), %entry ], [ %P.0, %mmap_prot.exit.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %if.end17, label %for.body

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  br i1 %cmp.not.i, label %if.end.i, label %for.body.mmap_prot.exit_crit_edge

for.body.mmap_prot.exit_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmap_prot.exit

if.end.i:                                         ; preds = %for.body
  %3 = tail call i32 @llvm.read_register.i32(metadata !347) #13
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %personality.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 62
  %7 = ptrtoint ptr %personality.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %personality.i, align 32
  %and1.i = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %brmerge = or i1 %tobool.not.i, %tobool4.not.i
  %9 = lshr exact i32 %and1.i, 20
  %10 = or i32 %9, %prot
  br i1 %brmerge, label %if.end.i.mmap_prot.exit_crit_edge, label %if.end6.i

if.end.i.mmap_prot.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmap_prot.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i = tail call zeroext i1 @path_noexec(ptr noundef %f_path.i) #13
  %spec.select.i = select i1 %call7.i, i32 %prot, i32 %or9.i
  br label %mmap_prot.exit

mmap_prot.exit:                                   ; preds = %if.end6.i, %if.end.i.mmap_prot.exit_crit_edge, %for.body.mmap_prot.exit_crit_edge
  %retval.0.i = phi i32 [ %prot, %for.body.mmap_prot.exit_crit_edge ], [ %10, %if.end.i.mmap_prot.exit_crit_edge ], [ %spec.select.i, %if.end6.i ]
  %call3 = tail call i32 %2(ptr noundef %file, i32 noundef %prot, i32 noundef %retval.0.i, i32 noundef %flags) #13
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %mmap_prot.exit.for.cond_crit_edge, label %mmap_prot.exit.cleanup_crit_edge

mmap_prot.exit.cleanup_crit_edge:                 ; preds = %mmap_prot.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

mmap_prot.exit.for.cond_crit_edge:                ; preds = %mmap_prot.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end17:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = tail call i32 @ima_file_mmap(ptr noundef %file, i32 noundef %prot) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %mmap_prot.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end17 ], [ %call3, %mmap_prot.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_file_mmap(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_mmap_addr(i32 noundef %addr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 86), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(i32 noundef %addr) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_file_mprotect(ptr noundef %vma, i32 noundef %reqprot, i32 noundef %prot) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 88), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %if.end16, label %for.body

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %vma, i32 noundef %reqprot, i32 noundef %prot) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end16:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 @ima_file_mprotect(ptr noundef %vma, i32 noundef %prot) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_file_mprotect(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_file_lock(ptr noundef %file, i32 noundef %cmd) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 89), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %file, i32 noundef %cmd) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_file_fcntl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 90), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_file_set_fowner(ptr noundef %file) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 91), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %file) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_file_send_sigiotask(ptr noundef %tsk, ptr noundef %fown, i32 noundef %sig) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 92), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %tsk, ptr noundef %fown, i32 noundef %sig) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_file_receive(ptr noundef %file) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 93), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %file) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_file_open(ptr noundef %file) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 94), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %if.end16, label %for.body

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %file) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end16:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call fastcc i32 @fsnotify_perm(ptr noundef %file, i32 noundef 32)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_alloc(ptr noundef %task, i32 noundef %clone_flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @blob_sizes.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %if.end8.i.i.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %security.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 215
  %1 = ptrtoint ptr %security.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %security.i, align 16
  br label %for.cond.preheader

if.end8.i.i.i:                                    ; preds = %entry
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #19
  %security1.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 215
  %2 = ptrtoint ptr %security1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i.i, ptr %security1.i, align 16
  %cmp3.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp3.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end8.i.i.i.for.cond.preheader_crit_edge

if.end8.i.i.i.for.cond.preheader_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8.i.i.i.for.cond.preheader_crit_edge, %if.then.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 95), %for.cond.preheader ]
  %3 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool3.not = icmp eq ptr %P.0, null
  br i1 %tobool3.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %4 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hook, align 4
  %call4 = tail call i32 %5(ptr noundef %task, i32 noundef %clone_flags) #13
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %if.then21

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @security_task_free(ptr noundef %task)
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %for.cond.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then21 ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_task_free(ptr noundef %task) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.022 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 96), align 4
  %tobool2.not23 = icmp eq ptr %P.022, null
  br i1 %tobool2.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.024 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.022, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.024, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %task) #13
  %2 = ptrtoint ptr %P.024 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.024, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %security = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 215
  %3 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %security, align 16
  tail call void @kfree(ptr noundef %4) #13
  %5 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %security, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_cred_alloc_blank(ptr noundef %cred, i32 noundef %gfp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @blob_sizes.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %if.end8.i.i.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %security.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %1 = ptrtoint ptr %security.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %security.i, align 4
  br label %for.cond.preheader

if.end8.i.i.i:                                    ; preds = %entry
  %or.i.i = or i32 %gfp, 256
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef %or.i.i) #19
  %security1.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %2 = ptrtoint ptr %security1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i.i, ptr %security1.i, align 4
  %cmp3.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp3.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end8.i.i.i.for.cond.preheader_crit_edge

if.end8.i.i.i.for.cond.preheader_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8.i.i.i.for.cond.preheader_crit_edge, %if.then.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 97), %for.cond.preheader ]
  %3 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool3.not = icmp eq ptr %P.0, null
  br i1 %tobool3.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %4 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hook, align 4
  %call4 = tail call i32 %5(ptr noundef %cred, i32 noundef %gfp) #13
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %if.then21

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @security_cred_free(ptr noundef %cred)
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %for.cond.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then21 ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_cred_free(ptr noundef %cred) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %security = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %0 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %security, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %for.cond.preheader, !prof !358

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.cond.preheader:                               ; preds = %entry
  %P.026 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 98), align 4
  %tobool4.not27 = icmp eq ptr %P.026, null
  br i1 %tobool4.not27, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %P.028 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.026, %for.cond.preheader.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.028, i32 0, i32 2
  %2 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hook, align 4
  tail call void %3(ptr noundef %cred) #13
  %4 = ptrtoint ptr %P.028 to i32
  call void @__asan_load4_noabort(i32 %4)
  %P.0 = load ptr, ptr %P.028, align 4
  %tobool4.not = icmp eq ptr %P.0, null
  br i1 %tobool4.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %5 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %security, align 4
  tail call void @kfree(ptr noundef %6) #13
  %7 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %security, align 4
  br label %return

return:                                           ; preds = %for.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_prepare_creds(ptr noundef %new, ptr noundef %old, i32 noundef %gfp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @blob_sizes.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %if.end8.i.i.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %security.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 23
  %1 = ptrtoint ptr %security.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %security.i, align 4
  br label %for.cond.preheader

if.end8.i.i.i:                                    ; preds = %entry
  %or.i.i = or i32 %gfp, 256
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef %or.i.i) #19
  %security1.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 23
  %2 = ptrtoint ptr %security1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i.i, ptr %security1.i, align 4
  %cmp3.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp3.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end8.i.i.i.for.cond.preheader_crit_edge

if.end8.i.i.i.for.cond.preheader_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8.i.i.i.for.cond.preheader_crit_edge, %if.then.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 99), %for.cond.preheader ]
  %3 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool3.not = icmp eq ptr %P.0, null
  br i1 %tobool3.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %4 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hook, align 4
  %call4 = tail call i32 %5(ptr noundef %new, ptr noundef %old, i32 noundef %gfp) #13
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %if.then21

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @security_cred_free(ptr noundef %new)
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %for.cond.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then21 ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_transfer_creds(ptr noundef %new, ptr noundef %old) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 100), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %new, ptr noundef %old) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_cred_getsecid(ptr noundef %c, ptr noundef %secid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %secid, align 4
  %P.020 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 101), align 4
  %tobool2.not21 = icmp eq ptr %P.020, null
  br i1 %tobool2.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.022 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.020, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.022, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  tail call void %2(ptr noundef %c, ptr noundef %secid) #13
  %3 = ptrtoint ptr %P.022 to i32
  call void @__asan_load4_noabort(i32 %3)
  %P.0 = load ptr, ptr %P.022, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_kernel_act_as(ptr noundef %new, i32 noundef %secid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 102), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %new, i32 noundef %secid) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_kernel_create_files_as(ptr noundef %new, ptr noundef %inode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 103), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %new, ptr noundef %inode) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_kernel_module_request(ptr noundef %kmod_name) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 104), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %if.end16, label %for.body

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %kmod_name) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end16:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 @integrity_kernel_module_request(ptr noundef %kmod_name) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @integrity_kernel_module_request(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_kernel_read_file(ptr noundef %file, i32 noundef %id, i1 noundef zeroext %contents) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 107), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %if.end17, label %for.body

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %file, i32 noundef %id, i1 noundef zeroext %contents) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end17:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call i32 @ima_read_file(ptr noundef %file, i32 noundef %id, i1 noundef zeroext %contents) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end17 ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_read_file(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_kernel_post_read_file(ptr noundef %file, ptr noundef %buf, i64 noundef %size, i32 noundef %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 108), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %if.end16, label %for.body

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %file, ptr noundef %buf, i64 noundef %size, i32 noundef %id) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end16:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 @ima_post_read_file(ptr noundef %file, ptr noundef %buf, i64 noundef %size, i32 noundef %id) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_post_read_file(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_kernel_load_data(i32 noundef %id, i1 noundef zeroext %contents) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 105), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %if.end17, label %for.body

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(i32 noundef %id, i1 noundef zeroext %contents) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end17:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call i32 @ima_load_data(i32 noundef %id, i1 noundef zeroext %contents) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end17 ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_load_data(i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_kernel_post_load_data(ptr noundef %buf, i64 noundef %size, i32 noundef %id, ptr noundef %description) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 106), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %if.end16, label %for.body

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %buf, i64 noundef %size, i32 noundef %id, ptr noundef %description) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end16:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 @ima_post_load_data(ptr noundef %buf, i64 noundef %size, i32 noundef %id, ptr noundef %description) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_post_load_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_fix_setuid(ptr noundef %new, ptr noundef %old, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 109), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %new, ptr noundef %old, i32 noundef %flags) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_fix_setgid(ptr noundef %new, ptr noundef %old, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 110), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %new, ptr noundef %old, i32 noundef %flags) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_setpgid(ptr noundef %p, i32 noundef %pgid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 111), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %p, i32 noundef %pgid) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_getpgid(ptr noundef %p) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 112), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %p) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_getsid(ptr noundef %p) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 113), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %p) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_current_getsecid_subj(ptr noundef %secid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %secid, align 4
  %P.020 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 114), align 4
  %tobool2.not21 = icmp eq ptr %P.020, null
  br i1 %tobool2.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.022 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.020, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.022, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  tail call void %2(ptr noundef %secid) #13
  %3 = ptrtoint ptr %P.022 to i32
  call void @__asan_load4_noabort(i32 %3)
  %P.0 = load ptr, ptr %P.022, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_task_getsecid_obj(ptr noundef %p, ptr noundef %secid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %secid, align 4
  %P.020 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 115), align 4
  %tobool2.not21 = icmp eq ptr %P.020, null
  br i1 %tobool2.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.022 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.020, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.022, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  tail call void %2(ptr noundef %p, ptr noundef %secid) #13
  %3 = ptrtoint ptr %P.022 to i32
  call void @__asan_load4_noabort(i32 %3)
  %P.0 = load ptr, ptr %P.022, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_setnice(ptr noundef %p, i32 noundef %nice) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 116), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %p, i32 noundef %nice) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_setioprio(ptr noundef %p, i32 noundef %ioprio) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 117), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %p, i32 noundef %ioprio) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_getioprio(ptr noundef %p) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 118), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %p) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_prlimit(ptr noundef %cred, ptr noundef %tcred, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 119), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %cred, ptr noundef %tcred, i32 noundef %flags) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_setrlimit(ptr noundef %p, i32 noundef %resource, ptr noundef %new_rlim) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 120), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %p, i32 noundef %resource, ptr noundef %new_rlim) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_setscheduler(ptr noundef %p) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 121), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %p) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_getscheduler(ptr noundef %p) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 122), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %p) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_movememory(ptr noundef %p) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 123), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %p) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_kill(ptr noundef %p, ptr noundef %info, i32 noundef %sig, ptr noundef %cred) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 124), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %p, ptr noundef %info, i32 noundef %sig, ptr noundef %cred) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_task_prctl(i32 noundef %option, i32 noundef %arg2, i32 noundef %arg3, i32 noundef %arg4, i32 noundef %arg5) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hp.024 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 125), align 4
  %tobool2.not25 = icmp eq ptr %hp.024, null
  br i1 %tobool2.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %hp.027 = phi ptr [ %hp.0, %for.inc.for.body_crit_edge ], [ %hp.024, %entry.for.body_crit_edge ]
  %rc.026 = phi i32 [ %rc.1, %for.inc.for.body_crit_edge ], [ -38, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %hp.027, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  %call = tail call i32 %1(i32 noundef %option, i32 noundef %arg2, i32 noundef %arg3, i32 noundef %arg4, i32 noundef %arg5) #13
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %call, label %for.body.for.end_crit_edge [
    i32 -38, label %for.body.for.inc_crit_edge
    i32 0, label %for.inc.fold.split
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.fold.split:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %for.inc.fold.split, %for.body.for.inc_crit_edge
  %rc.1 = phi i32 [ %rc.026, %for.body.for.inc_crit_edge ], [ 0, %for.inc.fold.split ]
  %3 = ptrtoint ptr %hp.027 to i32
  call void @__asan_load4_noabort(i32 %3)
  %hp.0 = load ptr, ptr %hp.027, align 4
  %tobool2.not = icmp eq ptr %hp.0, null
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rc.2 = phi i32 [ -38, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ %rc.1, %for.inc.for.end_crit_edge ]
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_task_to_inode(ptr noundef %p, ptr noundef %inode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 126), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %p, ptr noundef %inode) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_ipc_permission(ptr noundef %ipcp, i16 noundef signext %flag) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 127), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %ipcp, i16 noundef signext %flag) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_ipc_getsecid(ptr noundef %ipcp, ptr noundef %secid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %secid, align 4
  %P.020 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 128), align 4
  %tobool2.not21 = icmp eq ptr %P.020, null
  br i1 %tobool2.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.022 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.020, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.022, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  tail call void %2(ptr noundef %ipcp, ptr noundef %secid) #13
  %3 = ptrtoint ptr %P.022 to i32
  call void @__asan_load4_noabort(i32 %3)
  %P.0 = load ptr, ptr %P.022, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_msg_msg_alloc(ptr noundef %msg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @blob_sizes.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %if.end8.i.i.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %security.i = getelementptr inbounds %struct.msg_msg, ptr %msg, i32 0, i32 4
  %1 = ptrtoint ptr %security.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %security.i, align 4
  br label %for.cond.preheader

if.end8.i.i.i:                                    ; preds = %entry
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #19
  %security1.i = getelementptr inbounds %struct.msg_msg, ptr %msg, i32 0, i32 4
  %2 = ptrtoint ptr %security1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i.i, ptr %security1.i, align 4
  %cmp3.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp3.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end8.i.i.i.for.cond.preheader_crit_edge

if.end8.i.i.i.for.cond.preheader_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8.i.i.i.for.cond.preheader_crit_edge, %if.then.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 129), %for.cond.preheader ]
  %3 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %4 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %5(ptr noundef %msg) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %if.then27

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @security_msg_msg_free(ptr noundef %msg)
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %for.cond.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then27 ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_msg_msg_free(ptr noundef %msg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.022 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 130), align 4
  %tobool2.not23 = icmp eq ptr %P.022, null
  br i1 %tobool2.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.024 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.022, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.024, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %msg) #13
  %2 = ptrtoint ptr %P.024 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.024, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %security = getelementptr inbounds %struct.msg_msg, ptr %msg, i32 0, i32 4
  %3 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %security, align 4
  tail call void @kfree(ptr noundef %4) #13
  %5 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %security, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_msg_queue_alloc(ptr noundef %msq) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @blob_sizes.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %if.end8.i.i.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %security.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %msq, i32 0, i32 10
  %1 = ptrtoint ptr %security.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %security.i, align 16
  br label %for.cond.preheader

if.end8.i.i.i:                                    ; preds = %entry
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #19
  %security1.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %msq, i32 0, i32 10
  %2 = ptrtoint ptr %security1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i.i, ptr %security1.i, align 16
  %cmp3.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp3.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end8.i.i.i.for.cond.preheader_crit_edge

if.end8.i.i.i.for.cond.preheader_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8.i.i.i.for.cond.preheader_crit_edge, %if.then.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 131), %for.cond.preheader ]
  %3 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %4 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %5(ptr noundef %msq) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %if.then27

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @security_msg_queue_free(ptr noundef %msq)
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %for.cond.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then27 ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_msg_queue_free(ptr noundef %msq) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.022 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 132), align 4
  %tobool2.not23 = icmp eq ptr %P.022, null
  br i1 %tobool2.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.024 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.022, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.024, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %msq) #13
  %2 = ptrtoint ptr %P.024 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.024, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %security = getelementptr inbounds %struct.kern_ipc_perm, ptr %msq, i32 0, i32 10
  %3 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %security, align 16
  tail call void @kfree(ptr noundef %4) #13
  %5 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %security, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_msg_queue_associate(ptr noundef %msq, i32 noundef %msqflg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 133), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %msq, i32 noundef %msqflg) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_msg_queue_msgctl(ptr noundef %msq, i32 noundef %cmd) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 134), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %msq, i32 noundef %cmd) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_msg_queue_msgsnd(ptr noundef %msq, ptr noundef %msg, i32 noundef %msqflg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 135), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %msq, ptr noundef %msg, i32 noundef %msqflg) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_msg_queue_msgrcv(ptr noundef %msq, ptr noundef %msg, ptr noundef %target, i32 noundef %type, i32 noundef %mode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 136), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %msq, ptr noundef %msg, ptr noundef %target, i32 noundef %type, i32 noundef %mode) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_shm_alloc(ptr noundef %shp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @blob_sizes.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %if.end8.i.i.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %security.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %shp, i32 0, i32 10
  %1 = ptrtoint ptr %security.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %security.i, align 16
  br label %for.cond.preheader

if.end8.i.i.i:                                    ; preds = %entry
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #19
  %security1.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %shp, i32 0, i32 10
  %2 = ptrtoint ptr %security1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i.i, ptr %security1.i, align 16
  %cmp3.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp3.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end8.i.i.i.for.cond.preheader_crit_edge

if.end8.i.i.i.for.cond.preheader_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8.i.i.i.for.cond.preheader_crit_edge, %if.then.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 137), %for.cond.preheader ]
  %3 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %4 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %5(ptr noundef %shp) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %if.then27

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @security_shm_free(ptr noundef %shp)
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %for.cond.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then27 ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_shm_free(ptr noundef %shp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.022 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 138), align 4
  %tobool2.not23 = icmp eq ptr %P.022, null
  br i1 %tobool2.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.024 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.022, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.024, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %shp) #13
  %2 = ptrtoint ptr %P.024 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.024, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %security = getelementptr inbounds %struct.kern_ipc_perm, ptr %shp, i32 0, i32 10
  %3 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %security, align 16
  tail call void @kfree(ptr noundef %4) #13
  %5 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %security, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_shm_associate(ptr noundef %shp, i32 noundef %shmflg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 139), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %shp, i32 noundef %shmflg) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_shm_shmctl(ptr noundef %shp, i32 noundef %cmd) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 140), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %shp, i32 noundef %cmd) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_shm_shmat(ptr noundef %shp, ptr noundef %shmaddr, i32 noundef %shmflg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 141), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %shp, ptr noundef %shmaddr, i32 noundef %shmflg) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sem_alloc(ptr noundef %sma) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @blob_sizes.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %if.end8.i.i.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %security.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %sma, i32 0, i32 10
  %1 = ptrtoint ptr %security.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %security.i, align 16
  br label %for.cond.preheader

if.end8.i.i.i:                                    ; preds = %entry
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #19
  %security1.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %sma, i32 0, i32 10
  %2 = ptrtoint ptr %security1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i.i, ptr %security1.i, align 16
  %cmp3.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp3.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end8.i.i.i.for.cond.preheader_crit_edge

if.end8.i.i.i.for.cond.preheader_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8.i.i.i.for.cond.preheader_crit_edge, %if.then.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %P.0.in = phi ptr [ %P.0, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 142), %for.cond.preheader ]
  %3 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool5.not = icmp eq ptr %P.0, null
  br i1 %tobool5.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %4 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hook, align 4
  %call6 = tail call i32 %5(ptr noundef %sma) #13
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %if.then27

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @security_sem_free(ptr noundef %sma)
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %for.cond.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then27 ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_sem_free(ptr noundef %sma) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.022 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 143), align 4
  %tobool2.not23 = icmp eq ptr %P.022, null
  br i1 %tobool2.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.024 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.022, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.024, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %sma) #13
  %2 = ptrtoint ptr %P.024 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.024, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %security = getelementptr inbounds %struct.kern_ipc_perm, ptr %sma, i32 0, i32 10
  %3 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %security, align 16
  tail call void @kfree(ptr noundef %4) #13
  %5 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %security, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sem_associate(ptr noundef %sma, i32 noundef %semflg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 144), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sma, i32 noundef %semflg) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sem_semctl(ptr noundef %sma, i32 noundef %cmd) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 145), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sma, i32 noundef %cmd) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sem_semop(ptr noundef %sma, ptr noundef %sops, i32 noundef %nsops, i32 noundef %alter) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 146), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sma, ptr noundef %sops, i32 noundef %nsops, i32 noundef %alter) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_d_instantiate(ptr noundef %dentry, ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.rhs

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.rhs:                                         ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.rhs.do.body_crit_edge, label %land.rhs.do.end_crit_edge, !prof !357

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry.do.body_crit_edge
  %P.025 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 148), align 4
  %tobool6.not26 = icmp eq ptr %P.025, null
  br i1 %tobool6.not26, label %do.body.do.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body.for.body_crit_edge
  %P.027 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.025, %do.body.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.027, i32 0, i32 2
  %2 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hook, align 4
  tail call void %3(ptr noundef %dentry, ptr noundef %inode) #13
  %4 = ptrtoint ptr %P.027 to i32
  call void @__asan_load4_noabort(i32 %4)
  %P.0 = load ptr, ptr %P.027, align 4
  %tobool6.not = icmp eq ptr %P.0, null
  br i1 %tobool6.not, label %for.body.do.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %for.body.do.end_crit_edge, %do.body.do.end_crit_edge, %land.rhs.do.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_getprocattr(ptr noundef %p, ptr noundef readonly %lsm, ptr noundef %name, ptr noundef %value) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %lsm, null
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %hp.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 149), %entry ], [ %hp.0, %land.lhs.true.for.cond_crit_edge ]
  %0 = ptrtoint ptr %hp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %hp.0 = load ptr, ptr %hp.0.in, align 4
  %tobool2.not = icmp eq ptr %hp.0, null
  br i1 %tobool2.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  br i1 %cmp.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %lsm3 = getelementptr inbounds %struct.security_hook_list, ptr %hp.0, i32 0, i32 3
  %1 = ptrtoint ptr %lsm3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lsm3, align 4
  %call = tail call i32 @strcmp(ptr noundef nonnull %lsm, ptr noundef %2) #21
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %hp.0, i32 0, i32 2
  %3 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hook, align 4
  %call5 = tail call i32 %4(ptr noundef %p, ptr noundef %name, ptr noundef %value) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_setprocattr(ptr noundef readonly %lsm, ptr noundef %name, ptr noundef %value, i32 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %lsm, null
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %hp.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 150), %entry ], [ %hp.0, %land.lhs.true.for.cond_crit_edge ]
  %0 = ptrtoint ptr %hp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %hp.0 = load ptr, ptr %hp.0.in, align 4
  %tobool2.not = icmp eq ptr %hp.0, null
  br i1 %tobool2.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  br i1 %cmp.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %lsm3 = getelementptr inbounds %struct.security_hook_list, ptr %hp.0, i32 0, i32 3
  %1 = ptrtoint ptr %lsm3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lsm3, align 4
  %call = tail call i32 @strcmp(ptr noundef nonnull %lsm, ptr noundef %2) #21
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %hp.0, i32 0, i32 2
  %3 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hook, align 4
  %call5 = tail call i32 %4(ptr noundef %name, ptr noundef %value, i32 noundef %size) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_netlink_send(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 147), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sk, ptr noundef %skb) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_ismaclabel(ptr noundef %name) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 151), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %name) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_secid_to_secctx(i32 noundef %secid, ptr noundef %secdata, ptr noundef %seclen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %hp.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 152), %entry ], [ %hp.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %hp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %hp.0 = load ptr, ptr %hp.0.in, align 4
  %tobool2.not = icmp eq ptr %hp.0, null
  br i1 %tobool2.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %hp.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(i32 noundef %secid, ptr noundef %secdata, ptr noundef %seclen) #13
  %cmp.not = icmp eq i32 %call, -95
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %for.body.cleanup_crit_edge ], [ -95, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_secctx_to_secid(ptr noundef %secdata, i32 noundef %seclen, ptr noundef %secid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %secid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 153), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %2 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hook, align 4
  %call = tail call i32 %3(ptr noundef %secdata, i32 noundef %seclen, ptr noundef %secid) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_release_secctx(ptr noundef %secdata, i32 noundef %seclen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 154), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %secdata, i32 noundef %seclen) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_inode_invalidate_secctx(ptr noundef %inode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 155), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %inode) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_notifysecctx(ptr noundef %inode, ptr noundef %ctx, i32 noundef %ctxlen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 156), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %inode, ptr noundef %ctx, i32 noundef %ctxlen) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_setsecctx(ptr noundef %dentry, ptr noundef %ctx, i32 noundef %ctxlen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 157), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %dentry, ptr noundef %ctx, i32 noundef %ctxlen) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inode_getsecctx(ptr noundef %inode, ptr noundef %ctx, ptr noundef %ctxlen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.021 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 158), align 4
  %tobool2.not22 = icmp eq ptr %P.021, null
  br i1 %tobool2.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond:                                         ; preds = %for.body
  %0 = ptrtoint ptr %P.023 to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.023, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %P.023 = phi ptr [ %P.0, %for.cond.for.body_crit_edge ], [ %P.021, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.023, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %inode, ptr noundef %ctx, ptr noundef %ctxlen) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %RC.1 = phi i32 [ -95, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_post_notification(ptr noundef %w_cred, ptr noundef %cred, ptr noundef %n) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 159), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %w_cred, ptr noundef %cred, ptr noundef %n) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_watch_key(ptr noundef %key) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 160), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %key) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_unix_stream_connect(ptr noundef %sock, ptr noundef %other, ptr noundef %newsk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 161), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock, ptr noundef %other, ptr noundef %newsk) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_unix_may_send(ptr noundef %sock, ptr noundef %other) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 162), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock, ptr noundef %other) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_create(i32 noundef %family, i32 noundef %type, i32 noundef %protocol, i32 noundef %kern) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 163), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(i32 noundef %family, i32 noundef %type, i32 noundef %protocol, i32 noundef %kern) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_post_create(ptr noundef %sock, i32 noundef %family, i32 noundef %type, i32 noundef %protocol, i32 noundef %kern) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 164), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock, i32 noundef %family, i32 noundef %type, i32 noundef %protocol, i32 noundef %kern) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_socketpair(ptr noundef %socka, ptr noundef %sockb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 165), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %socka, ptr noundef %sockb) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_bind(ptr noundef %sock, ptr noundef %address, i32 noundef %addrlen) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 166), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock, ptr noundef %address, i32 noundef %addrlen) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_connect(ptr noundef %sock, ptr noundef %address, i32 noundef %addrlen) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 167), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock, ptr noundef %address, i32 noundef %addrlen) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_listen(ptr noundef %sock, i32 noundef %backlog) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 168), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock, i32 noundef %backlog) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_accept(ptr noundef %sock, ptr noundef %newsock) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 169), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock, ptr noundef %newsock) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 170), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock, ptr noundef %msg, i32 noundef %size) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 171), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_getsockname(ptr noundef %sock) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 172), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_getpeername(ptr noundef %sock) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 173), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_getsockopt(ptr noundef %sock, i32 noundef %level, i32 noundef %optname) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 174), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock, i32 noundef %level, i32 noundef %optname) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_setsockopt(ptr noundef %sock, i32 noundef %level, i32 noundef %optname) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 175), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock, i32 noundef %level, i32 noundef %optname) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_shutdown(ptr noundef %sock, i32 noundef %how) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 176), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock, i32 noundef %how) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sock_rcv_skb(ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 177), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sk, ptr noundef %skb) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_getpeersec_stream(ptr noundef %sock, ptr noundef %optval, ptr noundef %optlen, i32 noundef %len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.021 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 178), align 4
  %tobool2.not22 = icmp eq ptr %P.021, null
  br i1 %tobool2.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond:                                         ; preds = %for.body
  %0 = ptrtoint ptr %P.023 to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.023, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %P.023 = phi ptr [ %P.0, %for.cond.for.body_crit_edge ], [ %P.021, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.023, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock, ptr noundef %optval, ptr noundef %optlen, i32 noundef %len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %RC.1 = phi i32 [ -92, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_socket_getpeersec_dgram(ptr noundef %sock, ptr noundef %skb, ptr noundef %secid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.021 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 179), align 4
  %tobool2.not22 = icmp eq ptr %P.021, null
  br i1 %tobool2.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond:                                         ; preds = %for.body
  %0 = ptrtoint ptr %P.023 to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.023, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %P.023 = phi ptr [ %P.0, %for.cond.for.body_crit_edge ], [ %P.021, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.023, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sock, ptr noundef %skb, ptr noundef %secid) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %RC.1 = phi i32 [ -92, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sk_alloc(ptr noundef %sk, i32 noundef %family, i32 noundef %priority) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 180), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sk, i32 noundef %family, i32 noundef %priority) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_sk_free(ptr noundef %sk) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 181), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %sk) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_sk_clone(ptr noundef %sk, ptr noundef %newsk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 182), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %sk, ptr noundef %newsk) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_sk_classify_flow(ptr noundef %sk, ptr noundef %flic) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 183), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %flowic_secid = getelementptr inbounds %struct.flowi_common, ptr %flic, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %P.021 = phi ptr [ %P.019, %for.body.lr.ph ], [ %P.0, %for.body.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %sk, ptr noundef %flowic_secid) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_req_classify_flow(ptr noundef %req, ptr noundef %flic) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 191), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %req, ptr noundef %flic) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_sock_graft(ptr noundef %sk, ptr noundef %parent) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 184), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %sk, ptr noundef %parent) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_inet_conn_request(ptr noundef %sk, ptr noundef %skb, ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 185), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sk, ptr noundef %skb, ptr noundef %req) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_inet_csk_clone(ptr noundef %newsk, ptr noundef %req) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 186), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %newsk, ptr noundef %req) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_inet_conn_established(ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 187), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %sk, ptr noundef %skb) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_secmark_relabel_packet(i32 noundef %secid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 188), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(i32 noundef %secid) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_secmark_refcount_inc() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 189), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1() #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_secmark_refcount_dec() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 190), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1() #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_tun_dev_alloc_security(ptr noundef %security) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 192), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %security) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_tun_dev_free_security(ptr noundef %security) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 193), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %security) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_tun_dev_create() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 194), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2() #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_tun_dev_attach_queue(ptr noundef %security) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 195), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %security) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_tun_dev_attach(ptr noundef %sk, ptr noundef %security) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 196), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sk, ptr noundef %security) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_tun_dev_open(ptr noundef %security) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 197), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %security) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sctp_assoc_request(ptr noundef %asoc, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 198), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %asoc, ptr noundef %skb) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_sctp_bind_connect(ptr noundef %sk, i32 noundef %optname, ptr noundef %address, i32 noundef %addrlen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 199), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sk, i32 noundef %optname, ptr noundef %address, i32 noundef %addrlen) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_sctp_sk_clone(ptr noundef %asoc, ptr noundef %sk, ptr noundef %newsk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 200), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %asoc, ptr noundef %sk, ptr noundef %newsk) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_ib_pkey_access(ptr noundef %sec, i64 noundef %subnet_prefix, i16 noundef zeroext %pkey) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 201), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sec, i64 noundef %subnet_prefix, i16 noundef zeroext %pkey) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_ib_endport_manage_subnet(ptr noundef %sec, ptr noundef %dev_name, i8 noundef zeroext %port_num) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 202), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sec, ptr noundef %dev_name, i8 noundef zeroext %port_num) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_ib_alloc_security(ptr noundef %sec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 203), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %sec) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_ib_free_security(ptr noundef %sec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 204), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %sec) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_xfrm_policy_alloc(ptr noundef %ctxp, ptr noundef %sec_ctx, i32 noundef %gfp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 205), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %ctxp, ptr noundef %sec_ctx, i32 noundef %gfp) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_xfrm_policy_clone(ptr noundef %old_ctx, ptr noundef %new_ctxp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 206), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %old_ctx, ptr noundef %new_ctxp) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_xfrm_policy_free(ptr noundef %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 207), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %ctx) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_xfrm_policy_delete(ptr noundef %ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 208), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %ctx) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_xfrm_state_alloc(ptr noundef %x, ptr noundef %sec_ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 209), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %x, ptr noundef %sec_ctx) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_xfrm_state_alloc_acquire(ptr noundef %x, ptr noundef %polsec, i32 noundef %secid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 210), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %x, ptr noundef %polsec, i32 noundef %secid) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_xfrm_state_delete(ptr noundef %x) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 212), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %x) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_xfrm_state_free(ptr noundef %x) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 211), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %x) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_xfrm_policy_lookup(ptr noundef %ctx, i32 noundef %fl_secid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 213), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %ctx, i32 noundef %fl_secid) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_xfrm_state_pol_flow_match(ptr noundef %x, ptr noundef %xp, ptr noundef %flic) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 214), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %x, ptr noundef %xp, ptr noundef %flic) #13
  br label %for.end

for.end:                                          ; preds = %for.body, %entry.for.end_crit_edge
  %rc.0 = phi i32 [ %call, %for.body ], [ 1, %entry.for.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_xfrm_decode_session(ptr noundef %skb, ptr noundef %secid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 215), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %skb, ptr noundef %secid, i32 noundef 1) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_skb_classify_flow(ptr noundef %skb, ptr noundef %flic) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flowic_secid = getelementptr inbounds %struct.flowi_common, ptr %flic, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 215), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %do.end27, label %for.body

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %skb, ptr noundef %flowic_secid, i32 noundef 0) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %do.body19

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

do.body19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/security.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2513, 0\0A.popsection", ""() #13, !srcloc !361
  unreachable

do.end27:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_key_alloc(ptr noundef %key, ptr noundef %cred, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 216), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %key, ptr noundef %cred, i32 noundef %flags) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_key_free(ptr noundef %key) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 217), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %key) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_key_permission(ptr noundef %key_ref, ptr noundef %cred, i32 noundef %need_perm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 218), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %key_ref, ptr noundef %cred, i32 noundef %need_perm) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_key_getsecurity(ptr noundef %key, ptr noundef %_buffer) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %_buffer, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 219), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %2 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hook, align 4
  %call = tail call i32 %3(ptr noundef %key, ptr noundef %_buffer) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_audit_rule_init(i32 noundef %field, i32 noundef %op, ptr noundef %rulestr, ptr noundef %lsmrule) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 220), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(i32 noundef %field, i32 noundef %op, ptr noundef %rulestr, ptr noundef %lsmrule) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_audit_rule_known(ptr noundef %krule) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 221), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %krule) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_audit_rule_free(ptr noundef %lsmrule) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 223), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %lsmrule) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_audit_rule_match(i32 noundef %secid, i32 noundef %field, i32 noundef %op, ptr noundef %lsmrule) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 222), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(i32 noundef %secid, i32 noundef %field, i32 noundef %op, ptr noundef %lsmrule) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_bpf(i32 noundef %cmd, ptr noundef %attr, i32 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 224), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(i32 noundef %cmd, ptr noundef %attr, i32 noundef %size) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_bpf_map(ptr noundef %map, i32 noundef %fmode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 225), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %map, i32 noundef %fmode) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_bpf_prog(ptr noundef %prog) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 226), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %prog) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_bpf_map_alloc(ptr noundef %map) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 227), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %map) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_bpf_prog_alloc(ptr noundef %aux) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 229), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %aux) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_bpf_map_free(ptr noundef %map) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 228), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %map) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_bpf_prog_free(ptr noundef %aux) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 230), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %aux) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_locked_down(i32 noundef %what) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 231), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(i32 noundef %what) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_perf_event_open(ptr noundef %attr, i32 noundef %type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 232), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %attr, i32 noundef %type) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_perf_event_alloc(ptr noundef %event) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 233), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %event) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @security_perf_event_free(ptr noundef %event) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %P.019 = load ptr, ptr getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 234), align 4
  %tobool2.not20 = icmp eq ptr %P.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %P.021 = phi ptr [ %P.0, %for.body.for.body_crit_edge ], [ %P.019, %entry.for.body_crit_edge ]
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.021, i32 0, i32 2
  %0 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hook, align 4
  tail call void %1(ptr noundef %event) #13
  %2 = ptrtoint ptr %P.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %P.0 = load ptr, ptr %P.021, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_perf_event_read(ptr noundef %event) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 235), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %event) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_perf_event_write(ptr noundef %event) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 236), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %event) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_uring_override_creds(ptr noundef %new) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 237), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2(ptr noundef %new) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @security_uring_sqpoll() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %P.0.in = phi ptr [ getelementptr inbounds (%struct.security_hook_heads, ptr @security_hook_heads, i32 0, i32 238), %entry ], [ %P.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %P.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %P.0 = load ptr, ptr %P.0.in, align 4
  %tobool2.not = icmp eq ptr %P.0, null
  br i1 %tobool2.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hook = getelementptr inbounds %struct.security_hook_list, ptr %P.0, i32 0, i32 2
  %1 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hook, align 4
  %call = tail call i32 %2() #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %RC.1 = phi i32 [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %RC.1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @lsm_allowed(ptr nocapture noundef readonly %lsm) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled.i = getelementptr inbounds %struct.lsm_info, ptr %lsm, i32 0, i32 3
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enabled.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %is_enabled.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

is_enabled.exit:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.i.not = icmp eq i32 %3, 0
  br i1 %tobool2.i.not, label %is_enabled.exit.return_crit_edge, label %if.end

is_enabled.exit.return_crit_edge:                 ; preds = %is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %is_enabled.exit
  %flags = getelementptr inbounds %struct.lsm_info, ptr %lsm, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.return_crit_edge, label %land.lhs.true

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr @exclusive, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %do.body

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.body:                                          ; preds = %land.lhs.true
  %.b12 = load i1, ptr @debug, align 1
  br i1 %.b12, label %do.end, label %do.body.return_crit_edge

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %lsm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lsm, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %8) #17
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge, %land.lhs.true.return_crit_edge, %if.end.return_crit_edge, %is_enabled.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %is_enabled.exit.return_crit_edge ], [ false, %do.body.return_crit_edge ], [ false, %do.end ], [ true, %land.lhs.true.return_crit_edge ], [ true, %if.end.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @lsm_set_blob_sizes(ptr noundef %needed) unnamed_addr #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %needed, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %needed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %needed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.lsm_set_blob_size.exit_crit_edge

if.end.lsm_set_blob_size.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %lsm_set_blob_size.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %2 = load i32, ptr @blob_sizes.0, align 4
  %add.i = add i32 %2, %1
  store i32 %add.i, ptr @blob_sizes.0, align 4
  %3 = ptrtoint ptr %needed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %needed, align 4
  br label %lsm_set_blob_size.exit

lsm_set_blob_size.exit:                           ; preds = %if.then.i, %if.end.lsm_set_blob_size.exit_crit_edge
  %lbs_file = getelementptr inbounds %struct.lsm_blob_sizes, ptr %needed, i32 0, i32 1
  %4 = ptrtoint ptr %lbs_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lbs_file, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i13 = icmp sgt i32 %5, 0
  br i1 %cmp.i13, label %if.then.i15, label %lsm_set_blob_size.exit.lsm_set_blob_size.exit16_crit_edge

lsm_set_blob_size.exit.lsm_set_blob_size.exit16_crit_edge: ; preds = %lsm_set_blob_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %lsm_set_blob_size.exit16

if.then.i15:                                      ; preds = %lsm_set_blob_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  %6 = load i32, ptr @blob_sizes.1, align 4
  %add.i14 = add i32 %6, %5
  store i32 %add.i14, ptr @blob_sizes.1, align 4
  %7 = ptrtoint ptr %lbs_file to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %lbs_file, align 4
  br label %lsm_set_blob_size.exit16

lsm_set_blob_size.exit16:                         ; preds = %if.then.i15, %lsm_set_blob_size.exit.lsm_set_blob_size.exit16_crit_edge
  %lbs_inode = getelementptr inbounds %struct.lsm_blob_sizes, ptr %needed, i32 0, i32 2
  %8 = ptrtoint ptr %lbs_inode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lbs_inode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %lsm_set_blob_size.exit16.lsm_set_blob_size.exit20_crit_edge, label %land.lhs.true

lsm_set_blob_size.exit16.lsm_set_blob_size.exit20_crit_edge: ; preds = %lsm_set_blob_size.exit16
  call void @__sanitizer_cov_trace_pc() #15
  br label %lsm_set_blob_size.exit20

land.lhs.true:                                    ; preds = %lsm_set_blob_size.exit16
  %10 = load i32, ptr @blob_sizes.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then2, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  store i32 8, ptr @blob_sizes.2, align 4
  %11 = ptrtoint ptr %lbs_inode to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %lbs_inode, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %land.lhs.true.if.end3_crit_edge
  %12 = phi i32 [ %.pr, %if.then2 ], [ %9, %land.lhs.true.if.end3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i17 = icmp sgt i32 %12, 0
  br i1 %cmp.i17, label %if.then.i19, label %if.end3.lsm_set_blob_size.exit20_crit_edge

if.end3.lsm_set_blob_size.exit20_crit_edge:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %lsm_set_blob_size.exit20

if.then.i19:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %13 = load i32, ptr @blob_sizes.2, align 4
  %add.i18 = add i32 %13, %12
  store i32 %add.i18, ptr @blob_sizes.2, align 4
  %14 = ptrtoint ptr %lbs_inode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %lbs_inode, align 4
  br label %lsm_set_blob_size.exit20

lsm_set_blob_size.exit20:                         ; preds = %if.then.i19, %if.end3.lsm_set_blob_size.exit20_crit_edge, %lsm_set_blob_size.exit16.lsm_set_blob_size.exit20_crit_edge
  %lbs_ipc = getelementptr inbounds %struct.lsm_blob_sizes, ptr %needed, i32 0, i32 4
  %15 = ptrtoint ptr %lbs_ipc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lbs_ipc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i21 = icmp sgt i32 %16, 0
  br i1 %cmp.i21, label %if.then.i23, label %lsm_set_blob_size.exit20.lsm_set_blob_size.exit24_crit_edge

lsm_set_blob_size.exit20.lsm_set_blob_size.exit24_crit_edge: ; preds = %lsm_set_blob_size.exit20
  call void @__sanitizer_cov_trace_pc() #15
  br label %lsm_set_blob_size.exit24

if.then.i23:                                      ; preds = %lsm_set_blob_size.exit20
  call void @__sanitizer_cov_trace_pc() #15
  %17 = load i32, ptr @blob_sizes.4, align 4
  %add.i22 = add i32 %17, %16
  store i32 %add.i22, ptr @blob_sizes.4, align 4
  %18 = ptrtoint ptr %lbs_ipc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %lbs_ipc, align 4
  br label %lsm_set_blob_size.exit24

lsm_set_blob_size.exit24:                         ; preds = %if.then.i23, %lsm_set_blob_size.exit20.lsm_set_blob_size.exit24_crit_edge
  %lbs_msg_msg = getelementptr inbounds %struct.lsm_blob_sizes, ptr %needed, i32 0, i32 5
  %19 = ptrtoint ptr %lbs_msg_msg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lbs_msg_msg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i25 = icmp sgt i32 %20, 0
  br i1 %cmp.i25, label %if.then.i27, label %lsm_set_blob_size.exit24.lsm_set_blob_size.exit28_crit_edge

lsm_set_blob_size.exit24.lsm_set_blob_size.exit28_crit_edge: ; preds = %lsm_set_blob_size.exit24
  call void @__sanitizer_cov_trace_pc() #15
  br label %lsm_set_blob_size.exit28

if.then.i27:                                      ; preds = %lsm_set_blob_size.exit24
  call void @__sanitizer_cov_trace_pc() #15
  %21 = load i32, ptr @blob_sizes.5, align 4
  %add.i26 = add i32 %21, %20
  store i32 %add.i26, ptr @blob_sizes.5, align 4
  %22 = ptrtoint ptr %lbs_msg_msg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %lbs_msg_msg, align 4
  br label %lsm_set_blob_size.exit28

lsm_set_blob_size.exit28:                         ; preds = %if.then.i27, %lsm_set_blob_size.exit24.lsm_set_blob_size.exit28_crit_edge
  %lbs_superblock = getelementptr inbounds %struct.lsm_blob_sizes, ptr %needed, i32 0, i32 3
  %23 = ptrtoint ptr %lbs_superblock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lbs_superblock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i29 = icmp sgt i32 %24, 0
  br i1 %cmp.i29, label %if.then.i31, label %lsm_set_blob_size.exit28.lsm_set_blob_size.exit32_crit_edge

lsm_set_blob_size.exit28.lsm_set_blob_size.exit32_crit_edge: ; preds = %lsm_set_blob_size.exit28
  call void @__sanitizer_cov_trace_pc() #15
  br label %lsm_set_blob_size.exit32

if.then.i31:                                      ; preds = %lsm_set_blob_size.exit28
  call void @__sanitizer_cov_trace_pc() #15
  %25 = load i32, ptr @blob_sizes.3, align 4
  %add.i30 = add i32 %25, %24
  store i32 %add.i30, ptr @blob_sizes.3, align 4
  %26 = ptrtoint ptr %lbs_superblock to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %lbs_superblock, align 4
  br label %lsm_set_blob_size.exit32

lsm_set_blob_size.exit32:                         ; preds = %if.then.i31, %lsm_set_blob_size.exit28.lsm_set_blob_size.exit32_crit_edge
  %lbs_task = getelementptr inbounds %struct.lsm_blob_sizes, ptr %needed, i32 0, i32 6
  %27 = ptrtoint ptr %lbs_task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lbs_task, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i33 = icmp sgt i32 %28, 0
  br i1 %cmp.i33, label %if.then.i35, label %lsm_set_blob_size.exit32.return_crit_edge

lsm_set_blob_size.exit32.return_crit_edge:        ; preds = %lsm_set_blob_size.exit32
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then.i35:                                      ; preds = %lsm_set_blob_size.exit32
  call void @__sanitizer_cov_trace_pc() #15
  %29 = load i32, ptr @blob_sizes.6, align 4
  %add.i34 = add i32 %29, %28
  store i32 %add.i34, ptr @blob_sizes.6, align 4
  %30 = ptrtoint ptr %lbs_task to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %lbs_task, align 4
  br label %return

return:                                           ; preds = %if.then.i35, %lsm_set_blob_size.exit32.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ordered_lsm_parse(ptr noundef %order, ptr noundef %origin) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %next = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next) #13
  br i1 icmp ult (ptr @__start_lsm_info, ptr @__end_lsm_info), label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %lsm.0147 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @__start_lsm_info, %entry.for.body_crit_edge ]
  %order1 = getelementptr inbounds %struct.lsm_info, ptr %lsm.0147, i32 0, i32 1
  %0 = ptrtoint ptr %order1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %order1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp2 = icmp eq i32 %1, -1
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @append_ordered_lsm(ptr noundef %lsm.0147, ptr noundef nonnull @.str.65) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.lsm_info, ptr %lsm.0147, i32 1
  %cmp = icmp ult ptr %incdec.ptr, @__end_lsm_info
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %2 = load ptr, ptr @chosen_major_lsm, align 4
  %tobool.not = icmp eq ptr %2, null
  %brmerge = or i1 %tobool.not, icmp uge (ptr @__start_lsm_info, ptr @__end_lsm_info)
  br i1 %brmerge, label %for.end.if.end23_crit_edge, label %for.end.for.body6_crit_edge

for.end.for.body6_crit_edge:                      ; preds = %for.end
  br label %for.body6

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.body6:                                        ; preds = %for.inc20.for.body6_crit_edge, %for.end.for.body6_crit_edge
  %major.0149 = phi ptr [ %incdec.ptr21, %for.inc20.for.body6_crit_edge ], [ @__start_lsm_info, %for.end.for.body6_crit_edge ]
  %flags = getelementptr inbounds %struct.lsm_info, ptr %major.0149, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %for.body6.for.inc20_crit_edge, label %land.lhs.true

for.body6.for.inc20_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20

land.lhs.true:                                    ; preds = %for.body6
  %5 = ptrtoint ptr %major.0149 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %major.0149, align 4
  %7 = load ptr, ptr @chosen_major_lsm, align 4
  %call = tail call i32 @strcmp(ptr noundef %6, ptr noundef %7) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9.not = icmp eq i32 %call, 0
  br i1 %cmp9.not, label %land.lhs.true.for.inc20_crit_edge, label %if.then10

land.lhs.true.for.inc20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20

if.then10:                                        ; preds = %land.lhs.true
  %enabled1.i = getelementptr inbounds %struct.lsm_info, ptr %major.0149, i32 0, i32 3
  %8 = ptrtoint ptr %enabled1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enabled1.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else6.i

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %enabled1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @lsm_enabled_false, ptr %enabled1.i, align 4
  br label %set_enabled.exit

if.else6.i:                                       ; preds = %if.then10
  %cmp.i = icmp eq ptr %9, @lsm_enabled_true
  br i1 %cmp.i, label %if.then8.i, label %if.else13.i

if.then8.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %enabled1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @lsm_enabled_false, ptr %enabled1.i, align 4
  br label %set_enabled.exit

if.else13.i:                                      ; preds = %if.else6.i
  %cmp15.i = icmp eq ptr %9, @lsm_enabled_false
  br i1 %cmp15.i, label %if.else13.i.set_enabled.exit_crit_edge, label %if.else21.i

if.else13.i.set_enabled.exit_crit_edge:           ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_enabled.exit

if.else21.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %9, align 4
  br label %set_enabled.exit

set_enabled.exit:                                 ; preds = %if.else21.i, %if.else13.i.set_enabled.exit_crit_edge, %if.then8.i, %if.then.i
  %.b121126 = load i1, ptr @debug, align 1
  br i1 %.b121126, label %do.end, label %set_enabled.exit.for.inc20_crit_edge

set_enabled.exit.for.inc20_crit_edge:             ; preds = %set_enabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20

do.end:                                           ; preds = %set_enabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %major.0149 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %major.0149, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %7, ptr noundef %14) #17
  br label %for.inc20

for.inc20:                                        ; preds = %do.end, %set_enabled.exit.for.inc20_crit_edge, %land.lhs.true.for.inc20_crit_edge, %for.body6.for.inc20_crit_edge
  %incdec.ptr21 = getelementptr %struct.lsm_info, ptr %major.0149, i32 1
  %cmp5 = icmp ult ptr %incdec.ptr21, @__end_lsm_info
  br i1 %cmp5, label %for.inc20.for.body6_crit_edge, label %for.inc20.if.end23_crit_edge

for.inc20.if.end23_crit_edge:                     ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.inc20.for.body6_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body6

if.end23:                                         ; preds = %for.inc20.if.end23_crit_edge, %for.end.if.end23_crit_edge
  %call24 = tail call noalias ptr @kstrdup(ptr noundef %order, i32 noundef 3264) #13
  %15 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call24, ptr %next, align 4
  %call25154 = call ptr @strsep(ptr noundef nonnull %next, ptr noundef nonnull @.str.68) #13
  %cmp26.not155 = icmp eq ptr %call25154, null
  br i1 %cmp26.not155, label %if.end23.while.end_crit_edge, label %if.end23.for.cond27.preheader_crit_edge

if.end23.for.cond27.preheader_crit_edge:          ; preds = %if.end23
  br label %for.cond27.preheader

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

for.cond27.preheader:                             ; preds = %if.end54.for.cond27.preheader_crit_edge, %if.end23.for.cond27.preheader_crit_edge
  %call25156 = phi ptr [ %call25, %if.end54.for.cond27.preheader_crit_edge ], [ %call25154, %if.end23.for.cond27.preheader_crit_edge ]
  br i1 icmp ult (ptr @__start_lsm_info, ptr @__end_lsm_info), label %for.cond27.preheader.for.body29_crit_edge, label %for.cond27.preheader.do.body43_crit_edge

for.cond27.preheader.do.body43_crit_edge:         ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

for.cond27.preheader.for.body29_crit_edge:        ; preds = %for.cond27.preheader
  br label %for.body29

for.body29:                                       ; preds = %for.inc38.for.body29_crit_edge, %for.cond27.preheader.for.body29_crit_edge
  %lsm.1152 = phi ptr [ %incdec.ptr39, %for.inc38.for.body29_crit_edge ], [ @__start_lsm_info, %for.cond27.preheader.for.body29_crit_edge ]
  %found.0.off0151 = phi i1 [ %found.1.off0, %for.inc38.for.body29_crit_edge ], [ false, %for.cond27.preheader.for.body29_crit_edge ]
  %order30 = getelementptr inbounds %struct.lsm_info, ptr %lsm.1152, i32 0, i32 1
  %16 = ptrtoint ptr %order30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %order30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp31 = icmp eq i32 %17, 0
  br i1 %cmp31, label %land.lhs.true32, label %for.body29.for.inc38_crit_edge

for.body29.for.inc38_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc38

land.lhs.true32:                                  ; preds = %for.body29
  %18 = ptrtoint ptr %lsm.1152 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lsm.1152, align 4
  %call34 = call i32 @strcmp(ptr noundef %19, ptr noundef nonnull %call25156) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %land.lhs.true32.for.inc38_crit_edge

land.lhs.true32.for.inc38_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc38

if.then36:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @append_ordered_lsm(ptr noundef %lsm.1152, ptr noundef %origin) #16
  br label %for.inc38

for.inc38:                                        ; preds = %if.then36, %land.lhs.true32.for.inc38_crit_edge, %for.body29.for.inc38_crit_edge
  %found.1.off0 = phi i1 [ true, %if.then36 ], [ %found.0.off0151, %land.lhs.true32.for.inc38_crit_edge ], [ %found.0.off0151, %for.body29.for.inc38_crit_edge ]
  %incdec.ptr39 = getelementptr %struct.lsm_info, ptr %lsm.1152, i32 1
  %cmp28 = icmp ult ptr %incdec.ptr39, @__end_lsm_info
  br i1 %cmp28, label %for.inc38.for.body29_crit_edge, label %for.end40

for.inc38.for.body29_crit_edge:                   ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body29

for.end40:                                        ; preds = %for.inc38
  br i1 %found.1.off0, label %for.end40.if.end54_crit_edge, label %for.end40.do.body43_crit_edge

for.end40.do.body43_crit_edge:                    ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

for.end40.if.end54_crit_edge:                     ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

do.body43:                                        ; preds = %for.end40.do.body43_crit_edge, %for.cond27.preheader.do.body43_crit_edge
  %.b120125 = load i1, ptr @debug, align 1
  br i1 %.b120125, label %do.end48, label %do.body43.if.end54_crit_edge

do.body43.if.end54_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

do.end48:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %origin, ptr noundef nonnull %call25156) #17
  br label %if.end54

if.end54:                                         ; preds = %do.end48, %do.body43.if.end54_crit_edge, %for.end40.if.end54_crit_edge
  %call25 = call ptr @strsep(ptr noundef nonnull %next, ptr noundef nonnull @.str.68) #13
  %cmp26.not = icmp eq ptr %call25, null
  br i1 %cmp26.not, label %if.end54.while.end_crit_edge, label %if.end54.for.cond27.preheader_crit_edge

if.end54.for.cond27.preheader_crit_edge:          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond27.preheader

if.end54.while.end_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end54.while.end_crit_edge, %if.end23.while.end_crit_edge
  %20 = load ptr, ptr @chosen_major_lsm, align 4
  %tobool55.not = icmp eq ptr %20, null
  br i1 %tobool55.not, label %while.end.if.end71_crit_edge, label %for.cond57.preheader

while.end.if.end71_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

for.cond57.preheader:                             ; preds = %while.end
  br i1 icmp ult (ptr @__start_lsm_info, ptr @__end_lsm_info), label %for.cond57.preheader.for.body59_crit_edge, label %for.cond57.preheader.for.end92_crit_edge

for.cond57.preheader.for.end92_crit_edge:         ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end92

for.cond57.preheader.for.body59_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body59

for.body59:                                       ; preds = %for.inc68.for.body59_crit_edge, %for.cond57.preheader.for.body59_crit_edge
  %lsm.2158 = phi ptr [ %incdec.ptr69, %for.inc68.for.body59_crit_edge ], [ @__start_lsm_info, %for.cond57.preheader.for.body59_crit_edge ]
  %21 = load ptr, ptr @ordered_lsms, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.body59
  %check.0.i = phi ptr [ %21, %for.body59 ], [ %incdec.ptr.i, %for.cond.i.for.cond.i_crit_edge ]
  %22 = ptrtoint ptr %check.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %check.0.i, align 4
  %tobool.not.i127 = icmp eq ptr %23, null
  %cmp.i128 = icmp eq ptr %23, %lsm.2158
  %or.cond.i = or i1 %tobool.not.i127, %cmp.i128
  %incdec.ptr.i = getelementptr ptr, ptr %check.0.i, i32 1
  br i1 %or.cond.i, label %exists_ordered_lsm.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

exists_ordered_lsm.exit:                          ; preds = %for.cond.i
  br i1 %tobool.not.i127, label %if.end62, label %exists_ordered_lsm.exit.for.inc68_crit_edge

exists_ordered_lsm.exit.for.inc68_crit_edge:      ; preds = %exists_ordered_lsm.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc68

if.end62:                                         ; preds = %exists_ordered_lsm.exit
  %24 = ptrtoint ptr %lsm.2158 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lsm.2158, align 4
  %26 = load ptr, ptr @chosen_major_lsm, align 4
  %call64 = call i32 @strcmp(ptr noundef %25, ptr noundef %26) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.end62.for.inc68_crit_edge

if.end62.for.inc68_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc68

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @append_ordered_lsm(ptr noundef %lsm.2158, ptr noundef nonnull @.str.72) #16
  br label %for.inc68

for.inc68:                                        ; preds = %if.then66, %if.end62.for.inc68_crit_edge, %exists_ordered_lsm.exit.for.inc68_crit_edge
  %incdec.ptr69 = getelementptr %struct.lsm_info, ptr %lsm.2158, i32 1
  %cmp58 = icmp ult ptr %incdec.ptr69, @__end_lsm_info
  br i1 %cmp58, label %for.inc68.for.body59_crit_edge, label %for.inc68.if.end71_crit_edge

for.inc68.if.end71_crit_edge:                     ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

for.inc68.for.body59_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body59

if.end71:                                         ; preds = %for.inc68.if.end71_crit_edge, %while.end.if.end71_crit_edge
  br i1 icmp ult (ptr @__start_lsm_info, ptr @__end_lsm_info), label %if.end71.for.body74_crit_edge, label %if.end71.for.end92_crit_edge

if.end71.for.end92_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end92

if.end71.for.body74_crit_edge:                    ; preds = %if.end71
  br label %for.body74

for.body74:                                       ; preds = %for.inc90.for.body74_crit_edge, %if.end71.for.body74_crit_edge
  %lsm.3159 = phi ptr [ %incdec.ptr91, %for.inc90.for.body74_crit_edge ], [ @__start_lsm_info, %if.end71.for.body74_crit_edge ]
  %27 = load ptr, ptr @ordered_lsms, align 4
  br label %for.cond.i134

for.cond.i134:                                    ; preds = %for.cond.i134.for.cond.i134_crit_edge, %for.body74
  %check.0.i129 = phi ptr [ %27, %for.body74 ], [ %incdec.ptr.i133, %for.cond.i134.for.cond.i134_crit_edge ]
  %28 = ptrtoint ptr %check.0.i129 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %check.0.i129, align 4
  %tobool.not.i130 = icmp eq ptr %29, null
  %cmp.i131 = icmp eq ptr %29, %lsm.3159
  %or.cond.i132 = or i1 %tobool.not.i130, %cmp.i131
  %incdec.ptr.i133 = getelementptr ptr, ptr %check.0.i129, i32 1
  br i1 %or.cond.i132, label %exists_ordered_lsm.exit135, label %for.cond.i134.for.cond.i134_crit_edge

for.cond.i134.for.cond.i134_crit_edge:            ; preds = %for.cond.i134
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i134

exists_ordered_lsm.exit135:                       ; preds = %for.cond.i134
  br i1 %tobool.not.i130, label %if.end77, label %exists_ordered_lsm.exit135.for.inc90_crit_edge

exists_ordered_lsm.exit135.for.inc90_crit_edge:   ; preds = %exists_ordered_lsm.exit135
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc90

if.end77:                                         ; preds = %exists_ordered_lsm.exit135
  %enabled1.i136 = getelementptr inbounds %struct.lsm_info, ptr %lsm.3159, i32 0, i32 3
  %30 = ptrtoint ptr %enabled1.i136 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %enabled1.i136, align 4
  %tobool.not.i137 = icmp eq ptr %31, null
  br i1 %tobool.not.i137, label %if.then.i138, label %if.else6.i140

if.then.i138:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %enabled1.i136 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @lsm_enabled_false, ptr %enabled1.i136, align 4
  br label %set_enabled.exit146

if.else6.i140:                                    ; preds = %if.end77
  %cmp.i139 = icmp eq ptr %31, @lsm_enabled_true
  br i1 %cmp.i139, label %if.then8.i141, label %if.else13.i143

if.then8.i141:                                    ; preds = %if.else6.i140
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %enabled1.i136 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @lsm_enabled_false, ptr %enabled1.i136, align 4
  br label %set_enabled.exit146

if.else13.i143:                                   ; preds = %if.else6.i140
  %cmp15.i142 = icmp eq ptr %31, @lsm_enabled_false
  br i1 %cmp15.i142, label %if.else13.i143.set_enabled.exit146_crit_edge, label %if.else21.i145

if.else13.i143.set_enabled.exit146_crit_edge:     ; preds = %if.else13.i143
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_enabled.exit146

if.else21.i145:                                   ; preds = %if.else13.i143
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %31, align 4
  br label %set_enabled.exit146

set_enabled.exit146:                              ; preds = %if.else21.i145, %if.else13.i143.set_enabled.exit146_crit_edge, %if.then8.i141, %if.then.i138
  %.b122 = load i1, ptr @debug, align 1
  br i1 %.b122, label %do.end83, label %set_enabled.exit146.for.inc90_crit_edge

set_enabled.exit146.for.inc90_crit_edge:          ; preds = %set_enabled.exit146
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc90

do.end83:                                         ; preds = %set_enabled.exit146
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %lsm.3159 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lsm.3159, align 4
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %origin, ptr noundef %36) #17
  br label %for.inc90

for.inc90:                                        ; preds = %do.end83, %set_enabled.exit146.for.inc90_crit_edge, %exists_ordered_lsm.exit135.for.inc90_crit_edge
  %incdec.ptr91 = getelementptr %struct.lsm_info, ptr %lsm.3159, i32 1
  %cmp73 = icmp ult ptr %incdec.ptr91, @__end_lsm_info
  br i1 %cmp73, label %for.inc90.for.body74_crit_edge, label %for.inc90.for.end92_crit_edge

for.inc90.for.end92_crit_edge:                    ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end92

for.inc90.for.body74_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body74

for.end92:                                        ; preds = %for.inc90.for.end92_crit_edge, %if.end71.for.end92_crit_edge, %for.cond57.preheader.for.end92_crit_edge
  call void @kfree(ptr noundef %call24) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lsm_early_cred(ptr nocapture noundef writeonly %cred) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @blob_sizes.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %if.end8.i.i.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %security.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %1 = ptrtoint ptr %security.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %security.i, align 4
  br label %if.end

if.end8.i.i.i:                                    ; preds = %entry
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #19
  %security1.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %2 = ptrtoint ptr %security1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i.i, ptr %security1.i, align 4
  %cmp3.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp3.i, label %if.then, label %if.end8.i.i.i.if.end_crit_edge

if.end8.i.i.i.if.end_crit_edge:                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.lsm_early_cred) #20
  unreachable

if.end:                                           ; preds = %if.end8.i.i.i.if.end_crit_edge, %if.then.i
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lsm_early_task(ptr nocapture noundef writeonly %task) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @blob_sizes.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %if.end8.i.i.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %security.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 215
  %1 = ptrtoint ptr %security.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %security.i, align 16
  br label %if.end

if.end8.i.i.i:                                    ; preds = %entry
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #19
  %security1.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 215
  %2 = ptrtoint ptr %security1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i.i, ptr %security1.i, align 16
  %cmp3.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp3.i, label %if.then, label %if.end8.i.i.i.if.end_crit_edge

if.end8.i.i.i.if.end_crit_edge:                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.lsm_early_task) #20
  unreachable

if.end:                                           ; preds = %if.end8.i.i.i.if.end_crit_edge, %if.then.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @append_ordered_lsm(ptr noundef %lsm, ptr noundef %from) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ordered_lsms, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry
  %check.0.i = phi ptr [ %0, %entry ], [ %incdec.ptr.i, %for.cond.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %check.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %check.0.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %cmp.i = icmp eq ptr %2, %lsm
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  %incdec.ptr.i = getelementptr ptr, ptr %check.0.i, i32 1
  br i1 %or.cond.i, label %exists_ordered_lsm.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

exists_ordered_lsm.exit:                          ; preds = %for.cond.i
  br i1 %tobool.not.i, label %if.end, label %exists_ordered_lsm.exit.do.end39_crit_edge

exists_ordered_lsm.exit.do.end39_crit_edge:       ; preds = %exists_ordered_lsm.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

if.end:                                           ; preds = %exists_ordered_lsm.exit
  %3 = load i32, ptr @last_lsm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 sdiv (i32 sub (i32 ptrtoint (ptr @__end_lsm_info to i32), i32 ptrtoint (ptr @__start_lsm_info to i32)), i32 24))
  %cmp = icmp eq i32 %3, sdiv (i32 sub (i32 ptrtoint (ptr @__end_lsm_info to i32), i32 ptrtoint (ptr @__start_lsm_info to i32)), i32 24)
  br i1 %cmp, label %do.end, label %if.end23.critedge, !prof !358

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 152, i32 noundef 9, ptr noundef nonnull @.str.76, ptr noundef %from) #13
  br label %do.end39

if.end23.critedge:                                ; preds = %if.end
  %enabled = getelementptr inbounds %struct.lsm_info, ptr %lsm, i32 0, i32 3
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enabled, align 4
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %if.then25, label %if.end23.critedge.if.end27_crit_edge

if.end23.critedge.if.end27_crit_edge:             ; preds = %if.end23.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then25:                                        ; preds = %if.end23.critedge
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @lsm_enabled_true, ptr %enabled, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.critedge.if.end27_crit_edge
  %inc = add i32 %3, 1
  store i32 %inc, ptr @last_lsm, align 4
  %arrayidx = getelementptr ptr, ptr %0, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %lsm, ptr %arrayidx, align 4
  %.b47 = load i1, ptr @debug, align 1
  br i1 %.b47, label %do.end33, label %if.end27.do.end39_crit_edge

if.end27.do.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

do.end33:                                         ; preds = %if.end27
  %8 = ptrtoint ptr %lsm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lsm, align 4
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enabled, align 4
  %tobool.not.i48 = icmp eq ptr %11, null
  br i1 %tobool.not.i48, label %do.end33.is_enabled.exit.thread_crit_edge, label %is_enabled.exit

do.end33.is_enabled.exit.thread_crit_edge:        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_enabled.exit.thread

is_enabled.exit:                                  ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.i.not = icmp eq i32 %13, 0
  %spec.select = select i1 %tobool2.i.not, ptr @.str.80, ptr @.str.79
  br label %is_enabled.exit.thread

is_enabled.exit.thread:                           ; preds = %is_enabled.exit, %do.end33.is_enabled.exit.thread_crit_edge
  %14 = phi ptr [ @.str.80, %do.end33.is_enabled.exit.thread_crit_edge ], [ %spec.select, %is_enabled.exit ]
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %from, ptr noundef %9, ptr noundef nonnull %14) #17
  br label %do.end39

do.end39:                                         ; preds = %is_enabled.exit.thread, %if.end27.do.end39_crit_edge, %do.end, %exists_ordered_lsm.exit.do.end39_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @path_noexec(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !229, !230, !231, !233, !234, !235, !236, !238, !240, !242, !244, !246, !247, !248, !249, !251, !253, !254, !255, !256, !258, !260, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !294, !296, !298, !300, !302, !304, !305, !306, !307, !309, !311, !312, !313, !315, !317, !318, !319, !321, !323, !324, !325, !326, !327, !328, !330, !332, !334, !336, !338, !339, !340, !341, !343, !345, !346}
!llvm.named.register.sp = !{!347}
!llvm.module.flags = !{!348, !349, !350, !351, !352, !353, !354, !355}
!llvm.ident = !{!356}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/security.c", i32 45, i32 20}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/security.c", i32 46, i32 32}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/security.c", i32 47, i32 23}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/security.c", i32 48, i32 24}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/security.c", i32 49, i32 21}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/security.c", i32 50, i32 27}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/security.c", i32 51, i32 26}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/security.c", i32 52, i32 22}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/security.c", i32 53, i32 19}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/security.c", i32 54, i32 27}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/security.c", i32 55, i32 26}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/security.c", i32 56, i32 27}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/security.c", i32 57, i32 33}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/security.c", i32 58, i32 25}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/security.c", i32 59, i32 23}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/security.c", i32 60, i32 23}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/security.c", i32 61, i32 30}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/security.c", i32 62, i32 29}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/security.c", i32 63, i32 21}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/security.c", i32 64, i32 23}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../security/security.c", i32 65, i32 31}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/security.c", i32 66, i32 20}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/security.c", i32 67, i32 23}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/security.c", i32 68, i32 23}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../security/security.c", i32 69, i32 27}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/security.c", i32 70, i32 35}
!52 = !{ptr @lockdown_reasons, !53, !"lockdown_reasons", i1 false, i1 false}
!53 = !{!"../security/security.c", i32 44, i32 19}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/security.c", i32 395, i32 2}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @security_init._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @security_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__setup_choose_major_lsm, !61, !"__setup_choose_major_lsm", i1 false, i1 false}
!61 = !{!"../security/security.c", i32 418, i32 1}
!62 = !{ptr @__setup_choose_lsm_order, !63, !"__setup_choose_lsm_order", i1 false, i1 false}
!63 = !{!"../security/security.c", i32 426, i32 1}
!64 = !{ptr @__setup_enable_debug, !65, !"__setup_enable_debug", i1 false, i1 false}
!65 = !{!"../security/security.c", i32 434, i32 1}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/security.c", i32 496, i32 10}
!68 = !{ptr @__func__.security_add_hooks, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/security.c", i32 496, i32 45}
!70 = !{ptr @__ksymtab_call_blocking_lsm_notifier, !71, !"__ksymtab_call_blocking_lsm_notifier", i1 false, i1 false}
!71 = !{!"../security/security.c", i32 505, i32 1}
!72 = !{ptr @__ksymtab_register_blocking_lsm_notifier, !73, !"__ksymtab_register_blocking_lsm_notifier", i1 false, i1 false}
!73 = !{!"../security/security.c", i32 512, i32 1}
!74 = !{ptr @__ksymtab_unregister_blocking_lsm_notifier, !75, !"__ksymtab_unregister_blocking_lsm_notifier", i1 false, i1 false}
!75 = !{!"../security/security.c", i32 519, i32 1}
!76 = !{ptr @__ksymtab_security_free_mnt_opts, !77, !"__ksymtab_security_free_mnt_opts", i1 false, i1 false}
!77 = !{!"../security/security.c", i32 923, i32 1}
!78 = !{ptr @__ksymtab_security_sb_eat_lsm_opts, !79, !"__ksymtab_security_sb_eat_lsm_opts", i1 false, i1 false}
!79 = !{!"../security/security.c", i32 929, i32 1}
!80 = !{ptr @__ksymtab_security_sb_mnt_opts_compat, !81, !"__ksymtab_security_sb_mnt_opts_compat", i1 false, i1 false}
!81 = !{!"../security/security.c", i32 936, i32 1}
!82 = !{ptr @__ksymtab_security_sb_remount, !83, !"__ksymtab_security_sb_remount", i1 false, i1 false}
!83 = !{!"../security/security.c", i32 943, i32 1}
!84 = !{ptr @__ksymtab_security_sb_set_mnt_opts, !85, !"__ksymtab_security_sb_set_mnt_opts", i1 false, i1 false}
!85 = !{!"../security/security.c", i32 985, i32 1}
!86 = !{ptr @__ksymtab_security_sb_clone_mnt_opts, !87, !"__ksymtab_security_sb_clone_mnt_opts", i1 false, i1 false}
!87 = !{!"../security/security.c", i32 995, i32 1}
!88 = !{ptr @__ksymtab_security_dentry_init_security, !89, !"__ksymtab_security_dentry_init_security", i1 false, i1 false}
!89 = !{!"../security/security.c", i32 1065, i32 1}
!90 = !{ptr @__ksymtab_security_dentry_create_files_as, !91, !"__ksymtab_security_dentry_create_files_as", i1 false, i1 false}
!91 = !{!"../security/security.c", i32 1074, i32 1}
!92 = !{ptr @__ksymtab_security_inode_init_security, !93, !"__ksymtab_security_inode_init_security", i1 false, i1 false}
!93 = !{!"../security/security.c", i32 1109, i32 1}
!94 = !{ptr @__ksymtab_security_old_inode_init_security, !95, !"__ksymtab_security_old_inode_init_security", i1 false, i1 false}
!95 = !{!"../security/security.c", i32 1128, i32 1}
!96 = !{ptr @__ksymtab_security_path_mknod, !97, !"__ksymtab_security_path_mknod", i1 false, i1 false}
!97 = !{!"../security/security.c", i32 1138, i32 1}
!98 = !{ptr @__ksymtab_security_path_mkdir, !99, !"__ksymtab_security_path_mkdir", i1 false, i1 false}
!99 = !{!"../security/security.c", i32 1146, i32 1}
!100 = !{ptr @__ksymtab_security_path_unlink, !101, !"__ksymtab_security_path_unlink", i1 false, i1 false}
!101 = !{!"../security/security.c", i32 1161, i32 1}
!102 = !{ptr @__ksymtab_security_path_rename, !103, !"__ksymtab_security_path_rename", i1 false, i1 false}
!103 = !{!"../security/security.c", i32 1197, i32 1}
!104 = !{ptr @__ksymtab_security_inode_create, !105, !"__ksymtab_security_inode_create", i1 false, i1 false}
!105 = !{!"../security/security.c", i32 1232, i32 1}
!106 = !{ptr @__ksymtab_security_inode_mkdir, !107, !"__ksymtab_security_inode_mkdir", i1 false, i1 false}
!107 = !{!"../security/security.c", i32 1263, i32 1}
!108 = !{ptr @__ksymtab_security_inode_setattr, !109, !"__ksymtab_security_inode_setattr", i1 false, i1 false}
!109 = !{!"../security/security.c", i32 1331, i32 1}
!110 = !{ptr @__ksymtab_security_inode_listsecurity, !111, !"__ksymtab_security_inode_listsecurity", i1 false, i1 false}
!111 = !{!"../security/security.c", i32 1466, i32 1}
!112 = !{ptr @__ksymtab_security_inode_copy_up, !113, !"__ksymtab_security_inode_copy_up", i1 false, i1 false}
!113 = !{!"../security/security.c", i32 1477, i32 1}
!114 = !{ptr @__ksymtab_security_inode_copy_up_xattr, !115, !"__ksymtab_security_inode_copy_up_xattr", i1 false, i1 false}
!115 = !{!"../security/security.c", i32 1498, i32 1}
!116 = !{ptr @__ksymtab_security_file_ioctl, !117, !"__ksymtab_security_file_ioctl", i1 false, i1 false}
!117 = !{!"../security/security.c", i32 1546, i32 1}
!118 = !{ptr @__ksymtab_security_cred_getsecid, !119, !"__ksymtab_security_cred_getsecid", i1 false, i1 false}
!119 = !{!"../security/security.c", i32 1716, i32 1}
!120 = !{ptr @__ksymtab_security_kernel_read_file, !121, !"__ksymtab_security_kernel_read_file", i1 false, i1 false}
!121 = !{!"../security/security.c", i32 1748, i32 1}
!122 = !{ptr @__ksymtab_security_kernel_post_read_file, !123, !"__ksymtab_security_kernel_post_read_file", i1 false, i1 false}
!123 = !{!"../security/security.c", i32 1760, i32 1}
!124 = !{ptr @__ksymtab_security_kernel_load_data, !125, !"__ksymtab_security_kernel_load_data", i1 false, i1 false}
!125 = !{!"../security/security.c", i32 1771, i32 1}
!126 = !{ptr @__ksymtab_security_kernel_post_load_data, !127, !"__ksymtab_security_kernel_post_load_data", i1 false, i1 false}
!127 = !{!"../security/security.c", i32 1785, i32 1}
!128 = !{ptr @__ksymtab_security_current_getsecid_subj, !129, !"__ksymtab_security_current_getsecid_subj", i1 false, i1 false}
!129 = !{!"../security/security.c", i32 1819, i32 1}
!130 = !{ptr @__ksymtab_security_task_getsecid_obj, !131, !"__ksymtab_security_task_getsecid_obj", i1 false, i1 false}
!131 = !{!"../security/security.c", i32 1826, i32 1}
!132 = !{ptr @__ksymtab_security_d_instantiate, !133, !"__ksymtab_security_d_instantiate", i1 false, i1 false}
!133 = !{!"../security/security.c", i32 2045, i32 1}
!134 = !{ptr @__ksymtab_security_ismaclabel, !135, !"__ksymtab_security_ismaclabel", i1 false, i1 false}
!135 = !{!"../security/security.c", i32 2082, i32 1}
!136 = !{ptr @__ksymtab_security_secid_to_secctx, !137, !"__ksymtab_security_secid_to_secctx", i1 false, i1 false}
!137 = !{!"../security/security.c", i32 2101, i32 1}
!138 = !{ptr @__ksymtab_security_secctx_to_secid, !139, !"__ksymtab_security_secctx_to_secid", i1 false, i1 false}
!139 = !{!"../security/security.c", i32 2108, i32 1}
!140 = !{ptr @__ksymtab_security_release_secctx, !141, !"__ksymtab_security_release_secctx", i1 false, i1 false}
!141 = !{!"../security/security.c", i32 2114, i32 1}
!142 = !{ptr @__ksymtab_security_inode_invalidate_secctx, !143, !"__ksymtab_security_inode_invalidate_secctx", i1 false, i1 false}
!143 = !{!"../security/security.c", i32 2120, i32 1}
!144 = !{ptr @__ksymtab_security_inode_notifysecctx, !145, !"__ksymtab_security_inode_notifysecctx", i1 false, i1 false}
!145 = !{!"../security/security.c", i32 2126, i32 1}
!146 = !{ptr @__ksymtab_security_inode_setsecctx, !147, !"__ksymtab_security_inode_setsecctx", i1 false, i1 false}
!147 = !{!"../security/security.c", i32 2132, i32 1}
!148 = !{ptr @__ksymtab_security_inode_getsecctx, !149, !"__ksymtab_security_inode_getsecctx", i1 false, i1 false}
!149 = !{!"../security/security.c", i32 2138, i32 1}
!150 = !{ptr @__ksymtab_security_unix_stream_connect, !151, !"__ksymtab_security_unix_stream_connect", i1 false, i1 false}
!151 = !{!"../security/security.c", i32 2162, i32 1}
!152 = !{ptr @__ksymtab_security_unix_may_send, !153, !"__ksymtab_security_unix_may_send", i1 false, i1 false}
!153 = !{!"../security/security.c", i32 2168, i32 1}
!154 = !{ptr @__ksymtab_security_socket_socketpair, !155, !"__ksymtab_security_socket_socketpair", i1 false, i1 false}
!155 = !{!"../security/security.c", i32 2186, i32 1}
!156 = !{ptr @__ksymtab_security_sock_rcv_skb, !157, !"__ksymtab_security_sock_rcv_skb", i1 false, i1 false}
!157 = !{!"../security/security.c", i32 2248, i32 1}
!158 = !{ptr @__ksymtab_security_socket_getpeersec_dgram, !159, !"__ksymtab_security_socket_getpeersec_dgram", i1 false, i1 false}
!159 = !{!"../security/security.c", i32 2262, i32 1}
!160 = !{ptr @__ksymtab_security_sk_clone, !161, !"__ksymtab_security_sk_clone", i1 false, i1 false}
!161 = !{!"../security/security.c", i32 2278, i32 1}
!162 = !{ptr @__ksymtab_security_sk_classify_flow, !163, !"__ksymtab_security_sk_classify_flow", i1 false, i1 false}
!163 = !{!"../security/security.c", i32 2284, i32 1}
!164 = !{ptr @__ksymtab_security_req_classify_flow, !165, !"__ksymtab_security_req_classify_flow", i1 false, i1 false}
!165 = !{!"../security/security.c", i32 2291, i32 1}
!166 = !{ptr @__ksymtab_security_sock_graft, !167, !"__ksymtab_security_sock_graft", i1 false, i1 false}
!167 = !{!"../security/security.c", i32 2297, i32 1}
!168 = !{ptr @__ksymtab_security_inet_conn_request, !169, !"__ksymtab_security_inet_conn_request", i1 false, i1 false}
!169 = !{!"../security/security.c", i32 2304, i32 1}
!170 = !{ptr @__ksymtab_security_inet_conn_established, !171, !"__ksymtab_security_inet_conn_established", i1 false, i1 false}
!171 = !{!"../security/security.c", i32 2317, i32 1}
!172 = !{ptr @__ksymtab_security_secmark_relabel_packet, !173, !"__ksymtab_security_secmark_relabel_packet", i1 false, i1 false}
!173 = !{!"../security/security.c", i32 2323, i32 1}
!174 = !{ptr @__ksymtab_security_secmark_refcount_inc, !175, !"__ksymtab_security_secmark_refcount_inc", i1 false, i1 false}
!175 = !{!"../security/security.c", i32 2329, i32 1}
!176 = !{ptr @__ksymtab_security_secmark_refcount_dec, !177, !"__ksymtab_security_secmark_refcount_dec", i1 false, i1 false}
!177 = !{!"../security/security.c", i32 2335, i32 1}
!178 = !{ptr @__ksymtab_security_tun_dev_alloc_security, !179, !"__ksymtab_security_tun_dev_alloc_security", i1 false, i1 false}
!179 = !{!"../security/security.c", i32 2341, i32 1}
!180 = !{ptr @__ksymtab_security_tun_dev_free_security, !181, !"__ksymtab_security_tun_dev_free_security", i1 false, i1 false}
!181 = !{!"../security/security.c", i32 2347, i32 1}
!182 = !{ptr @__ksymtab_security_tun_dev_create, !183, !"__ksymtab_security_tun_dev_create", i1 false, i1 false}
!183 = !{!"../security/security.c", i32 2353, i32 1}
!184 = !{ptr @__ksymtab_security_tun_dev_attach_queue, !185, !"__ksymtab_security_tun_dev_attach_queue", i1 false, i1 false}
!185 = !{!"../security/security.c", i32 2359, i32 1}
!186 = !{ptr @__ksymtab_security_tun_dev_attach, !187, !"__ksymtab_security_tun_dev_attach", i1 false, i1 false}
!187 = !{!"../security/security.c", i32 2365, i32 1}
!188 = !{ptr @__ksymtab_security_tun_dev_open, !189, !"__ksymtab_security_tun_dev_open", i1 false, i1 false}
!189 = !{!"../security/security.c", i32 2371, i32 1}
!190 = !{ptr @__ksymtab_security_sctp_assoc_request, !191, !"__ksymtab_security_sctp_assoc_request", i1 false, i1 false}
!191 = !{!"../security/security.c", i32 2377, i32 1}
!192 = !{ptr @__ksymtab_security_sctp_bind_connect, !193, !"__ksymtab_security_sctp_bind_connect", i1 false, i1 false}
!193 = !{!"../security/security.c", i32 2385, i32 1}
!194 = !{ptr @__ksymtab_security_sctp_sk_clone, !195, !"__ksymtab_security_sctp_sk_clone", i1 false, i1 false}
!195 = !{!"../security/security.c", i32 2392, i32 1}
!196 = !{ptr @__ksymtab_security_ib_pkey_access, !197, !"__ksymtab_security_ib_pkey_access", i1 false, i1 false}
!197 = !{!"../security/security.c", i32 2402, i32 1}
!198 = !{ptr @__ksymtab_security_ib_endport_manage_subnet, !199, !"__ksymtab_security_ib_endport_manage_subnet", i1 false, i1 false}
!199 = !{!"../security/security.c", i32 2408, i32 1}
!200 = !{ptr @__ksymtab_security_ib_alloc_security, !201, !"__ksymtab_security_ib_alloc_security", i1 false, i1 false}
!201 = !{!"../security/security.c", i32 2414, i32 1}
!202 = !{ptr @__ksymtab_security_ib_free_security, !203, !"__ksymtab_security_ib_free_security", i1 false, i1 false}
!203 = !{!"../security/security.c", i32 2420, i32 1}
!204 = !{ptr @__ksymtab_security_xfrm_policy_alloc, !205, !"__ksymtab_security_xfrm_policy_alloc", i1 false, i1 false}
!205 = !{!"../security/security.c", i32 2431, i32 1}
!206 = !{ptr @__ksymtab_security_xfrm_policy_free, !207, !"__ksymtab_security_xfrm_policy_free", i1 false, i1 false}
!207 = !{!"../security/security.c", i32 2443, i32 1}
!208 = !{ptr @__ksymtab_security_xfrm_state_alloc, !209, !"__ksymtab_security_xfrm_state_alloc", i1 false, i1 false}
!209 = !{!"../security/security.c", i32 2455, i32 1}
!210 = !{ptr @__ksymtab_security_xfrm_state_delete, !211, !"__ksymtab_security_xfrm_state_delete", i1 false, i1 false}
!211 = !{!"../security/security.c", i32 2467, i32 1}
!212 = !{ptr @__ksymtab_security_skb_classify_flow, !213, !"__ksymtab_security_skb_classify_flow", i1 false, i1 false}
!213 = !{!"../security/security.c", i32 2515, i32 1}
!214 = !{ptr @__ksymtab_security_locked_down, !215, !"__ksymtab_security_locked_down", i1 false, i1 false}
!215 = !{!"../security/security.c", i32 2604, i32 1}
!216 = !{ptr @security_hook_heads, !217, !"security_hook_heads", i1 false, i1 false}
!217 = !{!"../security/security.c", i32 73, i32 28}
!218 = !{ptr @lsm_file_cache, !219, !"lsm_file_cache", i1 false, i1 false}
!219 = !{!"../security/security.c", i32 76, i32 27}
!220 = !{ptr @lsm_inode_cache, !221, !"lsm_inode_cache", i1 false, i1 false}
!221 = !{!"../security/security.c", i32 77, i32 27}
!222 = !{ptr @lsm_names, !223, !"lsm_names", i1 false, i1 false}
!223 = !{!"../security/security.c", i32 79, i32 7}
!224 = !{ptr @lsm_enabled_true, !225, !"lsm_enabled_true", i1 false, i1 false}
!225 = !{!"../security/security.c", i32 108, i32 12}
!226 = !{ptr @.str.30, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../security/security.c", i32 223, i32 4}
!228 = !{ptr @.str.31, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @prepare_lsm._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @prepare_lsm._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.32, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../security/security.c", i32 173, i32 3}
!233 = !{ptr @.str.33, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @lsm_allowed._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @lsm_allowed._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @lsm_enabled_false, !237, !"lsm_enabled_false", i1 false, i1 false}
!237 = !{!"../security/security.c", i32 109, i32 12}
!238 = !{ptr @exclusive, !239, !"exclusive", i1 false, i1 false}
!239 = !{!"../security/security.c", i32 90, i32 36}
!240 = distinct !{null, !241, !"debug", i1 false, i1 false}
!241 = !{!"../security/security.c", i32 92, i32 24}
!242 = distinct !{null, !243, !"blob_sizes", i1 false, i1 false}
!243 = !{!"../security/security.c", i32 80, i32 30}
!244 = !{ptr @.str.34, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../security/security.c", i32 236, i32 3}
!246 = !{ptr @.str.35, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @initialize_lsm._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @initialize_lsm._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.36, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../security/security.c", i32 238, i32 3}
!251 = !{ptr @.str.37, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../security/security.c", i32 328, i32 4}
!253 = !{ptr @.str.38, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @ordered_lsm_init._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @ordered_lsm_init._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.39, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../security/security.c", i32 331, i32 39}
!258 = !{ptr @.str.40, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../security/security.c", i32 86, i32 59}
!260 = !{ptr @.str.41, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../security/security.c", i32 333, i32 40}
!262 = !{ptr @.str.43, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../security/security.c", i32 338, i32 2}
!264 = !{ptr @ordered_lsm_init._entry.42, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @ordered_lsm_init._entry_ptr.44, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.46, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../security/security.c", i32 339, i32 2}
!268 = !{ptr @ordered_lsm_init._entry.45, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @ordered_lsm_init._entry_ptr.47, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.49, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../security/security.c", i32 340, i32 2}
!272 = !{ptr @ordered_lsm_init._entry.48, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @ordered_lsm_init._entry_ptr.50, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.52, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../security/security.c", i32 341, i32 2}
!276 = !{ptr @ordered_lsm_init._entry.51, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @ordered_lsm_init._entry_ptr.53, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.55, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../security/security.c", i32 342, i32 2}
!280 = !{ptr @ordered_lsm_init._entry.54, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @ordered_lsm_init._entry_ptr.56, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.58, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../security/security.c", i32 343, i32 2}
!284 = !{ptr @ordered_lsm_init._entry.57, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @ordered_lsm_init._entry_ptr.59, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.61, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../security/security.c", i32 344, i32 2}
!288 = !{ptr @ordered_lsm_init._entry.60, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @ordered_lsm_init._entry_ptr.62, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.63, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../security/security.c", i32 350, i32 38}
!292 = !{ptr @.str.64, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../security/security.c", i32 354, i32 39}
!294 = !{ptr @ordered_lsms, !295, !"ordered_lsms", i1 false, i1 false}
!295 = !{!"../security/security.c", i32 89, i32 37}
!296 = !{ptr @chosen_lsm_order, !297, !"chosen_lsm_order", i1 false, i1 false}
!297 = !{!"../security/security.c", i32 83, i32 31}
!298 = !{ptr @chosen_major_lsm, !299, !"chosen_major_lsm", i1 false, i1 false}
!299 = !{!"../security/security.c", i32 84, i32 31}
!300 = !{ptr @.str.65, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../security/security.c", i32 251, i32 28}
!302 = !{ptr @.str.66, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../security/security.c", i32 269, i32 5}
!304 = !{ptr @.str.67, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @ordered_lsm_parse._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @ordered_lsm_parse._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.68, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../security/security.c", i32 278, i32 31}
!309 = !{ptr @.str.70, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../security/security.c", i32 290, i32 4}
!311 = !{ptr @ordered_lsm_parse._entry.69, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @ordered_lsm_parse._entry_ptr.71, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.72, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../security/security.c", i32 299, i32 29}
!315 = !{ptr @.str.74, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../security/security.c", i32 308, i32 3}
!317 = !{ptr @ordered_lsm_parse._entry.73, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @ordered_lsm_parse._entry_ptr.75, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.76, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../security/security.c", i32 152, i32 6}
!321 = !{ptr @.str.77, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../security/security.c", i32 160, i32 2}
!323 = !{ptr @.str.78, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @append_ordered_lsm._entry, !322, !"_entry", i1 false, i1 false}
!325 = !{ptr @append_ordered_lsm._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.79, !322, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.80, !322, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @last_lsm, !329, !"last_lsm", i1 false, i1 false}
!329 = !{!"../security/security.c", i32 145, i32 12}
!330 = !{ptr @.str.81, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../security/security.c", i32 554, i32 9}
!332 = !{ptr @__func__.lsm_early_cred, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../security/security.c", i32 554, i32 43}
!334 = !{ptr @.str.82, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../security/security.c", i32 673, i32 9}
!336 = !{ptr @__func__.lsm_early_task, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../security/security.c", i32 673, i32 43}
!338 = !{ptr @__setup_str_choose_major_lsm, !61, !"__setup_str_choose_major_lsm", i1 false, i1 false}
!339 = !{ptr @__setup_str_choose_lsm_order, !63, !"__setup_str_choose_lsm_order", i1 false, i1 false}
!340 = !{ptr @__setup_str_enable_debug, !65, !"__setup_str_enable_debug", i1 false, i1 false}
!341 = !{ptr @.str.83, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../security/security.c", i32 463, i32 30}
!343 = !{ptr @.str.84, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../security/security.c", i32 74, i32 8}
!345 = !{ptr @.str.85, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @blocking_lsm_notifier_chain, !344, !"blocking_lsm_notifier_chain", i1 false, i1 false}
!347 = !{!"sp"}
!348 = !{i32 1, !"wchar_size", i32 2}
!349 = !{i32 1, !"min_enum_size", i32 4}
!350 = !{i32 8, !"branch-target-enforcement", i32 0}
!351 = !{i32 8, !"sign-return-address", i32 0}
!352 = !{i32 8, !"sign-return-address-all", i32 0}
!353 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!354 = !{i32 7, !"uwtable", i32 1}
!355 = !{i32 7, !"frame-pointer", i32 2}
!356 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!357 = !{!"branch_weights", i32 2000, i32 1}
!358 = !{!"branch_weights", i32 1, i32 2000}
!359 = !{i64 2152398304}
!360 = !{i64 2152383237}
!361 = !{i64 2156874191, i64 2156874676, i64 2156874228, i64 2156874284, i64 2156874318, i64 2156874342, i64 2156874383, i64 2156874404, i64 2156874432, i64 2156874466}
