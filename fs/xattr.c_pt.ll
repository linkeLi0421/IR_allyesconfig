; ModuleID = '/llk/IR_all_yes/fs/xattr.c_pt.bc'
source_filename = "../fs/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xattr_supported_namespace\22, \22a\22\09"
module asm "\09.weak\09__crc_xattr_supported_namespace\09\09\09\09"
module asm "\09.long\09__crc_xattr_supported_namespace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xattr_supported_namespace:\09\09\09\09\09"
module asm "\09.asciz \09\22xattr_supported_namespace\22\09\09\09\09\09"
module asm "__kstrtabns_xattr_supported_namespace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__vfs_setxattr\22, \22a\22\09"
module asm "\09.weak\09__crc___vfs_setxattr\09\09\09\09"
module asm "\09.long\09__crc___vfs_setxattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___vfs_setxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22__vfs_setxattr\22\09\09\09\09\09"
module asm "__kstrtabns___vfs_setxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__vfs_setxattr_locked\22, \22a\22\09"
module asm "\09.weak\09__crc___vfs_setxattr_locked\09\09\09\09"
module asm "\09.long\09__crc___vfs_setxattr_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___vfs_setxattr_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22__vfs_setxattr_locked\22\09\09\09\09\09"
module asm "__kstrtabns___vfs_setxattr_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vfs_setxattr\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_setxattr\09\09\09\09"
module asm "\09.long\09__crc_vfs_setxattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_setxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_setxattr\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_setxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__vfs_getxattr\22, \22a\22\09"
module asm "\09.weak\09__crc___vfs_getxattr\09\09\09\09"
module asm "\09.long\09__crc___vfs_getxattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___vfs_getxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22__vfs_getxattr\22\09\09\09\09\09"
module asm "__kstrtabns___vfs_getxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vfs_getxattr\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_getxattr\09\09\09\09"
module asm "\09.long\09__crc_vfs_getxattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_getxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_getxattr\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_getxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vfs_listxattr\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_listxattr\09\09\09\09"
module asm "\09.long\09__crc_vfs_listxattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_listxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_listxattr\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_listxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__vfs_removexattr\22, \22a\22\09"
module asm "\09.weak\09__crc___vfs_removexattr\09\09\09\09"
module asm "\09.long\09__crc___vfs_removexattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___vfs_removexattr:\09\09\09\09\09"
module asm "\09.asciz \09\22__vfs_removexattr\22\09\09\09\09\09"
module asm "__kstrtabns___vfs_removexattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__vfs_removexattr_locked\22, \22a\22\09"
module asm "\09.weak\09__crc___vfs_removexattr_locked\09\09\09\09"
module asm "\09.long\09__crc___vfs_removexattr_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___vfs_removexattr_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22__vfs_removexattr_locked\22\09\09\09\09\09"
module asm "__kstrtabns___vfs_removexattr_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vfs_removexattr\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_removexattr\09\09\09\09"
module asm "\09.long\09__crc_vfs_removexattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_removexattr:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_removexattr\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_removexattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_listxattr\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_listxattr\09\09\09\09"
module asm "\09.long\09__crc_generic_listxattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_listxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_listxattr\22\09\09\09\09\09"
module asm "__kstrtabns_generic_listxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xattr_full_name\22, \22a\22\09"
module asm "\09.weak\09__crc_xattr_full_name\09\09\09\09"
module asm "\09.long\09__crc_xattr_full_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xattr_full_name:\09\09\09\09\09"
module asm "\09.asciz \09\22xattr_full_name\22\09\09\09\09\09"
module asm "__kstrtabns_xattr_full_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.79, %struct.trace_event, ptr, ptr, %union.anon.81, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.79 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.81 = type { ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.38 }
%union.anon.38 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.40, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.97, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.98, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.99, ptr, %struct.address_space, %struct.list_head, %union.anon.100, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.97 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.98 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.99 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.100 = type { ptr }
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
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.95, %struct.list_head, %struct.list_head, %union.anon.96 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.95 = type { %struct.list_head }
%union.anon.96 = type { %struct.hlist_node }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.simple_xattr = type { %struct.list_head, ptr, i32, [0 x i8] }
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_xattr_supported_namespace = external dso_local constant [0 x i8], align 1
@__kstrtabns_xattr_supported_namespace = external dso_local constant [0 x i8], align 1
@__ksymtab_xattr_supported_namespace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xattr_supported_namespace to i32), ptr @__kstrtab_xattr_supported_namespace, ptr @__kstrtabns_xattr_supported_namespace }, section "___ksymtab+xattr_supported_namespace", align 4
@.str = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__kstrtab___vfs_setxattr = external dso_local constant [0 x i8], align 1
@__kstrtabns___vfs_setxattr = external dso_local constant [0 x i8], align 1
@__ksymtab___vfs_setxattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__vfs_setxattr to i32), ptr @__kstrtab___vfs_setxattr, ptr @__kstrtabns___vfs_setxattr }, section "___ksymtab+__vfs_setxattr", align 4
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab___vfs_setxattr_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns___vfs_setxattr_locked = external dso_local constant [0 x i8], align 1
@__ksymtab___vfs_setxattr_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__vfs_setxattr_locked to i32), ptr @__kstrtab___vfs_setxattr_locked, ptr @__kstrtabns___vfs_setxattr_locked }, section "___ksymtab_gpl+__vfs_setxattr_locked", align 4
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"security.capability\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_vfs_setxattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_setxattr = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_setxattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_setxattr to i32), ptr @__kstrtab_vfs_setxattr, ptr @__kstrtabns_vfs_setxattr }, section "___ksymtab_gpl+vfs_setxattr", align 4
@__kstrtab___vfs_getxattr = external dso_local constant [0 x i8], align 1
@__kstrtabns___vfs_getxattr = external dso_local constant [0 x i8], align 1
@__ksymtab___vfs_getxattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__vfs_getxattr to i32), ptr @__kstrtab___vfs_getxattr, ptr @__kstrtabns___vfs_getxattr }, section "___ksymtab+__vfs_getxattr", align 4
@__kstrtab_vfs_getxattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_getxattr = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_getxattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_getxattr to i32), ptr @__kstrtab_vfs_getxattr, ptr @__kstrtabns_vfs_getxattr }, section "___ksymtab_gpl+vfs_getxattr", align 4
@__kstrtab_vfs_listxattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_listxattr = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_listxattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_listxattr to i32), ptr @__kstrtab_vfs_listxattr, ptr @__kstrtabns_vfs_listxattr }, section "___ksymtab_gpl+vfs_listxattr", align 4
@__kstrtab___vfs_removexattr = external dso_local constant [0 x i8], align 1
@__kstrtabns___vfs_removexattr = external dso_local constant [0 x i8], align 1
@__ksymtab___vfs_removexattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__vfs_removexattr to i32), ptr @__kstrtab___vfs_removexattr, ptr @__kstrtabns___vfs_removexattr }, section "___ksymtab+__vfs_removexattr", align 4
@__kstrtab___vfs_removexattr_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns___vfs_removexattr_locked = external dso_local constant [0 x i8], align 1
@__ksymtab___vfs_removexattr_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__vfs_removexattr_locked to i32), ptr @__kstrtab___vfs_removexattr_locked, ptr @__kstrtabns___vfs_removexattr_locked }, section "___ksymtab_gpl+__vfs_removexattr_locked", align 4
@__kstrtab_vfs_removexattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_removexattr = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_removexattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_removexattr to i32), ptr @__kstrtab_vfs_removexattr, ptr @__kstrtabns_vfs_removexattr }, section "___ksymtab_gpl+vfs_removexattr", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_setxattr\00", [45 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__setxattr = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 5, ptr @types__setxattr, ptr @args__setxattr, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setxattr, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setxattr, i64 20) }, ptr @event_enter__setxattr, ptr @event_exit__setxattr }, align 4
@event_enter__setxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__setxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setxattr = internal global ptr @event_enter__setxattr, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_setxattr\00", [46 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__setxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__setxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setxattr = internal global ptr @event_exit__setxattr, section "_ftrace_events", align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_setxattr\00", [19 x i8] zeroinitializer }, align 32
@types__setxattr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.44, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], [44 x i8] zeroinitializer }, align 32
@args__setxattr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setxattr = internal global ptr @__syscall_meta__setxattr, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_lsetxattr\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__lsetxattr = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 5, ptr @types__lsetxattr, ptr @args__lsetxattr, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__lsetxattr, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__lsetxattr, i64 20) }, ptr @event_enter__lsetxattr, ptr @event_exit__lsetxattr }, align 4
@event_enter__lsetxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__lsetxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__lsetxattr = internal global ptr @event_enter__lsetxattr, section "_ftrace_events", align 4
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_lsetxattr\00", [45 x i8] zeroinitializer }, align 32
@event_exit__lsetxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__lsetxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__lsetxattr = internal global ptr @event_exit__lsetxattr, section "_ftrace_events", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_lsetxattr\00", [18 x i8] zeroinitializer }, align 32
@types__lsetxattr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.44, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], [44 x i8] zeroinitializer }, align 32
@args__lsetxattr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__lsetxattr = internal global ptr @__syscall_meta__lsetxattr, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_fsetxattr\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__fsetxattr = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 5, ptr @types__fsetxattr, ptr @args__fsetxattr, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fsetxattr, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fsetxattr, i64 20) }, ptr @event_enter__fsetxattr, ptr @event_exit__fsetxattr }, align 4
@event_enter__fsetxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fsetxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fsetxattr = internal global ptr @event_enter__fsetxattr, section "_ftrace_events", align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_fsetxattr\00", [45 x i8] zeroinitializer }, align 32
@event_exit__fsetxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fsetxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fsetxattr = internal global ptr @event_exit__fsetxattr, section "_ftrace_events", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_fsetxattr\00", [18 x i8] zeroinitializer }, align 32
@types__fsetxattr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.47, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], [44 x i8] zeroinitializer }, align 32
@args__fsetxattr = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.56, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fsetxattr = internal global ptr @__syscall_meta__fsetxattr, section "__syscalls_metadata", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_getxattr\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__getxattr = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 4, ptr @types__getxattr, ptr @args__getxattr, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getxattr, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getxattr, i64 20) }, ptr @event_enter__getxattr, ptr @event_exit__getxattr }, align 4
@event_enter__getxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__getxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getxattr = internal global ptr @event_enter__getxattr, section "_ftrace_events", align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_getxattr\00", [46 x i8] zeroinitializer }, align 32
@event_exit__getxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__getxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getxattr = internal global ptr @event_exit__getxattr, section "_ftrace_events", align 4
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_getxattr\00", [19 x i8] zeroinitializer }, align 32
@types__getxattr = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.44, ptr @.str.44, ptr @.str.57, ptr @.str.46], [16 x i8] zeroinitializer }, align 32
@args__getxattr = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getxattr = internal global ptr @__syscall_meta__getxattr, section "__syscalls_metadata", align 4
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_lgetxattr\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__lgetxattr = internal global %struct.syscall_metadata { ptr @.str.17, i32 -1, i32 4, ptr @types__lgetxattr, ptr @args__lgetxattr, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__lgetxattr, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__lgetxattr, i64 20) }, ptr @event_enter__lgetxattr, ptr @event_exit__lgetxattr }, align 4
@event_enter__lgetxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__lgetxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__lgetxattr = internal global ptr @event_enter__lgetxattr, section "_ftrace_events", align 4
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_lgetxattr\00", [45 x i8] zeroinitializer }, align 32
@event_exit__lgetxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__lgetxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__lgetxattr = internal global ptr @event_exit__lgetxattr, section "_ftrace_events", align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_lgetxattr\00", [18 x i8] zeroinitializer }, align 32
@types__lgetxattr = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.44, ptr @.str.44, ptr @.str.57, ptr @.str.46], [16 x i8] zeroinitializer }, align 32
@args__lgetxattr = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__lgetxattr = internal global ptr @__syscall_meta__lgetxattr, section "__syscalls_metadata", align 4
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_fgetxattr\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__fgetxattr = internal global %struct.syscall_metadata { ptr @.str.20, i32 -1, i32 4, ptr @types__fgetxattr, ptr @args__fgetxattr, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fgetxattr, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fgetxattr, i64 20) }, ptr @event_enter__fgetxattr, ptr @event_exit__fgetxattr }, align 4
@event_enter__fgetxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.18 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fgetxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fgetxattr = internal global ptr @event_enter__fgetxattr, section "_ftrace_events", align 4
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_fgetxattr\00", [45 x i8] zeroinitializer }, align 32
@event_exit__fgetxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.19 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fgetxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fgetxattr = internal global ptr @event_exit__fgetxattr, section "_ftrace_events", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_fgetxattr\00", [18 x i8] zeroinitializer }, align 32
@types__fgetxattr = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.47, ptr @.str.44, ptr @.str.57, ptr @.str.46], [16 x i8] zeroinitializer }, align 32
@args__fgetxattr = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.56, ptr @.str.49, ptr @.str.50, ptr @.str.51], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fgetxattr = internal global ptr @__syscall_meta__fgetxattr, section "__syscalls_metadata", align 4
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_listxattr\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__listxattr = internal global %struct.syscall_metadata { ptr @.str.23, i32 -1, i32 3, ptr @types__listxattr, ptr @args__listxattr, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__listxattr, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__listxattr, i64 20) }, ptr @event_enter__listxattr, ptr @event_exit__listxattr }, align 4
@event_enter__listxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.21 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__listxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__listxattr = internal global ptr @event_enter__listxattr, section "_ftrace_events", align 4
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_listxattr\00", [45 x i8] zeroinitializer }, align 32
@event_exit__listxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.22 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__listxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__listxattr = internal global ptr @event_exit__listxattr, section "_ftrace_events", align 4
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_listxattr\00", [18 x i8] zeroinitializer }, align 32
@types__listxattr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.44, ptr @.str.58, ptr @.str.46], [20 x i8] zeroinitializer }, align 32
@args__listxattr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.48, ptr @.str.59, ptr @.str.51], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__listxattr = internal global ptr @__syscall_meta__listxattr, section "__syscalls_metadata", align 4
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_llistxattr\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__llistxattr = internal global %struct.syscall_metadata { ptr @.str.26, i32 -1, i32 3, ptr @types__llistxattr, ptr @args__llistxattr, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__llistxattr, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__llistxattr, i64 20) }, ptr @event_enter__llistxattr, ptr @event_exit__llistxattr }, align 4
@event_enter__llistxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.24 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__llistxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__llistxattr = internal global ptr @event_enter__llistxattr, section "_ftrace_events", align 4
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_llistxattr\00", [44 x i8] zeroinitializer }, align 32
@event_exit__llistxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.25 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__llistxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__llistxattr = internal global ptr @event_exit__llistxattr, section "_ftrace_events", align 4
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_llistxattr\00", [17 x i8] zeroinitializer }, align 32
@types__llistxattr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.44, ptr @.str.58, ptr @.str.46], [20 x i8] zeroinitializer }, align 32
@args__llistxattr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.48, ptr @.str.59, ptr @.str.51], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__llistxattr = internal global ptr @__syscall_meta__llistxattr, section "__syscalls_metadata", align 4
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_flistxattr\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__flistxattr = internal global %struct.syscall_metadata { ptr @.str.29, i32 -1, i32 3, ptr @types__flistxattr, ptr @args__flistxattr, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__flistxattr, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__flistxattr, i64 20) }, ptr @event_enter__flistxattr, ptr @event_exit__flistxattr }, align 4
@event_enter__flistxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.27 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__flistxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__flistxattr = internal global ptr @event_enter__flistxattr, section "_ftrace_events", align 4
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_flistxattr\00", [44 x i8] zeroinitializer }, align 32
@event_exit__flistxattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.28 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__flistxattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__flistxattr = internal global ptr @event_exit__flistxattr, section "_ftrace_events", align 4
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_flistxattr\00", [17 x i8] zeroinitializer }, align 32
@types__flistxattr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.47, ptr @.str.58, ptr @.str.46], [20 x i8] zeroinitializer }, align 32
@args__flistxattr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.56, ptr @.str.59, ptr @.str.51], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__flistxattr = internal global ptr @__syscall_meta__flistxattr, section "__syscalls_metadata", align 4
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_removexattr\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__removexattr = internal global %struct.syscall_metadata { ptr @.str.32, i32 -1, i32 2, ptr @types__removexattr, ptr @args__removexattr, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__removexattr, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__removexattr, i64 20) }, ptr @event_enter__removexattr, ptr @event_exit__removexattr }, align 4
@event_enter__removexattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.30 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__removexattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__removexattr = internal global ptr @event_enter__removexattr, section "_ftrace_events", align 4
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_removexattr\00", [43 x i8] zeroinitializer }, align 32
@event_exit__removexattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.31 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__removexattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__removexattr = internal global ptr @event_exit__removexattr, section "_ftrace_events", align 4
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_removexattr\00", [16 x i8] zeroinitializer }, align 32
@types__removexattr = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.44, ptr @.str.44], [24 x i8] zeroinitializer }, align 32
@args__removexattr = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.48, ptr @.str.49], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__removexattr = internal global ptr @__syscall_meta__removexattr, section "__syscalls_metadata", align 4
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_enter_lremovexattr\00", [41 x i8] zeroinitializer }, align 32
@__syscall_meta__lremovexattr = internal global %struct.syscall_metadata { ptr @.str.35, i32 -1, i32 2, ptr @types__lremovexattr, ptr @args__lremovexattr, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__lremovexattr, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__lremovexattr, i64 20) }, ptr @event_enter__lremovexattr, ptr @event_exit__lremovexattr }, align 4
@event_enter__lremovexattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.33 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__lremovexattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__lremovexattr = internal global ptr @event_enter__lremovexattr, section "_ftrace_events", align 4
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_exit_lremovexattr\00", [42 x i8] zeroinitializer }, align 32
@event_exit__lremovexattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.34 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__lremovexattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__lremovexattr = internal global ptr @event_exit__lremovexattr, section "_ftrace_events", align 4
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_lremovexattr\00", [47 x i8] zeroinitializer }, align 32
@types__lremovexattr = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.44, ptr @.str.44], [24 x i8] zeroinitializer }, align 32
@args__lremovexattr = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.48, ptr @.str.49], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__lremovexattr = internal global ptr @__syscall_meta__lremovexattr, section "__syscalls_metadata", align 4
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_enter_fremovexattr\00", [41 x i8] zeroinitializer }, align 32
@__syscall_meta__fremovexattr = internal global %struct.syscall_metadata { ptr @.str.38, i32 -1, i32 2, ptr @types__fremovexattr, ptr @args__fremovexattr, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fremovexattr, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fremovexattr, i64 20) }, ptr @event_enter__fremovexattr, ptr @event_exit__fremovexattr }, align 4
@event_enter__fremovexattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.36 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fremovexattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fremovexattr = internal global ptr @event_enter__fremovexattr, section "_ftrace_events", align 4
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_exit_fremovexattr\00", [42 x i8] zeroinitializer }, align 32
@event_exit__fremovexattr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.37 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fremovexattr, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fremovexattr = internal global ptr @event_exit__fremovexattr, section "_ftrace_events", align 4
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_fremovexattr\00", [47 x i8] zeroinitializer }, align 32
@types__fremovexattr = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.47, ptr @.str.44], [24 x i8] zeroinitializer }, align 32
@args__fremovexattr = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.56, ptr @.str.49], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fremovexattr = internal global ptr @__syscall_meta__fremovexattr, section "__syscalls_metadata", align 4
@__kstrtab_generic_listxattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_listxattr = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_listxattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_listxattr to i32), ptr @__kstrtab_generic_listxattr, ptr @__kstrtabns_generic_listxattr }, section "___ksymtab+generic_listxattr", align 4
@__kstrtab_xattr_full_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_xattr_full_name = external dso_local constant [0 x i8], align 1
@__ksymtab_xattr_full_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xattr_full_name to i32), ptr @__kstrtab_xattr_full_name, ptr @__kstrtabns_xattr_full_name }, section "___ksymtab+xattr_full_name", align 4
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"system.\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted.\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user.\00", [26 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const void *\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pathname\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"value\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"char *\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"list\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 179, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 208, i32 29 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 292, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"event_enter__setxattr\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [21 x i8] c"event_exit__setxattr\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [16 x i8] c"types__setxattr\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"args__setxattr\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [23 x i8] c"event_enter__lsetxattr\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [22 x i8] c"event_exit__lsetxattr\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"types__lsetxattr\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"args__lsetxattr\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 614, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [23 x i8] c"event_enter__fsetxattr\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [22 x i8] c"event_exit__fsetxattr\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"types__fsetxattr\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"args__fsetxattr\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [22 x i8] c"event_enter__getxattr\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [21 x i8] c"event_exit__getxattr\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [16 x i8] c"types__getxattr\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"args__getxattr\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [23 x i8] c"event_enter__lgetxattr\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [22 x i8] c"event_exit__lgetxattr\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"types__lgetxattr\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [16 x i8] c"args__lgetxattr\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 709, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant [23 x i8] c"event_enter__fgetxattr\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [22 x i8] c"event_exit__fgetxattr\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"types__fgetxattr\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"args__fgetxattr\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 715, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant [23 x i8] c"event_enter__listxattr\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"event_exit__listxattr\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"types__listxattr\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [16 x i8] c"args__listxattr\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [24 x i8] c"event_enter__llistxattr\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [23 x i8] c"event_exit__llistxattr\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [18 x i8] c"types__llistxattr\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"args__llistxattr\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 786, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant [24 x i8] c"event_enter__flistxattr\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [23 x i8] c"event_exit__flistxattr\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [18 x i8] c"types__flistxattr\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"args__flistxattr\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 792, i32 1 }
@___asan_gen_.265 = private unnamed_addr constant [25 x i8] c"event_enter__removexattr\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [24 x i8] c"event_exit__removexattr\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [19 x i8] c"types__removexattr\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [18 x i8] c"args__removexattr\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 846, i32 1 }
@___asan_gen_.286 = private unnamed_addr constant [26 x i8] c"event_enter__lremovexattr\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [25 x i8] c"event_exit__lremovexattr\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c"types__lremovexattr\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [19 x i8] c"args__lremovexattr\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 852, i32 1 }
@___asan_gen_.307 = private unnamed_addr constant [26 x i8] c"event_enter__fremovexattr\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [25 x i8] c"event_exit__fremovexattr\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [20 x i8] c"types__fremovexattr\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [19 x i8] c"args__fremovexattr\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 858, i32 1 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1095, i32 11 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1101, i32 11 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 110, i32 21 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 116, i32 21 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 127, i32 21 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 607, i32 1 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 230, i32 6 }
@___asan_gen_.371 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 214, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 156, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 621, i32 1 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 703, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.386 = private constant [14 x i8] c"../fs/xattr.c\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 780, i32 1 }
@llvm.compiler.used = appending global [168 x ptr] [ptr @__event_enter__fgetxattr, ptr @__event_enter__flistxattr, ptr @__event_enter__fremovexattr, ptr @__event_enter__fsetxattr, ptr @__event_enter__getxattr, ptr @__event_enter__lgetxattr, ptr @__event_enter__listxattr, ptr @__event_enter__llistxattr, ptr @__event_enter__lremovexattr, ptr @__event_enter__lsetxattr, ptr @__event_enter__removexattr, ptr @__event_enter__setxattr, ptr @__event_exit__fgetxattr, ptr @__event_exit__flistxattr, ptr @__event_exit__fremovexattr, ptr @__event_exit__fsetxattr, ptr @__event_exit__getxattr, ptr @__event_exit__lgetxattr, ptr @__event_exit__listxattr, ptr @__event_exit__llistxattr, ptr @__event_exit__lremovexattr, ptr @__event_exit__lsetxattr, ptr @__event_exit__removexattr, ptr @__event_exit__setxattr, ptr @__ksymtab___vfs_getxattr, ptr @__ksymtab___vfs_removexattr, ptr @__ksymtab___vfs_removexattr_locked, ptr @__ksymtab___vfs_setxattr, ptr @__ksymtab___vfs_setxattr_locked, ptr @__ksymtab_generic_listxattr, ptr @__ksymtab_vfs_getxattr, ptr @__ksymtab_vfs_listxattr, ptr @__ksymtab_vfs_removexattr, ptr @__ksymtab_vfs_setxattr, ptr @__ksymtab_xattr_full_name, ptr @__ksymtab_xattr_supported_namespace, ptr @__p_syscall_meta__fgetxattr, ptr @__p_syscall_meta__flistxattr, ptr @__p_syscall_meta__fremovexattr, ptr @__p_syscall_meta__fsetxattr, ptr @__p_syscall_meta__getxattr, ptr @__p_syscall_meta__lgetxattr, ptr @__p_syscall_meta__listxattr, ptr @__p_syscall_meta__llistxattr, ptr @__p_syscall_meta__lremovexattr, ptr @__p_syscall_meta__lsetxattr, ptr @__p_syscall_meta__removexattr, ptr @__p_syscall_meta__setxattr, ptr @__syscall_meta__fgetxattr, ptr @__syscall_meta__flistxattr, ptr @__syscall_meta__fremovexattr, ptr @__syscall_meta__fsetxattr, ptr @__syscall_meta__getxattr, ptr @__syscall_meta__lgetxattr, ptr @__syscall_meta__listxattr, ptr @__syscall_meta__llistxattr, ptr @__syscall_meta__lremovexattr, ptr @__syscall_meta__lsetxattr, ptr @__syscall_meta__removexattr, ptr @__syscall_meta__setxattr, ptr @event_enter__fgetxattr, ptr @event_enter__flistxattr, ptr @event_enter__fremovexattr, ptr @event_enter__fsetxattr, ptr @event_enter__getxattr, ptr @event_enter__lgetxattr, ptr @event_enter__listxattr, ptr @event_enter__llistxattr, ptr @event_enter__lremovexattr, ptr @event_enter__lsetxattr, ptr @event_enter__removexattr, ptr @event_enter__setxattr, ptr @event_exit__fgetxattr, ptr @event_exit__flistxattr, ptr @event_exit__fremovexattr, ptr @event_exit__fsetxattr, ptr @event_exit__getxattr, ptr @event_exit__lgetxattr, ptr @event_exit__listxattr, ptr @event_exit__llistxattr, ptr @event_exit__lremovexattr, ptr @event_exit__lsetxattr, ptr @event_exit__removexattr, ptr @event_exit__setxattr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__setxattr, ptr @args__setxattr, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__lsetxattr, ptr @args__lsetxattr, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__fsetxattr, ptr @args__fsetxattr, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__getxattr, ptr @args__getxattr, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @types__lgetxattr, ptr @args__lgetxattr, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @types__fgetxattr, ptr @args__fgetxattr, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @types__listxattr, ptr @args__listxattr, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @types__llistxattr, ptr @args__llistxattr, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @types__flistxattr, ptr @args__flistxattr, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @types__removexattr, ptr @args__removexattr, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @types__lremovexattr, ptr @args__lremovexattr, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @types__fremovexattr, ptr @args__fremovexattr, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setxattr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setxattr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__lsetxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__lsetxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__lsetxattr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__lsetxattr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fsetxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fsetxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fsetxattr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fsetxattr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getxattr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getxattr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__lgetxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__lgetxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__lgetxattr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__lgetxattr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fgetxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fgetxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fgetxattr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fgetxattr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__listxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__listxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__listxattr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__listxattr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__llistxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__llistxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__llistxattr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__llistxattr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__flistxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__flistxattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__flistxattr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__flistxattr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__removexattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__removexattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__removexattr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__removexattr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__lremovexattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__lremovexattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__lremovexattr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__lremovexattr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fremovexattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fremovexattr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fremovexattr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fremovexattr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_setxattr = dso_local alias i32 (ptr, ptr, ptr, i32, i32), ptr @__se_sys_setxattr
@sys_lsetxattr = dso_local alias i32 (ptr, ptr, ptr, i32, i32), ptr @__se_sys_lsetxattr
@sys_fsetxattr = dso_local alias i32 (i32, ptr, ptr, i32, i32), ptr @__se_sys_fsetxattr
@sys_getxattr = dso_local alias i32 (ptr, ptr, ptr, i32), ptr @__se_sys_getxattr
@sys_lgetxattr = dso_local alias i32 (ptr, ptr, ptr, i32), ptr @__se_sys_lgetxattr
@sys_fgetxattr = dso_local alias i32 (i32, ptr, ptr, i32), ptr @__se_sys_fgetxattr
@sys_listxattr = dso_local alias i32 (ptr, ptr, i32), ptr @__se_sys_listxattr
@sys_llistxattr = dso_local alias i32 (ptr, ptr, i32), ptr @__se_sys_llistxattr
@sys_flistxattr = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_flistxattr
@sys_removexattr = dso_local alias i32 (ptr, ptr), ptr @__se_sys_removexattr
@sys_lremovexattr = dso_local alias i32 (ptr, ptr), ptr @__se_sys_lremovexattr
@sys_fremovexattr = dso_local alias i32 (i32, ptr), ptr @__se_sys_fremovexattr

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xattr_supported_namespace(ptr noundef %inode, ptr nocapture noundef readonly %prefix) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_opflags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 1
  %0 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_opflags, align 2
  %2 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #10
  %. = select i1 %call, i32 -5, i32 -95, !prof !214
  br label %cleanup

if.end4:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %s_xattr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_xattr, align 16
  %call5 = tail call i32 @strlen(ptr noundef %prefix) #13
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end4.for.cond_crit_edge

if.end4.for.cond_crit_edge:                       ; preds = %if.end4
  br label %for.cond

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %xattr_prefix.exit.for.cond_crit_edge, %if.end4.for.cond_crit_edge
  %.pn = phi ptr [ %handlers.0, %xattr_prefix.exit.for.cond_crit_edge ], [ %6, %if.end4.for.cond_crit_edge ]
  %7 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %7)
  %handler.0 = load ptr, ptr %.pn, align 4
  %handlers.0 = getelementptr ptr, ptr %.pn, i32 1
  %cmp.not = icmp eq ptr %handler.0, null
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %prefix.i = getelementptr inbounds %struct.xattr_handler, ptr %handler.0, i32 0, i32 1
  %8 = ptrtoint ptr %prefix.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prefix.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %cond.false.i, label %for.body.xattr_prefix.exit_crit_edge

