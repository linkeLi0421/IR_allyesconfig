; ModuleID = '/llk/IR_all_yes/fs/posix_acl.c_pt.bc'
source_filename = "../fs/posix_acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+get_cached_acl\22, \22a\22\09"
module asm "\09.weak\09__crc_get_cached_acl\09\09\09\09"
module asm "\09.long\09__crc_get_cached_acl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_cached_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22get_cached_acl\22\09\09\09\09\09"
module asm "__kstrtabns_get_cached_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_cached_acl_rcu\22, \22a\22\09"
module asm "\09.weak\09__crc_get_cached_acl_rcu\09\09\09\09"
module asm "\09.long\09__crc_get_cached_acl_rcu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_cached_acl_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22get_cached_acl_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_get_cached_acl_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_cached_acl\22, \22a\22\09"
module asm "\09.weak\09__crc_set_cached_acl\09\09\09\09"
module asm "\09.long\09__crc_set_cached_acl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_cached_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22set_cached_acl\22\09\09\09\09\09"
module asm "__kstrtabns_set_cached_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+forget_cached_acl\22, \22a\22\09"
module asm "\09.weak\09__crc_forget_cached_acl\09\09\09\09"
module asm "\09.long\09__crc_forget_cached_acl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_forget_cached_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22forget_cached_acl\22\09\09\09\09\09"
module asm "__kstrtabns_forget_cached_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+forget_all_cached_acls\22, \22a\22\09"
module asm "\09.weak\09__crc_forget_all_cached_acls\09\09\09\09"
module asm "\09.long\09__crc_forget_all_cached_acls\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_forget_all_cached_acls:\09\09\09\09\09"
module asm "\09.asciz \09\22forget_all_cached_acls\22\09\09\09\09\09"
module asm "__kstrtabns_forget_all_cached_acls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_acl\22, \22a\22\09"
module asm "\09.weak\09__crc_get_acl\09\09\09\09"
module asm "\09.long\09__crc_get_acl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22get_acl\22\09\09\09\09\09"
module asm "__kstrtabns_get_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+posix_acl_init\22, \22a\22\09"
module asm "\09.weak\09__crc_posix_acl_init\09\09\09\09"
module asm "\09.long\09__crc_posix_acl_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_init:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_init\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+posix_acl_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_posix_acl_alloc\09\09\09\09"
module asm "\09.long\09__crc_posix_acl_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+posix_acl_valid\22, \22a\22\09"
module asm "\09.weak\09__crc_posix_acl_valid\09\09\09\09"
module asm "\09.long\09__crc_posix_acl_valid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_valid\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+posix_acl_equiv_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_posix_acl_equiv_mode\09\09\09\09"
module asm "\09.long\09__crc_posix_acl_equiv_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_equiv_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_equiv_mode\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_equiv_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+posix_acl_from_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_posix_acl_from_mode\09\09\09\09"
module asm "\09.long\09__crc_posix_acl_from_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_from_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_from_mode\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_from_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__posix_acl_create\22, \22a\22\09"
module asm "\09.weak\09__crc___posix_acl_create\09\09\09\09"
module asm "\09.long\09__crc___posix_acl_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___posix_acl_create:\09\09\09\09\09"
module asm "\09.asciz \09\22__posix_acl_create\22\09\09\09\09\09"
module asm "__kstrtabns___posix_acl_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__posix_acl_chmod\22, \22a\22\09"
module asm "\09.weak\09__crc___posix_acl_chmod\09\09\09\09"
module asm "\09.long\09__crc___posix_acl_chmod\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___posix_acl_chmod:\09\09\09\09\09"
module asm "\09.asciz \09\22__posix_acl_chmod\22\09\09\09\09\09"
module asm "__kstrtabns___posix_acl_chmod:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+posix_acl_chmod\22, \22a\22\09"
module asm "\09.weak\09__crc_posix_acl_chmod\09\09\09\09"
module asm "\09.long\09__crc_posix_acl_chmod\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_chmod:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_chmod\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_chmod:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+posix_acl_create\22, \22a\22\09"
module asm "\09.weak\09__crc_posix_acl_create\09\09\09\09"
module asm "\09.long\09__crc_posix_acl_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_create:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_create\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+posix_acl_update_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_posix_acl_update_mode\09\09\09\09"
module asm "\09.long\09__crc_posix_acl_update_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_update_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_update_mode\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_update_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+posix_acl_from_xattr\22, \22a\22\09"
module asm "\09.weak\09__crc_posix_acl_from_xattr\09\09\09\09"
module asm "\09.long\09__crc_posix_acl_from_xattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_from_xattr:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_from_xattr\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_from_xattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+posix_acl_to_xattr\22, \22a\22\09"
module asm "\09.weak\09__crc_posix_acl_to_xattr\09\09\09\09"
module asm "\09.long\09__crc_posix_acl_to_xattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_to_xattr:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_to_xattr\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_to_xattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_posix_acl\22, \22a\22\09"
module asm "\09.weak\09__crc_set_posix_acl\09\09\09\09"
module asm "\09.long\09__crc_set_posix_acl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_posix_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22set_posix_acl\22\09\09\09\09\09"
module asm "__kstrtabns_set_posix_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+posix_acl_access_xattr_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_posix_acl_access_xattr_handler\09\09\09\09"
module asm "\09.long\09__crc_posix_acl_access_xattr_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_access_xattr_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_access_xattr_handler\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_access_xattr_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+posix_acl_default_xattr_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_posix_acl_default_xattr_handler\09\09\09\09"
module asm "\09.long\09__crc_posix_acl_default_xattr_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_default_xattr_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_default_xattr_handler\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_default_xattr_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.8 }
%union.anon.8 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.18, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.72 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon }
%union.anon = type { %struct.kuid_t }
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
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.63 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.32 = type { %struct.callback_head }
%struct.posix_acl_xattr_header = type { i32 }
%struct.posix_acl_xattr_entry = type { i16, i16, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }

@get_cached_acl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/posix_acl.c\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_get_cached_acl = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_cached_acl = external dso_local constant [0 x i8], align 1
@__ksymtab_get_cached_acl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_cached_acl to i32), ptr @__kstrtab_get_cached_acl, ptr @__kstrtabns_get_cached_acl }, section "___ksymtab+get_cached_acl", align 4
@get_cached_acl_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_get_cached_acl_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_cached_acl_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_get_cached_acl_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_cached_acl_rcu to i32), ptr @__kstrtab_get_cached_acl_rcu, ptr @__kstrtabns_get_cached_acl_rcu }, section "___ksymtab+get_cached_acl_rcu", align 4
@__kstrtab_set_cached_acl = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_cached_acl = external dso_local constant [0 x i8], align 1
@__ksymtab_set_cached_acl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_cached_acl to i32), ptr @__kstrtab_set_cached_acl, ptr @__kstrtabns_set_cached_acl }, section "___ksymtab+set_cached_acl", align 4
@__kstrtab_forget_cached_acl = external dso_local constant [0 x i8], align 1
@__kstrtabns_forget_cached_acl = external dso_local constant [0 x i8], align 1
@__ksymtab_forget_cached_acl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @forget_cached_acl to i32), ptr @__kstrtab_forget_cached_acl, ptr @__kstrtabns_forget_cached_acl }, section "___ksymtab+forget_cached_acl", align 4
@__kstrtab_forget_all_cached_acls = external dso_local constant [0 x i8], align 1
@__kstrtabns_forget_all_cached_acls = external dso_local constant [0 x i8], align 1
@__ksymtab_forget_all_cached_acls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @forget_all_cached_acls to i32), ptr @__kstrtab_forget_all_cached_acls, ptr @__kstrtabns_forget_all_cached_acls }, section "___ksymtab+forget_all_cached_acls", align 4
@__kstrtab_get_acl = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_acl = external dso_local constant [0 x i8], align 1
@__ksymtab_get_acl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_acl to i32), ptr @__kstrtab_get_acl, ptr @__kstrtabns_get_acl }, section "___ksymtab+get_acl", align 4
@__kstrtab_posix_acl_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_init = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_init to i32), ptr @__kstrtab_posix_acl_init, ptr @__kstrtabns_posix_acl_init }, section "___ksymtab+posix_acl_init", align 4
@__kstrtab_posix_acl_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_alloc to i32), ptr @__kstrtab_posix_acl_alloc, ptr @__kstrtabns_posix_acl_alloc }, section "___ksymtab+posix_acl_alloc", align 4
@__kstrtab_posix_acl_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_valid to i32), ptr @__kstrtab_posix_acl_valid, ptr @__kstrtabns_posix_acl_valid }, section "___ksymtab+posix_acl_valid", align 4
@__kstrtab_posix_acl_equiv_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_equiv_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_equiv_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_equiv_mode to i32), ptr @__kstrtab_posix_acl_equiv_mode, ptr @__kstrtabns_posix_acl_equiv_mode }, section "___ksymtab+posix_acl_equiv_mode", align 4
@__kstrtab_posix_acl_from_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_from_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_from_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_from_mode to i32), ptr @__kstrtab_posix_acl_from_mode, ptr @__kstrtabns_posix_acl_from_mode }, section "___ksymtab+posix_acl_from_mode", align 4
@__kstrtab___posix_acl_create = external dso_local constant [0 x i8], align 1
@__kstrtabns___posix_acl_create = external dso_local constant [0 x i8], align 1
@__ksymtab___posix_acl_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__posix_acl_create to i32), ptr @__kstrtab___posix_acl_create, ptr @__kstrtabns___posix_acl_create }, section "___ksymtab+__posix_acl_create", align 4
@__kstrtab___posix_acl_chmod = external dso_local constant [0 x i8], align 1
@__kstrtabns___posix_acl_chmod = external dso_local constant [0 x i8], align 1
@__ksymtab___posix_acl_chmod = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__posix_acl_chmod to i32), ptr @__kstrtab___posix_acl_chmod, ptr @__kstrtabns___posix_acl_chmod }, section "___ksymtab+__posix_acl_chmod", align 4
@__kstrtab_posix_acl_chmod = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_chmod = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_chmod = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_chmod to i32), ptr @__kstrtab_posix_acl_chmod, ptr @__kstrtabns_posix_acl_chmod }, section "___ksymtab+posix_acl_chmod", align 4
@__kstrtab_posix_acl_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_create = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_create to i32), ptr @__kstrtab_posix_acl_create, ptr @__kstrtabns_posix_acl_create }, section "___ksymtab_gpl+posix_acl_create", align 4
@__kstrtab_posix_acl_update_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_update_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_update_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_update_mode to i32), ptr @__kstrtab_posix_acl_update_mode, ptr @__kstrtabns_posix_acl_update_mode }, section "___ksymtab+posix_acl_update_mode", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__kstrtab_posix_acl_from_xattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_from_xattr = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_from_xattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_from_xattr to i32), ptr @__kstrtab_posix_acl_from_xattr, ptr @__kstrtabns_posix_acl_from_xattr }, section "___ksymtab+posix_acl_from_xattr", align 4
@__kstrtab_posix_acl_to_xattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_to_xattr = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_to_xattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_to_xattr to i32), ptr @__kstrtab_posix_acl_to_xattr, ptr @__kstrtabns_posix_acl_to_xattr }, section "___ksymtab+posix_acl_to_xattr", align 4
@__kstrtab_set_posix_acl = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_posix_acl = external dso_local constant [0 x i8], align 1
@__ksymtab_set_posix_acl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_posix_acl to i32), ptr @__kstrtab_set_posix_acl, ptr @__kstrtabns_set_posix_acl }, section "___ksymtab+set_posix_acl", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@posix_acl_access_xattr_handler = dso_local constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.3, ptr null, i32 32768, ptr @posix_acl_xattr_list, ptr @posix_acl_xattr_get, ptr @posix_acl_xattr_set }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_posix_acl_access_xattr_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_access_xattr_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_access_xattr_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_access_xattr_handler to i32), ptr @__kstrtab_posix_acl_access_xattr_handler, ptr @__kstrtabns_posix_acl_access_xattr_handler }, section "___ksymtab_gpl+posix_acl_access_xattr_handler", align 4
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@posix_acl_default_xattr_handler = dso_local constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.4, ptr null, i32 16384, ptr @posix_acl_xattr_list, ptr @posix_acl_xattr_get, ptr @posix_acl_xattr_set }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_posix_acl_default_xattr_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_default_xattr_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_default_xattr_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_default_xattr_handler to i32), ptr @__kstrtab_posix_acl_default_xattr_handler, ptr @__kstrtabns_posix_acl_default_xattr_handler }, section "___ksymtab_gpl+posix_acl_default_xattr_handler", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.12 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.14 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.15 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.16 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.17 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 8]
@__sancov_gen_cov_switch_values.20 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 47, i32 9 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 967, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant [31 x i8] c"posix_acl_access_xattr_handler\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 966, i32 28 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 976, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant [32 x i8] c"posix_acl_default_xattr_handler\00", align 1
@___asan_gen_.39 = private constant [18 x i8] c"../fs/posix_acl.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 975, i32 28 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 695, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 723, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab___posix_acl_chmod, ptr @__ksymtab___posix_acl_create, ptr @__ksymtab_forget_all_cached_acls, ptr @__ksymtab_forget_cached_acl, ptr @__ksymtab_get_acl, ptr @__ksymtab_get_cached_acl, ptr @__ksymtab_get_cached_acl_rcu, ptr @__ksymtab_posix_acl_access_xattr_handler, ptr @__ksymtab_posix_acl_alloc, ptr @__ksymtab_posix_acl_chmod, ptr @__ksymtab_posix_acl_create, ptr @__ksymtab_posix_acl_default_xattr_handler, ptr @__ksymtab_posix_acl_equiv_mode, ptr @__ksymtab_posix_acl_from_mode, ptr @__ksymtab_posix_acl_from_xattr, ptr @__ksymtab_posix_acl_init, ptr @__ksymtab_posix_acl_to_xattr, ptr @__ksymtab_posix_acl_update_mode, ptr @__ksymtab_posix_acl_valid, ptr @__ksymtab_set_cached_acl, ptr @__ksymtab_set_posix_acl, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @posix_acl_access_xattr_handler, ptr @.str.4, ptr @posix_acl_default_xattr_handler, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @posix_acl_access_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @posix_acl_default_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_cached_acl(ptr noundef %inode, i32 noundef %type) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.body.i [
    i32 32768, label %sw.bb.i
    i32 16384, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  br label %acl_by_type.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_default_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  br label %acl_by_type.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/posix_acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #11, !srcloc !81
  unreachable

acl_by_type.exit:                                 ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %i_default_acl.i, %sw.bb1.i ], [ %i_acl.i, %sw.bb.i ]
  br label %for.cond