for.body.xattr_prefix.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %xattr_prefix.exit

cond.false.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %handler.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler.0, align 4
  br label %xattr_prefix.exit

xattr_prefix.exit:                                ; preds = %cond.false.i, %for.body.xattr_prefix.exit_crit_edge
  %cond.i = phi ptr [ %11, %cond.false.i ], [ %9, %for.body.xattr_prefix.exit_crit_edge ]
  %call10 = tail call i32 @strncmp(ptr noundef %cond.i, ptr noundef %prefix, i32 noundef %call5)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %xattr_prefix.exit.cleanup_crit_edge, label %xattr_prefix.exit.for.cond_crit_edge

xattr_prefix.exit.for.cond_crit_edge:             ; preds = %xattr_prefix.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

xattr_prefix.exit.cleanup_crit_edge:              ; preds = %xattr_prefix.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %xattr_prefix.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ -95, %if.end4.cleanup_crit_edge ], [ -95, %for.cond.cleanup_crit_edge ], [ 0, %xattr_prefix.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__vfs_setxattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_opflags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 1
  %0 = ptrtoint ptr %i_opflags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_opflags.i, align 2
  %2 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i = icmp eq i16 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #10
  %spec.select.i = select i1 %call.i, ptr inttoptr (i32 -5 to ptr), ptr inttoptr (i32 -95 to ptr), !prof !214
  br label %if.then

if.end6.i:                                        ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_xattr.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %s_xattr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_xattr.i, align 16
  %tobool7.not.i = icmp eq ptr %6, null
  br i1 %tobool7.not.i, label %if.end6.i.if.then_crit_edge, label %for.cond.preheader.i

if.end6.i.if.then_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.cond.preheader.i:                             ; preds = %if.end6.i
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %handler.052.i = load ptr, ptr %6, align 4
  %cmp.not54.i = icmp eq ptr %handler.052.i, null
  br i1 %cmp.not54.i, label %for.cond.preheader.i.if.then_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %.pn.i = phi ptr [ %handlers.056.i, %for.inc.i.for.body.i_crit_edge ], [ %6, %for.cond.preheader.i.for.body.i_crit_edge ]
  %handler.055.i = phi ptr [ %handler.0.i, %for.inc.i.for.body.i_crit_edge ], [ %handler.052.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %handlers.056.i = getelementptr ptr, ptr %.pn.i, i32 1
  %prefix.i.i = getelementptr inbounds %struct.xattr_handler, ptr %handler.055.i, i32 0, i32 1
  %8 = ptrtoint ptr %prefix.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prefix.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %for.body.i.xattr_prefix.exit.i_crit_edge

for.body.i.xattr_prefix.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xattr_prefix.exit.i

cond.false.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %handler.055.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler.055.i, align 4
  br label %xattr_prefix.exit.i

xattr_prefix.exit.i:                              ; preds = %cond.false.i.i, %for.body.i.xattr_prefix.exit.i_crit_edge
  %cond.i.i = phi ptr [ %11, %cond.false.i.i ], [ %9, %for.body.i.xattr_prefix.exit.i_crit_edge ]
  %12 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cond.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not12.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not12.i.i, label %xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge, label %xattr_prefix.exit.i.land.rhs.i.i_crit_edge

xattr_prefix.exit.i.land.rhs.i.i_crit_edge:       ; preds = %xattr_prefix.exit.i
  br label %land.rhs.i.i

xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge: ; preds = %xattr_prefix.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %strcmp_prefix.exit.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge
  %14 = phi i8 [ %18, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %13, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge ]
  %a_prefix.addr.014.i.i = phi ptr [ %incdec.ptr4.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %cond.i.i, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge ]
  %a.addr.013.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %name, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge ]
  %15 = ptrtoint ptr %a.addr.013.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %a.addr.013.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %14)
  %cmp.i.i = icmp eq i8 %16, %14
  br i1 %cmp.i.i, label %while.body.i.i, label %land.rhs.i.i.for.inc.i_crit_edge

land.rhs.i.i.for.inc.i_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %a.addr.013.i.i, i32 1
  %incdec.ptr4.i.i = getelementptr i8, ptr %a_prefix.addr.014.i.i, i32 1
  %17 = ptrtoint ptr %incdec.ptr4.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %incdec.ptr4.i.i, align 1
  %tobool.not.i45.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i45.i, label %while.body.i.i.strcmp_prefix.exit.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

while.body.i.i.strcmp_prefix.exit.i_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %strcmp_prefix.exit.i

strcmp_prefix.exit.i:                             ; preds = %while.body.i.i.strcmp_prefix.exit.i_crit_edge, %xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge
  %spec.select.i.i = phi ptr [ %name, %xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge ], [ %incdec.ptr.i.i, %while.body.i.i.strcmp_prefix.exit.i_crit_edge ]
  %tobool12.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool12.not.i, label %strcmp_prefix.exit.i.for.inc.i_crit_edge, label %if.then13.i

strcmp_prefix.exit.i.for.inc.i_crit_edge:         ; preds = %strcmp_prefix.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then13.i:                                      ; preds = %strcmp_prefix.exit.i
  %19 = ptrtoint ptr %spec.select.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %spec.select.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not.i = icmp eq i8 %20, 0
  %xor44.i = xor i1 %tobool.not.i.i, %tobool17.not.i
  br i1 %xor44.i, label %if.then21.i, label %xattr_resolve_name.exit

if.then21.i:                                      ; preds = %if.then13.i
  br i1 %tobool17.not.i, label %if.then21.i.if.then_crit_edge, label %if.then21.i.for.inc.i_crit_edge

if.then21.i.for.inc.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then21.i.if.then_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.i:                                        ; preds = %if.then21.i.for.inc.i_crit_edge, %strcmp_prefix.exit.i.for.inc.i_crit_edge, %land.rhs.i.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %handlers.056.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %handler.0.i = load ptr, ptr %handlers.056.i, align 4
  %cmp.not.i = icmp eq ptr %handler.0.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

xattr_resolve_name.exit:                          ; preds = %if.then13.i
  %cmp.i = icmp ugt ptr %handler.055.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %xattr_resolve_name.exit.if.then_crit_edge, label %if.end

xattr_resolve_name.exit.if.then_crit_edge:        ; preds = %xattr_resolve_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %xattr_resolve_name.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %if.then21.i.if.then_crit_edge, %for.cond.preheader.i.if.then_crit_edge, %if.end6.i.if.then_crit_edge, %if.then.i
  %retval.2.i19 = phi ptr [ %handler.055.i, %xattr_resolve_name.exit.if.then_crit_edge ], [ inttoptr (i32 -95 to ptr), %for.cond.preheader.i.if.then_crit_edge ], [ %spec.select.i, %if.then.i ], [ inttoptr (i32 -95 to ptr), %if.end6.i.if.then_crit_edge ], [ inttoptr (i32 -95 to ptr), %for.inc.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then21.i.if.then_crit_edge ]
  %22 = ptrtoint ptr %retval.2.i19 to i32
  br label %cleanup

if.end:                                           ; preds = %xattr_resolve_name.exit
  %set = getelementptr inbounds %struct.xattr_handler, ptr %handler.055.i, i32 0, i32 5
  %23 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  %spec.select = select i1 %cmp, ptr @.str, ptr %value
  %call8 = tail call i32 %24(ptr noundef %handler.055.i, ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %inode, ptr noundef nonnull %spec.select.i.i, ptr noundef %spec.select, i32 noundef %size, i32 noundef %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %22, %if.then ], [ %call8, %if.end4 ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__vfs_setxattr_noperm(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %call = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.1, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, -4097
  store i32 %and, ptr %i_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i_opflags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %i_opflags, align 2
  %6 = and i16 %5, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not = icmp eq i16 %6, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @__vfs_setxattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %1, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.then4.if.end17_crit_edge

if.then4.if.end17_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then7:                                         ; preds = %if.then4
  %7 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 48
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #10
  %11 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i, label %if.then7.if.end17.thread_crit_edge, label %if.end.i.i.i

if.then7.if.end17.thread_crit_edge:               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.thread

if.end.i.i.i:                                     ; preds = %if.then7
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %8, align 8
  %15 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %15)
  %cmp2.i.i.i = icmp eq i16 %15, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %16 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dentry, align 8
  %and5.i.i.i = and i32 %17, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ 1073741828, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ 4, %if.end.i.i.i.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %18 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %19, %dentry
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i.i.i = tail call i32 @__fsnotify_parent(ptr noundef %dentry, i32 noundef %mask.addr.0.i.i.i, ptr noundef %dentry, i32 noundef 3) #10
  br label %if.end17.thread

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ 1073741828, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %dentry, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef %8, i32 noundef 0) #10
  br label %if.end17.thread

if.end17.thread:                                  ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.then7.if.end17.thread_crit_edge
  tail call void @security_inode_post_setxattr(ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call9 = tail call zeroext i1 @is_bad_inode(ptr noundef %1) #10
  br i1 %call9, label %if.else.cleanup_crit_edge, label %if.else.if.end17_crit_edge, !prof !214

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %if.then4.if.end17_crit_edge
  %error.0 = phi i32 [ %call5, %if.then4.if.end17_crit_edge ], [ -11, %if.else.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %error.0)
  %cmp = icmp ne i32 %error.0, -11
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %cmp, i1 true, i1 %tobool.not.not
  %error.0.mux = select i1 %cmp, i32 %error.0, i32 -95
  br i1 %brmerge, label %if.end17.cleanup_crit_edge, label %if.then21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  %add.ptr = getelementptr i8, ptr %name, i32 9
  %call22 = tail call i32 @security_inode_setsecurity(ptr noundef %1, ptr noundef %add.ptr, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %if.then21
  %20 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode, align 8
  %i_sb.i.i.i52 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i.i.i52, align 4
  %s_fsnotify_connectors.i.i.i53 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 48
  %call.i.i.i.i.i54 = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i53, i32 noundef 4) #10
  %24 = ptrtoint ptr %s_fsnotify_connectors.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i.i55 = icmp eq i32 %25, 0
  br i1 %cmp.i.i.i55, label %if.then24.cleanup_crit_edge, label %if.end.i.i.i57

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i57:                                   ; preds = %if.then24
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %21, align 8
  %28 = and i16 %27, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %28)
  %cmp2.i.i.i56 = icmp eq i16 %28, 16384
  br i1 %cmp2.i.i.i56, label %if.then4.i.i.i60, label %if.end.i.i.i57.if.end8.i.i.i64_crit_edge

if.end.i.i.i57.if.end8.i.i.i64_crit_edge:         ; preds = %if.end.i.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i64

if.then4.i.i.i60:                                 ; preds = %if.end.i.i.i57
  %29 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dentry, align 8
  %and5.i.i.i58 = and i32 %30, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i58)
  %tobool.not.i.i.i59 = icmp eq i32 %and5.i.i.i58, 0
  br i1 %tobool.not.i.i.i59, label %if.then4.i.i.i60.notify_child.i.i.i69_crit_edge, label %if.then4.i.i.i60.if.end8.i.i.i64_crit_edge

if.then4.i.i.i60.if.end8.i.i.i64_crit_edge:       ; preds = %if.then4.i.i.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i64

if.then4.i.i.i60.notify_child.i.i.i69_crit_edge:  ; preds = %if.then4.i.i.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %notify_child.i.i.i69

if.end8.i.i.i64:                                  ; preds = %if.then4.i.i.i60.if.end8.i.i.i64_crit_edge, %if.end.i.i.i57.if.end8.i.i.i64_crit_edge
  %mask.addr.0.i.i.i61 = phi i32 [ 1073741828, %if.then4.i.i.i60.if.end8.i.i.i64_crit_edge ], [ 4, %if.end.i.i.i57.if.end8.i.i.i64_crit_edge ]
  %d_parent.i.i.i62 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %31 = ptrtoint ptr %d_parent.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_parent.i.i.i62, align 8
  %cmp9.i.i.i63 = icmp eq ptr %32, %dentry
  br i1 %cmp9.i.i.i63, label %if.end8.i.i.i64.notify_child.i.i.i69_crit_edge, label %if.end12.i.i.i66

if.end8.i.i.i64.notify_child.i.i.i69_crit_edge:   ; preds = %if.end8.i.i.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %notify_child.i.i.i69

if.end12.i.i.i66:                                 ; preds = %if.end8.i.i.i64
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i.i.i65 = tail call i32 @__fsnotify_parent(ptr noundef %dentry, i32 noundef %mask.addr.0.i.i.i61, ptr noundef %dentry, i32 noundef 3) #10
  br label %cleanup

notify_child.i.i.i69:                             ; preds = %if.end8.i.i.i64.notify_child.i.i.i69_crit_edge, %if.then4.i.i.i60.notify_child.i.i.i69_crit_edge
  %mask.addr.1.i.i.i67 = phi i32 [ %mask.addr.0.i.i.i61, %if.end8.i.i.i64.notify_child.i.i.i69_crit_edge ], [ 1073741828, %if.then4.i.i.i60.notify_child.i.i.i69_crit_edge ]
  %call14.i.i.i68 = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i67, ptr noundef %dentry, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef %21, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %notify_child.i.i.i69, %if.end12.i.i.i66, %if.then24.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end17.thread
  %retval.0 = phi i32 [ -5, %if.else.cleanup_crit_edge ], [ %error.0.mux, %if.end17.cleanup_crit_edge ], [ %call22, %if.then21.cleanup_crit_edge ], [ 0, %if.end17.thread ], [ 0, %if.then24.cleanup_crit_edge ], [ 0, %if.end12.i.i.i66 ], [ 0, %notify_child.i.i.i69 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_inode_post_setxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_setsecurity(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__vfs_setxattr_locked(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags, ptr noundef writeonly %delegated_inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %call = tail call fastcc i32 @xattr_permission(ptr noundef %mnt_userns, ptr noundef %1, ptr noundef %name, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @security_inode_setxattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !215
  %i_flctx.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %i_flctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_flctx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end4.if.end8_crit_edge, label %land.lhs.true.i.i

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true.i.i:                                ; preds = %if.end4
  %flc_lease.i.i = getelementptr inbounds %struct.file_lock_context, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flc_lease.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %flc_lease.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !216
  %cmp.i.not.i.i.i = icmp eq ptr %5, %flc_lease.i.i
  br i1 %cmp.i.not.i.i.i, label %list_empty_careful.exit.i.i, label %land.lhs.true.i.i.break_deleg.exit.i_crit_edge

land.lhs.true.i.i.break_deleg.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %break_deleg.exit.i

list_empty_careful.exit.i.i:                      ; preds = %land.lhs.true.i.i
  %prev.i.i.i = getelementptr inbounds %struct.file_lock_context, ptr %3, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %flc_lease.i.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i.i.if.end8_crit_edge, label %list_empty_careful.exit.i.i.break_deleg.exit.i_crit_edge

list_empty_careful.exit.i.i.break_deleg.exit.i_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %break_deleg.exit.i

list_empty_careful.exit.i.i.if.end8_crit_edge:    ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

break_deleg.exit.i:                               ; preds = %list_empty_careful.exit.i.i.break_deleg.exit.i_crit_edge, %land.lhs.true.i.i.break_deleg.exit.i_crit_edge
  %call5.i.i = tail call i32 @__break_lease(ptr noundef %1, i32 noundef 2049, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call5.i.i)
  %cmp.i = icmp ne i32 %call5.i.i, -11
  %tobool.not.i = icmp eq ptr %delegated_inode, null
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %try_break_deleg.exit, label %try_break_deleg.exit.thread27

try_break_deleg.exit.thread27:                    ; preds = %break_deleg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %delegated_inode, align 4
  tail call void @ihold(ptr noundef %1) #10
  br label %cleanup

try_break_deleg.exit:                             ; preds = %break_deleg.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not, label %try_break_deleg.exit.if.end8_crit_edge, label %try_break_deleg.exit.cleanup_crit_edge

try_break_deleg.exit.cleanup_crit_edge:           ; preds = %try_break_deleg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_break_deleg.exit.if.end8_crit_edge:           ; preds = %try_break_deleg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %try_break_deleg.exit.if.end8_crit_edge, %list_empty_careful.exit.i.i.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %call9 = tail call i32 @__vfs_setxattr_noperm(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %try_break_deleg.exit.cleanup_crit_edge, %try_break_deleg.exit.thread27, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5.i.i, %try_break_deleg.exit.cleanup_crit_edge ], [ %call9, %if.end8 ], [ -11, %try_break_deleg.exit.thread27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xattr_permission(ptr noundef %mnt_userns, ptr noundef %inode, ptr nocapture noundef readonly %name, i32 noundef %mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %2 = and i32 %1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %if.then
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %8 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %cmp.i.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i.i = icmp eq ptr %7, %mnt_userns
  %spec.select.i.i.i.i = or i1 %cmp.i.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %if.end.i_uid_into_mnt.exit.i_crit_edge, label %if.end.i.i.i

if.end.i_uid_into_mnt.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_uid_into_mnt.exit.i

if.end.i.i.i:                                     ; preds = %if.end
  %cmp.i21.i.i.i = icmp eq ptr %7, @init_user_ns
  br i1 %cmp.i21.i.i.i, label %if.end.i.i.i.if.end7.i.i.i_crit_edge, label %if.else.i.i.i

if.end.i.i.i.if.end7.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i.i.i = tail call i32 @from_kuid(ptr noundef %7, [1 x i32] %9) #10
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.else.i.i.i, %if.end.i.i.i.if.end7.i.i.i_crit_edge
  %uid.0.i.i.i = phi i32 [ %call6.i.i.i, %if.else.i.i.i ], [ %.unpack.i.i, %if.end.i.i.i.if.end7.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i.i)
  %cmp.i.i.i = icmp eq i32 %uid.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.end7.i.i.i.return_crit_edge, label %if.end9.i.i.i

if.end7.i.i.i.return_crit_edge:                   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end9.i.i.i:                                    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i.i.i = tail call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i.i.i) #10
  br label %i_uid_into_mnt.exit.i

i_uid_into_mnt.exit.i:                            ; preds = %if.end9.i.i.i, %if.end.i_uid_into_mnt.exit.i_crit_edge
  %retval.sroa.0.0.i.i.i = phi i32 [ %call10.i.i.i, %if.end9.i.i.i ], [ %.unpack.i.i, %if.end.i_uid_into_mnt.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i.i.i)
  %cmp.i.not.i = icmp eq i32 %retval.sroa.0.0.i.i.i, -1
  br i1 %cmp.i.not.i, label %i_uid_into_mnt.exit.i.return_crit_edge, label %lor.rhs.i

i_uid_into_mnt.exit.i.return_crit_edge:           ; preds = %i_uid_into_mnt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.rhs.i:                                        ; preds = %i_uid_into_mnt.exit.i
  %10 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i12.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 53
  %12 = ptrtoint ptr %s_user_ns.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_user_ns.i.i12.i, align 8
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %14 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack.i13.i = load i32, ptr %i_gid.i.i, align 8
  %15 = insertvalue [1 x i32] undef, i32 %.unpack.i13.i, 0
  %cmp.i.i.i15.i = icmp eq ptr %13, %mnt_userns
  %spec.select.i.i.i16.i = or i1 %cmp.i.i.i.i.i, %cmp.i.i.i15.i
  br i1 %spec.select.i.i.i16.i, label %lor.rhs.i.HAS_UNMAPPED_ID.exit_crit_edge, label %if.end.i.i18.i

lor.rhs.i.HAS_UNMAPPED_ID.exit_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %HAS_UNMAPPED_ID.exit

if.end.i.i18.i:                                   ; preds = %lor.rhs.i
  %cmp.i21.i.i17.i = icmp eq ptr %13, @init_user_ns
  br i1 %cmp.i21.i.i17.i, label %if.end.i.i18.i.if.end7.i.i22.i_crit_edge, label %if.else.i.i20.i

if.end.i.i18.i.if.end7.i.i22.i_crit_edge:         ; preds = %if.end.i.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i22.i

if.else.i.i20.i:                                  ; preds = %if.end.i.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i.i19.i = tail call i32 @from_kgid(ptr noundef %13, [1 x i32] %15) #10
  br label %if.end7.i.i22.i

if.end7.i.i22.i:                                  ; preds = %if.else.i.i20.i, %if.end.i.i18.i.if.end7.i.i22.i_crit_edge
  %gid.0.i.i.i = phi i32 [ %call6.i.i19.i, %if.else.i.i20.i ], [ %.unpack.i13.i, %if.end.i.i18.i.if.end7.i.i22.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i.i)
  %cmp.i.i21.i = icmp eq i32 %gid.0.i.i.i, -1
  br i1 %cmp.i.i21.i, label %if.end7.i.i22.i.return_crit_edge, label %if.end9.i.i24.i

if.end7.i.i22.i.return_crit_edge:                 ; preds = %if.end7.i.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end9.i.i24.i:                                  ; preds = %if.end7.i.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i.i23.i = tail call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i.i.i) #10
  br label %HAS_UNMAPPED_ID.exit

HAS_UNMAPPED_ID.exit:                             ; preds = %if.end9.i.i24.i, %lor.rhs.i.HAS_UNMAPPED_ID.exit_crit_edge
  %retval.sroa.0.0.i.i25.i = phi i32 [ %call10.i.i23.i, %if.end9.i.i24.i ], [ %.unpack.i13.i, %lor.rhs.i.HAS_UNMAPPED_ID.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i.i25.i)
  %cmp.i26.not.i = icmp eq i32 %retval.sroa.0.0.i.i25.i, -1
  br i1 %cmp.i26.not.i, label %HAS_UNMAPPED_ID.exit.return_crit_edge, label %HAS_UNMAPPED_ID.exit.if.end9_crit_edge

HAS_UNMAPPED_ID.exit.if.end9_crit_edge:           ; preds = %HAS_UNMAPPED_ID.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

HAS_UNMAPPED_ID.exit.return_crit_edge:            ; preds = %HAS_UNMAPPED_ID.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end9:                                          ; preds = %HAS_UNMAPPED_ID.exit.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call10 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.1, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.return_crit_edge, label %lor.lhs.false12

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false12:                                  ; preds = %if.end9
  %call13 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.41, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %lor.lhs.false12.return_crit_edge, label %if.end16

lor.lhs.false12.return_crit_edge:                 ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end16:                                         ; preds = %lor.lhs.false12
  %call17 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.42, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call zeroext i1 @capable(i32 noundef 21) #10
  %cond = select i1 %tobool.not, i32 -61, i32 -1
  %spec.select = select i1 %call20, i32 0, i32 %cond
  br label %return

if.end25:                                         ; preds = %if.end16
  %call26 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.43, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end25.if.end58_crit_edge

if.end25.if.end58_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then28:                                        ; preds = %if.end25
  %16 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %inode, align 8
  %18 = and i16 %17, -4096
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i16 %18, label %if.then36 [
    i16 -32768, label %if.then28.if.end40_crit_edge
    i16 16384, label %if.then28.if.end40_crit_edge81
  ]

if.then28.if.end40_crit_edge81:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then28.if.end40_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then36:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %cond39 = select i1 %tobool.not, i32 -61, i32 -1
  br label %return

if.end40:                                         ; preds = %if.then28.if.end40_crit_edge, %if.then28.if.end40_crit_edge81
  %20 = and i16 %17, -3584
  call void @__sanitizer_cov_trace_const_cmp2(i16 16896, i16 %20)
  %21 = icmp ne i16 %20, 16896
  %brmerge = or i1 %tobool.not, %21
  br i1 %brmerge, label %if.end40.if.end58_crit_edge, label %land.lhs.true54

if.end40.if.end58_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

land.lhs.true54:                                  ; preds = %if.end40
  %call55 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %mnt_userns, ptr noundef %inode) #10
  br i1 %call55, label %land.lhs.true54.if.end58_crit_edge, label %land.lhs.true54.return_crit_edge

land.lhs.true54.return_crit_edge:                 ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true54.if.end58_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true54.if.end58_crit_edge, %if.end40.if.end58_crit_edge, %if.end25.if.end58_crit_edge
  %call59 = tail call i32 @inode_permission(ptr noundef %mnt_userns, ptr noundef %inode, i32 noundef %mask) #10
  br label %return

return:                                           ; preds = %if.end58, %land.lhs.true54.return_crit_edge, %if.then36, %if.then19, %lor.lhs.false12.return_crit_edge, %if.end9.return_crit_edge, %HAS_UNMAPPED_ID.exit.return_crit_edge, %if.end7.i.i22.i.return_crit_edge, %i_uid_into_mnt.exit.i.return_crit_edge, %if.end7.i.i.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call59, %if.end58 ], [ %cond39, %if.then36 ], [ -1, %if.then.return_crit_edge ], [ -1, %HAS_UNMAPPED_ID.exit.return_crit_edge ], [ 0, %lor.lhs.false12.return_crit_edge ], [ 0, %if.end9.return_crit_edge ], [ -1, %land.lhs.true54.return_crit_edge ], [ %spec.select, %if.then19 ], [ -1, %if.end7.i.i22.i.return_crit_edge ], [ -1, %i_uid_into_mnt.exit.i.return_crit_edge ], [ -1, %if.end7.i.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_setxattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %value.addr = alloca ptr, align 4
  %delegated_inode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %value, ptr %value.addr, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delegated_inode) #10
  %3 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %delegated_inode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %land.lhs.true

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(20) @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true
  %call1 = call i32 @cap_convert_nscap(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef nonnull %value.addr, i32 noundef %size) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  %size.addr.0 = phi i32 [ %size, %land.lhs.true.if.end4_crit_edge ], [ 0, %entry.if.end4_crit_edge ], [ %call1, %if.then.if.end4_crit_edge ]
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 25
  br label %retry_deleg

retry_deleg:                                      ; preds = %break_deleg_wait.exit.retry_deleg_crit_edge, %if.end4
  call void @down_write(ptr noundef %i_rwsem.i) #10
  %4 = ptrtoint ptr %value.addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %value.addr, align 4
  %call5 = call i32 @__vfs_setxattr_locked(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name, ptr noundef %5, i32 noundef %size.addr.0, i32 noundef %flags, ptr noundef nonnull %delegated_inode)
  call void @up_write(ptr noundef %i_rwsem.i) #10
  %6 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %delegated_inode, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %retry_deleg.if.end12_crit_edge, label %if.then7

retry_deleg.if.end12_crit_edge:                   ; preds = %retry_deleg
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then7:                                         ; preds = %retry_deleg
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !215
  %i_flctx.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 45
  %8 = ptrtoint ptr %i_flctx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_flctx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then7.break_deleg_wait.exit_crit_edge, label %land.lhs.true.i.i

if.then7.break_deleg_wait.exit_crit_edge:         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %break_deleg_wait.exit

land.lhs.true.i.i:                                ; preds = %if.then7
  %flc_lease.i.i = getelementptr inbounds %struct.file_lock_context, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flc_lease.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %flc_lease.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !216
  %cmp.i.not.i.i.i = icmp eq ptr %11, %flc_lease.i.i
  br i1 %cmp.i.not.i.i.i, label %list_empty_careful.exit.i.i, label %land.lhs.true.i.i.if.then.i.i_crit_edge

land.lhs.true.i.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

list_empty_careful.exit.i.i:                      ; preds = %land.lhs.true.i.i
  %prev.i.i.i = getelementptr inbounds %struct.file_lock_context, ptr %9, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %13, %flc_lease.i.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge, label %list_empty_careful.exit.i.i.if.then.i.i_crit_edge

list_empty_careful.exit.i.i.if.then.i.i_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %break_deleg_wait.exit

if.then.i.i:                                      ; preds = %list_empty_careful.exit.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i_crit_edge
  %call5.i.i = call i32 @__break_lease(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 4) #10
  br label %break_deleg_wait.exit

break_deleg_wait.exit:                            ; preds = %if.then.i.i, %list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge, %if.then7.break_deleg_wait.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call5.i.i, %if.then.i.i ], [ 0, %list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge ], [ 0, %if.then7.break_deleg_wait.exit_crit_edge ]
  %14 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %delegated_inode, align 4
  call void @iput(ptr noundef %15) #10
  %16 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %delegated_inode, align 4
  %tobool9.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool9.not, label %break_deleg_wait.exit.retry_deleg_crit_edge, label %break_deleg_wait.exit.if.end12_crit_edge

break_deleg_wait.exit.if.end12_crit_edge:         ; preds = %break_deleg_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

break_deleg_wait.exit.retry_deleg_crit_edge:      ; preds = %break_deleg_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry_deleg

if.end12:                                         ; preds = %break_deleg_wait.exit.if.end12_crit_edge, %retry_deleg.if.end12_crit_edge
  %error.0 = phi i32 [ %retval.0.i.i, %break_deleg_wait.exit.if.end12_crit_edge ], [ %call5, %retry_deleg.if.end12_crit_edge ]
  %17 = ptrtoint ptr %value.addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %value.addr, align 4
  %cmp13.not = icmp eq ptr %18, %value
  br i1 %cmp13.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef %18) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end12.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then.cleanup_crit_edge ], [ %error.0, %if.then14 ], [ %error.0, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delegated_inode) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_convert_nscap(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_getxattr_alloc(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name, ptr nocapture noundef %xattr_value, i32 noundef %xattr_size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %2 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xattr_value, align 4
  %call = tail call fastcc i32 @xattr_permission(ptr noundef %mnt_userns, ptr noundef %1, ptr noundef %name, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_opflags.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %i_opflags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %i_opflags.i, align 2
  %6 = and i16 %5, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call zeroext i1 @is_bad_inode(ptr noundef %1) #10
  %spec.select.i = select i1 %call.i, ptr inttoptr (i32 -5 to ptr), ptr inttoptr (i32 -95 to ptr), !prof !214
  br label %if.then3

if.end6.i:                                        ; preds = %if.end
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_xattr.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %s_xattr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_xattr.i, align 16
  %tobool7.not.i = icmp eq ptr %10, null
  br i1 %tobool7.not.i, label %if.end6.i.if.then3_crit_edge, label %for.cond.preheader.i

if.end6.i.if.then3_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.cond.preheader.i:                             ; preds = %if.end6.i
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %handler.052.i = load ptr, ptr %10, align 4
  %cmp.not54.i = icmp eq ptr %handler.052.i, null
  br i1 %cmp.not54.i, label %for.cond.preheader.i.if.then3_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then3_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %.pn.i = phi ptr [ %handlers.056.i, %for.inc.i.for.body.i_crit_edge ], [ %10, %for.cond.preheader.i.for.body.i_crit_edge ]
  %handler.055.i = phi ptr [ %handler.0.i, %for.inc.i.for.body.i_crit_edge ], [ %handler.052.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %handlers.056.i = getelementptr ptr, ptr %.pn.i, i32 1
  %prefix.i.i = getelementptr inbounds %struct.xattr_handler, ptr %handler.055.i, i32 0, i32 1
  %12 = ptrtoint ptr %prefix.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prefix.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %for.body.i.xattr_prefix.exit.i_crit_edge

for.body.i.xattr_prefix.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xattr_prefix.exit.i

cond.false.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %handler.055.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handler.055.i, align 4
  br label %xattr_prefix.exit.i

xattr_prefix.exit.i:                              ; preds = %cond.false.i.i, %for.body.i.xattr_prefix.exit.i_crit_edge
  %cond.i.i = phi ptr [ %15, %cond.false.i.i ], [ %13, %for.body.i.xattr_prefix.exit.i_crit_edge ]
  %16 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cond.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not12.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not12.i.i, label %xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge, label %xattr_prefix.exit.i.land.rhs.i.i_crit_edge

xattr_prefix.exit.i.land.rhs.i.i_crit_edge:       ; preds = %xattr_prefix.exit.i
  br label %land.rhs.i.i

xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge: ; preds = %xattr_prefix.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %strcmp_prefix.exit.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge
  %18 = phi i8 [ %22, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %17, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge ]
  %a_prefix.addr.014.i.i = phi ptr [ %incdec.ptr4.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %cond.i.i, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge ]
  %a.addr.013.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %name, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge ]
  %19 = ptrtoint ptr %a.addr.013.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %a.addr.013.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %18)
  %cmp.i.i = icmp eq i8 %20, %18
  br i1 %cmp.i.i, label %while.body.i.i, label %land.rhs.i.i.for.inc.i_crit_edge

land.rhs.i.i.for.inc.i_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %a.addr.013.i.i, i32 1
  %incdec.ptr4.i.i = getelementptr i8, ptr %a_prefix.addr.014.i.i, i32 1
  %21 = ptrtoint ptr %incdec.ptr4.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr4.i.i, align 1
  %tobool.not.i45.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i45.i, label %while.body.i.i.strcmp_prefix.exit.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

while.body.i.i.strcmp_prefix.exit.i_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %strcmp_prefix.exit.i

strcmp_prefix.exit.i:                             ; preds = %while.body.i.i.strcmp_prefix.exit.i_crit_edge, %xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge
  %spec.select.i.i = phi ptr [ %name, %xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge ], [ %incdec.ptr.i.i, %while.body.i.i.strcmp_prefix.exit.i_crit_edge ]
  %tobool12.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool12.not.i, label %strcmp_prefix.exit.i.for.inc.i_crit_edge, label %if.then13.i

strcmp_prefix.exit.i.for.inc.i_crit_edge:         ; preds = %strcmp_prefix.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then13.i:                                      ; preds = %strcmp_prefix.exit.i
  %23 = ptrtoint ptr %spec.select.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %spec.select.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool17.not.i = icmp eq i8 %24, 0
  %xor44.i = xor i1 %tobool.not.i.i, %tobool17.not.i
  br i1 %xor44.i, label %if.then21.i, label %xattr_resolve_name.exit

if.then21.i:                                      ; preds = %if.then13.i
  br i1 %tobool17.not.i, label %if.then21.i.if.then3_crit_edge, label %if.then21.i.for.inc.i_crit_edge

if.then21.i.for.inc.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then21.i.if.then3_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.inc.i:                                        ; preds = %if.then21.i.for.inc.i_crit_edge, %strcmp_prefix.exit.i.for.inc.i_crit_edge, %land.rhs.i.i.for.inc.i_crit_edge
  %25 = ptrtoint ptr %handlers.056.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %handler.0.i = load ptr, ptr %handlers.056.i, align 4
  %cmp.not.i = icmp eq ptr %handler.0.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.then3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.then3_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

xattr_resolve_name.exit:                          ; preds = %if.then13.i
  %cmp.i = icmp ugt ptr %handler.055.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %xattr_resolve_name.exit.if.then3_crit_edge, label %if.end5

xattr_resolve_name.exit.if.then3_crit_edge:       ; preds = %xattr_resolve_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %xattr_resolve_name.exit.if.then3_crit_edge, %for.inc.i.if.then3_crit_edge, %if.then21.i.if.then3_crit_edge, %for.cond.preheader.i.if.then3_crit_edge, %if.end6.i.if.then3_crit_edge, %if.then.i
  %retval.2.i58 = phi ptr [ %handler.055.i, %xattr_resolve_name.exit.if.then3_crit_edge ], [ inttoptr (i32 -95 to ptr), %for.cond.preheader.i.if.then3_crit_edge ], [ %spec.select.i, %if.then.i ], [ inttoptr (i32 -95 to ptr), %if.end6.i.if.then3_crit_edge ], [ inttoptr (i32 -95 to ptr), %for.inc.i.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then21.i.if.then3_crit_edge ]
  %26 = ptrtoint ptr %retval.2.i58 to i32
  br label %cleanup

if.end5:                                          ; preds = %xattr_resolve_name.exit
  %get = getelementptr inbounds %struct.xattr_handler, ptr %handler.055.i, i32 0, i32 4
  %27 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get, align 4
  %tobool6.not = icmp eq ptr %28, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call10 = tail call i32 %28(ptr noundef %handler.055.i, ptr noundef %dentry, ptr noundef %1, ptr noundef nonnull %spec.select.i.i, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %tobool13.not = icmp eq ptr %3, null
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %xattr_size)
  %cmp14 = icmp ugt i32 %call10, %xattr_size
  %or.cond = select i1 %tobool13.not, i1 true, i1 %cmp14
  br i1 %or.cond, label %if.then15, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then15:                                        ; preds = %if.end12
  %29 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xattr_value, align 4
  %add = add nuw i32 %call10, 1
  %call16 = tail call noalias ptr @krealloc(ptr noundef %30, i32 noundef %add, i32 noundef %flags) #14
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then15.cleanup_crit_edge, label %if.end19

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %31 = call ptr @memset(ptr %call16, i32 0, i32 %add)
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end12.if.end21_crit_edge
  %value.0 = phi ptr [ %call16, %if.end19 ], [ %3, %if.end12.if.end21_crit_edge ]
  %32 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get, align 4
  %call23 = tail call i32 %33(ptr noundef %handler.055.i, ptr noundef %dentry, ptr noundef %1, ptr noundef nonnull %spec.select.i.i, ptr noundef nonnull %value.0, i32 noundef %call10) #10
  %34 = ptrtoint ptr %xattr_value to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %value.0, ptr %xattr_value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.then3 ], [ %call23, %if.end21 ], [ %call, %entry.cleanup_crit_edge ], [ -95, %if.end5.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ -12, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__vfs_getxattr(ptr noundef %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_opflags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 1
  %0 = ptrtoint ptr %i_opflags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_opflags.i, align 2
  %2 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i = icmp eq i16 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #10
  %spec.select.i = select i1 %call.i, ptr inttoptr (i32 -5 to ptr), ptr inttoptr (i32 -95 to ptr), !prof !214
  br label %if.then

if.end6.i:                                        ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_xattr.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %s_xattr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_xattr.i, align 16
  %tobool7.not.i = icmp eq ptr %6, null
  br i1 %tobool7.not.i, label %if.end6.i.if.then_crit_edge, label %for.cond.preheader.i

if.end6.i.if.then_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.cond.preheader.i:                             ; preds = %if.end6.i
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %handler.052.i = load ptr, ptr %6, align 4
  %cmp.not54.i = icmp eq ptr %handler.052.i, null
  br i1 %cmp.not54.i, label %for.cond.preheader.i.if.then_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %.pn.i = phi ptr [ %handlers.056.i, %for.inc.i.for.body.i_crit_edge ], [ %6, %for.cond.preheader.i.for.body.i_crit_edge ]
  %handler.055.i = phi ptr [ %handler.0.i, %for.inc.i.for.body.i_crit_edge ], [ %handler.052.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %handlers.056.i = getelementptr ptr, ptr %.pn.i, i32 1
  %prefix.i.i = getelementptr inbounds %struct.xattr_handler, ptr %handler.055.i, i32 0, i32 1
  %8 = ptrtoint ptr %prefix.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prefix.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %for.body.i.xattr_prefix.exit.i_crit_edge

for.body.i.xattr_prefix.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xattr_prefix.exit.i

cond.false.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %handler.055.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler.055.i, align 4
  br label %xattr_prefix.exit.i

xattr_prefix.exit.i:                              ; preds = %cond.false.i.i, %for.body.i.xattr_prefix.exit.i_crit_edge
  %cond.i.i = phi ptr [ %11, %cond.false.i.i ], [ %9, %for.body.i.xattr_prefix.exit.i_crit_edge ]
  %12 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cond.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not12.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not12.i.i, label %xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge, label %xattr_prefix.exit.i.land.rhs.i.i_crit_edge

xattr_prefix.exit.i.land.rhs.i.i_crit_edge:       ; preds = %xattr_prefix.exit.i
  br label %land.rhs.i.i

xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge: ; preds = %xattr_prefix.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %strcmp_prefix.exit.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge
  %14 = phi i8 [ %18, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %13, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge ]
  %a_prefix.addr.014.i.i = phi ptr [ %incdec.ptr4.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %cond.i.i, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge ]
  %a.addr.013.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %name, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge ]
  %15 = ptrtoint ptr %a.addr.013.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %a.addr.013.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %14)
  %cmp.i.i = icmp eq i8 %16, %14
  br i1 %cmp.i.i, label %while.body.i.i, label %land.rhs.i.i.for.inc.i_crit_edge

land.rhs.i.i.for.inc.i_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %a.addr.013.i.i, i32 1
  %incdec.ptr4.i.i = getelementptr i8, ptr %a_prefix.addr.014.i.i, i32 1
  %17 = ptrtoint ptr %incdec.ptr4.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %incdec.ptr4.i.i, align 1
  %tobool.not.i45.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i45.i, label %while.body.i.i.strcmp_prefix.exit.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

while.body.i.i.strcmp_prefix.exit.i_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %strcmp_prefix.exit.i

strcmp_prefix.exit.i:                             ; preds = %while.body.i.i.strcmp_prefix.exit.i_crit_edge, %xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge
  %spec.select.i.i = phi ptr [ %name, %xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge ], [ %incdec.ptr.i.i, %while.body.i.i.strcmp_prefix.exit.i_crit_edge ]
  %tobool12.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool12.not.i, label %strcmp_prefix.exit.i.for.inc.i_crit_edge, label %if.then13.i

strcmp_prefix.exit.i.for.inc.i_crit_edge:         ; preds = %strcmp_prefix.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then13.i:                                      ; preds = %strcmp_prefix.exit.i
  %19 = ptrtoint ptr %spec.select.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %spec.select.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not.i = icmp eq i8 %20, 0
  %xor44.i = xor i1 %tobool.not.i.i, %tobool17.not.i
  br i1 %xor44.i, label %if.then21.i, label %xattr_resolve_name.exit

if.then21.i:                                      ; preds = %if.then13.i
  br i1 %tobool17.not.i, label %if.then21.i.if.then_crit_edge, label %if.then21.i.for.inc.i_crit_edge

if.then21.i.for.inc.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then21.i.if.then_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.i:                                        ; preds = %if.then21.i.for.inc.i_crit_edge, %strcmp_prefix.exit.i.for.inc.i_crit_edge, %land.rhs.i.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %handlers.056.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %handler.0.i = load ptr, ptr %handlers.056.i, align 4
  %cmp.not.i = icmp eq ptr %handler.0.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

xattr_resolve_name.exit:                          ; preds = %if.then13.i
  %cmp.i = icmp ugt ptr %handler.055.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %xattr_resolve_name.exit.if.then_crit_edge, label %if.end

xattr_resolve_name.exit.if.then_crit_edge:        ; preds = %xattr_resolve_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %xattr_resolve_name.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %if.then21.i.if.then_crit_edge, %for.cond.preheader.i.if.then_crit_edge, %if.end6.i.if.then_crit_edge, %if.then.i
  %retval.2.i16 = phi ptr [ %handler.055.i, %xattr_resolve_name.exit.if.then_crit_edge ], [ inttoptr (i32 -95 to ptr), %for.cond.preheader.i.if.then_crit_edge ], [ %spec.select.i, %if.then.i ], [ inttoptr (i32 -95 to ptr), %if.end6.i.if.then_crit_edge ], [ inttoptr (i32 -95 to ptr), %for.inc.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then21.i.if.then_crit_edge ]
  %22 = ptrtoint ptr %retval.2.i16 to i32
  br label %cleanup

if.end:                                           ; preds = %xattr_resolve_name.exit
  %get = getelementptr inbounds %struct.xattr_handler, ptr %handler.055.i, i32 0, i32 4
  %23 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 %24(ptr noundef %handler.055.i, ptr noundef %dentry, ptr noundef %inode, ptr noundef nonnull %spec.select.i.i, ptr noundef %value, i32 noundef %size) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %22, %if.then ], [ %call6, %if.end4 ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_getxattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name, ptr noundef %value, i32 noundef %size) #0 align 64 {
entry:
  %buffer.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %call = tail call fastcc i32 @xattr_permission(ptr noundef %mnt_userns, ptr noundef %1, ptr noundef %name, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup14_crit_edge

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @security_inode_getxattr(ptr noundef %dentry, ptr noundef %name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup14_crit_edge

if.end.cleanup14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.1, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end4.nolsm_crit_edge

if.end4.nolsm_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %nolsm

if.then7:                                         ; preds = %if.end4
  %add.ptr = getelementptr i8, ptr %name, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i) #10
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %buffer.i, align 4
  %tobool.not.i = icmp eq ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool1.not.i = icmp eq i32 %size, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @security_inode_getsecurity(ptr noundef %mnt_userns, ptr noundef %1, ptr noundef %add.ptr, ptr noundef nonnull %buffer.i, i1 noundef zeroext false) #10
  br label %xattr_getsecurity.exit

if.end.i:                                         ; preds = %if.then7
  %call2.i = call i32 @security_inode_getsecurity(ptr noundef %mnt_userns, ptr noundef %1, ptr noundef %add.ptr, ptr noundef nonnull %buffer.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i.xattr_getsecurity.exit_crit_edge, label %if.end4.i

if.end.i.xattr_getsecurity.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xattr_getsecurity.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %size)
  %cmp5.i = icmp ugt i32 %call2.i, %size
  br i1 %cmp5.i, label %if.end4.i.xattr_getsecurity.exit.thread_crit_edge, label %if.end7.i

if.end4.i.xattr_getsecurity.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xattr_getsecurity.exit.thread

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer.i, align 4
  %5 = call ptr @memcpy(ptr %value, ptr %4, i32 %call2.i)
  br label %xattr_getsecurity.exit.thread

xattr_getsecurity.exit.thread:                    ; preds = %if.end7.i, %if.end4.i.xattr_getsecurity.exit.thread_crit_edge
  %len.0.i = phi i32 [ %call2.i, %if.end7.i ], [ -34, %if.end4.i.xattr_getsecurity.exit.thread_crit_edge ]
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer.i, align 4
  call void @kfree(ptr noundef %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i) #10
  br label %cleanup14

xattr_getsecurity.exit:                           ; preds = %if.end.i.xattr_getsecurity.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.end.i.xattr_getsecurity.exit_crit_edge ], [ %call.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, -95
  br i1 %cmp, label %xattr_getsecurity.exit.nolsm_crit_edge, label %xattr_getsecurity.exit.cleanup14_crit_edge

xattr_getsecurity.exit.cleanup14_crit_edge:       ; preds = %xattr_getsecurity.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

xattr_getsecurity.exit.nolsm_crit_edge:           ; preds = %xattr_getsecurity.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nolsm

nolsm:                                            ; preds = %xattr_getsecurity.exit.nolsm_crit_edge, %if.end4.nolsm_crit_edge
  %i_opflags.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %i_opflags.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %i_opflags.i.i, align 2
  %10 = and i16 %9, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end6.i.i

if.then.i.i:                                      ; preds = %nolsm
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call zeroext i1 @is_bad_inode(ptr noundef %1) #10
  %spec.select.i.i = select i1 %call.i.i, ptr inttoptr (i32 -5 to ptr), ptr inttoptr (i32 -95 to ptr), !prof !214
  br label %if.then.i31

if.end6.i.i:                                      ; preds = %nolsm
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i.i, align 4
  %s_xattr.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %s_xattr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_xattr.i.i, align 16
  %tobool7.not.i.i = icmp eq ptr %14, null
  br i1 %tobool7.not.i.i, label %if.end6.i.i.if.then.i31_crit_edge, label %for.cond.preheader.i.i

if.end6.i.i.if.then.i31_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i31

for.cond.preheader.i.i:                           ; preds = %if.end6.i.i
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %handler.052.i.i = load ptr, ptr %14, align 4
  %cmp.not54.i.i = icmp eq ptr %handler.052.i.i, null
  br i1 %cmp.not54.i.i, label %for.cond.preheader.i.i.if.then.i31_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.if.then.i31_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i31

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %.pn.i.i = phi ptr [ %handlers.056.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %14, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %handler.055.i.i = phi ptr [ %handler.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %handler.052.i.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %handlers.056.i.i = getelementptr ptr, ptr %.pn.i.i, i32 1
  %prefix.i.i.i = getelementptr inbounds %struct.xattr_handler, ptr %handler.055.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prefix.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prefix.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %for.body.i.i.xattr_prefix.exit.i.i_crit_edge

for.body.i.i.xattr_prefix.exit.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xattr_prefix.exit.i.i

cond.false.i.i.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %handler.055.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handler.055.i.i, align 4
  br label %xattr_prefix.exit.i.i

xattr_prefix.exit.i.i:                            ; preds = %cond.false.i.i.i, %for.body.i.i.xattr_prefix.exit.i.i_crit_edge
  %cond.i.i.i = phi ptr [ %19, %cond.false.i.i.i ], [ %17, %for.body.i.i.xattr_prefix.exit.i.i_crit_edge ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cond.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not12.i.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not12.i.i.i, label %xattr_prefix.exit.i.i.strcmp_prefix.exit.i.i_crit_edge, label %xattr_prefix.exit.i.i.land.rhs.i.i.i_crit_edge

xattr_prefix.exit.i.i.land.rhs.i.i.i_crit_edge:   ; preds = %xattr_prefix.exit.i.i
  br label %land.rhs.i.i.i

xattr_prefix.exit.i.i.strcmp_prefix.exit.i.i_crit_edge: ; preds = %xattr_prefix.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %strcmp_prefix.exit.i.i

land.rhs.i.i.i:                                   ; preds = %while.body.i.i.i.land.rhs.i.i.i_crit_edge, %xattr_prefix.exit.i.i.land.rhs.i.i.i_crit_edge
  %22 = phi i8 [ %26, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ], [ %21, %xattr_prefix.exit.i.i.land.rhs.i.i.i_crit_edge ]
  %a_prefix.addr.014.i.i.i = phi ptr [ %incdec.ptr4.i.i.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ], [ %cond.i.i.i, %xattr_prefix.exit.i.i.land.rhs.i.i.i_crit_edge ]
  %a.addr.013.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ], [ %name, %xattr_prefix.exit.i.i.land.rhs.i.i.i_crit_edge ]
  %23 = ptrtoint ptr %a.addr.013.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %a.addr.013.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %22)
  %cmp.i.i.i = icmp eq i8 %24, %22
  br i1 %cmp.i.i.i, label %while.body.i.i.i, label %land.rhs.i.i.i.for.inc.i.i_crit_edge

land.rhs.i.i.i.for.inc.i.i_crit_edge:             ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %incdec.ptr.i.i.i = getelementptr i8, ptr %a.addr.013.i.i.i, i32 1
  %incdec.ptr4.i.i.i = getelementptr i8, ptr %a_prefix.addr.014.i.i.i, i32 1
  %25 = ptrtoint ptr %incdec.ptr4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr4.i.i.i, align 1
  %tobool.not.i45.i.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i45.i.i, label %while.body.i.i.i.strcmp_prefix.exit.i.i_crit_edge, label %while.body.i.i.i.land.rhs.i.i.i_crit_edge

while.body.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i.i

while.body.i.i.i.strcmp_prefix.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %strcmp_prefix.exit.i.i

strcmp_prefix.exit.i.i:                           ; preds = %while.body.i.i.i.strcmp_prefix.exit.i.i_crit_edge, %xattr_prefix.exit.i.i.strcmp_prefix.exit.i.i_crit_edge
  %spec.select.i.i.i = phi ptr [ %name, %xattr_prefix.exit.i.i.strcmp_prefix.exit.i.i_crit_edge ], [ %incdec.ptr.i.i.i, %while.body.i.i.i.strcmp_prefix.exit.i.i_crit_edge ]
  %tobool12.not.i.i = icmp eq ptr %spec.select.i.i.i, null
  br i1 %tobool12.not.i.i, label %strcmp_prefix.exit.i.i.for.inc.i.i_crit_edge, label %if.then13.i.i

strcmp_prefix.exit.i.i.for.inc.i.i_crit_edge:     ; preds = %strcmp_prefix.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then13.i.i:                                    ; preds = %strcmp_prefix.exit.i.i
  %27 = ptrtoint ptr %spec.select.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %spec.select.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool17.not.i.i = icmp eq i8 %28, 0
  %xor44.i.i = xor i1 %tobool.not.i.i.i, %tobool17.not.i.i
  br i1 %xor44.i.i, label %if.then21.i.i, label %xattr_resolve_name.exit.i

if.then21.i.i:                                    ; preds = %if.then13.i.i
  br i1 %tobool17.not.i.i, label %if.then21.i.i.if.then.i31_crit_edge, label %if.then21.i.i.for.inc.i.i_crit_edge

if.then21.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then21.i.i.if.then.i31_crit_edge:              ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i31

for.inc.i.i:                                      ; preds = %if.then21.i.i.for.inc.i.i_crit_edge, %strcmp_prefix.exit.i.i.for.inc.i.i_crit_edge, %land.rhs.i.i.i.for.inc.i.i_crit_edge
  %29 = ptrtoint ptr %handlers.056.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %handler.0.i.i = load ptr, ptr %handlers.056.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %handler.0.i.i, null
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.then.i31_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.then.i31_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i31

xattr_resolve_name.exit.i:                        ; preds = %if.then13.i.i
  %cmp.i.i = icmp ugt ptr %handler.055.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %xattr_resolve_name.exit.i.if.then.i31_crit_edge, label %if.end.i33

xattr_resolve_name.exit.i.if.then.i31_crit_edge:  ; preds = %xattr_resolve_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i31

if.then.i31:                                      ; preds = %xattr_resolve_name.exit.i.if.then.i31_crit_edge, %for.inc.i.i.if.then.i31_crit_edge, %if.then21.i.i.if.then.i31_crit_edge, %for.cond.preheader.i.i.if.then.i31_crit_edge, %if.end6.i.i.if.then.i31_crit_edge, %if.then.i.i
  %retval.2.i16.i = phi ptr [ %handler.055.i.i, %xattr_resolve_name.exit.i.if.then.i31_crit_edge ], [ inttoptr (i32 -95 to ptr), %for.cond.preheader.i.i.if.then.i31_crit_edge ], [ %spec.select.i.i, %if.then.i.i ], [ inttoptr (i32 -95 to ptr), %if.end6.i.i.if.then.i31_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then21.i.i.if.then.i31_crit_edge ], [ inttoptr (i32 -95 to ptr), %for.inc.i.i.if.then.i31_crit_edge ]
  %30 = ptrtoint ptr %retval.2.i16.i to i32
  br label %cleanup14

if.end.i33:                                       ; preds = %xattr_resolve_name.exit.i
  %get.i = getelementptr inbounds %struct.xattr_handler, ptr %handler.055.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get.i, align 4
  %tobool.not.i32 = icmp eq ptr %32, null
  br i1 %tobool.not.i32, label %if.end.i33.cleanup14_crit_edge, label %if.end4.i34

if.end.i33.cleanup14_crit_edge:                   ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

if.end4.i34:                                      ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = call i32 %32(ptr noundef %handler.055.i.i, ptr noundef %dentry, ptr noundef %1, ptr noundef nonnull %spec.select.i.i.i, ptr noundef %value, i32 noundef %size) #10
  br label %cleanup14

cleanup14:                                        ; preds = %if.end4.i34, %if.end.i33.cleanup14_crit_edge, %if.then.i31, %xattr_getsecurity.exit.cleanup14_crit_edge, %xattr_getsecurity.exit.thread, %if.end.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.1 = phi i32 [ %retval.0.i, %xattr_getsecurity.exit.cleanup14_crit_edge ], [ %call, %entry.cleanup14_crit_edge ], [ %call1, %if.end.cleanup14_crit_edge ], [ %len.0.i, %xattr_getsecurity.exit.thread ], [ %30, %if.then.i31 ], [ %call6.i, %if.end4.i34 ], [ -95, %if.end.i33.cleanup14_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_getxattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_listxattr(ptr noundef %dentry, ptr noundef %list, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @security_inode_listxattr(ptr noundef %dentry) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_op, align 8
  %listxattr = getelementptr inbounds %struct.inode_operations, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %listxattr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %listxattr, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %i_opflags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %i_opflags, align 2
  %8 = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool3.not = icmp eq i16 %8, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then4

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 %5(ptr noundef %dentry, ptr noundef %list, i32 noundef %size) #10
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %call8 = tail call i32 @security_inode_listsecurity(ptr noundef %1, ptr noundef %list, i32 noundef %size) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool9.not = icmp eq i32 %size, 0
  br i1 %tobool9.not, label %if.else.cleanup_crit_edge, label %land.lhs.true10

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true10:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %size)
  %cmp = icmp ugt i32 %call8, %size
  %spec.store.select = select i1 %cmp, i32 -34, i32 %call8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true10, %if.else.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call7, %if.then4 ], [ %spec.store.select, %land.lhs.true10 ], [ %call8, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_listxattr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_listsecurity(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__vfs_removexattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_opflags.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i_opflags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_opflags.i, align 2
  %4 = and i16 %3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call zeroext i1 @is_bad_inode(ptr noundef %1) #10
  %spec.select.i = select i1 %call.i, ptr inttoptr (i32 -5 to ptr), ptr inttoptr (i32 -95 to ptr), !prof !214
  br label %if.then

if.end6.i:                                        ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_xattr.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %s_xattr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_xattr.i, align 16
  %tobool7.not.i = icmp eq ptr %8, null
  br i1 %tobool7.not.i, label %if.end6.i.if.then_crit_edge, label %for.cond.preheader.i

if.end6.i.if.then_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.cond.preheader.i:                             ; preds = %if.end6.i
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %handler.052.i = load ptr, ptr %8, align 4
  %cmp.not54.i = icmp eq ptr %handler.052.i, null
  br i1 %cmp.not54.i, label %for.cond.preheader.i.if.then_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %.pn.i = phi ptr [ %handlers.056.i, %for.inc.i.for.body.i_crit_edge ], [ %8, %for.cond.preheader.i.for.body.i_crit_edge ]
  %handler.055.i = phi ptr [ %handler.0.i, %for.inc.i.for.body.i_crit_edge ], [ %handler.052.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %handlers.056.i = getelementptr ptr, ptr %.pn.i, i32 1
  %prefix.i.i = getelementptr inbounds %struct.xattr_handler, ptr %handler.055.i, i32 0, i32 1
  %10 = ptrtoint ptr %prefix.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prefix.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %for.body.i.xattr_prefix.exit.i_crit_edge

for.body.i.xattr_prefix.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xattr_prefix.exit.i

cond.false.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %handler.055.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handler.055.i, align 4
  br label %xattr_prefix.exit.i

xattr_prefix.exit.i:                              ; preds = %cond.false.i.i, %for.body.i.xattr_prefix.exit.i_crit_edge
  %cond.i.i = phi ptr [ %13, %cond.false.i.i ], [ %11, %for.body.i.xattr_prefix.exit.i_crit_edge ]
  %14 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cond.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not12.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not12.i.i, label %xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge, label %xattr_prefix.exit.i.land.rhs.i.i_crit_edge

xattr_prefix.exit.i.land.rhs.i.i_crit_edge:       ; preds = %xattr_prefix.exit.i
  br label %land.rhs.i.i

xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge: ; preds = %xattr_prefix.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %strcmp_prefix.exit.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge
  %16 = phi i8 [ %20, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %15, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge ]
  %a_prefix.addr.014.i.i = phi ptr [ %incdec.ptr4.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %cond.i.i, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge ]
  %a.addr.013.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %name, %xattr_prefix.exit.i.land.rhs.i.i_crit_edge ]
  %17 = ptrtoint ptr %a.addr.013.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %a.addr.013.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %16)
  %cmp.i.i = icmp eq i8 %18, %16
  br i1 %cmp.i.i, label %while.body.i.i, label %land.rhs.i.i.for.inc.i_crit_edge

land.rhs.i.i.for.inc.i_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %a.addr.013.i.i, i32 1
  %incdec.ptr4.i.i = getelementptr i8, ptr %a_prefix.addr.014.i.i, i32 1
  %19 = ptrtoint ptr %incdec.ptr4.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr4.i.i, align 1
  %tobool.not.i45.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i45.i, label %while.body.i.i.strcmp_prefix.exit.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

while.body.i.i.strcmp_prefix.exit.i_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %strcmp_prefix.exit.i

strcmp_prefix.exit.i:                             ; preds = %while.body.i.i.strcmp_prefix.exit.i_crit_edge, %xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge
  %spec.select.i.i = phi ptr [ %name, %xattr_prefix.exit.i.strcmp_prefix.exit.i_crit_edge ], [ %incdec.ptr.i.i, %while.body.i.i.strcmp_prefix.exit.i_crit_edge ]
  %tobool12.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool12.not.i, label %strcmp_prefix.exit.i.for.inc.i_crit_edge, label %if.then13.i

strcmp_prefix.exit.i.for.inc.i_crit_edge:         ; preds = %strcmp_prefix.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then13.i:                                      ; preds = %strcmp_prefix.exit.i
  %21 = ptrtoint ptr %spec.select.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %spec.select.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool17.not.i = icmp eq i8 %22, 0
  %xor44.i = xor i1 %tobool.not.i.i, %tobool17.not.i
  br i1 %xor44.i, label %if.then21.i, label %xattr_resolve_name.exit

if.then21.i:                                      ; preds = %if.then13.i
  br i1 %tobool17.not.i, label %if.then21.i.if.then_crit_edge, label %if.then21.i.for.inc.i_crit_edge

if.then21.i.for.inc.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then21.i.if.then_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.inc.i:                                        ; preds = %if.then21.i.for.inc.i_crit_edge, %strcmp_prefix.exit.i.for.inc.i_crit_edge, %land.rhs.i.i.for.inc.i_crit_edge
  %23 = ptrtoint ptr %handlers.056.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %handler.0.i = load ptr, ptr %handlers.056.i, align 4
  %cmp.not.i = icmp eq ptr %handler.0.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

xattr_resolve_name.exit:                          ; preds = %if.then13.i
  %cmp.i = icmp ugt ptr %handler.055.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %xattr_resolve_name.exit.if.then_crit_edge, label %if.end

xattr_resolve_name.exit.if.then_crit_edge:        ; preds = %xattr_resolve_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %xattr_resolve_name.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %if.then21.i.if.then_crit_edge, %for.cond.preheader.i.if.then_crit_edge, %if.end6.i.if.then_crit_edge, %if.then.i
  %retval.2.i19 = phi ptr [ %handler.055.i, %xattr_resolve_name.exit.if.then_crit_edge ], [ inttoptr (i32 -95 to ptr), %for.cond.preheader.i.if.then_crit_edge ], [ %spec.select.i, %if.then.i ], [ inttoptr (i32 -95 to ptr), %if.end6.i.if.then_crit_edge ], [ inttoptr (i32 -95 to ptr), %for.inc.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then21.i.if.then_crit_edge ]
  %24 = ptrtoint ptr %retval.2.i19 to i32
  br label %cleanup

if.end:                                           ; preds = %xattr_resolve_name.exit
  %set = getelementptr inbounds %struct.xattr_handler, ptr %handler.055.i, i32 0, i32 5
  %25 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 %26(ptr noundef %handler.055.i, ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %1, ptr noundef nonnull %spec.select.i.i, ptr noundef null, i32 noundef 0, i32 noundef 2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %24, %if.then ], [ %call7, %if.end5 ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__vfs_removexattr_locked(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name, ptr noundef writeonly %delegated_inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %call = tail call fastcc i32 @xattr_permission(ptr noundef %mnt_userns, ptr noundef %1, ptr noundef %name, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @security_inode_removexattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !215
  %i_flctx.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %i_flctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_flctx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end4.if.end8_crit_edge, label %land.lhs.true.i.i

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true.i.i:                                ; preds = %if.end4
  %flc_lease.i.i = getelementptr inbounds %struct.file_lock_context, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flc_lease.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %flc_lease.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !216
  %cmp.i.not.i.i.i = icmp eq ptr %5, %flc_lease.i.i
  br i1 %cmp.i.not.i.i.i, label %list_empty_careful.exit.i.i, label %land.lhs.true.i.i.break_deleg.exit.i_crit_edge

land.lhs.true.i.i.break_deleg.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %break_deleg.exit.i

list_empty_careful.exit.i.i:                      ; preds = %land.lhs.true.i.i
  %prev.i.i.i = getelementptr inbounds %struct.file_lock_context, ptr %3, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %flc_lease.i.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i.i.if.end8_crit_edge, label %list_empty_careful.exit.i.i.break_deleg.exit.i_crit_edge

list_empty_careful.exit.i.i.break_deleg.exit.i_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %break_deleg.exit.i

list_empty_careful.exit.i.i.if.end8_crit_edge:    ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

break_deleg.exit.i:                               ; preds = %list_empty_careful.exit.i.i.break_deleg.exit.i_crit_edge, %land.lhs.true.i.i.break_deleg.exit.i_crit_edge
  %call5.i.i = tail call i32 @__break_lease(ptr noundef %1, i32 noundef 2049, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call5.i.i)
  %cmp.i = icmp ne i32 %call5.i.i, -11
  %tobool.not.i = icmp eq ptr %delegated_inode, null
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %try_break_deleg.exit, label %try_break_deleg.exit.thread31

try_break_deleg.exit.thread31:                    ; preds = %break_deleg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %delegated_inode, align 4
  tail call void @ihold(ptr noundef %1) #10
  br label %cleanup

try_break_deleg.exit:                             ; preds = %break_deleg.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not, label %try_break_deleg.exit.if.end8_crit_edge, label %try_break_deleg.exit.cleanup_crit_edge

try_break_deleg.exit.cleanup_crit_edge:           ; preds = %try_break_deleg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

try_break_deleg.exit.if.end8_crit_edge:           ; preds = %try_break_deleg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %try_break_deleg.exit.if.end8_crit_edge, %list_empty_careful.exit.i.i.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %call9 = tail call i32 @__vfs_removexattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  %9 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 48
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i.i, label %if.then11.fsnotify_xattr.exit_crit_edge, label %if.end.i.i.i

if.then11.fsnotify_xattr.exit_crit_edge:          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsnotify_xattr.exit

if.end.i.i.i:                                     ; preds = %if.then11
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %10, align 8
  %17 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %17)
  %cmp2.i.i.i = icmp eq i16 %17, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %18 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dentry, align 8
  %and5.i.i.i = and i32 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ 1073741828, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ 4, %if.end.i.i.i.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %20 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %21, %dentry
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i.i.i = tail call i32 @__fsnotify_parent(ptr noundef %dentry, i32 noundef %mask.addr.0.i.i.i, ptr noundef %dentry, i32 noundef 3) #10
  br label %fsnotify_xattr.exit

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ 1073741828, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %dentry, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef %10, i32 noundef 0) #10
  br label %fsnotify_xattr.exit

fsnotify_xattr.exit:                              ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.then11.fsnotify_xattr.exit_crit_edge
  tail call void @evm_inode_post_removexattr(ptr noundef %dentry, ptr noundef %name) #10
  br label %cleanup

cleanup:                                          ; preds = %fsnotify_xattr.exit, %if.end8.cleanup_crit_edge, %try_break_deleg.exit.cleanup_crit_edge, %try_break_deleg.exit.thread31, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5.i.i, %try_break_deleg.exit.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ 0, %fsnotify_xattr.exit ], [ -11, %try_break_deleg.exit.thread31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evm_inode_post_removexattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_removexattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name) #0 align 64 {
entry:
  %delegated_inode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delegated_inode) #10
  %2 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %delegated_inode, align 4
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  br label %retry_deleg

retry_deleg:                                      ; preds = %break_deleg_wait.exit.retry_deleg_crit_edge, %entry
  call void @down_write(ptr noundef %i_rwsem.i) #10
  %call = call i32 @__vfs_removexattr_locked(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %name, ptr noundef nonnull %delegated_inode)
  call void @up_write(ptr noundef %i_rwsem.i) #10
  %3 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %delegated_inode, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %retry_deleg.if.end4_crit_edge, label %if.then

retry_deleg.if.end4_crit_edge:                    ; preds = %retry_deleg
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %retry_deleg
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !215
  %i_flctx.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 45
  %5 = ptrtoint ptr %i_flctx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_flctx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then.break_deleg_wait.exit_crit_edge, label %land.lhs.true.i.i

if.then.break_deleg_wait.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %break_deleg_wait.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %flc_lease.i.i = getelementptr inbounds %struct.file_lock_context, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %flc_lease.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %flc_lease.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !216
  %cmp.i.not.i.i.i = icmp eq ptr %8, %flc_lease.i.i
  br i1 %cmp.i.not.i.i.i, label %list_empty_careful.exit.i.i, label %land.lhs.true.i.i.if.then.i.i_crit_edge

land.lhs.true.i.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

list_empty_careful.exit.i.i:                      ; preds = %land.lhs.true.i.i
  %prev.i.i.i = getelementptr inbounds %struct.file_lock_context, ptr %6, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %10, %flc_lease.i.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge, label %list_empty_careful.exit.i.i.if.then.i.i_crit_edge

list_empty_careful.exit.i.i.if.then.i.i_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %break_deleg_wait.exit

if.then.i.i:                                      ; preds = %list_empty_careful.exit.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i_crit_edge
  %call5.i.i = call i32 @__break_lease(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 4) #10
  br label %break_deleg_wait.exit

break_deleg_wait.exit:                            ; preds = %if.then.i.i, %list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge, %if.then.break_deleg_wait.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call5.i.i, %if.then.i.i ], [ 0, %list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge ], [ 0, %if.then.break_deleg_wait.exit_crit_edge ]
  %11 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %delegated_inode, align 4
  call void @iput(ptr noundef %12) #10
  %13 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %delegated_inode, align 4
  %tobool2.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool2.not, label %break_deleg_wait.exit.retry_deleg_crit_edge, label %break_deleg_wait.exit.if.end4_crit_edge

break_deleg_wait.exit.if.end4_crit_edge:          ; preds = %break_deleg_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

break_deleg_wait.exit.retry_deleg_crit_edge:      ; preds = %break_deleg_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry_deleg

if.end4:                                          ; preds = %break_deleg_wait.exit.if.end4_crit_edge, %retry_deleg.if.end4_crit_edge
  %error.0 = phi i32 [ %retval.0.i.i, %break_deleg_wait.exit.if.end4_crit_edge ], [ %call, %retry_deleg.if.end4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delegated_inode) #10
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setxattr(i32 noundef %pathname, i32 noundef %name, i32 noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %pathname to ptr
  %1 = inttoptr i32 %name to ptr
  %2 = inttoptr i32 %value to ptr
  %call.i = tail call fastcc i32 @path_setxattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %size, i32 noundef %flags, i32 noundef 1) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_lsetxattr(i32 noundef %pathname, i32 noundef %name, i32 noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %pathname to ptr
  %1 = inttoptr i32 %name to ptr
  %2 = inttoptr i32 %value to ptr
  %call.i = tail call fastcc i32 @path_setxattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %size, i32 noundef %flags, i32 noundef 0) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fsetxattr(i32 noundef %fd, i32 noundef %name, i32 noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %name to ptr
  %1 = inttoptr i32 %value to ptr
  %call.i.i = tail call i32 @__fdget(i32 noundef %fd) #10, !noalias !217
  %and.i.i.i = and i32 %call.i.i, -4
  %2 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_fsetxattr.exit_crit_edge, label %if.end.i

entry.__do_sys_fsetxattr.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_fsetxattr.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @mnt_want_write_file(ptr noundef nonnull %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %f_path.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_path.i.i, align 8
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !220
  %dentry.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dentry.i, align 4
  %call8.i = tail call fastcc i32 @setxattr(ptr noundef %6, ptr noundef %8, ptr noundef %0, ptr noundef %1, i32 noundef %size, i32 noundef %flags) #10
  tail call void @mnt_drop_write_file(ptr noundef nonnull %2) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then4.i, %if.end.i.if.end10.i_crit_edge
  %error.0.i = phi i32 [ %call.i, %if.end.i.if.end10.i_crit_edge ], [ %call8.i, %if.then4.i ]
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end10.i.__do_sys_fsetxattr.exit_crit_edge, label %if.then.i.i

if.end10.i.__do_sys_fsetxattr.exit_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_fsetxattr.exit

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fput(ptr noundef nonnull %2) #10
  br label %__do_sys_fsetxattr.exit

__do_sys_fsetxattr.exit:                          ; preds = %if.then.i.i, %if.end10.i.__do_sys_fsetxattr.exit_crit_edge, %entry.__do_sys_fsetxattr.exit_crit_edge
  %retval.0.i = phi i32 [ -9, %entry.__do_sys_fsetxattr.exit_crit_edge ], [ %error.0.i, %if.end10.i.__do_sys_fsetxattr.exit_crit_edge ], [ %error.0.i, %if.then.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getxattr(i32 noundef %pathname, i32 noundef %name, i32 noundef %value, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %pathname to ptr
  %1 = inttoptr i32 %name to ptr
  %2 = inttoptr i32 %value to ptr
  %call.i = tail call fastcc i32 @path_getxattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %size, i32 noundef 1) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_lgetxattr(i32 noundef %pathname, i32 noundef %name, i32 noundef %value, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %pathname to ptr
  %1 = inttoptr i32 %name to ptr
  %2 = inttoptr i32 %value to ptr
  %call.i = tail call fastcc i32 @path_getxattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %size, i32 noundef 0) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fgetxattr(i32 noundef %fd, i32 noundef %name, i32 noundef %value, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @__fdget(i32 noundef %fd) #10, !noalias !221
  %and.i.i.i = and i32 %call.i.i, -4
  %0 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_fgetxattr.exit_crit_edge, label %if.end.i

entry.__do_sys_fgetxattr.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_fgetxattr.exit

if.end.i:                                         ; preds = %entry
  %1 = inttoptr i32 %value to ptr
  %2 = inttoptr i32 %name to ptr
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %f_path.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_path.i.i, align 8
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !220
  %dentry.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dentry.i, align 4
  %call4.i = tail call fastcc i32 @getxattr(ptr noundef %6, ptr noundef %8, ptr noundef %2, ptr noundef %1, i32 noundef %size) #10
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.__do_sys_fgetxattr.exit_crit_edge, label %if.then.i.i

if.end.i.__do_sys_fgetxattr.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_fgetxattr.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fput(ptr noundef nonnull %0) #10
  br label %__do_sys_fgetxattr.exit

__do_sys_fgetxattr.exit:                          ; preds = %if.then.i.i, %if.end.i.__do_sys_fgetxattr.exit_crit_edge, %entry.__do_sys_fgetxattr.exit_crit_edge
  %retval.0.i = phi i32 [ -9, %entry.__do_sys_fgetxattr.exit_crit_edge ], [ %call4.i, %if.end.i.__do_sys_fgetxattr.exit_crit_edge ], [ %call4.i, %if.then.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_listxattr(i32 noundef %pathname, i32 noundef %list, i32 noundef %size) #0 align 64 {
entry:
  %path.i.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %pathname to ptr
  %1 = inttoptr i32 %list to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i) #10
  %2 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i.i, align 4, !annotation !224
  %3 = getelementptr inbounds %struct.path, ptr %path.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !224
  %call.i11.i.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 1, ptr noundef nonnull %path.i.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i)
  %tobool.not12.i.i = icmp eq i32 %call.i11.i.i, 0
  br i1 %tobool.not12.i.i, label %if.end.i.i, label %entry.__do_sys_listxattr.exit_crit_edge

entry.__do_sys_listxattr.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_listxattr.exit

retry.i.i:                                        ; preds = %if.end.i.i
  %call.i.i.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 33, ptr noundef nonnull %path.i.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.1, label %retry.i.i.__do_sys_listxattr.exit_crit_edge

retry.i.i.__do_sys_listxattr.exit_crit_edge:      ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_listxattr.exit

if.end.i.i.1:                                     ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call1.i.i.1 = call fastcc i32 @listxattr(ptr noundef %6, ptr noundef %1, i32 noundef %size) #10
  call void @path_put(ptr noundef nonnull %path.i.i) #10
  br label %__do_sys_listxattr.exit

if.end.i.i:                                       ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call1.i.i = call fastcc i32 @listxattr(ptr noundef %8, ptr noundef %1, i32 noundef %size) #10
  call void @path_put(ptr noundef nonnull %path.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call1.i.i)
  %cmp.i.i.i = icmp eq i32 %call1.i.i, -116
  br i1 %cmp.i.i.i, label %retry.i.i, label %if.end.i.i.__do_sys_listxattr.exit_crit_edge

if.end.i.i.__do_sys_listxattr.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_listxattr.exit

__do_sys_listxattr.exit:                          ; preds = %if.end.i.i.__do_sys_listxattr.exit_crit_edge, %if.end.i.i.1, %retry.i.i.__do_sys_listxattr.exit_crit_edge, %entry.__do_sys_listxattr.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i11.i.i, %entry.__do_sys_listxattr.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.__do_sys_listxattr.exit_crit_edge ], [ %call.i.i.i, %retry.i.i.__do_sys_listxattr.exit_crit_edge ], [ %call1.i.i.1, %if.end.i.i.1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #10
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_llistxattr(i32 noundef %pathname, i32 noundef %list, i32 noundef %size) #0 align 64 {
entry:
  %path.i.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %pathname to ptr
  %1 = inttoptr i32 %list to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i) #10
  %2 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i.i, align 4, !annotation !224
  %3 = getelementptr inbounds %struct.path, ptr %path.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !224
  %call.i11.i.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %path.i.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i)
  %tobool.not12.i.i = icmp eq i32 %call.i11.i.i, 0
  br i1 %tobool.not12.i.i, label %if.end.i.i, label %entry.__do_sys_llistxattr.exit_crit_edge

entry.__do_sys_llistxattr.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_llistxattr.exit

retry.i.i:                                        ; preds = %if.end.i.i
  %call.i.i.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 32, ptr noundef nonnull %path.i.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.1, label %retry.i.i.__do_sys_llistxattr.exit_crit_edge

retry.i.i.__do_sys_llistxattr.exit_crit_edge:     ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_llistxattr.exit

if.end.i.i.1:                                     ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call1.i.i.1 = call fastcc i32 @listxattr(ptr noundef %6, ptr noundef %1, i32 noundef %size) #10
  call void @path_put(ptr noundef nonnull %path.i.i) #10
  br label %__do_sys_llistxattr.exit

if.end.i.i:                                       ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call1.i.i = call fastcc i32 @listxattr(ptr noundef %8, ptr noundef %1, i32 noundef %size) #10
  call void @path_put(ptr noundef nonnull %path.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call1.i.i)
  %cmp.i.i.i = icmp eq i32 %call1.i.i, -116
  br i1 %cmp.i.i.i, label %retry.i.i, label %if.end.i.i.__do_sys_llistxattr.exit_crit_edge

if.end.i.i.__do_sys_llistxattr.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_llistxattr.exit

__do_sys_llistxattr.exit:                         ; preds = %if.end.i.i.__do_sys_llistxattr.exit_crit_edge, %if.end.i.i.1, %retry.i.i.__do_sys_llistxattr.exit_crit_edge, %entry.__do_sys_llistxattr.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i11.i.i, %entry.__do_sys_llistxattr.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.__do_sys_llistxattr.exit_crit_edge ], [ %call.i.i.i, %retry.i.i.__do_sys_llistxattr.exit_crit_edge ], [ %call1.i.i.1, %if.end.i.i.1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #10
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_flistxattr(i32 noundef %fd, i32 noundef %list, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @__fdget(i32 noundef %fd) #10, !noalias !225
  %and.i.i.i = and i32 %call.i.i, -4
  %0 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_flistxattr.exit_crit_edge, label %if.end.i

entry.__do_sys_flistxattr.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_flistxattr.exit

if.end.i:                                         ; preds = %entry
  %1 = inttoptr i32 %list to ptr
  %dentry.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry.i, align 4
  %call.i = tail call fastcc i32 @listxattr(ptr noundef %3, ptr noundef %1, i32 noundef %size) #10
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.__do_sys_flistxattr.exit_crit_edge, label %if.then.i.i

if.end.i.__do_sys_flistxattr.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_flistxattr.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fput(ptr noundef nonnull %0) #10
  br label %__do_sys_flistxattr.exit

__do_sys_flistxattr.exit:                         ; preds = %if.then.i.i, %if.end.i.__do_sys_flistxattr.exit_crit_edge, %entry.__do_sys_flistxattr.exit_crit_edge
  %retval.0.i = phi i32 [ -9, %entry.__do_sys_flistxattr.exit_crit_edge ], [ %call.i, %if.end.i.__do_sys_flistxattr.exit_crit_edge ], [ %call.i, %if.then.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_removexattr(i32 noundef %pathname, i32 noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %pathname to ptr
  %1 = inttoptr i32 %name to ptr
  %call.i = tail call fastcc i32 @path_removexattr(ptr noundef %0, ptr noundef %1, i32 noundef 1) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_lremovexattr(i32 noundef %pathname, i32 noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %pathname to ptr
  %1 = inttoptr i32 %name to ptr
  %call.i = tail call fastcc i32 @path_removexattr(ptr noundef %0, ptr noundef %1, i32 noundef 0) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fremovexattr(i32 noundef %fd, i32 noundef %name) #0 align 64 {
entry:
  %kname.i.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %name to ptr
  %call.i.i = tail call i32 @__fdget(i32 noundef %fd) #10, !noalias !228
  %and.i.i.i = and i32 %call.i.i, -4
  %1 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_fremovexattr.exit_crit_edge, label %if.end.i

entry.__do_sys_fremovexattr.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_fremovexattr.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @mnt_want_write_file(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then4.i:                                       ; preds = %if.end.i
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %f_path.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_path.i.i, align 8
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !220
  %dentry.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry.i, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %kname.i.i) #10
  %8 = call ptr @memset(ptr %kname.i.i, i32 255, i32 256)
  %call.i14.i = call i32 @strncpy_from_user(ptr noundef nonnull %kname.i.i, ptr noundef %0, i32 noundef 256) #10
  %9 = zext i32 %call.i14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call.i14.i, label %if.end.i.i [
    i32 0, label %if.then4.i.removexattr.exit.i_crit_edge
    i32 256, label %if.then4.i.removexattr.exit.i_crit_edge1
  ]

if.then4.i.removexattr.exit.i_crit_edge1:         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %removexattr.exit.i

if.then4.i.removexattr.exit.i_crit_edge:          ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %removexattr.exit.i

if.end.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %cmp2.i.i = icmp slt i32 %call.i14.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i.removexattr.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.removexattr.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %removexattr.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i.i = call i32 @vfs_removexattr(ptr noundef %5, ptr noundef %7, ptr noundef nonnull %kname.i.i) #10
  br label %removexattr.exit.i

removexattr.exit.i:                               ; preds = %if.end4.i.i, %if.end.i.i.removexattr.exit.i_crit_edge, %if.then4.i.removexattr.exit.i_crit_edge, %if.then4.i.removexattr.exit.i_crit_edge1
  %retval.0.i.i = phi i32 [ %call6.i.i, %if.end4.i.i ], [ %call.i14.i, %if.end.i.i.removexattr.exit.i_crit_edge ], [ -34, %if.then4.i.removexattr.exit.i_crit_edge ], [ -34, %if.then4.i.removexattr.exit.i_crit_edge1 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %kname.i.i) #10
  call void @mnt_drop_write_file(ptr noundef nonnull %1) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %removexattr.exit.i, %if.end.i.if.end10.i_crit_edge
  %error.0.i = phi i32 [ %call.i, %if.end.i.if.end10.i_crit_edge ], [ %retval.0.i.i, %removexattr.exit.i ]
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end10.i.__do_sys_fremovexattr.exit_crit_edge, label %if.then.i.i

if.end10.i.__do_sys_fremovexattr.exit_crit_edge:  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_fremovexattr.exit

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @fput(ptr noundef nonnull %1) #10
  br label %__do_sys_fremovexattr.exit

__do_sys_fremovexattr.exit:                       ; preds = %if.then.i.i, %if.end10.i.__do_sys_fremovexattr.exit_crit_edge, %entry.__do_sys_fremovexattr.exit_crit_edge
  %retval.0.i = phi i32 [ -9, %entry.__do_sys_fremovexattr.exit_crit_edge ], [ %error.0.i, %if.end10.i.__do_sys_fremovexattr.exit_crit_edge ], [ %error.0.i, %if.then.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_listxattr(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %buffer_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %s_xattr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_xattr, align 16
  %tobool.not = icmp eq ptr %buffer, null
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.then.cleanup44_crit_edge, label %for.cond.preheader

if.then.cleanup44_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup44

for.cond.preheader:                               ; preds = %if.then
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %handler.088 = load ptr, ptr %3, align 4
  %cmp.not89 = icmp eq ptr %handler.088, null
  br i1 %cmp.not89, label %for.cond.preheader.cleanup44_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup44_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup44

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %handler.092 = phi ptr [ %handler.0, %for.inc.for.body_crit_edge ], [ %handler.088, %for.cond.preheader.for.body_crit_edge ]
  %handlers.091.pn = phi ptr [ %handlers.091, %for.inc.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %size.090 = phi i32 [ %size.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %handlers.091 = getelementptr ptr, ptr %handlers.091.pn, i32 1
  %5 = ptrtoint ptr %handler.092 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %handler.092, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %list = getelementptr inbounds %struct.xattr_handler, ptr %handler.092, i32 0, i32 3
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call = tail call zeroext i1 %8(ptr noundef %dentry) #10
  br i1 %call, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %9 = ptrtoint ptr %handler.092 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handler.092, align 4
  %call8 = tail call i32 @strlen(ptr noundef %10) #13
  %add = add i32 %size.090, 1
  %add9 = add i32 %add, %call8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %size.1 = phi i32 [ %add9, %if.end ], [ %size.090, %land.lhs.true.for.inc_crit_edge ], [ %size.090, %for.body.for.inc_crit_edge ]
  %11 = ptrtoint ptr %handlers.091 to i32
  call void @__asan_load4_noabort(i32 %11)
  %handler.0 = load ptr, ptr %handlers.091, align 4
  %cmp.not = icmp eq ptr %handler.0, null
  br i1 %cmp.not, label %for.inc.cleanup44_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup44_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup44

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.else.cleanup.thread_crit_edge, label %for.cond15.preheader

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.cond15.preheader:                             ; preds = %if.else
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %handler.180 = load ptr, ptr %3, align 4
  %cmp16.not81 = icmp eq ptr %handler.180, null
  br i1 %cmp16.not81, label %for.cond15.preheader.cleanup.thread_crit_edge, label %for.cond15.preheader.for.body17_crit_edge

for.cond15.preheader.for.body17_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body17

for.cond15.preheader.cleanup.thread_crit_edge:    ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.body17:                                       ; preds = %for.inc38.for.body17_crit_edge, %for.cond15.preheader.for.body17_crit_edge
  %handler.186 = phi ptr [ %handler.1, %for.inc38.for.body17_crit_edge ], [ %handler.180, %for.cond15.preheader.for.body17_crit_edge ]
  %handlers.185.pn = phi ptr [ %handlers.185, %for.inc38.for.body17_crit_edge ], [ %3, %for.cond15.preheader.for.body17_crit_edge ]
  %buf.083 = phi ptr [ %buf.1, %for.inc38.for.body17_crit_edge ], [ %buffer, %for.cond15.preheader.for.body17_crit_edge ]
  %buffer_size.addr.082 = phi i32 [ %buffer_size.addr.1, %for.inc38.for.body17_crit_edge ], [ %buffer_size, %for.cond15.preheader.for.body17_crit_edge ]
  %handlers.185 = getelementptr ptr, ptr %handlers.185.pn, i32 1
  %13 = ptrtoint ptr %handler.186 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handler.186, align 4
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %for.body17.for.inc38_crit_edge, label %lor.lhs.false20

for.body17.for.inc38_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc38

lor.lhs.false20:                                  ; preds = %for.body17
  %list21 = getelementptr inbounds %struct.xattr_handler, ptr %handler.186, i32 0, i32 3
  %15 = ptrtoint ptr %list21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list21, align 4
  %tobool22.not = icmp eq ptr %16, null
  br i1 %tobool22.not, label %lor.lhs.false20.if.end27_crit_edge, label %land.lhs.true23

lor.lhs.false20.if.end27_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true23:                                  ; preds = %lor.lhs.false20
  %call25 = tail call zeroext i1 %16(ptr noundef %dentry) #10
  br i1 %call25, label %land.lhs.true23.if.end27_crit_edge, label %land.lhs.true23.for.inc38_crit_edge

land.lhs.true23.for.inc38_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc38

land.lhs.true23.if.end27_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true23.if.end27_crit_edge, %lor.lhs.false20.if.end27_crit_edge
  %17 = ptrtoint ptr %handler.186 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handler.186, align 4
  %call29 = tail call i32 @strlen(ptr noundef %18) #13
  %add30 = add i32 %call29, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %buffer_size.addr.082, i32 %add30)
  %cmp31 = icmp ult i32 %buffer_size.addr.082, %add30
  br i1 %cmp31, label %if.end27.cleanup44_crit_edge, label %if.end33

if.end27.cleanup44_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup44

if.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %19 = call ptr @memcpy(ptr %buf.083, ptr %18, i32 %add30)
  %add.ptr = getelementptr i8, ptr %buf.083, i32 %add30
  %sub = sub i32 %buffer_size.addr.082, %add30
  br label %for.inc38

for.inc38:                                        ; preds = %if.end33, %land.lhs.true23.for.inc38_crit_edge, %for.body17.for.inc38_crit_edge
  %buffer_size.addr.1 = phi i32 [ %sub, %if.end33 ], [ %buffer_size.addr.082, %land.lhs.true23.for.inc38_crit_edge ], [ %buffer_size.addr.082, %for.body17.for.inc38_crit_edge ]
  %buf.1 = phi ptr [ %add.ptr, %if.end33 ], [ %buf.083, %land.lhs.true23.for.inc38_crit_edge ], [ %buf.083, %for.body17.for.inc38_crit_edge ]
  %20 = ptrtoint ptr %handlers.185 to i32
  call void @__asan_load4_noabort(i32 %20)
  %handler.1 = load ptr, ptr %handlers.185, align 4
  %cmp16.not = icmp eq ptr %handler.1, null
  br i1 %cmp16.not, label %for.inc38.cleanup.thread_crit_edge, label %for.inc38.for.body17_crit_edge

for.inc38.for.body17_crit_edge:                   ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body17

for.inc38.cleanup.thread_crit_edge:               ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.inc38.cleanup.thread_crit_edge, %for.cond15.preheader.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge
  %buf.2 = phi ptr [ %buffer, %if.else.cleanup.thread_crit_edge ], [ %buffer, %for.cond15.preheader.cleanup.thread_crit_edge ], [ %buf.1, %for.inc38.cleanup.thread_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %buf.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buffer to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup44

cleanup44:                                        ; preds = %cleanup.thread, %if.end27.cleanup44_crit_edge, %for.inc.cleanup44_crit_edge, %for.cond.preheader.cleanup44_crit_edge, %if.then.cleanup44_crit_edge
  %retval.1 = phi i32 [ 0, %if.then.cleanup44_crit_edge ], [ %sub.ptr.sub, %cleanup.thread ], [ 0, %for.cond.preheader.cleanup44_crit_edge ], [ %size.1, %for.inc.cleanup44_crit_edge ], [ -34, %if.end27.cleanup44_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xattr_full_name(ptr nocapture noundef readonly %handler, ptr noundef readnone %name) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %prefix.i = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 1
  %0 = ptrtoint ptr %prefix.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prefix.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %cond.false.i, label %entry.xattr_prefix.exit_crit_edge

entry.xattr_prefix.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %xattr_prefix.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 4
  br label %xattr_prefix.exit

xattr_prefix.exit:                                ; preds = %cond.false.i, %entry.xattr_prefix.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.false.i ], [ %1, %entry.xattr_prefix.exit_crit_edge ]
  %call1 = tail call i32 @strlen(ptr noundef %cond.i) #13
  %idx.neg = sub i32 0, %call1
  %add.ptr = getelementptr i8, ptr %name, i32 %idx.neg
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @simple_xattr_alloc(ptr nocapture noundef readonly %value, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %size)
  %cmp = icmp ugt i32 %size, -17
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add nuw i32 %size, 16
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add, i32 noundef 3264, i32 noundef -1) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %size3 = getelementptr inbounds %struct.simple_xattr, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %size, ptr %size3, align 4
  %value4 = getelementptr inbounds %struct.simple_xattr, ptr %call.i, i32 0, i32 3
  %1 = call ptr @memcpy(ptr %value4, ptr %value, i32 %size)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end2 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @simple_xattr_get(ptr noundef %xattrs, ptr nocapture noundef readonly %name, ptr noundef writeonly %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.simple_xattrs, ptr %xattrs, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %xattr.0.in = phi ptr [ %xattrs, %entry ], [ %xattr.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %xattr.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %xattr.0 = load ptr, ptr %xattr.0.in, align 4
  %cmp.not = icmp eq ptr %xattr.0, %xattrs
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %name2 = getelementptr inbounds %struct.simple_xattr, ptr %xattr.0, i32 0, i32 1
  %1 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name2, align 4
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef %2) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end:                                           ; preds = %for.body
  %size3 = getelementptr inbounds %struct.simple_xattr, ptr %xattr.0, i32 0, i32 2
  %3 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size3, align 4
  %tobool4.not = icmp eq ptr %buffer, null
  br i1 %tobool4.not, label %if.end.for.end_crit_edge, label %if.then5

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %size)
  %cmp7 = icmp ugt i32 %4, %size
  br i1 %cmp7, label %if.then5.for.end_crit_edge, label %if.else

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %value = getelementptr inbounds %struct.simple_xattr, ptr %xattr.0, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %buffer, ptr %value, i32 %4)
  br label %for.end

for.end:                                          ; preds = %if.else, %if.then5.for.end_crit_edge, %if.end.for.end_crit_edge, %for.cond.for.end_crit_edge
  %ret.0 = phi i32 [ %4, %if.else ], [ %4, %if.end.for.end_crit_edge ], [ -34, %if.then5.for.end_crit_edge ], [ -61, %for.cond.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @simple_xattr_set(ptr noundef %xattrs, ptr noundef %name, ptr noundef readonly %value, i32 noundef %size, i32 noundef %flags, ptr noundef writeonly %removed_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %removed_size, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %removed_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %removed_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %value, null
  br i1 %tobool1.not, label %if.end.if.end12_crit_edge, label %if.then2

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %size)
  %cmp.i = icmp ugt i32 %size, -17
  br i1 %cmp.i, label %if.then2.cleanup_crit_edge, label %if.end.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then2
  %add.i = add nuw i32 %size, 16
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add.i, i32 noundef 3264, i32 noundef -1) #15
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  %size3.i = getelementptr inbounds %struct.simple_xattr, ptr %call.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %size3.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %size, ptr %size3.i, align 4
  %value4.i = getelementptr inbounds %struct.simple_xattr, ptr %call.i.i, i32 0, i32 3
  %2 = call ptr @memcpy(ptr %value4.i, ptr %value, i32 %size)
  %call6 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #10
  %name7 = getelementptr inbounds %struct.simple_xattr, ptr %call.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %name7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %name7, align 4
  %tobool9.not = icmp eq ptr %call6, null
  br i1 %tobool9.not, label %if.then10, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end5.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %new_xattr.0 = phi ptr [ %call.i.i, %if.end5.if.end12_crit_edge ], [ null, %if.end.if.end12_crit_edge ]
  %lock = getelementptr inbounds %struct.simple_xattrs, ptr %xattrs, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end12
  %xattr.0.in = phi ptr [ %xattrs, %if.end12 ], [ %xattr.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %xattr.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %xattr.0 = load ptr, ptr %xattr.0.in, align 4
  %cmp.not = icmp eq ptr %xattr.0, %xattrs
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %name14 = getelementptr inbounds %struct.simple_xattr, ptr %xattr.0, i32 0, i32 1
  %5 = ptrtoint ptr %name14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name14, align 4
  %call15 = tail call i32 @strcmp(ptr noundef %name, ptr noundef %6) #13
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then17:                                        ; preds = %for.body
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.else, label %if.then17.out_crit_edge

if.then17.out_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else:                                          ; preds = %if.then17
  %tobool20.not = icmp eq ptr %new_xattr.0, null
  br i1 %tobool20.not, label %if.else28, label %if.then21

if.then21:                                        ; preds = %if.else
  %7 = ptrtoint ptr %xattr.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xattr.0, align 4
  %9 = ptrtoint ptr %new_xattr.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %new_xattr.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %new_xattr.0, ptr %prev.i, align 4
  %prev3.i = getelementptr inbounds %struct.list_head, ptr %xattr.0, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev3.i, align 4
  %prev4.i = getelementptr inbounds %struct.list_head, ptr %new_xattr.0, i32 0, i32 1
  %13 = ptrtoint ptr %prev4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %prev4.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %new_xattr.0, ptr %12, align 4
  br i1 %tobool.not, label %if.then21.out_crit_edge, label %if.then21.out.sink.split_crit_edge

if.then21.out.sink.split_crit_edge:               ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else28:                                        ; preds = %if.else
  %call.i.i85 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xattr.0) #10
  br i1 %call.i.i85, label %if.end.i.i, label %if.else28.list_del.exit_crit_edge

if.else28.list_del.exit_crit_edge:                ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %xattr.0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %xattr.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xattr.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else28.list_del.exit_crit_edge
  %21 = ptrtoint ptr %xattr.0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %xattr.0, align 4
  %prev.i86 = getelementptr inbounds %struct.list_head, ptr %xattr.0, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i86 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i86, align 4
  br i1 %tobool.not, label %list_del.exit.out_crit_edge, label %list_del.exit.out.sink.split_crit_edge

list_del.exit.out.sink.split_crit_edge:           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

list_del.exit.out_crit_edge:                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.end:                                          ; preds = %for.cond
  %and42 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else45, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else45:                                        ; preds = %for.end
  %23 = ptrtoint ptr %xattrs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xattrs, align 4
  %call.i.i87 = tail call zeroext i1 @__list_add_valid(ptr noundef %new_xattr.0, ptr noundef %xattrs, ptr noundef %24) #10
  br i1 %call.i.i87, label %if.end.i.i88, label %if.else45.out.thread_crit_edge

if.else45.out.thread_crit_edge:                   ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end.i.i88:                                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %new_xattr.0, ptr %prev1.i.i, align 4
  %26 = ptrtoint ptr %new_xattr.0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %new_xattr.0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %new_xattr.0, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %xattrs, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %xattrs to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %new_xattr.0, ptr %xattrs, align 4
  br label %out.thread

out.thread:                                       ; preds = %if.end.i.i88, %if.else45.out.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

out.sink.split:                                   ; preds = %list_del.exit.out.sink.split_crit_edge, %if.then21.out.sink.split_crit_edge
  %size32 = getelementptr inbounds %struct.simple_xattr, ptr %xattr.0, i32 0, i32 2
  %29 = ptrtoint ptr %size32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size32, align 4
  %31 = ptrtoint ptr %removed_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %removed_size, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %for.end.out_crit_edge, %list_del.exit.out_crit_edge, %if.then21.out_crit_edge, %if.then17.out_crit_edge
  %err.0 = phi i32 [ 0, %if.then21.out_crit_edge ], [ 0, %list_del.exit.out_crit_edge ], [ -17, %if.then17.out_crit_edge ], [ -61, %for.end.out_crit_edge ], [ 0, %out.sink.split ]
  %xattr.1 = phi ptr [ %xattr.0, %if.then21.out_crit_edge ], [ %xattr.0, %list_del.exit.out_crit_edge ], [ %new_xattr.0, %if.then17.out_crit_edge ], [ %new_xattr.0, %for.end.out_crit_edge ], [ %xattr.0, %out.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %tobool50.not = icmp eq ptr %xattr.1, null
  br i1 %tobool50.not, label %out.cleanup_crit_edge, label %if.then51

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then51:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %name52 = getelementptr inbounds %struct.simple_xattr, ptr %xattr.1, i32 0, i32 1
  %32 = ptrtoint ptr %name52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name52, align 4
  tail call void @kfree(ptr noundef %33) #10
  tail call void @kvfree(ptr noundef nonnull %xattr.1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %out.cleanup_crit_edge, %out.thread, %if.then10, %if.end.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then10 ], [ %err.0, %if.then51 ], [ %err.0, %out.cleanup_crit_edge ], [ 0, %out.thread ], [ -12, %if.then2.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @simple_xattr_list(ptr nocapture noundef readonly %inode, ptr noundef %xattrs, ptr noundef %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #10
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
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then:                                          ; preds = %entry
  %i_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %4 = ptrtoint ptr %i_acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_acl, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.then.if.end6_crit_edge, label %if.then2

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then2:                                         ; preds = %if.then
  %tobool.not.i = icmp eq ptr %buffer, null
  br i1 %tobool.not.i, label %if.then2.xattr_list_one.exit.thread_crit_edge, label %if.then.i

if.then2.xattr_list_one.exit.thread_crit_edge:    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %xattr_list_one.exit.thread

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %size)
  %cmp.i = icmp ult i32 %size, 24
  br i1 %cmp.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = call ptr @memcpy(ptr %buffer, ptr @.str.39, i32 24)
  %add.ptr.i = getelementptr i8, ptr %buffer, i32 24
  br label %xattr_list_one.exit.thread

xattr_list_one.exit.thread:                       ; preds = %if.end.i, %if.then2.xattr_list_one.exit.thread_crit_edge
  %buffer.addr.0 = phi ptr [ null, %if.then2.xattr_list_one.exit.thread_crit_edge ], [ %add.ptr.i, %if.end.i ]
  %sub.i = add i32 %size, -24
  br label %if.end6

if.end6:                                          ; preds = %xattr_list_one.exit.thread, %if.then.if.end6_crit_edge
  %buffer.addr.2 = phi ptr [ %buffer, %if.then.if.end6_crit_edge ], [ %buffer.addr.0, %xattr_list_one.exit.thread ]
  %remaining_size.1 = phi i32 [ %size, %if.then.if.end6_crit_edge ], [ %sub.i, %xattr_list_one.exit.thread ]
  %i_default_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %7 = ptrtoint ptr %i_default_acl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_default_acl, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end6.if.end14_crit_edge, label %if.then8

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  %tobool.not.i52 = icmp eq ptr %buffer.addr.2, null
  br i1 %tobool.not.i52, label %if.then8.xattr_list_one.exit60.thread_crit_edge, label %if.then.i54

if.then8.xattr_list_one.exit60.thread_crit_edge:  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %xattr_list_one.exit60.thread

if.then.i54:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %remaining_size.1)
  %cmp.i53 = icmp ult i32 %remaining_size.1, 25
  br i1 %cmp.i53, label %if.then.i54.cleanup_crit_edge, label %if.end.i56

if.then.i54.cleanup_crit_edge:                    ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i56:                                       ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call ptr @memcpy(ptr %buffer.addr.2, ptr @.str.40, i32 25)
  %add.ptr.i55 = getelementptr i8, ptr %buffer.addr.2, i32 25
  br label %xattr_list_one.exit60.thread

xattr_list_one.exit60.thread:                     ; preds = %if.end.i56, %if.then8.xattr_list_one.exit60.thread_crit_edge
  %buffer.addr.3 = phi ptr [ null, %if.then8.xattr_list_one.exit60.thread_crit_edge ], [ %add.ptr.i55, %if.end.i56 ]
  %sub.i57 = add i32 %remaining_size.1, -25
  br label %if.end14

if.end14:                                         ; preds = %xattr_list_one.exit60.thread, %if.end6.if.end14_crit_edge, %entry.if.end14_crit_edge
  %buffer.addr.5 = phi ptr [ %buffer, %entry.if.end14_crit_edge ], [ %buffer.addr.2, %if.end6.if.end14_crit_edge ], [ %buffer.addr.3, %xattr_list_one.exit60.thread ]
  %remaining_size.3 = phi i32 [ %size, %entry.if.end14_crit_edge ], [ %remaining_size.1, %if.end6.if.end14_crit_edge ], [ %sub.i57, %xattr_list_one.exit60.thread ]
  %lock = getelementptr inbounds %struct.simple_xattrs, ptr %xattrs, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %10 = ptrtoint ptr %xattrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %xattr.0102 = load ptr, ptr %xattrs, align 4
  %cmp.not103 = icmp eq ptr %xattr.0102, %xattrs
  br i1 %cmp.not103, label %if.end14.cond.false_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

if.end14.cond.false_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end14.for.body_crit_edge
  %xattr.0109 = phi ptr [ %xattr.0, %for.inc.for.body_crit_edge ], [ %xattr.0102, %if.end14.for.body_crit_edge ]
  %remaining_size.4106 = phi i32 [ %remaining_size.6, %for.inc.for.body_crit_edge ], [ %remaining_size.3, %if.end14.for.body_crit_edge ]
  %buffer.addr.6104 = phi ptr [ %buffer.addr.9, %for.inc.for.body_crit_edge ], [ %buffer.addr.5, %if.end14.for.body_crit_edge ]
  br i1 %call, label %for.body.if.end19_crit_edge, label %land.lhs.true

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct.simple_xattr, ptr %xattr.0109, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %call.i61 = tail call i32 @strncmp(ptr noundef %12, ptr noundef nonnull dereferenceable(9) @.str.42, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %for.body.if.end19_crit_edge
  %name20 = getelementptr inbounds %struct.simple_xattr, ptr %xattr.0109, i32 0, i32 1
  %13 = ptrtoint ptr %name20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name20, align 4
  %call.i63 = tail call i32 @strlen(ptr noundef %14) #16
  %add.i64 = add i32 %call.i63, 1
  %tobool.not.i65 = icmp eq ptr %buffer.addr.6104, null
  br i1 %tobool.not.i65, label %if.end19.xattr_list_one.exit73.thread_crit_edge, label %if.then.i67

if.end19.xattr_list_one.exit73.thread_crit_edge:  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %xattr_list_one.exit73.thread

if.then.i67:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining_size.4106, i32 %add.i64)
  %cmp.i66 = icmp ult i32 %remaining_size.4106, %add.i64
  br i1 %cmp.i66, label %for.end, label %if.end.i69

if.end.i69:                                       ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #12
  %15 = call ptr @memcpy(ptr %buffer.addr.6104, ptr %14, i32 %add.i64)
  %add.ptr.i68 = getelementptr i8, ptr %buffer.addr.6104, i32 %add.i64
  br label %xattr_list_one.exit73.thread

xattr_list_one.exit73.thread:                     ; preds = %if.end.i69, %if.end19.xattr_list_one.exit73.thread_crit_edge
  %buffer.addr.7 = phi ptr [ null, %if.end19.xattr_list_one.exit73.thread_crit_edge ], [ %add.ptr.i68, %if.end.i69 ]
  %sub.i70 = sub i32 %remaining_size.4106, %add.i64
  br label %for.inc

for.inc:                                          ; preds = %xattr_list_one.exit73.thread, %land.lhs.true.for.inc_crit_edge
  %buffer.addr.9 = phi ptr [ %buffer.addr.6104, %land.lhs.true.for.inc_crit_edge ], [ %buffer.addr.7, %xattr_list_one.exit73.thread ]
  %remaining_size.6 = phi i32 [ %remaining_size.4106, %land.lhs.true.for.inc_crit_edge ], [ %sub.i70, %xattr_list_one.exit73.thread ]
  %16 = ptrtoint ptr %xattr.0109 to i32
  call void @__asan_load4_noabort(i32 %16)
  %xattr.0 = load ptr, ptr %xattr.0109, align 4
  %cmp.not = icmp eq ptr %xattr.0, %xattrs
  br i1 %cmp.not, label %for.inc.cond.false_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cond.false_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

for.end:                                          ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

cond.false:                                       ; preds = %for.inc.cond.false_crit_edge, %if.end14.cond.false_crit_edge
  %remaining_size.4.lcssa = phi i32 [ %remaining_size.3, %if.end14.cond.false_crit_edge ], [ %remaining_size.6, %for.inc.cond.false_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %sub = sub i32 %size, %remaining_size.4.lcssa
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %for.end, %if.then.i54.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %cond.false ], [ -34, %for.end ], [ -34, %if.then.i.cleanup_crit_edge ], [ -34, %if.then.i54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @simple_xattr_list_add(ptr noundef %xattrs, ptr noundef %new_xattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.simple_xattrs, ptr %xattrs, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %0 = ptrtoint ptr %xattrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xattrs, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new_xattr, ptr noundef %xattrs, ptr noundef %1) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %new_xattr, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %new_xattr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %new_xattr, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %new_xattr, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %xattrs, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %xattrs to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %new_xattr, ptr %xattrs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_getsecurity(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @path_setxattr(ptr noundef %pathname, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags, i32 noundef %lookup_flags) unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #10
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !224
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !224
  %call.i19 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %pathname, i32 noundef %lookup_flags, ptr noundef nonnull %path, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not20, label %if.end.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %3 = or i32 %lookup_flags, 32
  br label %if.end

retry:                                            ; preds = %if.end8
  %call.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %pathname, i32 noundef %3, ptr noundef nonnull %path, ptr noundef null) #10
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %retry.if.end_crit_edge, label %retry.cleanup_crit_edge

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

retry.if.end_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %retry.if.end_crit_edge, %if.end.lr.ph
  %lookup_flags.addr.021 = phi i32 [ %lookup_flags, %if.end.lr.ph ], [ %3, %retry.if.end_crit_edge ]
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path, align 4
  %call1 = call i32 @mnt_want_write(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %mnt_userns.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !220
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call6 = call fastcc i32 @setxattr(ptr noundef %9, ptr noundef %11, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags)
  %12 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %path, align 4
  call void @mnt_drop_write(ptr noundef %13) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %error.0 = phi i32 [ %call1, %if.end.if.end8_crit_edge ], [ %call6, %if.then3 ]
  call void @path_put(ptr noundef nonnull %path) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %error.0)
  %cmp.i = icmp eq i32 %error.0, -116
  %and.i = and i32 %lookup_flags.addr.021, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %14 = and i1 %tobool.not.i, %cmp.i
  br i1 %14, label %retry, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %retry.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i19, %entry.cleanup_crit_edge ], [ %error.0, %if.end8.cleanup_crit_edge ], [ %call.i, %retry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setxattr(ptr noundef %mnt_userns, ptr noundef %d, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %kname = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %kname) #10
  %0 = call ptr @memset(ptr %kname, i32 255, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 4
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @strncpy_from_user(ptr noundef nonnull %kname, ptr noundef %name, i32 noundef 256) #10
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call, label %if.end3 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 256, label %if.end.cleanup_crit_edge57
  ]

if.end.cleanup_crit_edge57:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool7.not = icmp eq i32 %size, 0
  br i1 %tobool7.not, label %if.end6.if.end29_crit_edge, label %if.then8

if.end6.if.end29_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %size)
  %cmp9 = icmp ugt i32 %size, 65536
  br i1 %cmp9, label %if.then8.cleanup_crit_edge, label %if.end11

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.then8
  %call.i = call noalias ptr @kvmalloc_node(i32 noundef %size, i32 noundef 3264, i32 noundef -1) #15
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.then.i.i.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end11
  call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %size, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %2 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %value, i32 %size, i32 -1226833920) #17, !srcloc !231
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !232

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef %size) #10
  %3 = call i32 @llvm.read_register.i32(metadata !204) #10
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !233
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !234
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call.i, ptr noundef %value, i32 noundef %size) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #10, !srcloc !234
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end19, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !232

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i54 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %size, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %size, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %size, %res.0.i.i54
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i54)
  br label %out

if.end19:                                         ; preds = %if.end.i.i
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(24) %kname, ptr noundef nonnull dereferenceable(24) @.str.39, i32 24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp22 = icmp eq i32 %bcmp, 0
  br i1 %cmp22, label %if.end19.if.then27_crit_edge, label %lor.lhs.false23

if.end19.if.then27_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

lor.lhs.false23:                                  ; preds = %if.end19
  %bcmp49 = call i32 @bcmp(ptr noundef nonnull dereferenceable(25) %kname, ptr noundef nonnull dereferenceable(25) @.str.40, i32 25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp49)
  %cmp26 = icmp eq i32 %bcmp49, 0
  br i1 %cmp26, label %lor.lhs.false23.if.then27_crit_edge, label %lor.lhs.false23.if.end29_crit_edge

lor.lhs.false23.if.end29_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

lor.lhs.false23.if.then27_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false23.if.then27_crit_edge, %if.end19.if.then27_crit_edge
  call void @posix_acl_fix_xattr_from_user(ptr noundef %mnt_userns, ptr noundef nonnull %call.i, i32 noundef %size) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %lor.lhs.false23.if.end29_crit_edge, %if.end6.if.end29_crit_edge
  %kvalue.0 = phi ptr [ %call.i, %if.then27 ], [ %call.i, %lor.lhs.false23.if.end29_crit_edge ], [ null, %if.end6.if.end29_crit_edge ]
  %call31 = call i32 @vfs_setxattr(ptr noundef %mnt_userns, ptr noundef %d, ptr noundef nonnull %kname, ptr noundef %kvalue.0, i32 noundef %size, i32 noundef %flags)
  br label %out

out:                                              ; preds = %if.end29, %if.then11.i.i
  %error.1 = phi i32 [ %call31, %if.end29 ], [ -14, %if.then11.i.i ]
  %kvalue.1 = phi ptr [ %kvalue.0, %if.end29 ], [ %call.i, %if.then11.i.i ]
  call void @kvfree(ptr noundef %kvalue.1) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end11.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge57, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end3.cleanup_crit_edge ], [ -7, %if.then8.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge57 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %kname) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_acl_fix_xattr_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @path_getxattr(ptr noundef %pathname, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %lookup_flags) unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #10
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !224
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !224
  %call.i12 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %pathname, i32 noundef %lookup_flags, ptr noundef nonnull %path, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool.not13 = icmp eq i32 %call.i12, 0
  br i1 %tobool.not13, label %if.end.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %3 = or i32 %lookup_flags, 32
  br label %if.end

retry:                                            ; preds = %if.end
  %call.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %pathname, i32 noundef %3, ptr noundef nonnull %path, ptr noundef null) #10
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %retry.if.end_crit_edge, label %retry.cleanup_crit_edge

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

retry.if.end_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %retry.if.end_crit_edge, %if.end.lr.ph
  %lookup_flags.addr.014 = phi i32 [ %lookup_flags, %if.end.lr.ph ], [ %3, %retry.if.end_crit_edge ]
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %mnt_userns.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !220
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call2 = call fastcc i32 @getxattr(ptr noundef %7, ptr noundef %9, ptr noundef %name, ptr noundef %value, i32 noundef %size)
  call void @path_put(ptr noundef nonnull %path) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call2)
  %cmp.i = icmp eq i32 %call2, -116
  %and.i = and i32 %lookup_flags.addr.014, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %10 = and i1 %tobool.not.i, %cmp.i
  br i1 %10, label %retry, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %retry.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call.i, %retry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @getxattr(ptr noundef %mnt_userns, ptr noundef %d, ptr noundef %name, ptr noundef %value, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %kname = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %kname) #10
  %0 = call ptr @memset(ptr %kname, i32 255, i32 256)
  %call = call i32 @strncpy_from_user(ptr noundef nonnull %kname, ptr noundef %name, i32 noundef 256) #10
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %call, label %if.end [
    i32 0, label %entry.cleanup_crit_edge
    i32 256, label %entry.cleanup_crit_edge63
  ]

entry.cleanup_crit_edge63:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %if.end4.if.end13_crit_edge, label %if.then5

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then5:                                         ; preds = %if.end4
  %2 = call i32 @llvm.umin.i32(i32 %size, i32 65536)
  %call.i.i60 = call noalias ptr @kvmalloc_node(i32 noundef %2, i32 noundef 3520, i32 noundef -1) #15
  %tobool10.not = icmp eq ptr %call.i.i60, null
  br i1 %tobool10.not, label %if.then5.cleanup_crit_edge, label %if.then5.if.end13_crit_edge

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.then5.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %size.addr.0 = phi i32 [ %2, %if.then5.if.end13_crit_edge ], [ 0, %if.end4.if.end13_crit_edge ]
  %kvalue.0 = phi ptr [ %call.i.i60, %if.then5.if.end13_crit_edge ], [ null, %if.end4.if.end13_crit_edge ]
  %call15 = call i32 @vfs_getxattr(ptr noundef %mnt_userns, ptr noundef %d, ptr noundef nonnull %kname, ptr noundef %kvalue.0, i32 noundef %size.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp sgt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(24) %kname, ptr noundef nonnull dereferenceable(24) @.str.39, i32 24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp20 = icmp eq i32 %bcmp, 0
  br i1 %cmp20, label %if.then17.if.then25_crit_edge, label %lor.lhs.false21

if.then17.if.then25_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

lor.lhs.false21:                                  ; preds = %if.then17
  %bcmp58 = call i32 @bcmp(ptr noundef nonnull dereferenceable(25) %kname, ptr noundef nonnull dereferenceable(25) @.str.40, i32 25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp58)
  %cmp24 = icmp eq i32 %bcmp58, 0
  br i1 %cmp24, label %lor.lhs.false21.if.then25_crit_edge, label %lor.lhs.false21.if.end26_crit_edge

lor.lhs.false21.if.end26_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

lor.lhs.false21.if.then25_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false21.if.then25_crit_edge, %if.then17.if.then25_crit_edge
  call void @posix_acl_fix_xattr_to_user(ptr noundef %mnt_userns, ptr noundef %kvalue.0, i32 noundef %call15) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %lor.lhs.false21.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0)
  %tobool27.not = icmp eq i32 %size.addr.0, 0
  br i1 %tobool27.not, label %if.end26.if.end37_crit_edge, label %if.then.i.i.i

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then.i.i.i:                                    ; preds = %if.end26
  call void @__check_object_size(ptr noundef %kvalue.0, i32 noundef %call15, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.end37_crit_edge, label %if.end.i.i

if.then.i.i.i.if.end37_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %value, i32 %call15, i32 -1226833920) #17, !srcloc !236
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.if.end37_crit_edge

if.end.i.i.if.end37_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %kvalue.0, i32 noundef %call15) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %value, ptr noundef %kvalue.0, i32 noundef %call15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i, 0
  %phi.sel = select i1 %phi.cmp, i32 %call15, i32 -14
  br label %if.end37

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -34, i32 %call15)
  %cmp32 = icmp eq i32 %call15, -34
  br i1 %cmp32, label %land.lhs.true33, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true33:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %size.addr.0)
  %cmp34 = icmp ugt i32 %size.addr.0, 65535
  %spec.select59 = select i1 %cmp34, i32 -7, i32 -34
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true33, %if.else.if.end37_crit_edge, %if.then2.i.i, %if.end.i.i.if.end37_crit_edge, %if.then.i.i.i.if.end37_crit_edge, %if.end26.if.end37_crit_edge
  %error.1 = phi i32 [ %call15, %if.end26.if.end37_crit_edge ], [ %call15, %if.else.if.end37_crit_edge ], [ %spec.select59, %land.lhs.true33 ], [ -14, %if.then.i.i.i.if.end37_crit_edge ], [ %phi.sel, %if.then2.i.i ], [ -14, %if.end.i.i.if.end37_crit_edge ]
  call void @kvfree(ptr noundef %kvalue.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge63
  %retval.0 = phi i32 [ %error.1, %if.end37 ], [ %call, %if.end.cleanup_crit_edge ], [ -12, %if.then5.cleanup_crit_edge ], [ -34, %entry.cleanup_crit_edge ], [ -34, %entry.cleanup_crit_edge63 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %kname) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_acl_fix_xattr_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @listxattr(ptr noundef %d, ptr noundef %list, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.umin.i32(i32 %size, i32 65536)
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %0, i32 noundef 3264, i32 noundef -1) #15
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %size.addr.0 = phi i32 [ %0, %if.then.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ]
  %klist.0 = phi ptr [ %call.i, %if.then.if.end5_crit_edge ], [ null, %entry.if.end5_crit_edge ]
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %d, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i.i, align 8
  %call1.i = tail call i32 @security_inode_listxattr(ptr noundef %d) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.vfs_listxattr.exit_crit_edge

if.end5.vfs_listxattr.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %vfs_listxattr.exit

if.end.i:                                         ; preds = %if.end5
  %i_op.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %i_op.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_op.i, align 8
  %listxattr.i = getelementptr inbounds %struct.inode_operations, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %listxattr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %listxattr.i, align 4
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %i_opflags.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %i_opflags.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_opflags.i, align 2
  %9 = and i16 %8, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool3.not.i = icmp eq i16 %9, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i = tail call i32 %6(ptr noundef %d, ptr noundef %klist.0, i32 noundef %size.addr.0) #10
  br label %vfs_listxattr.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %call8.i = tail call i32 @security_inode_listsecurity(ptr noundef %2, ptr noundef %klist.0, i32 noundef %size.addr.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0)
  %tobool9.not.i = icmp eq i32 %size.addr.0, 0
  br i1 %tobool9.not.i, label %vfs_listxattr.exit.thread37, label %land.lhs.true10.i

land.lhs.true10.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %size.addr.0)
  %cmp.i = icmp ugt i32 %call8.i, %size.addr.0
  br i1 %cmp.i, label %land.lhs.true10.i.land.lhs.true15_crit_edge, label %land.lhs.true10.i.vfs_listxattr.exit_crit_edge