for.cond:                                         ; preds = %rcu_read_unlock.exit, %acl_by_type.exit
  %1 = call i32 @llvm.read_register.i32(metadata !71) #11
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !82
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %for.cond.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.cond.rcu_read_lock.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.cond
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.cond.rcu_read_lock.exit_crit_edge
  %5 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %retval.0.i, align 4
  %call2 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @get_cached_acl.__warned, align 1
  br i1 %.b28, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_cached_acl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 47, ptr noundef nonnull @.str.1) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %6, null
  %7 = ptrtoint ptr %6 to i32
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool.i
  br i1 %or.cond, label %do.end8.for.end_crit_edge, label %lor.lhs.false12

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

lor.lhs.false12:                                  ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %6, i32 noundef 4) #11
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %6, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %lor.lhs.false12
  %10 = phi i32 [ %9, %lor.lhs.false12 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i29 = add i32 %10, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %14 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 %13, i32 %add.i.i.i29, ptr elementtype(i32) %6) #11, !srcloc !83
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !84

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %15 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %16, 1
  %17 = or i32 %add5.i.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !84

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 0) #11
  %18 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %19 = phi i32 [ %16, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.i.i.i.not = icmp eq i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  br i1 %tobool12.i.i.i.not, label %if.end15, label %refcount_inc_not_zero.exit.for.end_crit_edge

refcount_inc_not_zero.exit.for.end_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end15:                                         ; preds = %refcount_inc_not_zero.exit
  %call.i30 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i30, label %if.end15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i33

if.end15.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i33:                                ; preds = %if.end15
  %call1.i31 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i35

land.lhs.true.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i35:                               ; preds = %land.lhs.true.i33
  %.b4.i34 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i34, label %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, label %if.then.i36

land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i36:                                      ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i36, %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, %if.end15.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %20 = call i32 @llvm.read_register.i32(metadata !71) #11
  %and.i.i.i.i.i37 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i37 to ptr
  %preempt_count.i.i.i.i38 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i38, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i38, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !86
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !87
  br label %for.cond

for.end:                                          ; preds = %refcount_inc_not_zero.exit.for.end_crit_edge, %do.end8.for.end_crit_edge
  %call.i39 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i39, label %for.end.rcu_read_unlock.exit49_crit_edge, label %land.lhs.true.i42

for.end.rcu_read_unlock.exit49_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit49

land.lhs.true.i42:                                ; preds = %for.end
  %call1.i40 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40)
  %tobool.not.i41 = icmp eq i32 %call1.i40, 0
  br i1 %tobool.not.i41, label %land.lhs.true.i42.rcu_read_unlock.exit49_crit_edge, label %land.lhs.true2.i44

land.lhs.true.i42.rcu_read_unlock.exit49_crit_edge: ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit49

land.lhs.true2.i44:                               ; preds = %land.lhs.true.i42
  %.b4.i43 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i43, label %land.lhs.true2.i44.rcu_read_unlock.exit49_crit_edge, label %if.then.i45

land.lhs.true2.i44.rcu_read_unlock.exit49_crit_edge: ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit49

if.then.i45:                                      ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_unlock.exit49

rcu_read_unlock.exit49:                           ; preds = %if.then.i45, %land.lhs.true2.i44.rcu_read_unlock.exit49_crit_edge, %land.lhs.true.i42.rcu_read_unlock.exit49_crit_edge, %for.end.rcu_read_unlock.exit49_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  %24 = call i32 @llvm.read_register.i32(metadata !71) #11
  %and.i.i.i.i.i46 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i46 to ptr
  %preempt_count.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i47, align 4
  %sub.i.i.i48 = add i32 %27, -1
  store volatile i32 %sub.i.i.i48, ptr %preempt_count.i.i.i.i47, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_cached_acl_rcu(ptr noundef %inode, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %type, label %do.body.i [
    i32 32768, label %sw.bb.i
    i32 16384, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  br label %acl_by_type.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_default_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  br label %acl_by_type.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/posix_acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #11, !srcloc !81
  unreachable

acl_by_type.exit:                                 ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %i_default_acl.i, %sw.bb1.i ], [ %i_acl.i, %sw.bb.i ]
  %1 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %retval.0.i, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %acl_by_type.exit.do.end8_crit_edge

acl_by_type.exit.do.end8_crit_edge:               ; preds = %acl_by_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true:                                    ; preds = %acl_by_type.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b21 = load i1, ptr @get_cached_acl_rcu.__warned, align 1
  br i1 %.b21, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_cached_acl_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 61, ptr noundef nonnull @.str.1) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %acl_by_type.exit.do.end8_crit_edge
  %cmp = icmp eq ptr %2, inttoptr (i32 -3 to ptr)
  br i1 %cmp, label %if.then10, label %do.end8.if.end15_crit_edge

do.end8.if.end15_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then10:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %3 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_op, align 8
  %get_acl = getelementptr inbounds %struct.inode_operations, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %get_acl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_acl, align 4
  %call11 = tail call ptr %6(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext true) #11
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr inttoptr (i32 -3 to ptr), ptr %call11
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %do.end8.if.end15_crit_edge
  %acl.1 = phi ptr [ %spec.select, %if.then10 ], [ %2, %do.end8.if.end15_crit_edge ]
  ret ptr %acl.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_cached_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %acl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %type, label %do.body.i [
    i32 32768, label %sw.bb.i
    i32 16384, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  br label %acl_by_type.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_default_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  br label %acl_by_type.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/posix_acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #11, !srcloc !81
  unreachable

acl_by_type.exit:                                 ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %i_default_acl.i, %sw.bb1.i ], [ %i_acl.i, %sw.bb.i ]
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %retval.0.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !88
  %tobool.not.i = icmp eq ptr %acl, null
  br i1 %tobool.not.i, label %acl_by_type.exit.posix_acl_dup.exit_crit_edge, label %if.then.i

acl_by_type.exit.posix_acl_dup.exit_crit_edge:    ; preds = %acl_by_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_dup.exit

if.then.i:                                        ; preds = %acl_by_type.exit
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull %acl, i32 1, i32 3, i32 1) #11
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl, ptr nonnull %acl, i32 1, ptr nonnull elementtype(i32) %acl) #11, !srcloc !89
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !90

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.posix_acl_dup.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !84

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.posix_acl_dup.exit_crit_edge:     ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_dup.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl, i32 noundef %.sink.i.i.i.i) #11
  br label %posix_acl_dup.exit

posix_acl_dup.exit:                               ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.posix_acl_dup.exit_crit_edge, %acl_by_type.exit.posix_acl_dup.exit_crit_edge
  %3 = ptrtoint ptr %acl to i32
  tail call void @llvm.prefetch.p0(ptr %retval.0.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %3, ptr %retval.0.i) #11, !srcloc !91
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  %5 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !92
  %and.i = and i32 %asmresult.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i20 = icmp eq i32 %asmresult.i, 0
  %or.cond = or i1 %tobool.not.i20, %tobool.i
  br i1 %or.cond, label %posix_acl_dup.exit.if.end_crit_edge, label %land.lhs.true.i

posix_acl_dup.exit.if.end_crit_edge:              ; preds = %posix_acl_dup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i:                                  ; preds = %posix_acl_dup.exit
  %call.i.i.i.i.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #11, !srcloc !94
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i22 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i22, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !84

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #11
  br label %if.end

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %5, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %posix_acl_dup.exit.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @posix_acl_release(ptr noundef %acl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr nonnull %acl, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl, ptr nonnull %acl, i32 1, ptr nonnull elementtype(i32) %acl) #11, !srcloc !94
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i, !prof !84

if.end5.i.i.i.if.end6_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl, i32 noundef 3) #11
  br label %if.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %a_rcu = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @forget_cached_acl(ptr noundef %inode, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %type, label %do.body.i [
    i32 32768, label %sw.bb.i
    i32 16384, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  br label %acl_by_type.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_default_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  br label %acl_by_type.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/posix_acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #11, !srcloc !81
  unreachable

acl_by_type.exit:                                 ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %i_default_acl.i, %sw.bb1.i ], [ %i_acl.i, %sw.bb.i ]
  tail call fastcc void @__forget_cached_acl(ptr noundef %retval.0.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__forget_cached_acl(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %p, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr %p, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 -1, ptr %p) #11, !srcloc !91
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  %1 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !97
  %and.i = and i32 %asmresult.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  %or.cond = or i1 %tobool.not.i, %tobool.i
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #11, !srcloc !94
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !84

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #11
  br label %if.end

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @forget_all_cached_acls(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  tail call fastcc void @__forget_cached_acl(ptr noundef %i_acl)
  %i_default_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  tail call fastcc void @__forget_cached_acl(ptr noundef %i_default_acl)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_acl(ptr noundef %inode, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_cached_acl(ptr noundef %inode, i32 noundef %type)
  %0 = ptrtoint ptr %call to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_flags, align 4
  %and = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = tail call i32 @llvm.read_register.i32(metadata !71) #11
  %and.i106 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i106 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 1
  %9 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %type, label %do.body.i [
    i32 32768, label %sw.bb.i
    i32 16384, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %i_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  br label %acl_by_type.exit

sw.bb1.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %i_default_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  br label %acl_by_type.exit

do.body.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/posix_acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #11, !srcloc !81
  unreachable

acl_by_type.exit:                                 ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %i_default_acl.i, %sw.bb1.i ], [ %i_acl.i, %sw.bb.i ]
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %retval.0.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !98
  %10 = ptrtoint ptr %add.ptr.i to i32
  tail call void @llvm.prefetch.p0(ptr %retval.0.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i107

do.body.i107:                                     ; preds = %do.body.i107.do.body.i107_crit_edge, %acl_by_type.exit
  %11 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %retval.0.i, i32 -1, i32 %10) #11, !srcloc !99
  %asmresult.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i107.do.body.i107_crit_edge

do.body.i107.do.body.i107_crit_edge:              ; preds = %do.body.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i107

__cmpxchg.exit:                                   ; preds = %do.body.i107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !100
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %12 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_op, align 8
  %get_acl = getelementptr inbounds %struct.inode_operations, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %get_acl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_acl, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @set_cached_acl(ptr noundef %inode, i32 noundef %type, ptr noundef null)
  br label %cleanup

if.end24:                                         ; preds = %__cmpxchg.exit
  %call27 = tail call ptr %15(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext false) #11
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end51

if.then29:                                        ; preds = %if.end24
  %call.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %retval.0.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !101
  tail call void @llvm.prefetch.p0(ptr %retval.0.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i110

do.body.i110:                                     ; preds = %do.body.i110.do.body.i110_crit_edge, %if.then29
  %16 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %retval.0.i, i32 %10, i32 -1) #11, !srcloc !99
  %asmresult.i108 = extractvalue { i32, i32 } %16, 0
  %tobool.not.i109 = icmp eq i32 %asmresult.i108, 0
  br i1 %tobool.not.i109, label %__cmpxchg.exit112, label %do.body.i110.do.body.i110_crit_edge

do.body.i110.do.body.i110_crit_edge:              ; preds = %do.body.i110
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i110

__cmpxchg.exit112:                                ; preds = %do.body.i110
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !102
  br label %cleanup

if.end51:                                         ; preds = %if.end24
  %tobool.not.i113 = icmp eq ptr %call27, null
  br i1 %tobool.not.i113, label %if.end51.posix_acl_dup.exit_crit_edge, label %if.then.i

if.end51.posix_acl_dup.exit_crit_edge:            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_dup.exit

if.then.i:                                        ; preds = %if.end51
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call27, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull %call27, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call27, ptr nonnull %call27, i32 1, ptr nonnull elementtype(i32) %call27) #11, !srcloc !89
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !90

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.posix_acl_dup.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !84

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.posix_acl_dup.exit_crit_edge:     ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_dup.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call27, i32 noundef %.sink.i.i.i.i) #11
  br label %posix_acl_dup.exit

posix_acl_dup.exit:                               ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.posix_acl_dup.exit_crit_edge, %if.end51.posix_acl_dup.exit_crit_edge
  %call.i105 = tail call zeroext i1 @__kasan_check_write(ptr noundef %retval.0.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !103
  %19 = ptrtoint ptr %call27 to i32
  tail call void @llvm.prefetch.p0(ptr %retval.0.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i116

do.body.i116:                                     ; preds = %do.body.i116.do.body.i116_crit_edge, %posix_acl_dup.exit
  %20 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %retval.0.i, i32 %10, i32 %19) #11, !srcloc !99
  %asmresult.i114 = extractvalue { i32, i32 } %20, 0
  %tobool.not.i115 = icmp eq i32 %asmresult.i114, 0
  br i1 %tobool.not.i115, label %__cmpxchg.exit118, label %do.body.i116.do.body.i116_crit_edge

do.body.i116.do.body.i116_crit_edge:              ; preds = %do.body.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i116

__cmpxchg.exit118:                                ; preds = %do.body.i116
  %asmresult1.i117 = extractvalue { i32, i32 } %20, 1
  %21 = inttoptr i32 %asmresult1.i117 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  %cmp.not = icmp eq ptr %add.ptr.i, %21
  br i1 %cmp.not, label %__cmpxchg.exit118.cleanup_crit_edge, label %if.then76, !prof !84

__cmpxchg.exit118.cleanup_crit_edge:              ; preds = %__cmpxchg.exit118
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then76:                                        ; preds = %__cmpxchg.exit118
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @posix_acl_release(ptr noundef %call27)
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %__cmpxchg.exit118.cleanup_crit_edge, %__cmpxchg.exit112, %if.then23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call27, %__cmpxchg.exit112 ], [ null, %if.then23 ], [ %call, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call27, %if.then76 ], [ %call27, %__cmpxchg.exit118.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @posix_acl_init(ptr noundef %acl, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %acl, i32 noundef 4) #11
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %acl, align 4
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %1 = ptrtoint ptr %a_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %count, ptr %a_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @posix_acl_alloc(i32 noundef %count, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %count, 3
  %add = add i32 %mul, 16
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef %flags) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef 4) #11
  %0 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %call9.i, align 128
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %call9.i, i32 0, i32 2
  %1 = ptrtoint ptr %a_count.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %count, ptr %a_count.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval.1.i7 = phi ptr [ %call9.i, %if.then ], [ null, %entry.if.end_crit_edge ]
  ret ptr %retval.1.i7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @posix_acl_valid(ptr noundef %user_ns, ptr noundef readonly %acl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 3
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %0 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a_count, align 4
  %add.ptr = getelementptr %struct.posix_acl_entry, ptr %a_entries, i32 %1
  %cmp66 = icmp ult ptr %a_entries, %add.ptr
  br i1 %cmp66, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %needs_mask.069 = phi i32 [ %needs_mask.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %state.068 = phi i32 [ %state.1, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %pa.067 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %a_entries, %entry.for.body_crit_edge ]
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.067, i32 0, i32 1
  %2 = ptrtoint ptr %e_perm to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %e_perm, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %3)
  %tobool.not = icmp ult i16 %3, 8
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %pa.067 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pa.067, align 4
  %conv1 = sext i16 %5 to i32
  %6 = zext i32 %conv1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %conv1, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 4, label %sw.bb13
    i32 8, label %sw.bb18
    i32 16, label %sw.bb27
    i32 32, label %sw.bb32
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state.068)
  %cmp2 = icmp eq i32 %state.068, 1
  br i1 %cmp2, label %sw.bb.for.inc_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state.068)
  %cmp7.not = icmp eq i32 %state.068, 2
  br i1 %cmp7.not, label %if.end10, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %sw.bb6
  %7 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.067, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack62 = load i32, ptr %7, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack62, 0
  %call.i = tail call i32 @from_kuid(ptr noundef %user_ns, [1 x i32] %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, -1
  br i1 %cmp.i.not, label %if.end10.cleanup_crit_edge, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state.068)
  %cmp14 = icmp eq i32 %state.068, 2
  br i1 %cmp14, label %sw.bb13.for.inc_crit_edge, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb13.for.inc_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %state.068)
  %cmp19.not = icmp eq i32 %state.068, 8
  br i1 %cmp19.not, label %if.end22, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %sw.bb18
  %10 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.067, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %10, align 4
  %12 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call.i63 = tail call i32 @from_kgid(ptr noundef %user_ns, [1 x i32] %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i63)
  %cmp.i64.not = icmp eq i32 %call.i63, -1
  br i1 %cmp.i64.not, label %if.end22.cleanup_crit_edge, label %if.end22.for.inc_crit_edge

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %state.068)
  %cmp28.not = icmp eq i32 %state.068, 8
  br i1 %cmp28.not, label %sw.bb27.for.inc_crit_edge, label %sw.bb27.cleanup_crit_edge