land.lhs.true10.i.vfs_listxattr.exit_crit_edge:   ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vfs_listxattr.exit

land.lhs.true10.i.land.lhs.true15_crit_edge:      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true15

vfs_listxattr.exit:                               ; preds = %land.lhs.true10.i.vfs_listxattr.exit_crit_edge, %if.then4.i, %if.end5.vfs_listxattr.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end5.vfs_listxattr.exit_crit_edge ], [ %call7.i, %if.then4.i ], [ %call8.i, %land.lhs.true10.i.vfs_listxattr.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp7 = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp7, label %if.then8, label %vfs_listxattr.exit.if.else_crit_edge

vfs_listxattr.exit.if.else_crit_edge:             ; preds = %vfs_listxattr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

vfs_listxattr.exit.thread37:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp739 = icmp sgt i32 %call8.i, 0
  br i1 %cmp739, label %vfs_listxattr.exit.thread37.if.end19_crit_edge, label %vfs_listxattr.exit.thread37.if.else_crit_edge

vfs_listxattr.exit.thread37.if.else_crit_edge:    ; preds = %vfs_listxattr.exit.thread37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

vfs_listxattr.exit.thread37.if.end19_crit_edge:   ; preds = %vfs_listxattr.exit.thread37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then8:                                         ; preds = %vfs_listxattr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0)
  %tobool9.not = icmp eq i32 %size.addr.0, 0
  br i1 %tobool9.not, label %if.then8.if.end19_crit_edge, label %if.then.i.i.i