sw.bb27.cleanup_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb27.for.inc_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb32:                                          ; preds = %if.end
  %13 = zext i32 %state.068 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %state.068, label %sw.bb32.cleanup_crit_edge [
    i32 32, label %sw.bb32.for.inc_crit_edge
    i32 8, label %land.lhs.true
  ]

sw.bb32.for.inc_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %needs_mask.069)
  %tobool37.not = icmp eq i32 %needs_mask.069, 0
  br i1 %tobool37.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %sw.bb32.for.inc_crit_edge, %sw.bb27.for.inc_crit_edge, %if.end22.for.inc_crit_edge, %sw.bb13.for.inc_crit_edge, %if.end10.for.inc_crit_edge, %sw.bb.for.inc_crit_edge
  %cmp40 = phi i32 [ 0, %land.lhs.true.for.inc_crit_edge ], [ 0, %sw.bb32.for.inc_crit_edge ], [ -22, %sw.bb27.for.inc_crit_edge ], [ -22, %if.end22.for.inc_crit_edge ], [ -22, %sw.bb13.for.inc_crit_edge ], [ -22, %if.end10.for.inc_crit_edge ], [ -22, %sw.bb.for.inc_crit_edge ]
  %state.1 = phi i32 [ 0, %land.lhs.true.for.inc_crit_edge ], [ 0, %sw.bb32.for.inc_crit_edge ], [ 32, %sw.bb27.for.inc_crit_edge ], [ 8, %if.end22.for.inc_crit_edge ], [ 8, %sw.bb13.for.inc_crit_edge ], [ 2, %if.end10.for.inc_crit_edge ], [ 2, %sw.bb.for.inc_crit_edge ]
  %needs_mask.1 = phi i32 [ 0, %land.lhs.true.for.inc_crit_edge ], [ %needs_mask.069, %sw.bb32.for.inc_crit_edge ], [ %needs_mask.069, %sw.bb27.for.inc_crit_edge ], [ 1, %if.end22.for.inc_crit_edge ], [ %needs_mask.069, %sw.bb13.for.inc_crit_edge ], [ 1, %if.end10.for.inc_crit_edge ], [ %needs_mask.069, %sw.bb.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.posix_acl_entry, ptr %pa.067, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge, %sw.bb27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %sw.bb32.cleanup_crit_edge ], [ -22, %sw.bb27.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -22, %sw.bb18.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ %cmp40, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @posix_acl_equiv_mode(ptr noundef readonly %acl, ptr noundef %mode_p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 3
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %0 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a_count, align 4
  %add.ptr = getelementptr %struct.posix_acl_entry, ptr %a_entries, i32 %1
  %cmp62 = icmp ult ptr %a_entries, %add.ptr
  br i1 %cmp62, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %not_equiv.066 = phi i32 [ %not_equiv.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %mode.065 = phi i16 [ %mode.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %pa.063 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %a_entries, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %pa.063 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pa.063, align 4
  %conv = sext i16 %3 to i32
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %conv, label %for.body.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb4
    i32 32, label %sw.bb12
    i32 16, label %sw.bb19
    i32 2, label %for.body.for.inc_crit_edge
    i32 8, label %for.body.for.inc_crit_edge68
  ]

for.body.for.inc_crit_edge68:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.063, i32 0, i32 1
  %5 = ptrtoint ptr %e_perm to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %e_perm, align 2
  %7 = shl i16 %6, 6
  %8 = and i16 %7, 448
  %or59 = or i16 %8, %mode.065
  br label %for.inc

sw.bb4:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %e_perm5 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.063, i32 0, i32 1
  %9 = ptrtoint ptr %e_perm5 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %e_perm5, align 2
  %11 = shl i16 %10, 3
  %12 = and i16 %11, 56
  %or1058 = or i16 %12, %mode.065
  br label %for.inc

sw.bb12:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %e_perm13 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.063, i32 0, i32 1
  %13 = ptrtoint ptr %e_perm13 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %e_perm13, align 2
  %15 = and i16 %14, 7
  %or1757 = or i16 %15, %mode.065
  br label %for.inc

sw.bb19:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %16 = and i16 %mode.065, -57
  %e_perm22 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.063, i32 0, i32 1
  %17 = ptrtoint ptr %e_perm22 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %e_perm22, align 2
  %19 = shl i16 %18, 3
  %20 = and i16 %19, 56
  %or2656 = or i16 %20, %16
  br label %for.inc

for.inc:                                          ; preds = %sw.bb19, %sw.bb12, %sw.bb4, %sw.bb, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge68
  %mode.1 = phi i16 [ %or2656, %sw.bb19 ], [ %or1757, %sw.bb12 ], [ %or1058, %sw.bb4 ], [ %or59, %sw.bb ], [ %mode.065, %for.body.for.inc_crit_edge ], [ %mode.065, %for.body.for.inc_crit_edge68 ]
  %not_equiv.1 = phi i32 [ 1, %sw.bb19 ], [ %not_equiv.066, %sw.bb12 ], [ %not_equiv.066, %sw.bb4 ], [ %not_equiv.066, %sw.bb ], [ 1, %for.body.for.inc_crit_edge ], [ 1, %for.body.for.inc_crit_edge68 ]
  %incdec.ptr = getelementptr %struct.posix_acl_entry, ptr %pa.063, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %mode.0.lcssa = phi i16 [ 0, %if.end.for.end_crit_edge ], [ %mode.1, %for.inc.for.end_crit_edge ]
  %not_equiv.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %not_equiv.1, %for.inc.for.end_crit_edge ]
  %tobool29.not = icmp eq ptr %mode_p, null
  br i1 %tobool29.not, label %for.end.cleanup_crit_edge, label %if.then30

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %mode_p to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mode_p, align 2
  %23 = and i16 %22, -512
  %or3455 = or i16 %23, %mode.0.lcssa
  store i16 %or3455, ptr %mode_p, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %not_equiv.0.lcssa, %if.then30 ], [ %not_equiv.0.lcssa, %for.end.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @posix_acl_from_mode(i16 noundef zeroext %mode, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kmalloc_type.exit.i.i_crit_edge, label %if.end.i20.i.i, !prof !84

entry.kmalloc_type.exit.i.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %kmalloc_type.exit.i.i

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kmalloc_type.exit.i.i_crit_edge

if.end.i20.i.i.kmalloc_type.exit.i.i_crit_edge:   ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kmalloc_type.exit.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kmalloc_type.exit.i.i

kmalloc_type.exit.i.i:                            ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kmalloc_type.exit.i.i_crit_edge, %entry.kmalloc_type.exit.i.i_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kmalloc_type.exit.i.i_crit_edge ], [ 3, %if.end.i20.i.i.kmalloc_type.exit.i.i_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %flags, i32 noundef 40) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %kmalloc_type.exit.i.i.cleanup_crit_edge, label %if.end

kmalloc_type.exit.i.i.cleanup_crit_edge:          ; preds = %kmalloc_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %kmalloc_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %call7.i.i, align 8
  %a_count.i.i = getelementptr inbounds %struct.posix_acl, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %a_count.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %a_count.i.i, align 4
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %a_entries to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %a_entries, align 8
  %and = lshr i16 %mode, 6
  %5 = and i16 %and, 7
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %a_entries, i32 0, i32 1
  %6 = ptrtoint ptr %e_perm to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %e_perm, align 2
  %arrayidx6 = getelementptr %struct.posix_acl, ptr %call7.i.i, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4, ptr %arrayidx6, align 8
  %and9 = lshr i16 %mode, 3
  %8 = and i16 %and9, 7
  %e_perm14 = getelementptr inbounds %struct.posix_acl_entry, ptr %arrayidx6, i32 0, i32 1
  %9 = ptrtoint ptr %e_perm14 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %e_perm14, align 2
  %arrayidx16 = getelementptr %struct.posix_acl, ptr %call7.i.i, i32 2
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 32, ptr %arrayidx16, align 8
  %11 = and i16 %mode, 7
  %e_perm23 = getelementptr inbounds %struct.posix_acl_entry, ptr %arrayidx16, i32 0, i32 1
  %12 = ptrtoint ptr %e_perm23 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %e_perm23, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kmalloc_type.exit.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %kmalloc_type.exit.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @posix_acl_permission(ptr noundef %mnt_userns, ptr nocapture noundef readonly %inode, ptr noundef readonly %acl, i32 noundef %want) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %want, 7
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 3
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %0 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a_count, align 4
  %add.ptr = getelementptr %struct.posix_acl_entry, ptr %a_entries, i32 %1
  %cmp185 = icmp ult ptr %a_entries, %add.ptr
  br i1 %cmp185, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %i_sb.i160 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %cmp.i.i.i162 = icmp eq ptr %mnt_userns, @init_user_ns
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pa.0187 = phi ptr [ %a_entries, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %found.0186 = phi i32 [ 0, %for.body.lr.ph ], [ %found.1, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %pa.0187 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pa.0187, align 4
  %conv = sext i16 %3 to i32
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %conv, label %for.body.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 4, label %sw.bb26
    i32 8, label %sw.bb40
    i32 16, label %for.body.for.inc_crit_edge
    i32 32, label %sw.bb58
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  %5 = ptrtoint ptr %i_sb.i160 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i160, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 53
  %7 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_user_ns.i.i, align 8
  %9 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %10 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i = icmp eq ptr %8, %mnt_userns
  %spec.select.i.i.i = or i1 %cmp.i.i.i162, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %sw.bb.i_uid_into_mnt.exit_crit_edge, label %if.end.i.i

sw.bb.i_uid_into_mnt.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_uid_into_mnt.exit

if.end.i.i:                                       ; preds = %sw.bb
  %cmp.i21.i.i = icmp eq ptr %8, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i = tail call i32 @from_kuid(ptr noundef %8, [1 x i32] %10) #11
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %uid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i)
  %cmp.i.i = icmp eq i32 %uid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_uid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_uid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i.i = tail call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i.i) #11
  br label %i_uid_into_mnt.exit

i_uid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, %sw.bb.i_uid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge ], [ %.unpack.i, %sw.bb.i_uid_into_mnt.exit_crit_edge ]
  %11 = tail call i32 @llvm.read_register.i32(metadata !71) #11
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %17)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.sroa.0.0.i.i, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i = icmp eq i32 %retval.sroa.0.0.i.i, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i, label %i_uid_into_mnt.exit.check_perm_crit_edge, label %i_uid_into_mnt.exit.for.inc_crit_edge

i_uid_into_mnt.exit.for.inc_crit_edge:            ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

i_uid_into_mnt.exit.check_perm_crit_edge:         ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_perm

sw.bb6:                                           ; preds = %for.body
  %18 = ptrtoint ptr %i_sb.i160 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i160, align 4
  %s_user_ns.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 53
  %20 = ptrtoint ptr %s_user_ns.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_user_ns.i, align 8
  %22 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.0187, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack138 = load i32, ptr %22, align 4
  %24 = insertvalue [1 x i32] undef, i32 %.unpack138, 0
  %cmp.i.i141 = icmp eq ptr %21, %mnt_userns
  %spec.select.i.i = or i1 %cmp.i.i.i162, %cmp.i.i141
  br i1 %spec.select.i.i, label %sw.bb6.mapped_kuid_fs.exit_crit_edge, label %if.end.i

sw.bb6.mapped_kuid_fs.exit_crit_edge:             ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  br label %mapped_kuid_fs.exit

if.end.i:                                         ; preds = %sw.bb6
  %cmp.i21.i = icmp eq ptr %21, @init_user_ns
  br i1 %cmp.i21.i, label %if.end.i.if.end7.i_crit_edge, label %if.else.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call i32 @from_kuid(ptr noundef %21, [1 x i32] %24) #11
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.end.i.if.end7.i_crit_edge
  %uid.0.i = phi i32 [ %call6.i, %if.else.i ], [ %.unpack138, %if.end.i.if.end7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i)
  %cmp.i142 = icmp eq i32 %uid.0.i, -1
  br i1 %cmp.i142, label %if.end7.i.mapped_kuid_fs.exit_crit_edge, label %if.end9.i

if.end7.i.mapped_kuid_fs.exit_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mapped_kuid_fs.exit

if.end9.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = tail call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i) #11
  br label %mapped_kuid_fs.exit

mapped_kuid_fs.exit:                              ; preds = %if.end9.i, %if.end7.i.mapped_kuid_fs.exit_crit_edge, %sw.bb6.mapped_kuid_fs.exit_crit_edge
  %retval.sroa.0.0.i = phi i32 [ %call10.i, %if.end9.i ], [ -1, %if.end7.i.mapped_kuid_fs.exit_crit_edge ], [ %.unpack138, %sw.bb6.mapped_kuid_fs.exit_crit_edge ]
  %25 = tail call i32 @llvm.read_register.i32(metadata !71) #11
  %and.i143 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i143 to ptr
  %task18 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task18, align 8
  %cred19 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 99
  %29 = ptrtoint ptr %cred19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cred19, align 16
  %fsuid20 = getelementptr inbounds %struct.cred, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %fsuid20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %agg.tmp12.sroa.0.0.copyload = load i32, ptr %fsuid20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.sroa.0.0.i, i32 %agg.tmp12.sroa.0.0.copyload)
  %cmp.i144 = icmp eq i32 %retval.sroa.0.0.i, %agg.tmp12.sroa.0.0.copyload
  br i1 %cmp.i144, label %mapped_kuid_fs.exit.for.cond62.preheader_crit_edge, label %mapped_kuid_fs.exit.for.inc_crit_edge

mapped_kuid_fs.exit.for.inc_crit_edge:            ; preds = %mapped_kuid_fs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

mapped_kuid_fs.exit.for.cond62.preheader_crit_edge: ; preds = %mapped_kuid_fs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond62.preheader

for.cond62.preheader:                             ; preds = %if.then49.for.cond62.preheader_crit_edge, %if.then32.for.cond62.preheader_crit_edge, %mapped_kuid_fs.exit.for.cond62.preheader_crit_edge
  br label %for.cond62

sw.bb26:                                          ; preds = %for.body
  %32 = ptrtoint ptr %i_sb.i160 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i160, align 4
  %s_user_ns.i.i146 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 53
  %34 = ptrtoint ptr %s_user_ns.i.i146 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_user_ns.i.i146, align 8
  %36 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack.i147 = load i32, ptr %i_gid.i, align 8
  %37 = insertvalue [1 x i32] undef, i32 %.unpack.i147, 0
  %cmp.i.i.i149 = icmp eq ptr %35, %mnt_userns
  %spec.select.i.i.i150 = or i1 %cmp.i.i.i162, %cmp.i.i.i149
  br i1 %spec.select.i.i.i150, label %sw.bb26.i_gid_into_mnt.exit_crit_edge, label %if.end.i.i152

sw.bb26.i_gid_into_mnt.exit_crit_edge:            ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_gid_into_mnt.exit

if.end.i.i152:                                    ; preds = %sw.bb26
  %cmp.i21.i.i151 = icmp eq ptr %35, @init_user_ns
  br i1 %cmp.i21.i.i151, label %if.end.i.i152.if.end7.i.i156_crit_edge, label %if.else.i.i154

if.end.i.i152.if.end7.i.i156_crit_edge:           ; preds = %if.end.i.i152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i156

if.else.i.i154:                                   ; preds = %if.end.i.i152
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i153 = tail call i32 @from_kgid(ptr noundef %35, [1 x i32] %37) #11
  br label %if.end7.i.i156

if.end7.i.i156:                                   ; preds = %if.else.i.i154, %if.end.i.i152.if.end7.i.i156_crit_edge
  %gid.0.i.i = phi i32 [ %call6.i.i153, %if.else.i.i154 ], [ %.unpack.i147, %if.end.i.i152.if.end7.i.i156_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i)
  %cmp.i.i155 = icmp eq i32 %gid.0.i.i, -1
  br i1 %cmp.i.i155, label %if.end7.i.i156.i_gid_into_mnt.exit_crit_edge, label %if.end9.i.i158

if.end7.i.i156.i_gid_into_mnt.exit_crit_edge:     ; preds = %if.end7.i.i156
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_gid_into_mnt.exit

if.end9.i.i158:                                   ; preds = %if.end7.i.i156
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i.i157 = tail call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i.i) #11
  br label %i_gid_into_mnt.exit

i_gid_into_mnt.exit:                              ; preds = %if.end9.i.i158, %if.end7.i.i156.i_gid_into_mnt.exit_crit_edge, %sw.bb26.i_gid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i159 = phi i32 [ %call10.i.i157, %if.end9.i.i158 ], [ -1, %if.end7.i.i156.i_gid_into_mnt.exit_crit_edge ], [ %.unpack.i147, %sw.bb26.i_gid_into_mnt.exit_crit_edge ]
  %.fca.0.insert98 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i159, 0
  %call31 = tail call i32 @in_group_p([1 x i32] %.fca.0.insert98) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool.not = icmp eq i32 %call31, 0
  br i1 %tobool.not, label %i_gid_into_mnt.exit.for.inc_crit_edge, label %if.then32

i_gid_into_mnt.exit.for.inc_crit_edge:            ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then32:                                        ; preds = %i_gid_into_mnt.exit
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.0187, i32 0, i32 1
  %38 = ptrtoint ptr %e_perm to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %e_perm, align 2
  %conv33 = zext i16 %39 to i32
  %and34 = and i32 %and, %conv33
  call void @__sanitizer_cov_trace_cmp4(i32 %and34, i32 %and)
  %cmp35 = icmp eq i32 %and34, %and
  br i1 %cmp35, label %if.then32.for.cond62.preheader_crit_edge, label %if.then32.for.inc_crit_edge

if.then32.for.inc_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then32.for.cond62.preheader_crit_edge:         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond62.preheader

sw.bb40:                                          ; preds = %for.body
  %40 = ptrtoint ptr %i_sb.i160 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb.i160, align 4
  %s_user_ns.i161 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 53
  %42 = ptrtoint ptr %s_user_ns.i161 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_user_ns.i161, align 8
  %44 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.0187, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack = load i32, ptr %44, align 4
  %46 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %cmp.i.i163 = icmp eq ptr %43, %mnt_userns
  %spec.select.i.i164 = or i1 %cmp.i.i.i162, %cmp.i.i163
  br i1 %spec.select.i.i164, label %sw.bb40.mapped_kgid_fs.exit_crit_edge, label %if.end.i167

sw.bb40.mapped_kgid_fs.exit_crit_edge:            ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  br label %mapped_kgid_fs.exit

if.end.i167:                                      ; preds = %sw.bb40
  %cmp.i21.i166 = icmp eq ptr %43, @init_user_ns
  br i1 %cmp.i21.i166, label %if.end.i167.if.end7.i172_crit_edge, label %if.else.i170

if.end.i167.if.end7.i172_crit_edge:               ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i172

if.else.i170:                                     ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i169 = tail call i32 @from_kgid(ptr noundef %43, [1 x i32] %46) #11
  br label %if.end7.i172

if.end7.i172:                                     ; preds = %if.else.i170, %if.end.i167.if.end7.i172_crit_edge
  %gid.0.i = phi i32 [ %call6.i169, %if.else.i170 ], [ %.unpack, %if.end.i167.if.end7.i172_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i)
  %cmp.i171 = icmp eq i32 %gid.0.i, -1
  br i1 %cmp.i171, label %if.end7.i172.mapped_kgid_fs.exit_crit_edge, label %if.end9.i174

if.end7.i172.mapped_kgid_fs.exit_crit_edge:       ; preds = %if.end7.i172
  call void @__sanitizer_cov_trace_pc() #13
  br label %mapped_kgid_fs.exit

if.end9.i174:                                     ; preds = %if.end7.i172
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i173 = tail call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i) #11
  br label %mapped_kgid_fs.exit

mapped_kgid_fs.exit:                              ; preds = %if.end9.i174, %if.end7.i172.mapped_kgid_fs.exit_crit_edge, %sw.bb40.mapped_kgid_fs.exit_crit_edge
  %retval.sroa.0.0.i175 = phi i32 [ %call10.i173, %if.end9.i174 ], [ -1, %if.end7.i172.mapped_kgid_fs.exit_crit_edge ], [ %.unpack, %sw.bb40.mapped_kgid_fs.exit_crit_edge ]
  %.fca.0.insert101 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i175, 0
  %call47 = tail call i32 @in_group_p([1 x i32] %.fca.0.insert101) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %mapped_kgid_fs.exit.for.inc_crit_edge, label %if.then49

mapped_kgid_fs.exit.for.inc_crit_edge:            ; preds = %mapped_kgid_fs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then49:                                        ; preds = %mapped_kgid_fs.exit
  %e_perm50 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.0187, i32 0, i32 1
  %47 = ptrtoint ptr %e_perm50 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %e_perm50, align 2
  %conv51 = zext i16 %48 to i32
  %and52 = and i32 %and, %conv51
  call void @__sanitizer_cov_trace_cmp4(i32 %and52, i32 %and)
  %cmp53 = icmp eq i32 %and52, %and
  br i1 %cmp53, label %if.then49.for.cond62.preheader_crit_edge, label %if.then49.for.inc_crit_edge

if.then49.for.inc_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then49.for.cond62.preheader_crit_edge:         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond62.preheader

sw.bb58:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.0186)
  %tobool59.not = icmp eq i32 %found.0186, 0
  br i1 %tobool59.not, label %sw.bb58.check_perm_crit_edge, label %sw.bb58.cleanup_crit_edge

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb58.check_perm_crit_edge:                     ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_perm

for.inc:                                          ; preds = %if.then49.for.inc_crit_edge, %mapped_kgid_fs.exit.for.inc_crit_edge, %if.then32.for.inc_crit_edge, %i_gid_into_mnt.exit.for.inc_crit_edge, %mapped_kuid_fs.exit.for.inc_crit_edge, %i_uid_into_mnt.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %found.1 = phi i32 [ %found.0186, %for.body.for.inc_crit_edge ], [ 1, %if.then49.for.inc_crit_edge ], [ %found.0186, %mapped_kgid_fs.exit.for.inc_crit_edge ], [ 1, %if.then32.for.inc_crit_edge ], [ %found.0186, %i_gid_into_mnt.exit.for.inc_crit_edge ], [ %found.0186, %mapped_kuid_fs.exit.for.inc_crit_edge ], [ %found.0186, %i_uid_into_mnt.exit.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.posix_acl_entry, ptr %pa.0187, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond62:                                       ; preds = %for.body65.for.cond62_crit_edge, %for.cond62.preheader
  %pa.0.pn = phi ptr [ %mask_obj.0, %for.body65.for.cond62_crit_edge ], [ %pa.0187, %for.cond62.preheader ]
  %mask_obj.0 = getelementptr %struct.posix_acl_entry, ptr %pa.0.pn, i32 1
  %cmp63.not = icmp eq ptr %mask_obj.0, %add.ptr
  br i1 %cmp63.not, label %for.cond62.check_perm_crit_edge, label %for.body65

for.cond62.check_perm_crit_edge:                  ; preds = %for.cond62
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_perm

for.body65:                                       ; preds = %for.cond62
  %49 = ptrtoint ptr %mask_obj.0 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %mask_obj.0, align 4
  %cmp68 = icmp eq i16 %50, 16
  br i1 %cmp68, label %if.then70, label %for.body65.for.cond62_crit_edge

for.body65.for.cond62_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond62

if.then70:                                        ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #13
  %e_perm71 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.0187, i32 0, i32 1
  %51 = ptrtoint ptr %e_perm71 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %e_perm71, align 2
  %e_perm73 = getelementptr %struct.posix_acl_entry, ptr %pa.0.pn, i32 1, i32 1
  %53 = ptrtoint ptr %e_perm73 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %e_perm73, align 2
  %and75137 = and i16 %54, %52
  %and75 = zext i16 %and75137 to i32
  %and76 = and i32 %and, %and75
  call void @__sanitizer_cov_trace_cmp4(i32 %and76, i32 %and)
  %cmp77 = icmp eq i32 %and76, %and
  %. = select i1 %cmp77, i32 0, i32 -13
  br label %cleanup

check_perm:                                       ; preds = %for.cond62.check_perm_crit_edge, %sw.bb58.check_perm_crit_edge, %i_uid_into_mnt.exit.check_perm_crit_edge
  %e_perm85 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.0187, i32 0, i32 1
  %55 = ptrtoint ptr %e_perm85 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %e_perm85, align 2
  %conv86 = zext i16 %56 to i32
  %and87 = and i32 %and, %conv86
  call void @__sanitizer_cov_trace_cmp4(i32 %and87, i32 %and)
  %cmp88 = icmp eq i32 %and87, %and
  %.139 = select i1 %cmp88, i32 0, i32 -13
  br label %cleanup

cleanup:                                          ; preds = %check_perm, %if.then70, %for.inc.cleanup_crit_edge, %sw.bb58.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %sw.bb58.cleanup_crit_edge ], [ %., %if.then70 ], [ %.139, %check_perm ], [ -5, %entry.cleanup_crit_edge ], [ -5, %for.inc.cleanup_crit_edge ], [ -5, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__posix_acl_create(ptr nocapture noundef %acl, i32 noundef %gfp, ptr nocapture noundef %mode_p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.posix_acl_release.exit21_crit_edge, label %if.then.i

entry.posix_acl_release.exit21_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_release.exit21

if.then.i:                                        ; preds = %entry
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a_count.i, align 4
  %mul.i = shl i32 %3, 3
  %add.i = add i32 %mul.i, 16
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef %add.i, i32 noundef %gfp) #11
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.i.if.end3_crit_edge, label %if.then

if.then.i.if.end3_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %if.then.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #11
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %call.i, align 4
  %call1 = tail call fastcc i32 @posix_acl_create_masq(ptr noundef nonnull %call.i, ptr noundef %mode_p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %land.lhs.true.i, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

land.lhs.true.i:                                  ; preds = %if.then
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #11, !srcloc !94
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end3_crit_edge, label %if.then10.i.i.i.i, !prof !84

if.end5.i.i.i.i.if.end3_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #11
  br label %if.end3

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %call.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %if.end3

if.end3:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end3_crit_edge, %if.then.if.end3_crit_edge, %if.then.i.if.end3_crit_edge
  %clone.0.ph = phi ptr [ null, %if.then.i.if.end3_crit_edge ], [ null, %do.end.i ], [ null, %if.then10.i.i.i.i ], [ null, %if.end5.i.i.i.i.if.end3_crit_edge ], [ %call.i, %if.then.if.end3_crit_edge ]
  %err.0.ph = phi i32 [ -12, %if.then.i.if.end3_crit_edge ], [ %call1, %do.end.i ], [ %call1, %if.then10.i.i.i.i ], [ %call1, %if.end5.i.i.i.i.if.end3_crit_edge ], [ %call1, %if.then.if.end3_crit_edge ]
  %6 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %acl, align 4
  %tobool.not.i11 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i11, label %if.end3.posix_acl_release.exit21_crit_edge, label %land.lhs.true.i15

if.end3.posix_acl_release.exit21_crit_edge:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_release.exit21

land.lhs.true.i15:                                ; preds = %if.end3
  %call.i.i.i.i.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %.pr, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr nonnull %.pr, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %.pr, ptr nonnull %.pr, i32 1, ptr nonnull elementtype(i32) %.pr) #11, !srcloc !94
  %asmresult.i.i.i.i.i.i.i13 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i13)
  %cmp.i.i.i.i14 = icmp eq i32 %asmresult.i.i.i.i.i.i.i13, 1
  br i1 %cmp.i.i.i.i14, label %do.end.i20, label %if.end5.i.i.i.i17