if.then8.if.end19_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then.i.i.i:                                    ; preds = %if.then8
  tail call void @__check_object_size(ptr noundef %klist.0, i32 noundef %retval.0.i, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.55, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.end19_crit_edge, label %if.end.i.i

if.then.i.i.i.if.end19_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %list, i32 %retval.0.i, i32 -1226833920) #17, !srcloc !236
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.if.end19_crit_edge

if.end.i.i.if.end19_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %klist.0, i32 noundef %retval.0.i) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %list, ptr noundef %klist.0, i32 noundef %retval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i, 0
  %phi.sel = select i1 %phi.cmp, i32 %retval.0.i, i32 -14
  br label %if.end19

if.else:                                          ; preds = %vfs_listxattr.exit.thread37.if.else_crit_edge, %vfs_listxattr.exit.if.else_crit_edge
  %retval.0.i35 = phi i32 [ %retval.0.i, %vfs_listxattr.exit.if.else_crit_edge ], [ %call8.i, %vfs_listxattr.exit.thread37.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -34, i32 %retval.0.i35)
  %cmp14 = icmp eq i32 %retval.0.i35, -34
  br i1 %cmp14, label %if.else.land.lhs.true15_crit_edge, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.else.land.lhs.true15_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.else.land.lhs.true15_crit_edge, %land.lhs.true10.i.land.lhs.true15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %size.addr.0)
  %cmp16 = icmp ugt i32 %size.addr.0, 65535
  %spec.select32 = select i1 %cmp16, i32 -7, i32 -34
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true15, %if.else.if.end19_crit_edge, %if.then2.i.i, %if.end.i.i.if.end19_crit_edge, %if.then.i.i.i.if.end19_crit_edge, %if.then8.if.end19_crit_edge, %vfs_listxattr.exit.thread37.if.end19_crit_edge
  %error.0 = phi i32 [ %retval.0.i, %if.then8.if.end19_crit_edge ], [ %retval.0.i35, %if.else.if.end19_crit_edge ], [ %spec.select32, %land.lhs.true15 ], [ %call8.i, %vfs_listxattr.exit.thread37.if.end19_crit_edge ], [ -14, %if.then.i.i.i.if.end19_crit_edge ], [ %phi.sel, %if.then2.i.i ], [ -14, %if.end.i.i.if.end19_crit_edge ]
  tail call void @kvfree(ptr noundef %klist.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %if.end19 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @path_removexattr(ptr noundef %pathname, ptr noundef %name, i32 noundef %lookup_flags) unnamed_addr #0 align 64 {
entry:
  %kname.i = alloca [256 x i8], align 1
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #10
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !224
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !224
  %call.i20 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %pathname, i32 noundef %lookup_flags, ptr noundef nonnull %path, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not21, label %if.end.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %3 = or i32 %lookup_flags, 32
  br label %if.end

retry:                                            ; preds = %if.end8
  %call.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %pathname, i32 noundef %3, ptr noundef nonnull %path, ptr noundef null) #10
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %retry.if.end_crit_edge, label %retry.cleanup_crit_edge

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