if.end5.i.i.i.i17:                                ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i13)
  %.not.i.i.i.i16 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i13, 0
  br i1 %.not.i.i.i.i16, label %if.end5.i.i.i.i17.posix_acl_release.exit21_crit_edge, label %if.then10.i.i.i.i18, !prof !84

if.end5.i.i.i.i17.posix_acl_release.exit21_crit_edge: ; preds = %if.end5.i.i.i.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_release.exit21

if.then10.i.i.i.i18:                              ; preds = %if.end5.i.i.i.i17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %.pr, i32 noundef 3) #11
  br label %posix_acl_release.exit21

do.end.i20:                                       ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %a_rcu.i19 = getelementptr inbounds %struct.posix_acl, ptr %.pr, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i19, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %posix_acl_release.exit21

posix_acl_release.exit21:                         ; preds = %do.end.i20, %if.then10.i.i.i.i18, %if.end5.i.i.i.i17.posix_acl_release.exit21_crit_edge, %if.end3.posix_acl_release.exit21_crit_edge, %entry.posix_acl_release.exit21_crit_edge
  %err.028 = phi i32 [ %err.0.ph, %if.end3.posix_acl_release.exit21_crit_edge ], [ %err.0.ph, %if.end5.i.i.i.i17.posix_acl_release.exit21_crit_edge ], [ %err.0.ph, %if.then10.i.i.i.i18 ], [ %err.0.ph, %do.end.i20 ], [ -12, %entry.posix_acl_release.exit21_crit_edge ]
  %clone.027 = phi ptr [ %clone.0.ph, %if.end3.posix_acl_release.exit21_crit_edge ], [ %clone.0.ph, %if.end5.i.i.i.i17.posix_acl_release.exit21_crit_edge ], [ %clone.0.ph, %if.then10.i.i.i.i18 ], [ %clone.0.ph, %do.end.i20 ], [ null, %entry.posix_acl_release.exit21_crit_edge ]
  %8 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %clone.027, ptr %acl, align 4
  ret i32 %err.028
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @posix_acl_create_masq(ptr noundef %acl, ptr nocapture noundef %mode_p) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 3
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %0 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a_count, align 4
  %add.ptr = getelementptr %struct.posix_acl_entry, ptr %a_entries, i32 %1
  %cmp97 = icmp ult ptr %a_entries, %add.ptr
  br i1 %cmp97, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %mode_p to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode_p, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %not_equiv.0103 = phi i32 [ %not_equiv.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mode.0102 = phi i16 [ %mode.1, %for.inc.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %mask_obj.0101 = phi ptr [ %mask_obj.1, %for.inc.for.body_crit_edge ], [ null, %for.body.preheader ]
  %group_obj.0100 = phi ptr [ %group_obj.1, %for.inc.for.body_crit_edge ], [ null, %for.body.preheader ]
  %pa.098 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %a_entries, %for.body.preheader ]
  %4 = ptrtoint ptr %pa.098 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pa.098, align 4
  %conv = sext i16 %5 to i32
  %6 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %conv, label %for.body.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %for.body.for.inc_crit_edge
    i32 8, label %for.body.for.inc_crit_edge121
    i32 4, label %sw.bb11
    i32 32, label %sw.bb12
    i32 16, label %sw.bb25
  ]

for.body.for.inc_crit_edge121:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %7 = lshr i16 %mode.0102, 6
  %or = or i16 %7, -8
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.098, i32 0, i32 1
  %8 = ptrtoint ptr %e_perm to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %e_perm, align 2
  %and = and i16 %9, %or
  store i16 %and, ptr %e_perm, align 2
  %shl = shl i16 %and, 6
  %or6 = or i16 %shl, -449
  %and8 = and i16 %or6, %mode.0102
  br label %for.inc

sw.bb11:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb12:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %or14 = or i16 %mode.0102, -8
  %e_perm15 = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.098, i32 0, i32 1
  %10 = ptrtoint ptr %e_perm15 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %e_perm15, align 2
  %and17 = and i16 %11, %or14
  store i16 %and17, ptr %e_perm15, align 2
  %12 = or i16 %and17, -8
  %and2392 = and i16 %12, %mode.0102
  br label %for.inc

sw.bb25:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %sw.bb25, %sw.bb12, %sw.bb11, %sw.bb, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge121
  %group_obj.1 = phi ptr [ %group_obj.0100, %sw.bb25 ], [ %group_obj.0100, %sw.bb12 ], [ %pa.098, %sw.bb11 ], [ %group_obj.0100, %sw.bb ], [ %group_obj.0100, %for.body.for.inc_crit_edge ], [ %group_obj.0100, %for.body.for.inc_crit_edge121 ]
  %mask_obj.1 = phi ptr [ %pa.098, %sw.bb25 ], [ %mask_obj.0101, %sw.bb12 ], [ %mask_obj.0101, %sw.bb11 ], [ %mask_obj.0101, %sw.bb ], [ %mask_obj.0101, %for.body.for.inc_crit_edge ], [ %mask_obj.0101, %for.body.for.inc_crit_edge121 ]
  %mode.1 = phi i16 [ %mode.0102, %sw.bb25 ], [ %and2392, %sw.bb12 ], [ %mode.0102, %sw.bb11 ], [ %and8, %sw.bb ], [ %mode.0102, %for.body.for.inc_crit_edge ], [ %mode.0102, %for.body.for.inc_crit_edge121 ]
  %not_equiv.1 = phi i32 [ 1, %sw.bb25 ], [ %not_equiv.0103, %sw.bb12 ], [ %not_equiv.0103, %sw.bb11 ], [ %not_equiv.0103, %sw.bb ], [ 1, %for.body.for.inc_crit_edge ], [ 1, %for.body.for.inc_crit_edge121 ]
  %incdec.ptr = getelementptr %struct.posix_acl_entry, ptr %pa.098, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool.not = icmp eq ptr %mask_obj.1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = lshr i16 %mode.1, 3
  %or28 = or i16 %13, -8
  %e_perm29 = getelementptr inbounds %struct.posix_acl_entry, ptr %mask_obj.1, i32 0, i32 1
  %14 = ptrtoint ptr %e_perm29 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %e_perm29, align 2
  %and31 = and i16 %15, %or28
  store i16 %and31, ptr %e_perm29, align 2
  br label %if.end56

if.else:                                          ; preds = %for.end
  %tobool40.not = icmp eq ptr %group_obj.1, null
  br i1 %tobool40.not, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %16 = lshr i16 %mode.1, 3
  %or44 = or i16 %16, -8
  %e_perm45 = getelementptr inbounds %struct.posix_acl_entry, ptr %group_obj.1, i32 0, i32 1
  %17 = ptrtoint ptr %e_perm45 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %e_perm45, align 2
  %and47 = and i16 %18, %or44
  store i16 %and47, ptr %e_perm45, align 2
  br label %if.end56

if.end56:                                         ; preds = %if.end, %if.then
  %or36.pn.in.in = phi i16 [ %and31, %if.then ], [ %and47, %if.end ]
  %or36.pn.in = shl i16 %or36.pn.in.in, 3
  %or36.pn = or i16 %or36.pn.in, -57
  %mode.2 = and i16 %or36.pn, %mode.1
  %19 = ptrtoint ptr %mode_p to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mode_p, align 2
  %21 = and i16 %20, -512
  %or6091 = or i16 %mode.2, %21
  store i16 %or6091, ptr %mode_p, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.else.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %not_equiv.1, %if.end56 ], [ -5, %if.else.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -5, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__posix_acl_chmod(ptr nocapture noundef %acl, i32 noundef %gfp, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.posix_acl_release.exit24_crit_edge, label %if.then.i

entry.posix_acl_release.exit24_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_release.exit24

if.then.i:                                        ; preds = %entry
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a_count.i, align 4
  %mul.i = shl i32 %3, 3
  %add.i = add i32 %mul.i, 16
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef %add.i, i32 noundef %gfp) #11
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.i.if.end4_crit_edge, label %if.then

if.then.i.if.end4_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %if.then.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #11
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %call.i, align 4
  %a_entries.i = getelementptr inbounds %struct.posix_acl, ptr %call.i, i32 0, i32 3
  %a_count.i11 = getelementptr inbounds %struct.posix_acl, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %a_count.i11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %a_count.i11, align 4
  %add.ptr.i = getelementptr %struct.posix_acl_entry, ptr %a_entries.i, i32 %6
  %cmp42.i = icmp ult ptr %a_entries.i, %add.ptr.i
  br i1 %cmp42.i, label %for.body.lr.ph.i, label %if.then.land.lhs.true.i_crit_edge

if.then.land.lhs.true.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %7 = and i16 %mode, 7
  %8 = lshr i16 %mode, 6
  %9 = and i16 %8, 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pa.045.i = phi ptr [ %a_entries.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %mask_obj.044.i = phi ptr [ null, %for.body.lr.ph.i ], [ %mask_obj.1.i, %for.inc.i.for.body.i_crit_edge ]
  %group_obj.043.i = phi ptr [ null, %for.body.lr.ph.i ], [ %group_obj.1.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %pa.045.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pa.045.i, align 4
  %conv.i = sext i16 %11 to i32
  %12 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %conv.i, label %for.body.i.land.lhs.true.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %for.body.i.for.inc.i_crit_edge
    i32 8, label %for.body.i.for.inc.i_crit_edge35
    i32 4, label %sw.bb4.i
    i32 16, label %sw.bb5.i
    i32 32, label %sw.bb6.i
  ]

for.body.i.for.inc.i_crit_edge35:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.i.land.lhs.true.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %e_perm.i = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.045.i, i32 0, i32 1
  %13 = ptrtoint ptr %e_perm.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %9, ptr %e_perm.i, align 2
  br label %for.inc.i

sw.bb4.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.bb5.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.bb6.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %e_perm10.i = getelementptr inbounds %struct.posix_acl_entry, ptr %pa.045.i, i32 0, i32 1
  %14 = ptrtoint ptr %e_perm10.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %7, ptr %e_perm10.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb.i, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge35
  %group_obj.1.i = phi ptr [ %group_obj.043.i, %sw.bb6.i ], [ %group_obj.043.i, %sw.bb5.i ], [ %pa.045.i, %sw.bb4.i ], [ %group_obj.043.i, %for.body.i.for.inc.i_crit_edge ], [ %group_obj.043.i, %for.body.i.for.inc.i_crit_edge35 ], [ %group_obj.043.i, %sw.bb.i ]
  %mask_obj.1.i = phi ptr [ %mask_obj.044.i, %sw.bb6.i ], [ %pa.045.i, %sw.bb5.i ], [ %mask_obj.044.i, %sw.bb4.i ], [ %mask_obj.044.i, %for.body.i.for.inc.i_crit_edge ], [ %mask_obj.044.i, %for.body.i.for.inc.i_crit_edge35 ], [ %mask_obj.044.i, %sw.bb.i ]
  %incdec.ptr.i = getelementptr %struct.posix_acl_entry, ptr %pa.045.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %tobool.not.i12 = icmp eq ptr %mask_obj.1.i, null
  br i1 %tobool.not.i12, label %if.else.i, label %for.end.i.__posix_acl_chmod_masq.exit_crit_edge

for.end.i.__posix_acl_chmod_masq.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__posix_acl_chmod_masq.exit

if.else.i:                                        ; preds = %for.end.i
  %tobool16.not.i = icmp eq ptr %group_obj.1.i, null
  br i1 %tobool16.not.i, label %if.else.i.land.lhs.true.i_crit_edge, label %if.else.i.__posix_acl_chmod_masq.exit_crit_edge

if.else.i.__posix_acl_chmod_masq.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__posix_acl_chmod_masq.exit

if.else.i.land.lhs.true.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

__posix_acl_chmod_masq.exit:                      ; preds = %if.else.i.__posix_acl_chmod_masq.exit_crit_edge, %for.end.i.__posix_acl_chmod_masq.exit_crit_edge
  %mask_obj.1.lcssa.sink.i = phi ptr [ %mask_obj.1.i, %for.end.i.__posix_acl_chmod_masq.exit_crit_edge ], [ %group_obj.1.i, %if.else.i.__posix_acl_chmod_masq.exit_crit_edge ]
  %15 = lshr i16 %mode, 3
  %16 = and i16 %15, 7
  %e_perm15.i = getelementptr inbounds %struct.posix_acl_entry, ptr %mask_obj.1.lcssa.sink.i, i32 0, i32 1
  %17 = ptrtoint ptr %e_perm15.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %e_perm15.i, align 2
  br label %if.end4

land.lhs.true.i:                                  ; preds = %if.else.i.land.lhs.true.i_crit_edge, %for.body.i.land.lhs.true.i_crit_edge, %if.then.land.lhs.true.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #11, !srcloc !94
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end4_crit_edge, label %if.then10.i.i.i.i, !prof !84

if.end5.i.i.i.i.if.end4_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #11
  br label %if.end4

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %call.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end4_crit_edge, %__posix_acl_chmod_masq.exit, %if.then.i.if.end4_crit_edge
  %clone.0.ph = phi ptr [ null, %if.then.i.if.end4_crit_edge ], [ null, %do.end.i ], [ null, %if.then10.i.i.i.i ], [ null, %if.end5.i.i.i.i.if.end4_crit_edge ], [ %call.i, %__posix_acl_chmod_masq.exit ]
  %err.0.ph = phi i32 [ -12, %if.then.i.if.end4_crit_edge ], [ -5, %do.end.i ], [ -5, %if.then10.i.i.i.i ], [ -5, %if.end5.i.i.i.i.if.end4_crit_edge ], [ 0, %__posix_acl_chmod_masq.exit ]
  %19 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load ptr, ptr %acl, align 4
  %tobool.not.i14 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i14, label %if.end4.posix_acl_release.exit24_crit_edge, label %land.lhs.true.i18

if.end4.posix_acl_release.exit24_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_release.exit24

land.lhs.true.i18:                                ; preds = %if.end4
  %call.i.i.i.i.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %.pr, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr nonnull %.pr, i32 1, i32 3, i32 1) #11
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %.pr, ptr nonnull %.pr, i32 1, ptr nonnull elementtype(i32) %.pr) #11, !srcloc !94
  %asmresult.i.i.i.i.i.i.i16 = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i16)
  %cmp.i.i.i.i17 = icmp eq i32 %asmresult.i.i.i.i.i.i.i16, 1
  br i1 %cmp.i.i.i.i17, label %do.end.i23, label %if.end5.i.i.i.i20

if.end5.i.i.i.i20:                                ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i16)
  %.not.i.i.i.i19 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i16, 0
  br i1 %.not.i.i.i.i19, label %if.end5.i.i.i.i20.posix_acl_release.exit24_crit_edge, label %if.then10.i.i.i.i21, !prof !84

if.end5.i.i.i.i20.posix_acl_release.exit24_crit_edge: ; preds = %if.end5.i.i.i.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_release.exit24

if.then10.i.i.i.i21:                              ; preds = %if.end5.i.i.i.i20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %.pr, i32 noundef 3) #11
  br label %posix_acl_release.exit24

do.end.i23:                                       ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %a_rcu.i22 = getelementptr inbounds %struct.posix_acl, ptr %.pr, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i22, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %posix_acl_release.exit24

posix_acl_release.exit24:                         ; preds = %do.end.i23, %if.then10.i.i.i.i21, %if.end5.i.i.i.i20.posix_acl_release.exit24_crit_edge, %if.end4.posix_acl_release.exit24_crit_edge, %entry.posix_acl_release.exit24_crit_edge
  %err.034 = phi i32 [ %err.0.ph, %if.end4.posix_acl_release.exit24_crit_edge ], [ %err.0.ph, %if.end5.i.i.i.i20.posix_acl_release.exit24_crit_edge ], [ %err.0.ph, %if.then10.i.i.i.i21 ], [ %err.0.ph, %do.end.i23 ], [ -12, %entry.posix_acl_release.exit24_crit_edge ]
  %clone.033 = phi ptr [ %clone.0.ph, %if.end4.posix_acl_release.exit24_crit_edge ], [ %clone.0.ph, %if.end5.i.i.i.i20.posix_acl_release.exit24_crit_edge ], [ %clone.0.ph, %if.then10.i.i.i.i21 ], [ %clone.0.ph, %do.end.i23 ], [ null, %entry.posix_acl_release.exit24_crit_edge ]
  %21 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %clone.033, ptr %acl, align 4
  ret i32 %err.034
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @posix_acl_chmod(ptr noundef %mnt_userns, ptr noundef %inode, i16 noundef zeroext %mode) #0 align 64 {
entry:
  %acl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %4 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_op, align 8
  %set_acl = getelementptr inbounds %struct.inode_operations, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %set_acl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_acl, align 16
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call ptr @get_acl(ptr noundef %inode, i32 noundef 32768)
  %8 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %acl, align 4
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %cmp = icmp eq ptr %call, inttoptr (i32 -95 to ptr)
  %9 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp, i32 0, i32 %9
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %call11 = call i32 @__posix_acl_chmod(ptr noundef nonnull %acl, i32 noundef 3264, i16 noundef zeroext %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %10 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_op, align 8
  %set_acl16 = getelementptr inbounds %struct.inode_operations, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %set_acl16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_acl16, align 16
  %14 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %acl, align 4
  %call17 = tail call i32 %13(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %15, i32 noundef 32768) #11
  %tobool.not.i25 = icmp eq ptr %15, null
  br i1 %tobool.not.i25, label %if.end14.cleanup_crit_edge, label %land.lhs.true.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #11, !srcloc !94
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !84

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef 3) #11
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %15, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call17, %if.end14.cleanup_crit_edge ], [ %call17, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call17, %if.then10.i.i.i.i ], [ %call17, %do.end.i ], [ %spec.select, %if.then5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @posix_acl_create(ptr noundef %dir, ptr nocapture noundef %mode, ptr nocapture noundef writeonly %default_acl, ptr nocapture noundef writeonly %acl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %acl, align 4
  %1 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %default_acl, align 4
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 2
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %4)
  %cmp = icmp eq i16 %4, -24576
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_flags, align 4
  %and2 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @get_acl(ptr noundef %dir, i32 noundef 16384)
  %magicptr = ptrtoint ptr %call to i32
  %9 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %magicptr, label %if.end13 [
    i32 0, label %if.end.if.then8_crit_edge
    i32 -95, label %if.end.if.then8_crit_edge62
  ]

if.end.if.then8_crit_edge62:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge62
  %call9 = tail call i32 @current_umask() #11
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode, align 2
  %12 = trunc i32 %call9 to i16
  %13 = xor i16 %12, -1
  %conv12 = and i16 %11, %13
  store i16 %conv12, ptr %mode, align 2
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end13.cleanup_crit_edge, label %if.then.i

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end13
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %a_count.i, align 4
  %mul.i = shl i32 %15, 3
  %add.i = add i32 %mul.i, 16
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull %call, i32 noundef %add.i, i32 noundef 3136) #11
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.i.land.lhs.true.i_crit_edge, label %if.end21

if.then.i.land.lhs.true.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end21:                                         ; preds = %if.then.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #11
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 1, ptr %call.i, align 4
  %call22 = tail call fastcc i32 @posix_acl_create_masq(ptr noundef nonnull %call.i, ptr noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %err_release_clone, label %if.end26

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp27 = icmp eq i32 %call22, 0
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @posix_acl_release(ptr noundef nonnull %call.i)
  br label %if.end30

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %acl, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then29
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mode, align 2
  %20 = and i16 %19, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %20)
  %cmp33 = icmp eq i16 %20, 16384
  br i1 %cmp33, label %if.else36, label %if.then35

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @posix_acl_release(ptr noundef nonnull %call)
  br label %cleanup

if.else36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %default_acl, align 4
  br label %cleanup

err_release_clone:                                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @posix_acl_release(ptr noundef nonnull %call.i)
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %err_release_clone, %if.then.i.land.lhs.true.i_crit_edge
  %ret.0 = phi i32 [ %call22, %err_release_clone ], [ -12, %if.then.i.land.lhs.true.i_crit_edge ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #11
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #11, !srcloc !94
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !84

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #11
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.else36, %if.then35, %if.end13.cleanup_crit_edge, %if.then8, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else36 ], [ 0, %if.then35 ], [ %ret.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %do.end.i ], [ %magicptr, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @posix_acl_update_mode(ptr noundef %mnt_userns, ptr noundef %inode, ptr nocapture noundef writeonly %mode_p, ptr nocapture noundef %acl) #0 align 64 {
entry:
  %mode = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode) #11
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %mode, align 2
  %3 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %acl, align 4
  %call = call i32 @posix_acl_equiv_mode(ptr noundef %4, ptr noundef nonnull %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %acl, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %10 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack.i = load i32, ptr %i_gid.i, align 8
  %11 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i = icmp eq ptr %9, %mnt_userns
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.end3.i_gid_into_mnt.exit_crit_edge, label %if.end.i.i

if.end3.i_gid_into_mnt.exit_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_gid_into_mnt.exit

if.end.i.i:                                       ; preds = %if.end3
  %cmp.i21.i.i = icmp eq ptr %9, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i = call i32 @from_kgid(ptr noundef %9, [1 x i32] %11) #11
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %gid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i)
  %cmp.i.i = icmp eq i32 %gid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_gid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_gid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_gid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i.i = call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i.i) #11
  br label %i_gid_into_mnt.exit

i_gid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_gid_into_mnt.exit_crit_edge, %if.end3.i_gid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_gid_into_mnt.exit_crit_edge ], [ %.unpack.i, %if.end3.i_gid_into_mnt.exit_crit_edge ]
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %call6 = call i32 @in_group_p([1 x i32] %.fca.0.insert) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.lhs.true, label %i_gid_into_mnt.exit.if.end10_crit_edge

i_gid_into_mnt.exit.if.end10_crit_edge:           ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %i_gid_into_mnt.exit
  %call7 = call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %mnt_userns, ptr noundef %inode, i32 noundef 4) #11
  br i1 %call7, label %land.lhs.true.if.end10_crit_edge, label %if.then8

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mode, align 2
  %14 = and i16 %13, -1025
  store i16 %14, ptr %mode, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %i_gid_into_mnt.exit.if.end10_crit_edge
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mode, align 2
  %17 = ptrtoint ptr %mode_p to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %mode_p, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @posix_acl_fix_xattr_from_user(ptr noundef %mnt_userns, ptr noundef %value, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #11
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
  %cmp = icmp eq ptr %7, @init_user_ns
  %cmp3 = icmp eq ptr %mnt_userns, @init_user_ns
  %or.cond = and i1 %cmp3, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @posix_acl_fix_xattr_userns(ptr noundef nonnull @init_user_ns, ptr noundef %7, ptr noundef %mnt_userns, ptr noundef %value, i32 noundef %size, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @posix_acl_fix_xattr_userns(ptr noundef %to, ptr noundef %from, ptr noundef %mnt_userns, ptr noundef %value, i32 noundef %size, i1 noundef zeroext %from_user) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.posix_acl_xattr_header, ptr %value, i32 1
  %tobool.not = icmp eq ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp = icmp ult i32 %size, 4
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %entry
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %1)
  %cmp4.not = icmp eq i32 %1, 33554432
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %sub.i = add i32 %size, -4
  %rem.i = and i32 %sub.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %div6.i = lshr i32 %sub.i, 3
  %retval.0.i = select i1 %tobool.not.i, i32 %div6.i, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp10 = icmp ne i32 %retval.0.i, 0
  %2 = and i1 %tobool.not.i, %cmp10
  br i1 %2, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %add.ptr13 = getelementptr %struct.posix_acl_xattr_entry, ptr %add.ptr, i32 %retval.0.i
  %cmp14.not108 = icmp eq ptr %add.ptr, %add.ptr13
  br i1 %cmp14.not108, label %if.end12.cleanup_crit_edge, label %for.body.lr.ph

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end12
  %cmp.i.i101 = icmp eq ptr %mnt_userns, @init_user_ns
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry1.0109 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %entry1.0109 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %entry1.0109, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %5, label %for.body.for.inc_crit_edge [
    i16 2, label %sw.bb
    i16 8, label %sw.bb30
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %e_id = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %entry1.0109, i32 0, i32 2
  %7 = ptrtoint ptr %e_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %e_id, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %call15 = tail call i32 @make_kuid(ptr noundef %from, i32 noundef %9) #11
  br i1 %from_user, label %if.then17, label %if.else

if.then17:                                        ; preds = %sw.bb
  br i1 %cmp.i.i101, label %if.then17.if.end26_crit_edge, label %if.end.i

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %.fca.0.insert63 = insertvalue [1 x i32] poison, i32 %call15, 0
  %call2.i = tail call i32 @from_kuid(ptr noundef %mnt_userns, [1 x i32] %.fca.0.insert63) #11
  br label %if.end26

if.else:                                          ; preds = %sw.bb
  br i1 %cmp.i.i101, label %if.else.if.end26_crit_edge, label %if.end.i93

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end.i93:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15)
  %cmp.i = icmp eq i32 %call15, -1
  br i1 %cmp.i, label %if.end.i93.if.end26_crit_edge, label %if.end9.i

if.end.i93.if.end26_crit_edge:                    ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end9.i:                                        ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = tail call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %call15) #11
  br label %if.end26

if.end26:                                         ; preds = %if.end9.i, %if.end.i93.if.end26_crit_edge, %if.else.if.end26_crit_edge, %if.end.i, %if.then17.if.end26_crit_edge
  %uid.sroa.0.0 = phi i32 [ %call2.i, %if.end.i ], [ %call15, %if.then17.if.end26_crit_edge ], [ %call10.i, %if.end9.i ], [ -1, %if.end.i93.if.end26_crit_edge ], [ %call15, %if.else.if.end26_crit_edge ]
  %.fca.0.insert69 = insertvalue [1 x i32] poison, i32 %uid.sroa.0.0, 0
  %call28 = tail call i32 @from_kuid(ptr noundef %to, [1 x i32] %.fca.0.insert69) #11
  br label %for.inc.sink.split

sw.bb30:                                          ; preds = %for.body
  %e_id32 = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %entry1.0109, i32 0, i32 2
  %10 = ptrtoint ptr %e_id32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %e_id32, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %call33 = tail call i32 @make_kgid(ptr noundef %from, i32 noundef %12) #11
  br i1 %from_user, label %if.then36, label %if.else41

if.then36:                                        ; preds = %sw.bb30
  br i1 %cmp.i.i101, label %if.then36.if.end46_crit_edge, label %if.end.i98

if.then36.if.end46_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.end.i98:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call33, 0
  %call2.i97 = tail call i32 @from_kgid(ptr noundef %mnt_userns, [1 x i32] %.fca.0.insert) #11
  br label %if.end46

if.else41:                                        ; preds = %sw.bb30
  br i1 %cmp.i.i101, label %if.else41.if.end46_crit_edge, label %if.end.i103

if.else41.if.end46_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.end.i103:                                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call33)
  %cmp.i104 = icmp eq i32 %call33, -1
  br i1 %cmp.i104, label %if.end.i103.if.end46_crit_edge, label %if.end9.i106

if.end.i103.if.end46_crit_edge:                   ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.end9.i106:                                     ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i105 = tail call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %call33) #11
  br label %if.end46