retry.if.end_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %retry.if.end_crit_edge, %if.end.lr.ph
  %lookup_flags.addr.022 = phi i32 [ %lookup_flags, %if.end.lr.ph ], [ %3, %retry.if.end_crit_edge ]
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path, align 4
  %call1 = call i32 @mnt_want_write(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %6 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %mnt_userns.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !220
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %kname.i) #10
  %12 = call ptr @memset(ptr %kname.i, i32 255, i32 256)
  %call.i19 = call i32 @strncpy_from_user(ptr noundef nonnull %kname.i, ptr noundef %name, i32 noundef 256) #10
  %13 = zext i32 %call.i19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %call.i19, label %if.end.i [
    i32 0, label %if.then3.removexattr.exit_crit_edge
    i32 256, label %if.then3.removexattr.exit_crit_edge24
  ]

if.then3.removexattr.exit_crit_edge24:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %removexattr.exit

if.then3.removexattr.exit_crit_edge:              ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %removexattr.exit

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %cmp2.i = icmp slt i32 %call.i19, 0
  br i1 %cmp2.i, label %if.end.i.removexattr.exit_crit_edge, label %if.end4.i

if.end.i.removexattr.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %removexattr.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = call i32 @vfs_removexattr(ptr noundef %9, ptr noundef %11, ptr noundef nonnull %kname.i) #10
  br label %removexattr.exit