if.end46:                                         ; preds = %if.end9.i106, %if.end.i103.if.end46_crit_edge, %if.else41.if.end46_crit_edge, %if.end.i98, %if.then36.if.end46_crit_edge
  %gid.sroa.0.0 = phi i32 [ %call2.i97, %if.end.i98 ], [ %call33, %if.then36.if.end46_crit_edge ], [ %call10.i105, %if.end9.i106 ], [ -1, %if.end.i103.if.end46_crit_edge ], [ %call33, %if.else41.if.end46_crit_edge ]
  %.fca.0.insert60 = insertvalue [1 x i32] poison, i32 %gid.sroa.0.0, 0
  %call48 = tail call i32 @from_kgid(ptr noundef %to, [1 x i32] %.fca.0.insert60) #11
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end46, %if.end26
  %call28.sink = phi i32 [ %call28, %if.end26 ], [ %call48, %if.end46 ]
  %e_id.sink = phi ptr [ %e_id, %if.end26 ], [ %e_id32, %if.end46 ]
  %13 = tail call i32 @llvm.bswap.i32(i32 %call28.sink)
  %14 = ptrtoint ptr %e_id.sink to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %e_id.sink, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.posix_acl_xattr_entry, ptr %entry1.0109, i32 1
  %cmp14.not = icmp eq ptr %incdec.ptr, %add.ptr13
  br i1 %cmp14.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @posix_acl_fix_xattr_to_user(ptr noundef %mnt_userns, ptr noundef %value, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #11
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
  %cmp = icmp eq ptr %7, @init_user_ns
  %cmp3 = icmp eq ptr %mnt_userns, @init_user_ns
  %or.cond = and i1 %cmp3, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @posix_acl_fix_xattr_userns(ptr noundef %7, ptr noundef nonnull @init_user_ns, ptr noundef %mnt_userns, ptr noundef %value, i32 noundef %size, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @posix_acl_from_xattr(ptr noundef %user_ns, ptr noundef readonly %value, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.posix_acl_xattr_header, ptr %value, i32 1
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp = icmp ult i32 %size, 4
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %1)
  %cmp4.not = icmp eq i32 %1, 33554432
  br i1 %cmp4.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %sub.i = add i32 %size, -4
  %rem.i = and i32 %sub.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %div6.i = lshr i32 %sub.i, 3
  %retval.0.i = select i1 %tobool.not.i, i32 %div6.i, i32 -1
  br i1 %tobool.not.i, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp13 = icmp eq i32 %retval.0.i, 0
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end8.i.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end12
  %mul.i = shl nuw i32 %retval.0.i, 3
  %add.i = add i32 %mul.i, 16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3136) #14
  %tobool.not.i71 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i71, label %if.end8.i.i.cleanup_crit_edge, label %if.end20

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end8.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %call9.i.i, align 128
  %a_count.i.i = getelementptr inbounds %struct.posix_acl, ptr %call9.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %a_count.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %retval.0.i, ptr %a_count.i.i, align 4
  %add.ptr21 = getelementptr %struct.posix_acl_xattr_entry, ptr %add.ptr, i32 %retval.0.i
  %cmp22.not75 = icmp eq ptr %add.ptr, %add.ptr21
  br i1 %cmp22.not75, label %if.end20.cleanup_crit_edge, label %for.body.preheader

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %if.end20
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %call9.i.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %acl_e.077 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %a_entries, %for.body.preheader ]
  %entry1.076 = phi ptr [ %incdec.ptr41, %for.inc.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %4 = ptrtoint ptr %entry1.076 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %entry1.076, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %acl_e.077 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %acl_e.077, align 4
  %e_perm = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %entry1.076, i32 0, i32 1
  %8 = ptrtoint ptr %e_perm to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %e_perm, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %e_perm24 = getelementptr inbounds %struct.posix_acl_entry, ptr %acl_e.077, i32 0, i32 1
  %11 = ptrtoint ptr %e_perm24 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %e_perm24, align 2
  %conv = sext i16 %6 to i32
  %12 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %conv, label %for.body.fail_crit_edge [
    i32 1, label %for.body.for.inc_crit_edge
    i32 4, label %for.body.for.inc_crit_edge79
    i32 16, label %for.body.for.inc_crit_edge80
    i32 32, label %for.body.for.inc_crit_edge81
    i32 2, label %sw.bb26
    i32 8, label %sw.bb32
  ]

for.body.for.inc_crit_edge81:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge80:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge79:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.fail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

sw.bb26:                                          ; preds = %for.body
  %13 = getelementptr inbounds %struct.posix_acl_entry, ptr %acl_e.077, i32 0, i32 2
  %e_id = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %entry1.076, i32 0, i32 2
  %14 = ptrtoint ptr %e_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %e_id, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %call27 = tail call i32 @make_kuid(ptr noundef %user_ns, i32 noundef %16) #11
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call27, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27)
  %cmp.i.not = icmp eq i32 %call27, -1
  br i1 %cmp.i.not, label %sw.bb26.fail_crit_edge, label %sw.bb26.for.inc_crit_edge

sw.bb26.for.inc_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb26.fail_crit_edge:                           ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

sw.bb32:                                          ; preds = %for.body
  %18 = getelementptr inbounds %struct.posix_acl_entry, ptr %acl_e.077, i32 0, i32 2
  %e_id34 = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %entry1.076, i32 0, i32 2
  %19 = ptrtoint ptr %e_id34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %e_id34, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %call35 = tail call i32 @make_kgid(ptr noundef %user_ns, i32 noundef %21) #11
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call35, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call35)
  %cmp.i72.not = icmp eq i32 %call35, -1
  br i1 %cmp.i72.not, label %sw.bb32.fail_crit_edge, label %sw.bb32.for.inc_crit_edge

sw.bb32.for.inc_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb32.fail_crit_edge:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

for.inc:                                          ; preds = %sw.bb32.for.inc_crit_edge, %sw.bb26.for.inc_crit_edge, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge79, %for.body.for.inc_crit_edge80, %for.body.for.inc_crit_edge81
  %incdec.ptr = getelementptr %struct.posix_acl_entry, ptr %acl_e.077, i32 1
  %incdec.ptr41 = getelementptr %struct.posix_acl_xattr_entry, ptr %entry1.076, i32 1
  %cmp22.not = icmp eq ptr %incdec.ptr41, %add.ptr21
  br i1 %cmp22.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fail:                                             ; preds = %sw.bb32.fail_crit_edge, %sw.bb26.fail_crit_edge, %for.body.fail_crit_edge
  tail call fastcc void @posix_acl_release(ptr noundef nonnull %call9.i.i)
  br label %cleanup

cleanup:                                          ; preds = %fail, %for.inc.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %fail ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end12.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end3.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end7.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ], [ %call9.i.i, %if.end20.cleanup_crit_edge ], [ %call9.i.i, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @posix_acl_to_xattr(ptr noundef %user_ns, ptr nocapture noundef readonly %acl, ptr noundef writeonly %buffer, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %0 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a_count, align 4
  %mul.i = shl i32 %1, 3
  %add.i = or i32 %mul.i, 4
  %tobool.not = icmp eq ptr %buffer, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %size)
  %cmp = icmp ugt i32 %add.i, %size
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 33554432, ptr %buffer, align 4
  %3 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp436.not = icmp eq i32 %4, 0
  br i1 %cmp436.not, label %if.end2.cleanup_crit_edge, label %for.body.preheader

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %if.end2
  %add.ptr = getelementptr %struct.posix_acl_xattr_header, ptr %buffer, i32 1
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.preheader
  %n.039 = phi i32 [ %inc, %sw.epilog.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ext_entry.037 = phi ptr [ %incdec.ptr, %sw.epilog.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %arrayidx = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.039
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = ptrtoint ptr %ext_entry.037 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %ext_entry.037, align 4
  %e_perm = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.039, i32 1
  %9 = ptrtoint ptr %e_perm to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %e_perm, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %e_perm6 = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %ext_entry.037, i32 0, i32 1
  %12 = ptrtoint ptr %e_perm6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %e_perm6, align 2
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 4
  %conv = sext i16 %14 to i32
  %15 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %conv, label %for.body.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb9
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %16 = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.039, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack35 = load i32, ptr %16, align 4
  %18 = insertvalue [1 x i32] undef, i32 %.unpack35, 0
  %call8 = tail call i32 @from_kuid(ptr noundef %user_ns, [1 x i32] %18) #11
  %19 = tail call i32 @llvm.bswap.i32(i32 %call8)
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %20 = getelementptr %struct.posix_acl, ptr %acl, i32 0, i32 3, i32 %n.039, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack = load i32, ptr %20, align 4
  %22 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call11 = tail call i32 @from_kgid(ptr noundef %user_ns, [1 x i32] %22) #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %call11)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb, %for.body.sw.epilog_crit_edge
  %.sink = phi i32 [ %23, %sw.bb9 ], [ %19, %sw.bb ], [ -1, %for.body.sw.epilog_crit_edge ]
  %e_id13 = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %ext_entry.037, i32 0, i32 2
  %24 = ptrtoint ptr %e_id13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %e_id13, align 4
  %inc = add nuw i32 %n.039, 1
  %incdec.ptr = getelementptr %struct.posix_acl_xattr_entry, ptr %ext_entry.037, i32 1
  %25 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %a_count, align 4
  %cmp4 = icmp ult i32 %inc, %26
  br i1 %cmp4, label %sw.epilog.for.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add.i, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ], [ %add.i, %if.end2.cleanup_crit_edge ], [ %add.i, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_posix_acl(ptr noundef %mnt_userns, ptr noundef %inode, i32 noundef %type, ptr noundef %acl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %4 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_op, align 8
  %set_acl = getelementptr inbounds %struct.inode_operations, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %set_acl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_acl, align 16
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %type)
  %cmp = icmp eq i32 %type, 16384
  br i1 %cmp, label %land.lhs.true, label %if.end3.if.end9_crit_edge

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end3
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %inode, align 8
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %10)
  %cmp5 = icmp eq i16 %10, 16384
  br i1 %cmp5, label %land.lhs.true.if.end9_crit_edge, label %if.then7

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %tobool8.not = icmp eq ptr %acl, null
  %cond = select i1 %tobool8.not, i32 0, i32 -13
  br label %return

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end3.if.end9_crit_edge
  %call = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %mnt_userns, ptr noundef %inode) #11
  br i1 %call, label %if.end11, label %if.end9.return_crit_edge

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end11:                                         ; preds = %if.end9
  %tobool12.not = icmp eq ptr %acl, null
  br i1 %tobool12.not, label %if.end11.if.end19_crit_edge, label %if.then13

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then13:                                        ; preds = %if.end11
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 53
  %13 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_user_ns, align 8
  %call15 = tail call i32 @posix_acl_valid(ptr noundef %14, ptr noundef nonnull %acl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then13.if.end19_crit_edge, label %if.then13.return_crit_edge

if.then13.return_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %if.then13.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %15 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_op, align 8
  %set_acl21 = getelementptr inbounds %struct.inode_operations, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %set_acl21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_acl21, align 16
  %call22 = tail call i32 %18(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) #11
  br label %return

return:                                           ; preds = %if.end19, %if.then13.return_crit_edge, %if.end9.return_crit_edge, %if.then7, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %call15, %if.then13.return_crit_edge ], [ %call22, %if.end19 ], [ %cond, %if.then7 ], [ -95, %entry.return_crit_edge ], [ -95, %if.end.return_crit_edge ], [ -1, %if.end9.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @posix_acl_xattr_list(ptr nocapture noundef readonly %dentry) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_acl_xattr_get(ptr nocapture noundef readonly %handler, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr nocapture noundef readnone %name, ptr noundef writeonly %value, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %6)
  %cmp = icmp eq i16 %6, -24576
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %call = tail call ptr @get_acl(ptr noundef %inode, i32 noundef %8)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %cmp9 = icmp eq ptr %call, null
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %a_count.i, align 4
  %mul.i.i = shl i32 %11, 3
  %add.i.i = or i32 %mul.i.i, 4
  %tobool.not.i = icmp eq ptr %value, null
  br i1 %tobool.not.i, label %if.end12.land.lhs.true.i_crit_edge, label %if.end.i

if.end12.land.lhs.true.i_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %size)
  %cmp.i21 = icmp ugt i32 %add.i.i, %size
  br i1 %cmp.i21, label %if.end.i.land.lhs.true.i_crit_edge, label %if.end2.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end2.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 33554432, ptr %value, align 4
  %13 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %a_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp436.not.i = icmp eq i32 %14, 0
  br i1 %cmp436.not.i, label %if.end2.i.land.lhs.true.i_crit_edge, label %for.body.preheader.i

if.end2.i.land.lhs.true.i_crit_edge:              ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

for.body.preheader.i:                             ; preds = %if.end2.i
  %add.ptr.i = getelementptr %struct.posix_acl_xattr_header, ptr %value, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %for.body.preheader.i
  %n.039.i = phi i32 [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %ext_entry.037.i = phi ptr [ %incdec.ptr.i, %sw.epilog.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.posix_acl, ptr %call, i32 0, i32 3, i32 %n.039.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i, align 4
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #11
  %18 = ptrtoint ptr %ext_entry.037.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %ext_entry.037.i, align 4
  %e_perm.i = getelementptr %struct.posix_acl, ptr %call, i32 0, i32 3, i32 %n.039.i, i32 1
  %19 = ptrtoint ptr %e_perm.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %e_perm.i, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #11
  %e_perm6.i = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %ext_entry.037.i, i32 0, i32 1
  %22 = ptrtoint ptr %e_perm6.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %e_perm6.i, align 2
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i, align 4
  %conv.i = sext i16 %24 to i32
  %25 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %conv.i, label %for.body.i.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 8, label %sw.bb9.i
  ]

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = getelementptr %struct.posix_acl, ptr %call, i32 0, i32 3, i32 %n.039.i, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack35.i = load i32, ptr %26, align 4
  %28 = insertvalue [1 x i32] undef, i32 %.unpack35.i, 0
  %call8.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %28) #11
  %29 = tail call i32 @llvm.bswap.i32(i32 %call8.i) #11
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = getelementptr %struct.posix_acl, ptr %call, i32 0, i32 3, i32 %n.039.i, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack.i = load i32, ptr %30, align 4
  %32 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call11.i = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %32) #11
  %33 = tail call i32 @llvm.bswap.i32(i32 %call11.i) #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb9.i, %sw.bb.i, %for.body.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ %33, %sw.bb9.i ], [ %29, %sw.bb.i ], [ -1, %for.body.i.sw.epilog.i_crit_edge ]
  %e_id13.i = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %ext_entry.037.i, i32 0, i32 2
  %34 = ptrtoint ptr %e_id13.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink.i, ptr %e_id13.i, align 4
  %inc.i = add nuw i32 %n.039.i, 1
  %incdec.ptr.i = getelementptr %struct.posix_acl_xattr_entry, ptr %ext_entry.037.i, i32 1
  %35 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %a_count.i, align 4
  %cmp4.i = icmp ult i32 %inc.i, %36
  br i1 %cmp4.i, label %sw.epilog.i.for.body.i_crit_edge, label %sw.epilog.i.land.lhs.true.i_crit_edge

sw.epilog.i.land.lhs.true.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i.land.lhs.true.i_crit_edge, %if.end2.i.land.lhs.true.i_crit_edge, %if.end.i.land.lhs.true.i_crit_edge, %if.end12.land.lhs.true.i_crit_edge
  %retval.0.i = phi i32 [ %add.i.i, %if.end12.land.lhs.true.i_crit_edge ], [ -34, %if.end.i.land.lhs.true.i_crit_edge ], [ %add.i.i, %if.end2.i.land.lhs.true.i_crit_edge ], [ %add.i.i, %sw.epilog.i.land.lhs.true.i_crit_edge ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #11
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #11, !srcloc !94
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !84

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #11
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %call, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then6 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -61, %if.end8.cleanup_crit_edge ], [ %retval.0.i, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %retval.0.i, %if.then10.i.i.i.i ], [ %retval.0.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_acl_xattr_set(ptr nocapture noundef readonly %handler, ptr noundef %mnt_userns, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr nocapture noundef readnone %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call ptr @posix_acl_from_xattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %value, i32 noundef %size)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %acl.0 = phi ptr [ %call, %if.then.if.end4_crit_edge ], [ null, %entry.if.end4_crit_edge ]
  %flags5 = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %1 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags5, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end4.set_posix_acl.exit_crit_edge, label %if.end.i

if.end4.set_posix_acl.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_posix_acl.exit

if.end.i:                                         ; preds = %if.end4
  %i_op.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %7 = ptrtoint ptr %i_op.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_op.i, align 8
  %set_acl.i = getelementptr inbounds %struct.inode_operations, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %set_acl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_acl.i, align 16
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %if.end.i.set_posix_acl.exit_crit_edge, label %if.end3.i

if.end.i.set_posix_acl.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_posix_acl.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %2)
  %cmp.i12 = icmp eq i32 %2, 16384
  br i1 %cmp.i12, label %land.lhs.true.i, label %if.end3.i.if.end9.i_crit_edge

if.end3.i.if.end9.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  %11 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %inode, align 8
  %13 = and i16 %12, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %13)
  %cmp5.i = icmp eq i16 %13, 16384
  br i1 %cmp5.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %tobool8.not.i = icmp eq ptr %acl.0, null
  %cond.i = select i1 %tobool8.not.i, i32 0, i32 -13
  br label %set_posix_acl.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.end3.i.if.end9.i_crit_edge
  %call.i = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %mnt_userns, ptr noundef %inode) #11
  br i1 %call.i, label %if.end11.i, label %if.end9.i.set_posix_acl.exit_crit_edge

if.end9.i.set_posix_acl.exit_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_posix_acl.exit

if.end11.i:                                       ; preds = %if.end9.i
  %tobool12.not.i = icmp eq ptr %acl.0, null
  br i1 %tobool12.not.i, label %if.end11.i.if.end19.i_crit_edge, label %if.then13.i

if.end11.i.if.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then13.i:                                      ; preds = %if.end11.i
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_user_ns.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 53
  %16 = ptrtoint ptr %s_user_ns.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_user_ns.i, align 8
  %call15.i = tail call i32 @posix_acl_valid(ptr noundef %17, ptr noundef nonnull %acl.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then13.i.if.end19.i_crit_edge, label %if.then13.i.land.lhs.true.i14_crit_edge

if.then13.i.land.lhs.true.i14_crit_edge:          ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i14

if.then13.i.if.end19.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then13.i.if.end19.i_crit_edge, %if.end11.i.if.end19.i_crit_edge
  %18 = ptrtoint ptr %i_op.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_op.i, align 8
  %set_acl21.i = getelementptr inbounds %struct.inode_operations, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %set_acl21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_acl21.i, align 16
  %call22.i = tail call i32 %21(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %acl.0, i32 noundef %2) #11
  br label %set_posix_acl.exit

set_posix_acl.exit:                               ; preds = %if.end19.i, %if.end9.i.set_posix_acl.exit_crit_edge, %if.then7.i, %if.end.i.set_posix_acl.exit_crit_edge, %if.end4.set_posix_acl.exit_crit_edge
  %retval.1.i = phi i32 [ %call22.i, %if.end19.i ], [ %cond.i, %if.then7.i ], [ -95, %if.end4.set_posix_acl.exit_crit_edge ], [ -95, %if.end.i.set_posix_acl.exit_crit_edge ], [ -1, %if.end9.i.set_posix_acl.exit_crit_edge ]
  %tobool.not.i13 = icmp eq ptr %acl.0, null
  br i1 %tobool.not.i13, label %set_posix_acl.exit.cleanup_crit_edge, label %set_posix_acl.exit.land.lhs.true.i14_crit_edge

set_posix_acl.exit.land.lhs.true.i14_crit_edge:   ; preds = %set_posix_acl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i14

set_posix_acl.exit.cleanup_crit_edge:             ; preds = %set_posix_acl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i14:                                ; preds = %set_posix_acl.exit.land.lhs.true.i14_crit_edge, %if.then13.i.land.lhs.true.i14_crit_edge
  %retval.1.i17 = phi i32 [ %retval.1.i, %set_posix_acl.exit.land.lhs.true.i14_crit_edge ], [ %call15.i, %if.then13.i.land.lhs.true.i14_crit_edge ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl.0, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr nonnull %acl.0, i32 1, i32 3, i32 1) #11
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl.0, ptr nonnull %acl.0, i32 1, ptr nonnull elementtype(i32) %acl.0) #11, !srcloc !94
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !84

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl.0, i32 noundef 3) #11
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %acl.0, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %set_posix_acl.exit.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ %0, %if.then2 ], [ %retval.1.i, %set_posix_acl.exit.cleanup_crit_edge ], [ %retval.1.i17, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %retval.1.i17, %if.then10.i.i.i.i ], [ %retval.1.i17, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @simple_set_acl(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %acl.addr = alloca ptr, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acl.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %acl, ptr %acl.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %type)
  %cmp = icmp eq i32 %type, 32768
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then:                                          ; preds = %entry
  %call = call i32 @posix_acl_update_mode(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %inode, ptr noundef nonnull %acl.addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end2_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #11
  %1 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #11
  %2 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acl.addr, align 4
  call void @set_cached_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @simple_acl_create(ptr noundef %dir, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %default_acl = alloca ptr, align 4
  %acl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %default_acl) #11
  %0 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %default_acl, align 4, !annotation !105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #11
  %1 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %acl, align 4, !annotation !105
  %call = call i32 @posix_acl_create(ptr noundef %dir, ptr noundef %inode, ptr noundef nonnull %default_acl, ptr noundef nonnull %acl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %default_acl, align 4
  tail call void @set_cached_acl(ptr noundef %inode, i32 noundef 16384, ptr noundef %3)
  %4 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acl, align 4
  tail call void @set_cached_acl(ptr noundef %inode, i32 noundef 32768, ptr noundef %5)
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %land.lhs.true.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

land.lhs.true.i:                                  ; preds = %if.end
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #11, !srcloc !94
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end3_crit_edge, label %if.then10.i.i.i.i, !prof !84

if.end5.i.i.i.i.if.end3_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #11
  br label %if.end3

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %3, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %if.end3

if.end3:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %land.lhs.true.i17

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i17:                                ; preds = %if.end3
  %call.i.i.i.i.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #11, !srcloc !94
  %asmresult.i.i.i.i.i.i.i15 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i15)
  %cmp.i.i.i.i16 = icmp eq i32 %asmresult.i.i.i.i.i.i.i15, 1
  br i1 %cmp.i.i.i.i16, label %do.end.i22, label %if.end5.i.i.i.i19

if.end5.i.i.i.i19:                                ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i15)
  %.not.i.i.i.i18 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i15, 0
  br i1 %.not.i.i.i.i18, label %if.end5.i.i.i.i19.cleanup_crit_edge, label %if.then10.i.i.i.i20, !prof !84

if.end5.i.i.i.i19.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i20:                              ; preds = %if.end5.i.i.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #11
  br label %cleanup

do.end.i22:                                       ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %a_rcu.i21 = getelementptr inbounds %struct.posix_acl, ptr %5, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i21, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i22, %if.then10.i.i.i.i20, %if.end5.i.i.i.i19.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %default_acl) #11
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !70}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../fs/posix_acl.c", i32 47, i32 9}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_get_cached_acl, !5, !"__ksymtab_get_cached_acl", i1 false, i1 false}
!5 = !{!"../fs/posix_acl.c", i32 57, i32 1}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../fs/posix_acl.c", i32 61, i32 26}
!8 = !{ptr @__ksymtab_get_cached_acl_rcu, !9, !"__ksymtab_get_cached_acl_rcu", i1 false, i1 false}
!9 = !{!"../fs/posix_acl.c", i32 73, i32 1}
!10 = !{ptr @__ksymtab_set_cached_acl, !11, !"__ksymtab_set_cached_acl", i1 false, i1 false}
!11 = !{!"../fs/posix_acl.c", i32 84, i32 1}
!12 = !{ptr @__ksymtab_forget_cached_acl, !13, !"__ksymtab_forget_cached_acl", i1 false, i1 false}
!13 = !{!"../fs/posix_acl.c", i32 99, i32 1}
!14 = !{ptr @__ksymtab_forget_all_cached_acls, !15, !"__ksymtab_forget_all_cached_acls", i1 false, i1 false}
!15 = !{!"../fs/posix_acl.c", i32 106, i32 1}
!16 = !{ptr @__ksymtab_get_acl, !17, !"__ksymtab_get_acl", i1 false, i1 false}
!17 = !{!"../fs/posix_acl.c", i32 171, i32 1}
!18 = !{ptr @__ksymtab_posix_acl_init, !19, !"__ksymtab_posix_acl_init", i1 false, i1 false}
!19 = !{!"../fs/posix_acl.c", i32 182, i32 1}
!20 = !{ptr @__ksymtab_posix_acl_alloc, !21, !"__ksymtab_posix_acl_alloc", i1 false, i1 false}
!21 = !{!"../fs/posix_acl.c", i32 197, i32 1}
!22 = !{ptr @__ksymtab_posix_acl_valid, !23, !"__ksymtab_posix_acl_valid", i1 false, i1 false}
!23 = !{!"../fs/posix_acl.c", i32 283, i32 1}
!24 = !{ptr @__ksymtab_posix_acl_equiv_mode, !25, !"__ksymtab_posix_acl_equiv_mode", i1 false, i1 false}
!25 = !{!"../fs/posix_acl.c", i32 330, i32 1}
!26 = !{ptr @__ksymtab_posix_acl_from_mode, !27, !"__ksymtab_posix_acl_from_mode", i1 false, i1 false}
!27 = !{!"../fs/posix_acl.c", i32 352, i32 1}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../fs/posix_acl.c", i32 374, i32 21}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../fs/posix_acl.c", i32 381, i32 21}
!32 = !{ptr @__ksymtab___posix_acl_create, !33, !"__ksymtab___posix_acl_create", i1 false, i1 false}
!33 = !{!"../fs/posix_acl.c", i32 556, i32 1}
!34 = !{ptr @__ksymtab___posix_acl_chmod, !35, !"__ksymtab___posix_acl_chmod", i1 false, i1 false}
!35 = !{!"../fs/posix_acl.c", i32 574, i32 1}
!36 = !{ptr @__ksymtab_posix_acl_chmod, !37, !"__ksymtab_posix_acl_chmod", i1 false, i1 false}
!37 = !{!"../fs/posix_acl.c", i32 615, i32 1}
!38 = !{ptr @__ksymtab_posix_acl_create, !39, !"__ksymtab_posix_acl_create", i1 false, i1 false}
!39 = !{!"../fs/posix_acl.c", i32 666, i32 1}
!40 = !{ptr @__ksymtab_posix_acl_update_mode, !41, !"__ksymtab_posix_acl_update_mode", i1 false, i1 false}
!41 = !{!"../fs/posix_acl.c", i32 708, i32 1}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../fs/posix_acl.c", i32 764, i32 35}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../fs/posix_acl.c", i32 774, i32 35}
!46 = !{ptr @__ksymtab_posix_acl_from_xattr, !47, !"__ksymtab_posix_acl_from_xattr", i1 false, i1 false}
!47 = !{!"../fs/posix_acl.c", i32 848, i32 1}
!48 = !{ptr @__ksymtab_posix_acl_to_xattr, !49, !"__ksymtab_posix_acl_to_xattr", i1 false, i1 false}
!49 = !{!"../fs/posix_acl.c", i32 890, i32 1}
!50 = !{ptr @__ksymtab_set_posix_acl, !51, !"__ksymtab_set_posix_acl", i1 false, i1 false}
!51 = !{!"../fs/posix_acl.c", i32 938, i32 1}
!52 = !{ptr @.str.3, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/posix_acl.c", i32 967, i32 10}
!54 = !{ptr @posix_acl_access_xattr_handler, !55, !"posix_acl_access_xattr_handler", i1 false, i1 false}
!55 = !{!"../fs/posix_acl.c", i32 966, i32 28}
!56 = !{ptr @__ksymtab_posix_acl_access_xattr_handler, !57, !"__ksymtab_posix_acl_access_xattr_handler", i1 false, i1 false}
!57 = !{!"../fs/posix_acl.c", i32 973, i32 1}
!58 = !{ptr @.str.4, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/posix_acl.c", i32 976, i32 10}
!60 = !{ptr @posix_acl_default_xattr_handler, !61, !"posix_acl_default_xattr_handler", i1 false, i1 false}
!61 = !{!"../fs/posix_acl.c", i32 975, i32 28}
!62 = !{ptr @__ksymtab_posix_acl_default_xattr_handler, !63, !"__ksymtab_posix_acl_default_xattr_handler", i1 false, i1 false}
!63 = !{!"../fs/posix_acl.c", i32 982, i32 1}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!66 = !{ptr @.str.5, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.6, !65, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!70 = !{ptr @.str.7, !69, !"<string literal>", i1 false, i1 false}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2153366123, i64 2153366601, i64 2153366160, i64 2153366216, i64 2153366250, i64 2153366274, i64 2153366315, i64 2153366336, i64 2153366364, i64 2153366398}
!82 = !{i64 2149939764}
!83 = !{i64 715837, i64 715861, i64 715882, i64 715899, i64 715916}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2149940030}
!86 = !{i64 2153371367}
!87 = !{i64 2153371209}
!88 = !{i64 2153379668}
!89 = !{i64 2148233631, i64 2148233663, i64 2148233692, i64 2148233726, i64 2148233757, i64 2148233780}
!90 = !{!"branch_weights", i32 1, i32 2000}
!91 = !{i64 738869, i64 738886, i64 738910, i64 738936, i64 738954}
!92 = !{i64 2153380028}
!93 = !{i64 2148321632}
!94 = !{i64 2148236096, i64 2148236128, i64 2148236157, i64 2148236191, i64 2148236222, i64 2148236245}
!95 = !{i64 2149890221}
!96 = !{i64 2153382297}
!97 = !{i64 2153382653}
!98 = !{i64 2153386856}
!99 = !{i64 741593, i64 741614, i64 741637, i64 741656, i64 741675}
!100 = !{i64 2153387277}
!101 = !{i64 2153388295}
!102 = !{i64 2153388716}
!103 = !{i64 2153390518}
!104 = !{i64 2153390845}
!105 = !{!"auto-init"}