removexattr.exit:                                 ; preds = %if.end4.i, %if.end.i.removexattr.exit_crit_edge, %if.then3.removexattr.exit_crit_edge, %if.then3.removexattr.exit_crit_edge24
  %retval.0.i = phi i32 [ %call6.i, %if.end4.i ], [ %call.i19, %if.end.i.removexattr.exit_crit_edge ], [ -34, %if.then3.removexattr.exit_crit_edge ], [ -34, %if.then3.removexattr.exit_crit_edge24 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %kname.i) #10
  %14 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %path, align 4
  call void @mnt_drop_write(ptr noundef %15) #10
  br label %if.end8

if.end8:                                          ; preds = %removexattr.exit, %if.end.if.end8_crit_edge
  %error.0 = phi i32 [ %call1, %if.end.if.end8_crit_edge ], [ %retval.0.i, %removexattr.exit ]
  call void @path_put(ptr noundef nonnull %path) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %error.0)
  %cmp.i = icmp eq i32 %error.0, -116
  %and.i = and i32 %lookup_flags.addr.022, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %16 = and i1 %tobool.not.i, %cmp.i
  br i1 %16, label %retry, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %retry.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i20, %entry.cleanup_crit_edge ], [ %error.0, %if.end8.cleanup_crit_edge ], [ %call.i, %retry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(1) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !52, !53, !54, !55, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !68, !69, !70, !71, !72, !73, !74, !75, !76, !78, !79, !80, !81, !82, !83, !84, !85, !86, !88, !89, !90, !91, !92, !93, !94, !95, !96, !98, !99, !100, !101, !102, !103, !104, !105, !106, !108, !109, !110, !111, !112, !113, !114, !115, !116, !118, !119, !120, !121, !122, !123, !124, !125, !126, !128, !129, !130, !131, !132, !133, !134, !135, !136, !138, !139, !140, !141, !142, !143, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !173, !174, !176, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!llvm.named.register.sp = !{!204}
!llvm.module.flags = !{!205, !206, !207, !208, !209, !210, !211, !212}
!llvm.ident = !{!213}

!0 = !{ptr @__ksymtab_xattr_supported_namespace, !1, !"__ksymtab_xattr_supported_namespace", i1 false, i1 false}
!1 = !{!"../fs/xattr.c", i32 164, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xattr.c", i32 179, i32 11}
!4 = !{ptr @__ksymtab___vfs_setxattr, !5, !"__ksymtab___vfs_setxattr", i1 false, i1 false}
!5 = !{!"../fs/xattr.c", i32 183, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/xattr.c", i32 208, i32 29}
!8 = !{ptr @__ksymtab___vfs_setxattr_locked, !9, !"__ksymtab___vfs_setxattr_locked", i1 false, i1 false}
!9 = !{!"../fs/xattr.c", i32 281, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xattr.c", i32 292, i32 27}
!12 = !{ptr @__ksymtab_vfs_setxattr, !13, !"__ksymtab_vfs_setxattr", i1 false, i1 false}
!13 = !{!"../fs/xattr.c", i32 315, i32 1}
!14 = !{ptr @__ksymtab___vfs_getxattr, !15, !"__ksymtab___vfs_getxattr", i1 false, i1 false}
!15 = !{!"../fs/xattr.c", i32 401, i32 1}
!16 = !{ptr @__ksymtab_vfs_getxattr, !17, !"__ksymtab_vfs_getxattr", i1 false, i1 false}
!17 = !{!"../fs/xattr.c", i32 434, i32 1}
!18 = !{ptr @__ksymtab_vfs_listxattr, !19, !"__ksymtab_vfs_listxattr", i1 false, i1 false}
!19 = !{!"../fs/xattr.c", i32 454, i32 1}
!20 = !{ptr @__ksymtab___vfs_removexattr, !21, !"__ksymtab___vfs_removexattr", i1 false, i1 false}
!21 = !{!"../fs/xattr.c", i32 471, i32 1}
!22 = !{ptr @__ksymtab___vfs_removexattr_locked, !23, !"__ksymtab___vfs_removexattr_locked", i1 false, i1 false}
!23 = !{!"../fs/xattr.c", i32 513, i32 1}
!24 = !{ptr @__ksymtab_vfs_removexattr, !25, !"__ksymtab_vfs_removexattr", i1 false, i1 false}
!25 = !{!"../fs/xattr.c", i32 537, i32 1}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/xattr.c", i32 607, i32 1}
!28 = !{ptr @event_enter__setxattr, !27, !"event_enter__setxattr", i1 false, i1 false}
!29 = !{ptr @__event_enter__setxattr, !27, !"__event_enter__setxattr", i1 false, i1 false}
!30 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @event_exit__setxattr, !27, !"event_exit__setxattr", i1 false, i1 false}
!32 = !{ptr @__event_exit__setxattr, !27, !"__event_exit__setxattr", i1 false, i1 false}
!33 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__syscall_meta__setxattr, !27, !"__syscall_meta__setxattr", i1 false, i1 false}
!35 = !{ptr @__p_syscall_meta__setxattr, !27, !"__p_syscall_meta__setxattr", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/xattr.c", i32 614, i32 1}
!38 = !{ptr @event_enter__lsetxattr, !37, !"event_enter__lsetxattr", i1 false, i1 false}
!39 = !{ptr @__event_enter__lsetxattr, !37, !"__event_enter__lsetxattr", i1 false, i1 false}
!40 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @event_exit__lsetxattr, !37, !"event_exit__lsetxattr", i1 false, i1 false}
!42 = !{ptr @__event_exit__lsetxattr, !37, !"__event_exit__lsetxattr", i1 false, i1 false}
!43 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__syscall_meta__lsetxattr, !37, !"__syscall_meta__lsetxattr", i1 false, i1 false}
!45 = !{ptr @__p_syscall_meta__lsetxattr, !37, !"__p_syscall_meta__lsetxattr", i1 false, i1 false}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/xattr.c", i32 621, i32 1}
!48 = !{ptr @event_enter__fsetxattr, !47, !"event_enter__fsetxattr", i1 false, i1 false}
!49 = !{ptr @__event_enter__fsetxattr, !47, !"__event_enter__fsetxattr", i1 false, i1 false}
!50 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @event_exit__fsetxattr, !47, !"event_exit__fsetxattr", i1 false, i1 false}
!52 = !{ptr @__event_exit__fsetxattr, !47, !"__event_exit__fsetxattr", i1 false, i1 false}
!53 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @__syscall_meta__fsetxattr, !47, !"__syscall_meta__fsetxattr", i1 false, i1 false}
!55 = !{ptr @__p_syscall_meta__fsetxattr, !47, !"__p_syscall_meta__fsetxattr", i1 false, i1 false}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/xattr.c", i32 703, i32 1}
!58 = !{ptr @event_enter__getxattr, !57, !"event_enter__getxattr", i1 false, i1 false}
!59 = !{ptr @__event_enter__getxattr, !57, !"__event_enter__getxattr", i1 false, i1 false}
!60 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @event_exit__getxattr, !57, !"event_exit__getxattr", i1 false, i1 false}
!62 = !{ptr @__event_exit__getxattr, !57, !"__event_exit__getxattr", i1 false, i1 false}
!63 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @__syscall_meta__getxattr, !57, !"__syscall_meta__getxattr", i1 false, i1 false}
!65 = !{ptr @__p_syscall_meta__getxattr, !57, !"__p_syscall_meta__getxattr", i1 false, i1 false}
!66 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/xattr.c", i32 709, i32 1}
!68 = !{ptr @event_enter__lgetxattr, !67, !"event_enter__lgetxattr", i1 false, i1 false}
!69 = !{ptr @__event_enter__lgetxattr, !67, !"__event_enter__lgetxattr", i1 false, i1 false}
!70 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @event_exit__lgetxattr, !67, !"event_exit__lgetxattr", i1 false, i1 false}
!72 = !{ptr @__event_exit__lgetxattr, !67, !"__event_exit__lgetxattr", i1 false, i1 false}
!73 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @__syscall_meta__lgetxattr, !67, !"__syscall_meta__lgetxattr", i1 false, i1 false}
!75 = !{ptr @__p_syscall_meta__lgetxattr, !67, !"__p_syscall_meta__lgetxattr", i1 false, i1 false}
!76 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/xattr.c", i32 715, i32 1}
!78 = !{ptr @event_enter__fgetxattr, !77, !"event_enter__fgetxattr", i1 false, i1 false}
!79 = !{ptr @__event_enter__fgetxattr, !77, !"__event_enter__fgetxattr", i1 false, i1 false}
!80 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @event_exit__fgetxattr, !77, !"event_exit__fgetxattr", i1 false, i1 false}
!82 = !{ptr @__event_exit__fgetxattr, !77, !"__event_exit__fgetxattr", i1 false, i1 false}
!83 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__syscall_meta__fgetxattr, !77, !"__syscall_meta__fgetxattr", i1 false, i1 false}
!85 = !{ptr @__p_syscall_meta__fgetxattr, !77, !"__p_syscall_meta__fgetxattr", i1 false, i1 false}
!86 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/xattr.c", i32 780, i32 1}
!88 = !{ptr @event_enter__listxattr, !87, !"event_enter__listxattr", i1 false, i1 false}
!89 = !{ptr @__event_enter__listxattr, !87, !"__event_enter__listxattr", i1 false, i1 false}
!90 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @event_exit__listxattr, !87, !"event_exit__listxattr", i1 false, i1 false}
!92 = !{ptr @__event_exit__listxattr, !87, !"__event_exit__listxattr", i1 false, i1 false}
!93 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @__syscall_meta__listxattr, !87, !"__syscall_meta__listxattr", i1 false, i1 false}
!95 = !{ptr @__p_syscall_meta__listxattr, !87, !"__p_syscall_meta__listxattr", i1 false, i1 false}
!96 = !{ptr @.str.24, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/xattr.c", i32 786, i32 1}
!98 = !{ptr @event_enter__llistxattr, !97, !"event_enter__llistxattr", i1 false, i1 false}
!99 = !{ptr @__event_enter__llistxattr, !97, !"__event_enter__llistxattr", i1 false, i1 false}
!100 = !{ptr @.str.25, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @event_exit__llistxattr, !97, !"event_exit__llistxattr", i1 false, i1 false}
!102 = !{ptr @__event_exit__llistxattr, !97, !"__event_exit__llistxattr", i1 false, i1 false}
!103 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @__syscall_meta__llistxattr, !97, !"__syscall_meta__llistxattr", i1 false, i1 false}
!105 = !{ptr @__p_syscall_meta__llistxattr, !97, !"__p_syscall_meta__llistxattr", i1 false, i1 false}
!106 = !{ptr @.str.27, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/xattr.c", i32 792, i32 1}
!108 = !{ptr @event_enter__flistxattr, !107, !"event_enter__flistxattr", i1 false, i1 false}
!109 = !{ptr @__event_enter__flistxattr, !107, !"__event_enter__flistxattr", i1 false, i1 false}
!110 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @event_exit__flistxattr, !107, !"event_exit__flistxattr", i1 false, i1 false}
!112 = !{ptr @__event_exit__flistxattr, !107, !"__event_exit__flistxattr", i1 false, i1 false}
!113 = !{ptr @.str.29, !107, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @__syscall_meta__flistxattr, !107, !"__syscall_meta__flistxattr", i1 false, i1 false}
!115 = !{ptr @__p_syscall_meta__flistxattr, !107, !"__p_syscall_meta__flistxattr", i1 false, i1 false}
!116 = !{ptr @.str.30, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/xattr.c", i32 846, i32 1}
!118 = !{ptr @event_enter__removexattr, !117, !"event_enter__removexattr", i1 false, i1 false}
!119 = !{ptr @__event_enter__removexattr, !117, !"__event_enter__removexattr", i1 false, i1 false}
!120 = !{ptr @.str.31, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @event_exit__removexattr, !117, !"event_exit__removexattr", i1 false, i1 false}
!122 = !{ptr @__event_exit__removexattr, !117, !"__event_exit__removexattr", i1 false, i1 false}
!123 = !{ptr @.str.32, !117, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @__syscall_meta__removexattr, !117, !"__syscall_meta__removexattr", i1 false, i1 false}
!125 = !{ptr @__p_syscall_meta__removexattr, !117, !"__p_syscall_meta__removexattr", i1 false, i1 false}
!126 = !{ptr @.str.33, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/xattr.c", i32 852, i32 1}
!128 = !{ptr @event_enter__lremovexattr, !127, !"event_enter__lremovexattr", i1 false, i1 false}
!129 = !{ptr @__event_enter__lremovexattr, !127, !"__event_enter__lremovexattr", i1 false, i1 false}
!130 = !{ptr @.str.34, !127, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @event_exit__lremovexattr, !127, !"event_exit__lremovexattr", i1 false, i1 false}
!132 = !{ptr @__event_exit__lremovexattr, !127, !"__event_exit__lremovexattr", i1 false, i1 false}
!133 = !{ptr @.str.35, !127, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @__syscall_meta__lremovexattr, !127, !"__syscall_meta__lremovexattr", i1 false, i1 false}
!135 = !{ptr @__p_syscall_meta__lremovexattr, !127, !"__p_syscall_meta__lremovexattr", i1 false, i1 false}
!136 = !{ptr @.str.36, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/xattr.c", i32 858, i32 1}
!138 = !{ptr @event_enter__fremovexattr, !137, !"event_enter__fremovexattr", i1 false, i1 false}
!139 = !{ptr @__event_enter__fremovexattr, !137, !"__event_enter__fremovexattr", i1 false, i1 false}
!140 = !{ptr @.str.37, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @event_exit__fremovexattr, !137, !"event_exit__fremovexattr", i1 false, i1 false}
!142 = !{ptr @__event_exit__fremovexattr, !137, !"__event_exit__fremovexattr", i1 false, i1 false}
!143 = !{ptr @.str.38, !137, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @__syscall_meta__fremovexattr, !137, !"__syscall_meta__fremovexattr", i1 false, i1 false}
!145 = !{ptr @__p_syscall_meta__fremovexattr, !137, !"__p_syscall_meta__fremovexattr", i1 false, i1 false}
!146 = !{ptr @__ksymtab_generic_listxattr, !147, !"__ksymtab_generic_listxattr", i1 false, i1 false}
!147 = !{!"../fs/xattr.c", i32 912, i32 1}
!148 = !{ptr @__ksymtab_xattr_full_name, !149, !"__ksymtab_xattr_full_name", i1 false, i1 false}
!149 = !{!"../fs/xattr.c", i32 936, i32 1}
!150 = !{ptr @.str.39, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/xattr.c", i32 1095, i32 11}
!152 = !{ptr @.str.40, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/xattr.c", i32 1101, i32 11}
!154 = !{ptr @.str.41, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/xattr.c", i32 110, i32 21}
!156 = !{ptr @.str.42, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/xattr.c", i32 116, i32 21}
!158 = !{ptr @.str.43, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/xattr.c", i32 127, i32 21}
!160 = !{ptr @.str.44, !27, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.45, !27, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.46, !27, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.47, !27, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @types__setxattr, !27, !"types__setxattr", i1 false, i1 false}
!165 = !{ptr @.str.48, !27, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.49, !27, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.50, !27, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.51, !27, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.52, !27, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @args__setxattr, !27, !"args__setxattr", i1 false, i1 false}
!171 = distinct !{null, !172, !"__already_done", i1 false, i1 false}
!172 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!173 = !{ptr @.str.53, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.54, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!176 = !{ptr @.str.55, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!178 = !{ptr @types__lsetxattr, !37, !"types__lsetxattr", i1 false, i1 false}
!179 = !{ptr @args__lsetxattr, !37, !"args__lsetxattr", i1 false, i1 false}
!180 = !{ptr @types__fsetxattr, !47, !"types__fsetxattr", i1 false, i1 false}
!181 = !{ptr @.str.56, !47, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @args__fsetxattr, !47, !"args__fsetxattr", i1 false, i1 false}
!183 = !{ptr @.str.57, !57, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @types__getxattr, !57, !"types__getxattr", i1 false, i1 false}
!185 = !{ptr @args__getxattr, !57, !"args__getxattr", i1 false, i1 false}
!186 = !{ptr @types__lgetxattr, !67, !"types__lgetxattr", i1 false, i1 false}
!187 = !{ptr @args__lgetxattr, !67, !"args__lgetxattr", i1 false, i1 false}
!188 = !{ptr @types__fgetxattr, !77, !"types__fgetxattr", i1 false, i1 false}
!189 = !{ptr @args__fgetxattr, !77, !"args__fgetxattr", i1 false, i1 false}
!190 = !{ptr @.str.58, !87, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @types__listxattr, !87, !"types__listxattr", i1 false, i1 false}
!192 = !{ptr @.str.59, !87, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @args__listxattr, !87, !"args__listxattr", i1 false, i1 false}
!194 = !{ptr @types__llistxattr, !97, !"types__llistxattr", i1 false, i1 false}
!195 = !{ptr @args__llistxattr, !97, !"args__llistxattr", i1 false, i1 false}
!196 = !{ptr @types__flistxattr, !107, !"types__flistxattr", i1 false, i1 false}
!197 = !{ptr @args__flistxattr, !107, !"args__flistxattr", i1 false, i1 false}
!198 = !{ptr @types__removexattr, !117, !"types__removexattr", i1 false, i1 false}
!199 = !{ptr @args__removexattr, !117, !"args__removexattr", i1 false, i1 false}
!200 = !{ptr @types__lremovexattr, !127, !"types__lremovexattr", i1 false, i1 false}
!201 = !{ptr @args__lremovexattr, !127, !"args__lremovexattr", i1 false, i1 false}
!202 = !{ptr @types__fremovexattr, !137, !"types__fremovexattr", i1 false, i1 false}
!203 = !{ptr @args__fremovexattr, !137, !"args__fremovexattr", i1 false, i1 false}
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
!214 = !{!"branch_weights", i32 1, i32 2000}
!215 = !{i64 2152544933}
!216 = !{i64 2148306225}
!217 = !{!218}
!218 = distinct !{!218, !219, !"fdget: %agg.result"}
!219 = distinct !{!219, !"fdget"}
!220 = !{i64 2152429830}
!221 = !{!222}
!222 = distinct !{!222, !223, !"fdget: %agg.result"}
!223 = distinct !{!223, !"fdget"}
!224 = !{!"auto-init"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"fdget: %agg.result"}
!227 = distinct !{!227, !"fdget"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"fdget: %agg.result"}
!230 = distinct !{!230, !"fdget"}
!231 = !{i64 2152190849, i64 2152190874}
!232 = !{!"branch_weights", i32 2000, i32 1}
!233 = !{i64 4686404}
!234 = !{i64 4686601}
!235 = !{i64 2152171834}
!236 = !{i64 2152191530, i64 2152191555}
