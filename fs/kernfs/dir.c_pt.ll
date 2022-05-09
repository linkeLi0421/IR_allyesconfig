; ModuleID = '/llk/IR_all_yes/fs/kernfs/dir.c_pt.bc'
source_filename = "../fs/kernfs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+kernfs_path_from_node\22, \22a\22\09"
module asm "\09.weak\09__crc_kernfs_path_from_node\09\09\09\09"
module asm "\09.long\09__crc_kernfs_path_from_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernfs_path_from_node:\09\09\09\09\09"
module asm "\09.asciz \09\22kernfs_path_from_node\22\09\09\09\09\09"
module asm "__kstrtabns_kernfs_path_from_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kernfs_get\22, \22a\22\09"
module asm "\09.weak\09__crc_kernfs_get\09\09\09\09"
module asm "\09.long\09__crc_kernfs_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernfs_get:\09\09\09\09\09"
module asm "\09.asciz \09\22kernfs_get\22\09\09\09\09\09"
module asm "__kstrtabns_kernfs_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kernfs_put\22, \22a\22\09"
module asm "\09.weak\09__crc_kernfs_put\09\09\09\09"
module asm "\09.long\09__crc_kernfs_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernfs_put:\09\09\09\09\09"
module asm "\09.asciz \09\22kernfs_put\22\09\09\09\09\09"
module asm "__kstrtabns_kernfs_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kernfs_find_and_get_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_kernfs_find_and_get_ns\09\09\09\09"
module asm "\09.long\09__crc_kernfs_find_and_get_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernfs_find_and_get_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22kernfs_find_and_get_ns\22\09\09\09\09\09"
module asm "__kstrtabns_kernfs_find_and_get_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.atomic_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.0, ptr, i64, i16, i16, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.0 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.kernfs_root = type { ptr, i32, %struct.idr, i32, i32, ptr, %struct.list_head, %struct.wait_queue_head, %struct.rw_semaphore }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kernfs_iattrs = type { %struct.kuid_t, %struct.kgid_t, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.simple_xattrs, %struct.atomic_t, %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }
%struct.simple_xattr = type { %struct.list_head, ptr, i32, [0 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.72, %struct.list_head, %struct.list_head, %union.anon.73 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.70 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { %struct.spinlock, i32 }
%union.anon.72 = type { %struct.list_head }
%union.anon.73 = type { %struct.hlist_node }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.64 = type { i32 }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.69 = type { ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.kernfs_elem_dir = type { i32, %struct.rb_root, ptr, i32 }
%struct.kernfs_super_info = type { ptr, ptr, ptr, %struct.list_head }
%struct.kernfs_syscall_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.3, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }

@kernfs_rename_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_kernfs_path_from_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernfs_path_from_node = external dso_local constant [0 x i8], align 1
@__ksymtab_kernfs_path_from_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernfs_path_from_node to i32), ptr @__kstrtab_kernfs_path_from_node, ptr @__kstrtabns_kernfs_path_from_node }, section "___ksymtab_gpl+kernfs_path_from_node", align 4
@kernfs_pr_cont_buf = internal global { [4096 x i8], [1024 x i8] } zeroinitializer, align 32
@pr_cont_kernfs_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c%s\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pr_cont_kernfs_name\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/kernfs/dir.c\00", [16 x i8] zeroinitializer }, align 32
@pr_cont_kernfs_name._entry_ptr = internal global ptr @pr_cont_kernfs_name._entry, section ".printk_index", align 4
@pr_cont_kernfs_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c(error)\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pr_cont_kernfs_path\00", [44 x i8] zeroinitializer }, align 32
@pr_cont_kernfs_path._entry_ptr = internal global ptr @pr_cont_kernfs_path._entry, section ".printk_index", align 4
@pr_cont_kernfs_path._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\01c(name too long)\00", [46 x i8] zeroinitializer }, align 32
@pr_cont_kernfs_path._entry_ptr.7 = internal global ptr @pr_cont_kernfs_path._entry.5, section ".printk_index", align 4
@pr_cont_kernfs_path._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pr_cont_kernfs_path._entry_ptr.9 = internal global ptr @pr_cont_kernfs_path._entry.8, section ".printk_index", align 4
@__kstrtab_kernfs_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernfs_get = external dso_local constant [0 x i8], align 1
@__ksymtab_kernfs_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernfs_get to i32), ptr @__kstrtab_kernfs_get, ptr @__kstrtabns_kernfs_get }, section "___ksymtab_gpl+kernfs_get", align 4
@kernfs_put.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"kernfs_put: %s/%s: released with incorrect active_ref %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@kernfs_iattrs_cache = external dso_local local_unnamed_addr global ptr, align 4
@kernfs_idr_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@kernfs_node_cache = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_kernfs_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernfs_put = external dso_local constant [0 x i8], align 1
@__ksymtab_kernfs_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernfs_put to i32), ptr @__kstrtab_kernfs_put, ptr @__kstrtabns_kernfs_put }, section "___ksymtab_gpl+kernfs_put", align 4
@kernfs_sops = external dso_local constant %struct.super_operations, align 4
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014kernfs: ns %s in '%s' for '%s'\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"required\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_kernfs_find_and_get_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernfs_find_and_get_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_kernfs_find_and_get_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernfs_find_and_get_ns to i32), ptr @__kstrtab_kernfs_find_and_get_ns, ptr @__kstrtabns_kernfs_find_and_get_ns }, section "___ksymtab_gpl+kernfs_find_and_get_ns", align 4
@kernfs_create_root.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&root->kernfs_rwsem\00", [44 x i8] zeroinitializer }, align 32
@kernfs_create_root.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&root->deactivate_waitq\00", [40 x i8] zeroinitializer }, align 32
@kernfs_dops = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr @kernfs_dop_revalidate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@kernfs_dir_iops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @kernfs_iop_lookup, ptr null, ptr @kernfs_iop_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kernfs_iop_mkdir, ptr @kernfs_iop_rmdir, ptr null, ptr @kernfs_iop_rename, ptr @kernfs_iop_setattr, ptr @kernfs_iop_getattr, ptr @kernfs_iop_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@kernfs_activate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kernfs_activate.__already_done.18 = internal unnamed_addr global i1 false, section ".data.once", align 1
@kernfs_remove_self.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014kernfs: can not remove '%s', no directory\0A\00", [51 x i8] zeroinitializer }, align 32
@kernfs_dir_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kernfs_fop_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @kernfs_dir_fop_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kernfs_rename_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kernfs_idr_lock\00", [16 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__kernfs_remove.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 1, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dir\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__kernfs_remove\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernfs %s: removing\0A\00", [43 x i8] zeroinitializer }, align 32
@__kernfs_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kernfs_drain.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"kernfs_rename_lock\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"kernfs_pr_cont_buf\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 21, i32 13 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 235, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 256, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 261, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 265, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 523, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"kernfs_idr_lock\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 730, i32 6 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 918, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 947, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1555, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"kernfs_dir_fops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1755, i32 30 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 20, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 44, i32 23 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 46, i32 46 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 22, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 36, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 378, i32 2 }
@___asan_gen_.139 = private constant [19 x i8] c"../fs/kernfs/dir.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1340, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 3566, i32 25 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 3571, i32 25 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__ksymtab_kernfs_find_and_get_ns, ptr @__ksymtab_kernfs_get, ptr @__ksymtab_kernfs_path_from_node, ptr @__ksymtab_kernfs_put, ptr @pr_cont_kernfs_name._entry, ptr @pr_cont_kernfs_name._entry_ptr, ptr @pr_cont_kernfs_path._entry, ptr @pr_cont_kernfs_path._entry.5, ptr @pr_cont_kernfs_path._entry.8, ptr @pr_cont_kernfs_path._entry_ptr, ptr @pr_cont_kernfs_path._entry_ptr.7, ptr @pr_cont_kernfs_path._entry_ptr.9, ptr @kernfs_rename_lock, ptr @kernfs_pr_cont_buf, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.10, ptr @.str.11, ptr @kernfs_idr_lock, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @kernfs_create_root.__key, ptr @.str.15, ptr @kernfs_create_root.__key.16, ptr @.str.17, ptr @.str.19, ptr @kernfs_dir_fops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @xa_init_flags.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_rename_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_pr_cont_buf to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pr_cont_kernfs_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pr_cont_kernfs_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pr_cont_kernfs_path._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pr_cont_kernfs_path._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_idr_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_create_root.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_create_root.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_dir_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernfs_name(ptr noundef readonly %kn, ptr noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_rename_lock) #13
  %tobool.not.i = icmp eq ptr %kn, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @strlcpy(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %buflen) #13
  br label %kernfs_name_locked.exit

if.end.i:                                         ; preds = %entry
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 4
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ @.str.22, %if.end.i.cond.end.i_crit_edge ]
  %call2.i = tail call i32 @strlcpy(ptr noundef %buf, ptr noundef %cond.i, i32 noundef %buflen) #13
  br label %kernfs_name_locked.exit

kernfs_name_locked.exit:                          ; preds = %cond.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %cond.end.i ], [ %call.i, %if.then.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_rename_lock, i32 noundef %call2) #13
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernfs_path_from_node(ptr noundef %to, ptr noundef %from, ptr noundef %buf, i32 noundef %buflen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_rename_lock) #13
  %call5 = tail call fastcc i32 @kernfs_path_from_node_locked(ptr noundef %to, ptr noundef %from, ptr noundef %buf, i32 noundef %buflen)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_rename_lock, i32 noundef %call2) #13
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kernfs_path_from_node_locked(ptr noundef readonly %kn_to, ptr noundef readonly %kn_from, ptr noundef %buf, i32 noundef %buflen) unnamed_addr #0 align 64 {
entry:
  %parent_str = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_str) #13
  %0 = ptrtoint ptr %parent_str to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 791555584, ptr %parent_str, align 4
  %tobool.not = icmp eq ptr %kn_to, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @strlcpy(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %buflen) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %kn_from, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %kn_to, i32 0, i32 3
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %spec.select.i = select i1 %tobool.not.i, ptr %kn_to, ptr %2
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %3 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %root.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %kn_from.addr.0 = phi ptr [ %kn_from, %if.end.if.end5_crit_edge ], [ %6, %if.then2 ]
  %cmp = icmp eq ptr %kn_from.addr.0, %kn_to
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 @strlcpy(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %buflen) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %tobool9.not = icmp eq ptr %buf, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %parent.i.i = getelementptr inbounds %struct.kernfs_node, ptr %kn_from.addr.0, i32 0, i32 3
  %7 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %kn_from.addr.0, ptr %8
  %root.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i, i32 0, i32 8, i32 0, i32 2
  %9 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root.i.i, align 8
  %parent.i36.i = getelementptr inbounds %struct.kernfs_node, ptr %kn_to, i32 0, i32 3
  %11 = ptrtoint ptr %parent.i36.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i36.i, align 4
  %tobool.not.i37.i = icmp eq ptr %12, null
  %spec.select.i38.i = select i1 %tobool.not.i37.i, ptr %kn_to, ptr %12
  %root.i39.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i38.i, i32 0, i32 8, i32 0, i32 2
  %13 = ptrtoint ptr %root.i39.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %root.i39.i, align 8
  %cmp.not.i = icmp eq ptr %10, %14
  br i1 %cmp.not.i, label %if.end.i, label %if.end11.do.end_crit_edge

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end.i:                                         ; preds = %if.end11
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %10, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end.i
  %to.addr.0.i.i = phi ptr [ %kn_from.addr.0, %if.end.i ], [ %18, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %depth.0.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i40.i = getelementptr inbounds %struct.kernfs_node, ptr %to.addr.0.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %parent.i40.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i40.i, align 4
  %tobool.not.i41.i = icmp eq ptr %18, null
  %cmp.not.i.i = icmp eq ptr %to.addr.0.i.i, %16
  %or.cond.i.i = or i1 %cmp.not.i.i, %tobool.not.i41.i
  %inc.i.i = add i32 %depth.0.i.i, 1
  br i1 %or.cond.i.i, label %while.cond.i.i.while.cond.i49.i_crit_edge, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i

while.cond.i.i.while.cond.i49.i_crit_edge:        ; preds = %while.cond.i.i
  br label %while.cond.i49.i

while.cond.i49.i:                                 ; preds = %while.cond.i49.i.while.cond.i49.i_crit_edge, %while.cond.i.i.while.cond.i49.i_crit_edge
  %to.addr.0.i42.i = phi ptr [ %20, %while.cond.i49.i.while.cond.i49.i_crit_edge ], [ %kn_to, %while.cond.i.i.while.cond.i49.i_crit_edge ]
  %depth.0.i43.i = phi i32 [ %inc.i48.i, %while.cond.i49.i.while.cond.i49.i_crit_edge ], [ 0, %while.cond.i.i.while.cond.i49.i_crit_edge ]
  %parent.i44.i = getelementptr inbounds %struct.kernfs_node, ptr %to.addr.0.i42.i, i32 0, i32 3
  %19 = ptrtoint ptr %parent.i44.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i44.i, align 4
  %tobool.not.i45.i = icmp eq ptr %20, null
  %cmp.not.i46.i = icmp eq ptr %to.addr.0.i42.i, %16
  %or.cond.i47.i = or i1 %cmp.not.i46.i, %tobool.not.i45.i
  %inc.i48.i = add i32 %depth.0.i43.i, 1
  br i1 %or.cond.i47.i, label %while.cond.preheader.i, label %while.cond.i49.i.while.cond.i49.i_crit_edge

while.cond.i49.i.while.cond.i49.i_crit_edge:      ; preds = %while.cond.i49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i49.i

while.cond.preheader.i:                           ; preds = %while.cond.i49.i
  call void @__sanitizer_cov_trace_cmp4(i32 %depth.0.i.i, i32 %depth.0.i43.i)
  %cmp551.i = icmp ugt i32 %depth.0.i.i, %depth.0.i43.i
  br i1 %cmp551.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.while.cond6.preheader.i_crit_edge

while.cond.preheader.i.while.cond6.preheader.i_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond6.preheader.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond6.preheader.i:                          ; preds = %while.body.i.while.cond6.preheader.i_crit_edge, %while.cond.preheader.i.while.cond6.preheader.i_crit_edge
  %a.addr.0.lcssa.i = phi ptr [ %kn_from.addr.0, %while.cond.preheader.i.while.cond6.preheader.i_crit_edge ], [ %22, %while.body.i.while.cond6.preheader.i_crit_edge ]
  %da.0.lcssa.i = phi i32 [ %depth.0.i.i, %while.cond.preheader.i.while.cond6.preheader.i_crit_edge ], [ %depth.0.i43.i, %while.body.i.while.cond6.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %depth.0.i43.i, i32 %da.0.lcssa.i)
  %cmp755.i = icmp ugt i32 %depth.0.i43.i, %da.0.lcssa.i
  br i1 %cmp755.i, label %while.cond6.preheader.i.while.body8.i_crit_edge, label %while.cond6.preheader.i.while.cond12.preheader.i_crit_edge

while.cond6.preheader.i.while.cond12.preheader.i_crit_edge: ; preds = %while.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond12.preheader.i

while.cond6.preheader.i.while.body8.i_crit_edge:  ; preds = %while.cond6.preheader.i
  br label %while.body8.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %da.053.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %depth.0.i.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %a.addr.052.i = phi ptr [ %22, %while.body.i.while.body.i_crit_edge ], [ %kn_from.addr.0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %parent.i124 = getelementptr inbounds %struct.kernfs_node, ptr %a.addr.052.i, i32 0, i32 3
  %21 = ptrtoint ptr %parent.i124 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i124, align 4
  %dec.i = add i32 %da.053.i, -1
  %cmp5.i = icmp ugt i32 %dec.i, %depth.0.i43.i
  br i1 %cmp5.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.cond6.preheader.i_crit_edge

while.body.i.while.cond6.preheader.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond6.preheader.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.cond12.preheader.i:                         ; preds = %while.body8.i.while.cond12.preheader.i_crit_edge, %while.cond6.preheader.i.while.cond12.preheader.i_crit_edge
  %b.addr.0.lcssa.i = phi ptr [ %kn_to, %while.cond6.preheader.i.while.cond12.preheader.i_crit_edge ], [ %24, %while.body8.i.while.cond12.preheader.i_crit_edge ]
  %cmp13.not59.i = icmp eq ptr %b.addr.0.lcssa.i, %a.addr.0.lcssa.i
  br i1 %cmp13.not59.i, label %while.cond12.preheader.i.kernfs_common_ancestor.exit_crit_edge, label %while.cond12.preheader.i.while.body14.i_crit_edge

while.cond12.preheader.i.while.body14.i_crit_edge: ; preds = %while.cond12.preheader.i
  br label %while.body14.i

while.cond12.preheader.i.kernfs_common_ancestor.exit_crit_edge: ; preds = %while.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_common_ancestor.exit

while.body8.i:                                    ; preds = %while.body8.i.while.body8.i_crit_edge, %while.cond6.preheader.i.while.body8.i_crit_edge
  %db.057.i = phi i32 [ %dec10.i, %while.body8.i.while.body8.i_crit_edge ], [ %depth.0.i43.i, %while.cond6.preheader.i.while.body8.i_crit_edge ]
  %b.addr.056.i = phi ptr [ %24, %while.body8.i.while.body8.i_crit_edge ], [ %kn_to, %while.cond6.preheader.i.while.body8.i_crit_edge ]
  %parent9.i = getelementptr inbounds %struct.kernfs_node, ptr %b.addr.056.i, i32 0, i32 3
  %23 = ptrtoint ptr %parent9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent9.i, align 4
  %dec10.i = add i32 %db.057.i, -1
  %cmp7.i = icmp ugt i32 %dec10.i, %da.0.lcssa.i
  br i1 %cmp7.i, label %while.body8.i.while.body8.i_crit_edge, label %while.body8.i.while.cond12.preheader.i_crit_edge

while.body8.i.while.cond12.preheader.i_crit_edge: ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond12.preheader.i

while.body8.i.while.body8.i_crit_edge:            ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body8.i

while.body14.i:                                   ; preds = %while.body14.i.while.body14.i_crit_edge, %while.cond12.preheader.i.while.body14.i_crit_edge
  %b.addr.161.i = phi ptr [ %26, %while.body14.i.while.body14.i_crit_edge ], [ %b.addr.0.lcssa.i, %while.cond12.preheader.i.while.body14.i_crit_edge ]
  %a.addr.160.i = phi ptr [ %28, %while.body14.i.while.body14.i_crit_edge ], [ %a.addr.0.lcssa.i, %while.cond12.preheader.i.while.body14.i_crit_edge ]
  %parent15.i = getelementptr inbounds %struct.kernfs_node, ptr %b.addr.161.i, i32 0, i32 3
  %25 = ptrtoint ptr %parent15.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent15.i, align 4
  %parent16.i = getelementptr inbounds %struct.kernfs_node, ptr %a.addr.160.i, i32 0, i32 3
  %27 = ptrtoint ptr %parent16.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent16.i, align 4
  %cmp13.not.i = icmp eq ptr %26, %28
  br i1 %cmp13.not.i, label %while.body14.i.kernfs_common_ancestor.exit_crit_edge, label %while.body14.i.while.body14.i_crit_edge

while.body14.i.while.body14.i_crit_edge:          ; preds = %while.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body14.i

while.body14.i.kernfs_common_ancestor.exit_crit_edge: ; preds = %while.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_common_ancestor.exit

kernfs_common_ancestor.exit:                      ; preds = %while.body14.i.kernfs_common_ancestor.exit_crit_edge, %while.cond12.preheader.i.kernfs_common_ancestor.exit_crit_edge
  %retval.0.i = phi ptr [ %a.addr.0.lcssa.i, %while.cond12.preheader.i.kernfs_common_ancestor.exit_crit_edge ], [ %26, %while.body14.i.kernfs_common_ancestor.exit_crit_edge ]
  %tobool13.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool13.not, label %kernfs_common_ancestor.exit.do.end_crit_edge, label %kernfs_common_ancestor.exit.while.cond.i_crit_edge, !prof !96

kernfs_common_ancestor.exit.while.cond.i_crit_edge: ; preds = %kernfs_common_ancestor.exit
  br label %while.cond.i

kernfs_common_ancestor.exit.do.end_crit_edge:     ; preds = %kernfs_common_ancestor.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %kernfs_common_ancestor.exit.do.end_crit_edge, %if.end11.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 143, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %kernfs_common_ancestor.exit.while.cond.i_crit_edge
  %to.addr.0.i = phi ptr [ %30, %while.cond.i.while.cond.i_crit_edge ], [ %kn_to, %kernfs_common_ancestor.exit.while.cond.i_crit_edge ]
  %depth.0.i = phi i32 [ %inc.i, %while.cond.i.while.cond.i_crit_edge ], [ 0, %kernfs_common_ancestor.exit.while.cond.i_crit_edge ]
  %parent.i125 = getelementptr inbounds %struct.kernfs_node, ptr %to.addr.0.i, i32 0, i32 3
  %29 = ptrtoint ptr %parent.i125 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i125, align 4
  %tobool.not.i126 = icmp eq ptr %30, null
  %cmp.not.i127 = icmp eq ptr %to.addr.0.i, %retval.0.i
  %or.cond.i = or i1 %cmp.not.i127, %tobool.not.i126
  %inc.i = add i32 %depth.0.i, 1
  br i1 %or.cond.i, label %while.cond.i.while.cond.i135_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.cond.i.while.cond.i135_crit_edge:           ; preds = %while.cond.i
  br label %while.cond.i135

while.cond.i135:                                  ; preds = %while.cond.i135.while.cond.i135_crit_edge, %while.cond.i.while.cond.i135_crit_edge
  %to.addr.0.i128 = phi ptr [ %32, %while.cond.i135.while.cond.i135_crit_edge ], [ %kn_from.addr.0, %while.cond.i.while.cond.i135_crit_edge ]
  %depth.0.i129 = phi i32 [ %inc.i134, %while.cond.i135.while.cond.i135_crit_edge ], [ 0, %while.cond.i.while.cond.i135_crit_edge ]
  %parent.i130 = getelementptr inbounds %struct.kernfs_node, ptr %to.addr.0.i128, i32 0, i32 3
  %31 = ptrtoint ptr %parent.i130 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i130, align 4
  %tobool.not.i131 = icmp eq ptr %32, null
  %cmp.not.i132 = icmp eq ptr %to.addr.0.i128, %retval.0.i
  %or.cond.i133 = or i1 %cmp.not.i132, %tobool.not.i131
  %inc.i134 = add i32 %depth.0.i129, 1
  br i1 %or.cond.i133, label %kernfs_depth.exit136, label %while.cond.i135.while.cond.i135_crit_edge

while.cond.i135.while.cond.i135_crit_edge:        ; preds = %while.cond.i135
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i135

kernfs_depth.exit136:                             ; preds = %while.cond.i135
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth.0.i129)
  %cmp41141.not = icmp eq i32 %depth.0.i129, 0
  br i1 %cmp41141.not, label %kernfs_depth.exit136.for.cond45.preheader_crit_edge, label %kernfs_depth.exit136.for.body_crit_edge

kernfs_depth.exit136.for.body_crit_edge:          ; preds = %kernfs_depth.exit136
  br label %for.body

kernfs_depth.exit136.for.cond45.preheader_crit_edge: ; preds = %kernfs_depth.exit136
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.body.for.cond45.preheader_crit_edge, %kernfs_depth.exit136.for.cond45.preheader_crit_edge
  %len.0.lcssa = phi i32 [ 0, %kernfs_depth.exit136.for.cond45.preheader_crit_edge ], [ %add, %for.body.for.cond45.preheader_crit_edge ]
  %i.1148 = add i32 %depth.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1148)
  %cmp46149 = icmp sgt i32 %i.1148, -1
  br i1 %cmp46149, label %for.cond45.preheader.for.cond48.preheader_crit_edge, label %for.cond45.preheader.cleanup_crit_edge

for.cond45.preheader.cleanup_crit_edge:           ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond45.preheader.for.cond48.preheader_crit_edge: ; preds = %for.cond45.preheader
  br label %for.cond48.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %kernfs_depth.exit136.for.body_crit_edge
  %i.0143 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %kernfs_depth.exit136.for.body_crit_edge ]
  %len.0142 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %kernfs_depth.exit136.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.0142
  %34 = call i32 @llvm.usub.sat.i32(i32 %buflen, i32 %len.0142)
  %call43 = call i32 @strlcpy(ptr noundef %add.ptr, ptr noundef nonnull %parent_str, i32 noundef %34) #13
  %add = add i32 %call43, %len.0142
  %inc = add nuw i32 %i.0143, 1
  %exitcond.not = icmp eq i32 %inc, %depth.0.i129
  br i1 %exitcond.not, label %for.body.for.cond45.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.cond45.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond45.preheader

for.cond48.preheader:                             ; preds = %for.end53.for.cond48.preheader_crit_edge, %for.cond45.preheader.for.cond48.preheader_crit_edge
  %i.1151 = phi i32 [ %i.1, %for.end53.for.cond48.preheader_crit_edge ], [ %i.1148, %for.cond45.preheader.for.cond48.preheader_crit_edge ]
  %len.1150 = phi i32 [ %add71, %for.end53.for.cond48.preheader_crit_edge ], [ %len.0.lcssa, %for.cond45.preheader.for.cond48.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1151)
  %cmp49144.not = icmp eq i32 %i.1151, 0
  br i1 %cmp49144.not, label %for.cond48.preheader.for.end53_crit_edge, label %for.cond48.preheader.for.body50_crit_edge

for.cond48.preheader.for.body50_crit_edge:        ; preds = %for.cond48.preheader
  br label %for.body50

for.cond48.preheader.for.end53_crit_edge:         ; preds = %for.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end53

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.cond48.preheader.for.body50_crit_edge
  %j.0146 = phi i32 [ %inc52, %for.body50.for.body50_crit_edge ], [ 0, %for.cond48.preheader.for.body50_crit_edge ]
  %kn.0145 = phi ptr [ %36, %for.body50.for.body50_crit_edge ], [ %kn_to, %for.cond48.preheader.for.body50_crit_edge ]
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %kn.0145, i32 0, i32 3
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent, align 4
  %inc52 = add nuw nsw i32 %j.0146, 1
  %exitcond156.not = icmp eq i32 %inc52, %i.1151
  br i1 %exitcond156.not, label %for.body50.for.end53_crit_edge, label %for.body50.for.body50_crit_edge

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body50

for.body50.for.end53_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end53

for.end53:                                        ; preds = %for.body50.for.end53_crit_edge, %for.cond48.preheader.for.end53_crit_edge
  %kn.0.lcssa = phi ptr [ %kn_to, %for.cond48.preheader.for.end53_crit_edge ], [ %36, %for.body50.for.end53_crit_edge ]
  %add.ptr54 = getelementptr i8, ptr %buf, i32 %len.1150
  %37 = call i32 @llvm.usub.sat.i32(i32 %buflen, i32 %len.1150)
  %call61 = call i32 @strlcpy(ptr noundef %add.ptr54, ptr noundef nonnull @.str.22, i32 noundef %37) #13
  %add62 = add i32 %call61, %len.1150
  %add.ptr63 = getelementptr i8, ptr %buf, i32 %add62
  %name = getelementptr inbounds %struct.kernfs_node, ptr %kn.0.lcssa, i32 0, i32 4
  %38 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name, align 8
  %40 = call i32 @llvm.usub.sat.i32(i32 %buflen, i32 %add62)
  %call70 = call i32 @strlcpy(ptr noundef %add.ptr63, ptr noundef %39, i32 noundef %40) #13
  %add71 = add i32 %call70, %add62
  %i.1 = add i32 %i.1151, -1
  %cmp46 = icmp sgt i32 %i.1, -1
  br i1 %cmp46, label %for.end53.for.cond48.preheader_crit_edge, label %for.end53.cleanup_crit_edge

for.end53.cleanup_crit_edge:                      ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end53.for.cond48.preheader_crit_edge:         ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond48.preheader

cleanup:                                          ; preds = %for.end53.cleanup_crit_edge, %for.cond45.preheader.cleanup_crit_edge, %do.end, %if.end8.cleanup_crit_edge, %if.then6, %if.then
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ -22, %do.end ], [ %call, %if.then ], [ -22, %if.end8.cleanup_crit_edge ], [ %len.0.lcssa, %for.cond45.preheader.cleanup_crit_edge ], [ %add71, %for.end53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_str) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pr_cont_kernfs_name(ptr noundef readonly %kn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_rename_lock) #13
  %tobool.not.i = icmp eq ptr %kn, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @strlcpy(ptr noundef nonnull @kernfs_pr_cont_buf, ptr noundef nonnull @.str.21, i32 noundef 4096) #13
  br label %kernfs_name_locked.exit

if.end.i:                                         ; preds = %entry
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 4
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ @.str.22, %if.end.i.cond.end.i_crit_edge ]
  %call2.i = tail call i32 @strlcpy(ptr noundef nonnull @kernfs_pr_cont_buf, ptr noundef %cond.i, i32 noundef 4096) #13
  br label %kernfs_name_locked.exit

kernfs_name_locked.exit:                          ; preds = %cond.end.i, %if.then.i
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @kernfs_pr_cont_buf) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_rename_lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pr_cont_kernfs_path(ptr noundef %kn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_rename_lock) #13
  %call5 = tail call fastcc i32 @kernfs_path_from_node_locked(ptr noundef %kn, ptr noundef null, ptr noundef nonnull @kernfs_pr_cont_buf, i32 noundef 4096)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #16
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call5)
  %cmp13 = icmp ugt i32 %call5, 4095
  br i1 %cmp13, label %do.end18, label %do.end24

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  br label %out

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @kernfs_pr_cont_buf) #16
  br label %out

out:                                              ; preds = %do.end24, %do.end18, %do.end10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_rename_lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kernfs_get_parent(ptr nocapture noundef readonly %kn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_rename_lock) #13
  %parent5 = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %0 = ptrtoint ptr %parent5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent5, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.kernfs_get.exit_crit_edge, label %if.then.i

entry.kernfs_get.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_get.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %1, i32 noundef 4) #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !96

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #13, !srcloc !97
  br label %kernfs_get.exit

kernfs_get.exit:                                  ; preds = %if.end.i, %entry.kernfs_get.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_rename_lock, i32 noundef %call2) #13
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernfs_get(ptr noundef %kn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %kn, null
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %kn, i32 noundef 4) #13
  %0 = ptrtoint ptr %kn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %do.end, label %if.then.if.end_crit_edge, !prof !96

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kn, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %kn, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %kn, ptr nonnull %kn, i32 1, ptr nonnull elementtype(i32) %kn) #13, !srcloc !97
  br label %if.end24

if.end24:                                         ; preds = %if.end, %entry.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kernfs_get_active(ptr noundef %kn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %kn, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !96

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %active = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #13
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %active, align 4
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, %if.end
  %c.0.i.i = phi i32 [ %1, %if.end ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i)
  %cmp.i.i = icmp slt i32 %c.0.i.i, 0
  br i1 %cmp.i.i, label %do.body1.i.i.return_crit_edge, label %do.cond3.i.i, !prof !96

do.body1.i.i.return_crit_edge:                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.cond3.i.i:                                     ; preds = %do.body1.i.i
  %add.i.i = add nuw i32 %c.0.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !98
  tail call void @llvm.prefetch.p0(ptr %active, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond3.i.i
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %active, ptr %active, i32 %c.0.i.i, i32 %add.i.i, ptr elementtype(i32) %active) #13, !srcloc !99
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !100
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %c.0.i.i
  br i1 %cmp.not.i.i.i, label %if.end5, label %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, !prof !101

arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i.i

if.end5:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 11
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags.i, align 8
  %5 = and i16 %4, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not = icmp eq i16 %5, 0
  br i1 %tobool.i.not, label %if.end5.return_crit_edge, label %if.then7

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 2
  %6 = tail call ptr @llvm.returnaddress(i32 0)
  %7 = ptrtoint ptr %6 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %7) #13
  br label %return

return:                                           ; preds = %if.then7, %if.end5.return_crit_edge, %do.body1.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %kn, %if.then7 ], [ %kn, %if.end5.return_crit_edge ], [ null, %do.body1.i.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernfs_put_active(ptr noundef %kn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %kn, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !96

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 11
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i, align 8
  %2 = and i16 %1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not = icmp eq i16 %2, 0
  br i1 %tobool.i.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 2
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef %4) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %active = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %active, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active, ptr %active, i32 1, ptr elementtype(i32) %active) #13, !srcloc !103
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %asmresult.i.i.i.i)
  %cmp.not = icmp eq i32 %asmresult.i.i.i.i, -2147483647
  br i1 %cmp.not, label %if.end14, label %if.end5.cleanup_crit_edge, !prof !96

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select.i = select i1 %tobool.not.i, ptr %kn, ptr %7
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %8 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root.i, align 8
  %deactivate_waitq = getelementptr inbounds %struct.kernfs_root, ptr %9, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %deactivate_waitq, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernfs_put(ptr noundef %kn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %kn, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kn, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr nonnull %kn, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %kn, ptr nonnull %kn, i32 1, ptr nonnull elementtype(i32) %kn) #13, !srcloc !103
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %spec.select.i = select i1 %tobool.not.i, ptr %kn, ptr %2
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %3 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %root.i, align 8
  %ino_idr = getelementptr inbounds %struct.kernfs_root, ptr %4, i32 0, i32 2
  br label %repeat

repeat:                                           ; preds = %if.then58.repeat_crit_edge, %if.end
  %kn.addr.0 = phi ptr [ %kn, %if.end ], [ %6, %if.then58.repeat_crit_edge ]
  %parent2 = getelementptr inbounds %struct.kernfs_node, ptr %kn.addr.0, i32 0, i32 3
  %5 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent2, align 4
  %active = getelementptr inbounds %struct.kernfs_node, ptr %kn.addr.0, i32 0, i32 1
  %call.i.i90 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #13
  %7 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %8)
  %cmp.not = icmp eq i32 %8, -2147483647
  br i1 %cmp.not, label %repeat.if.end37_crit_edge, label %land.rhs

repeat.if.end37_crit_edge:                        ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

land.rhs:                                         ; preds = %repeat
  %.b89 = load i1, ptr @kernfs_put.__already_done, align 1
  br i1 %.b89, label %land.rhs.if.end37_crit_edge, label %if.then11, !prof !101

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then11:                                        ; preds = %land.rhs
  store i1 true, ptr @kernfs_put.__already_done, align 1
  %tobool21.not = icmp eq ptr %6, null
  br i1 %tobool21.not, label %if.then11.cond.end_crit_edge, label %cond.true

if.then11.cond.end_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.kernfs_node, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then11.cond.end_crit_edge
  %cond = phi ptr [ %10, %cond.true ], [ @.str.11, %if.then11.cond.end_crit_edge ]
  %name22 = getelementptr inbounds %struct.kernfs_node, ptr %kn.addr.0, i32 0, i32 4
  %11 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name22, align 8
  %call.i.i91 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #13
  %13 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %active, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 525, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %cond, ptr noundef %12, i32 noundef %14) #13
  br label %if.end37

if.end37:                                         ; preds = %cond.end, %land.rhs.if.end37_crit_edge, %repeat.if.end37_crit_edge
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %kn.addr.0, i32 0, i32 11
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags.i, align 8
  %17 = and i16 %16, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %17)
  %cmp46 = icmp eq i16 %17, 4
  br i1 %cmp46, label %if.then47, label %if.end37.if.end48_crit_edge

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then47:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %18 = getelementptr inbounds %struct.kernfs_node, ptr %kn.addr.0, i32 0, i32 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void @kernfs_put(ptr noundef %20)
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end37.if.end48_crit_edge
  %name49 = getelementptr inbounds %struct.kernfs_node, ptr %kn.addr.0, i32 0, i32 4
  %21 = ptrtoint ptr %name49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name49, align 8
  tail call void @kfree_const(ptr noundef %22) #13
  %iattr = getelementptr inbounds %struct.kernfs_node, ptr %kn.addr.0, i32 0, i32 13
  %23 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iattr, align 4
  %tobool50.not = icmp eq ptr %24, null
  br i1 %tobool50.not, label %if.end48.if.end54_crit_edge, label %if.then51

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then51:                                        ; preds = %if.end48
  %xattrs = getelementptr inbounds %struct.kernfs_iattrs, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %xattrs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xattrs, align 4
  %cmp.not17.i = icmp eq ptr %26, %xattrs
  br i1 %cmp.not17.i, label %if.then51.simple_xattrs_free.exit_crit_edge, label %if.then51.for.body.i_crit_edge

if.then51.for.body.i_crit_edge:                   ; preds = %if.then51
  br label %for.body.i

if.then51.simple_xattrs_free.exit_crit_edge:      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  br label %simple_xattrs_free.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then51.for.body.i_crit_edge
  %xattr.018.i = phi ptr [ %node.0.i, %for.body.i.for.body.i_crit_edge ], [ %26, %if.then51.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %xattr.018.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %node.0.i = load ptr, ptr %xattr.018.i, align 4
  %name.i = getelementptr inbounds %struct.simple_xattr, ptr %xattr.018.i, i32 0, i32 1
  %28 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.i, align 4
  tail call void @kfree(ptr noundef %29) #13
  tail call void @kvfree(ptr noundef %xattr.018.i) #13
  %cmp.not.i = icmp eq ptr %node.0.i, %xattrs
  br i1 %cmp.not.i, label %for.body.i.simple_xattrs_free.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.simple_xattrs_free.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %simple_xattrs_free.exit

simple_xattrs_free.exit:                          ; preds = %for.body.i.simple_xattrs_free.exit_crit_edge, %if.then51.simple_xattrs_free.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernfs_iattrs_cache to i32))
  %30 = load ptr, ptr @kernfs_iattrs_cache, align 4
  %31 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iattr, align 4
  tail call void @kmem_cache_free(ptr noundef %30, ptr noundef %32) #13
  br label %if.end54

if.end54:                                         ; preds = %simple_xattrs_free.exit, %if.end48.if.end54_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @kernfs_idr_lock) #13
  %id.i = getelementptr inbounds %struct.kernfs_node, ptr %kn.addr.0, i32 0, i32 10
  %33 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %id.i, align 8
  %conv.i.i = trunc i64 %34 to i32
  %call56 = tail call ptr @idr_remove(ptr noundef %ino_idr, i32 noundef %conv.i.i) #13
  tail call void @_raw_spin_unlock(ptr noundef nonnull @kernfs_idr_lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernfs_node_cache to i32))
  %35 = load ptr, ptr @kernfs_node_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %35, ptr noundef nonnull %kn.addr.0) #13
  %tobool57.not = icmp eq ptr %6, null
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.end54
  %call.i.i92 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %6, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr nonnull %6, i32 1, i32 3, i32 1) #13
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #13, !srcloc !103
  %asmresult.i.i.i.i.i93 = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !104
  %cmp.i.i94 = icmp eq i32 %asmresult.i.i.i.i.i93, 0
  br i1 %cmp.i.i94, label %if.then58.repeat_crit_edge, label %if.then58.cleanup_crit_edge

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then58.repeat_crit_edge:                       ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %repeat

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @idr_destroy(ptr noundef %ino_idr) #13
  tail call void @kfree(ptr noundef %4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then58.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @kernfs_node_from_dentry(ptr nocapture noundef readonly %dentry) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_op, align 4
  %cmp = icmp eq ptr %3, @kernfs_sops
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %entry
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %5, null
  br i1 %cmp.i.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %i_private.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_private.i, align 4
  br label %return

return:                                           ; preds = %if.end.i, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %7, %if.end.i ], [ null, %if.then.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kernfs_new_node(ptr noundef %parent, ptr noundef %name, i16 noundef zeroext %mode, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %parent, i32 0, i32 3
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr %parent, ptr %1
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i, align 8
  %call4 = tail call fastcc ptr @__kernfs_new_node(ptr noundef %3, ptr noundef %parent, ptr noundef %name, i16 noundef zeroext %mode, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce, i32 noundef %flags)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %tobool.not.i12 = icmp eq ptr %parent, null
  br i1 %tobool.not.i12, label %if.then.kernfs_get.exit_crit_edge, label %if.then.i

if.then.kernfs_get.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_get.exit

if.then.i:                                        ; preds = %if.then
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %parent, i32 noundef 4) #13
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !96

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %parent, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %parent, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %parent, ptr nonnull %parent, i32 1, ptr nonnull elementtype(i32) %parent) #13, !srcloc !97
  br label %kernfs_get.exit

kernfs_get.exit:                                  ; preds = %if.end.i, %if.then.kernfs_get.exit_crit_edge
  %parent5 = getelementptr inbounds %struct.kernfs_node, ptr %call4, i32 0, i32 3
  %7 = ptrtoint ptr %parent5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %parent, ptr %parent5, align 4
  br label %if.end

if.end:                                           ; preds = %kernfs_get.exit, %entry.if.end_crit_edge
  ret ptr %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__kernfs_new_node(ptr noundef %root, ptr noundef %parent, ptr noundef %name, i16 noundef zeroext %mode, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %iattr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %uid.coerce.fca.0.extract = extractvalue [1 x i32] %uid.coerce, 0
  %gid.coerce.fca.0.extract = extractvalue [1 x i32] %gid.coerce, 0
  %call = tail call ptr @kstrdup_const(ptr noundef %name, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup47_crit_edge, label %if.end

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup47

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernfs_node_cache to i32))
  %0 = load ptr, ptr @kernfs_node_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #13
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.err_out1_crit_edge, label %if.end5

if.end.err_out1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out1

if.end5:                                          ; preds = %if.end
  tail call void @idr_preload(i32 noundef 3264) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @kernfs_idr_lock) #13
  %ino_idr = getelementptr inbounds %struct.kernfs_root, ptr %root, i32 0, i32 2
  %call6 = tail call i32 @idr_alloc_cyclic(ptr noundef %ino_idr, ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 0, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp = icmp sgt i32 %call6, -1
  br i1 %cmp, label %land.lhs.true, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %last_id_lowbits = getelementptr inbounds %struct.kernfs_root, ptr %root, i32 0, i32 3
  %1 = ptrtoint ptr %last_id_lowbits to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_id_lowbits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %2)
  %cmp7 = icmp ult i32 %call6, %2
  br i1 %cmp7, label %if.then8, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %id_highbits9 = getelementptr inbounds %struct.kernfs_root, ptr %root, i32 0, i32 4
  %3 = ptrtoint ptr %id_highbits9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id_highbits9, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %id_highbits9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  %id_highbits11 = getelementptr inbounds %struct.kernfs_root, ptr %root, i32 0, i32 4
  %5 = ptrtoint ptr %id_highbits11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id_highbits11, align 4
  %last_id_lowbits12 = getelementptr inbounds %struct.kernfs_root, ptr %root, i32 0, i32 3
  %7 = ptrtoint ptr %last_id_lowbits12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call6, ptr %last_id_lowbits12, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @kernfs_idr_lock) #13
  %8 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, ptrtoint (ptr @radix_tree_preloads to i32)
  %14 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %14) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !105
  %15 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp13 = icmp slt i32 %call6, 0
  br i1 %cmp13, label %if.end10.err_out2_crit_edge, label %if.end15

if.end10.err_out2_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out2

if.end15:                                         ; preds = %if.end10
  %conv = zext i32 %6 to i64
  %shl = shl nuw i64 %conv, 32
  %conv1684 = zext i32 %call6 to i64
  %or = or i64 %shl, %conv1684
  %id = getelementptr inbounds %struct.kernfs_node, ptr %call.i, i32 0, i32 10
  %19 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %or, ptr %id, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #13
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %call.i, align 8
  %active = getelementptr inbounds %struct.kernfs_node, ptr %call.i, i32 0, i32 1
  %call.i.i82 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #13
  %21 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 -2147483647, ptr %active, align 4
  %rb = getelementptr inbounds %struct.kernfs_node, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %rb to i32
  %23 = ptrtoint ptr %rb to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rb, align 4
  %name18 = getelementptr inbounds %struct.kernfs_node, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %name18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %name18, align 8
  %mode19 = getelementptr inbounds %struct.kernfs_node, ptr %call.i, i32 0, i32 12
  %25 = ptrtoint ptr %mode19 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %mode, ptr %mode19, align 2
  %conv20 = trunc i32 %flags to i16
  %flags21 = getelementptr inbounds %struct.kernfs_node, ptr %call.i, i32 0, i32 11
  %26 = ptrtoint ptr %flags21 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv20, ptr %flags21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uid.coerce.fca.0.extract)
  %cmp.i = icmp eq i32 %uid.coerce.fca.0.extract, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gid.coerce.fca.0.extract)
  %cmp.i83 = icmp eq i32 %gid.coerce.fca.0.extract, 0
  %or.cond = select i1 %cmp.i, i1 %cmp.i83, i1 false
  br i1 %or.cond, label %if.end15.if.end36_crit_edge, label %if.then30

if.end15.if.end36_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then30:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %iattr) #13
  %27 = call ptr @memset(ptr %iattr, i32 0, i32 80)
  %28 = ptrtoint ptr %iattr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 6, ptr %iattr, align 8
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %29 = ptrtoint ptr %ia_uid to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %uid.coerce.fca.0.extract, ptr %ia_uid, align 8
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %30 = ptrtoint ptr %ia_gid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %gid.coerce.fca.0.extract, ptr %ia_gid, align 4
  %call31 = call i32 @__kernfs_setattr(ptr noundef nonnull %call.i, ptr noundef nonnull %iattr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %iattr) #13
  br i1 %cmp32, label %if.then30.err_out3_crit_edge, label %if.then30.if.end36_crit_edge

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then30.err_out3_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out3

if.end36:                                         ; preds = %if.then30.if.end36_crit_edge, %if.end15.if.end36_crit_edge
  %tobool37.not = icmp eq ptr %parent, null
  br i1 %tobool37.not, label %if.end36.cleanup47_crit_edge, label %if.then38

if.end36.cleanup47_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup47

if.then38:                                        ; preds = %if.end36
  %call39 = call i32 @security_kernfs_init_security(ptr noundef nonnull %parent, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then38.cleanup47_crit_edge, label %if.then38.err_out3_crit_edge

if.then38.err_out3_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out3

if.then38.cleanup47_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup47

err_out3:                                         ; preds = %if.then38.err_out3_crit_edge, %if.then30.err_out3_crit_edge
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %id, align 8
  %conv.i.i = trunc i64 %32 to i32
  %call46 = call ptr @idr_remove(ptr noundef %ino_idr, i32 noundef %conv.i.i) #13
  br label %err_out2

err_out2:                                         ; preds = %err_out3, %if.end10.err_out2_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernfs_node_cache to i32))
  %33 = load ptr, ptr @kernfs_node_cache, align 4
  call void @kmem_cache_free(ptr noundef %33, ptr noundef nonnull %call.i) #13
  br label %err_out1

err_out1:                                         ; preds = %err_out2, %if.end.err_out1_crit_edge
  call void @kfree_const(ptr noundef nonnull %call) #13
  br label %cleanup47

cleanup47:                                        ; preds = %err_out1, %if.then38.cleanup47_crit_edge, %if.end36.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  %retval.0 = phi ptr [ null, %err_out1 ], [ null, %entry.cleanup47_crit_edge ], [ %call.i, %if.then38.cleanup47_crit_edge ], [ %call.i, %if.end36.cleanup47_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kernfs_find_and_get_node_by_id(ptr noundef %root, i64 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = trunc i64 %id to i32
  %shr.i = lshr i64 %id, 32
  %conv.i29 = trunc i64 %shr.i to i32
  tail call void @_raw_spin_lock(ptr noundef nonnull @kernfs_idr_lock) #13
  %ino_idr = getelementptr inbounds %struct.kernfs_root, ptr %root, i32 0, i32 2
  %call2 = tail call ptr @idr_find(ptr noundef %ino_idr, i32 noundef %conv.i) #13
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i29)
  %tobool3.not = icmp eq i32 %conv.i29, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %land.rhs

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.rhs:                                         ; preds = %if.end
  %id.i = getelementptr inbounds %struct.kernfs_node, ptr %call2, i32 0, i32 10
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %id.i, align 8
  %shr.i.i = lshr i64 %1, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv.i29)
  %cmp.not = icmp eq i32 %conv.i.i, %conv.i29
  br i1 %cmp.not, label %land.rhs.if.end8_crit_edge, label %land.rhs.cleanup_crit_edge, !prof !101

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs.if.end8_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end8:                                          ; preds = %land.rhs.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %call2, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 8
  %4 = and i16 %3, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool9.not = icmp eq i16 %4, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %lor.rhs, !prof !96

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.rhs:                                          ; preds = %if.end8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call2, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr nonnull %call2, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call2, ptr nonnull %call2, i32 0, i32 1, ptr nonnull elementtype(i32) %call2) #13, !srcloc !107
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %lor.rhs.cleanup_crit_edge, label %if.end20

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !108
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %lor.rhs.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end20 ], [ null, %lor.rhs.cleanup_crit_edge ], [ null, %if.end8.cleanup_crit_edge ], [ null, %land.rhs.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @kernfs_idr_lock) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernfs_add_one(ptr noundef %kn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool.not.i, ptr %1, ptr %3
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %4 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 8
  tail call void @down_write(ptr noundef %kernfs_rwsem) #13
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 8
  %8 = and i16 %7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.i = icmp ne i16 %8, 0
  %ns = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 6
  %9 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ns, align 8
  %tobool3 = icmp eq ptr %10, null
  %cmp.not = xor i1 %tobool3, %tobool.i
  br i1 %cmp.not, label %if.end30.critedge, label %do.end, !prof !101

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cond = select i1 %tobool.i, ptr @.str.13, ptr @.str.14
  %name = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 8
  %name16 = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 4
  %13 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name16, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 731, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond, ptr noundef %12, ptr noundef %14) #13
  br label %out_unlock

if.end30.critedge:                                ; preds = %entry
  %15 = and i16 %7, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp32.not = icmp eq i16 %15, 1
  br i1 %cmp32.not, label %if.end35, label %if.end30.critedge.out_unlock_crit_edge

if.end30.critedge.out_unlock_crit_edge:           ; preds = %if.end30.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end35:                                         ; preds = %if.end30.critedge
  %conv36 = zext i16 %7 to i32
  %and = and i32 %conv36, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.out_unlock_crit_edge

if.end35.out_unlock_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end39:                                         ; preds = %if.end35
  %and42 = and i32 %conv36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end39.if.end46_crit_edge, label %land.lhs.true

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %16 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i94 = icmp eq i32 %16, 0
  br i1 %tobool.not.i94, label %land.lhs.true.kernfs_active.exit_crit_edge, label %land.rhs.i

land.lhs.true.kernfs_active.exit_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit

land.rhs.i:                                       ; preds = %land.lhs.true
  %17 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %1, ptr %18
  %root.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i, i32 0, i32 8, i32 0, i32 2
  %19 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %root.i.i, align 8
  %dep_map.i = getelementptr inbounds %struct.kernfs_root, ptr %20, i32 0, i32 8, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.kernfs_active.exit_crit_edge, !prof !96

land.rhs.i.kernfs_active.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef 9, ptr noundef null) #13
  br label %kernfs_active.exit

kernfs_active.exit:                               ; preds = %do.end.i, %land.rhs.i.kernfs_active.exit_crit_edge, %land.lhs.true.kernfs_active.exit_crit_edge
  %active.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active.i, i32 noundef 4) #13
  %21 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp26.i = icmp sgt i32 %22, -1
  br i1 %cmp26.i, label %kernfs_active.exit.if.end46_crit_edge, label %kernfs_active.exit.out_unlock_crit_edge

kernfs_active.exit.out_unlock_crit_edge:          ; preds = %kernfs_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

kernfs_active.exit.if.end46_crit_edge:            ; preds = %kernfs_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.end46:                                         ; preds = %kernfs_active.exit.if.end46_crit_edge, %if.end39.if.end46_crit_edge
  %name47 = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 4
  %23 = ptrtoint ptr %name47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name47, align 8
  %25 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ns, align 8
  %27 = ptrtoint ptr %26 to i32
  %call.i = tail call i32 @strlen(ptr noundef %24) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not15.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not15.i, label %if.end46.kernfs_name_hash.exit_crit_edge, label %if.end46.while.body.i_crit_edge

if.end46.while.body.i_crit_edge:                  ; preds = %if.end46
  br label %while.body.i

if.end46.kernfs_name_hash.exit_crit_edge:         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_name_hash.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end46.while.body.i_crit_edge
  %len.018.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %call.i, %if.end46.while.body.i_crit_edge ]
  %hash.017.i = phi i32 [ %mul.i.i, %while.body.i.while.body.i_crit_edge ], [ %27, %if.end46.while.body.i_crit_edge ]
  %name.addr.016.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %24, %if.end46.while.body.i_crit_edge ]
  %dec.i = add i32 %len.018.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %name.addr.016.i, i32 1
  %28 = ptrtoint ptr %name.addr.016.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %name.addr.016.i, align 1
  %conv.i = zext i8 %29 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i, 4
  %add.i.i = add i32 %shl.i.i, %hash.017.i
  %shr.i.i = lshr i32 %conv.i, 4
  %add1.i.i = add i32 %add.i.i, %shr.i.i
  %mul.i.i = mul i32 %add1.i.i, 11
  %tobool.not.i95 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i95, label %while.body.i.kernfs_name_hash.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.kernfs_name_hash.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_name_hash.exit

kernfs_name_hash.exit:                            ; preds = %while.body.i.kernfs_name_hash.exit_crit_edge, %if.end46.kernfs_name_hash.exit_crit_edge
  %hash.0.lcssa.i = phi i32 [ %27, %if.end46.kernfs_name_hash.exit_crit_edge ], [ %mul.i.i, %while.body.i.kernfs_name_hash.exit_crit_edge ]
  %mul.i.i.i.i = mul i32 %hash.0.lcssa.i, 1640531527
  %and.i96 = and i32 %mul.i.i.i.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i96)
  %cmp.i = icmp ult i32 %and.i96, 2
  %add.i = add nuw i32 %and.i96, 2
  %spec.select.i97 = select i1 %cmp.i, i32 %add.i, i32 %and.i96
  %30 = tail call i32 @llvm.umin.i32(i32 %spec.select.i97, i32 2147483646) #13
  %hash = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 7
  %31 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %hash, align 4
  %call50 = tail call fastcc i32 @kernfs_link_sibling(ptr noundef %kn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %kernfs_name_hash.exit.out_unlock_crit_edge

kernfs_name_hash.exit.out_unlock_crit_edge:       ; preds = %kernfs_name_hash.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end53:                                         ; preds = %kernfs_name_hash.exit
  %iattr = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 13
  %32 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iattr, align 4
  %tobool54.not = icmp eq ptr %33, null
  br i1 %tobool54.not, label %if.end53.if.end57_crit_edge, label %if.then55

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %ia_ctime = getelementptr inbounds %struct.kernfs_iattrs, ptr %33, i32 0, i32 4
  tail call void @ktime_get_real_ts64(ptr noundef %ia_ctime) #13
  %ia_mtime = getelementptr inbounds %struct.kernfs_iattrs, ptr %33, i32 0, i32 3
  %34 = call ptr @memcpy(ptr %ia_mtime, ptr %ia_ctime, i32 16)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end53.if.end57_crit_edge
  tail call void @up_write(ptr noundef %kernfs_rwsem) #13
  %35 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent1, align 4
  %tobool.not.i99 = icmp eq ptr %36, null
  %spec.select.i100 = select i1 %tobool.not.i99, ptr %kn, ptr %36
  %root.i101 = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i100, i32 0, i32 8, i32 0, i32 2
  %37 = ptrtoint ptr %root.i101 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %root.i101, align 8
  %flags60 = getelementptr inbounds %struct.kernfs_root, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags60, align 4
  %and61 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.then63, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then63:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kernfs_activate(ptr noundef %kn)
  br label %cleanup

out_unlock:                                       ; preds = %kernfs_name_hash.exit.out_unlock_crit_edge, %kernfs_active.exit.out_unlock_crit_edge, %if.end35.out_unlock_crit_edge, %if.end30.critedge.out_unlock_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %if.end30.critedge.out_unlock_crit_edge ], [ -2, %if.end35.out_unlock_crit_edge ], [ %call50, %kernfs_name_hash.exit.out_unlock_crit_edge ], [ -2, %kernfs_active.exit.out_unlock_crit_edge ], [ -22, %do.end ]
  tail call void @up_write(ptr noundef %kernfs_rwsem) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then63, %if.end57.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ 0, %if.then63 ], [ 0, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kernfs_link_sibling(ptr noundef %kn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %children = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 8, i32 0, i32 1
  %2 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %children, align 4
  %tobool.not36 = icmp eq ptr %3, null
  br i1 %tobool.not36, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %hash.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 7
  %4 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hash.i, align 4
  %name.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 4
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 8
  %ns.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 6
  %8 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ns.i, align 8
  br label %while.body

while.cond:                                       ; preds = %kernfs_sd_compare.exit
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 1
  %spec.select = select i1 %cmp2.not, ptr %node.037, ptr %rb_right
  br label %10

10:                                               ; preds = %while.cond.thread, %while.cond
  %cmp4551 = phi i1 [ %cmp41, %while.cond.thread ], [ %cmp, %while.cond ]
  %11 = phi ptr [ %rb_right50, %while.cond.thread ], [ %spec.select, %while.cond ]
  %rb_left52 = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 2
  %node.2 = select i1 %cmp4551, ptr %rb_left52, ptr %11
  %12 = ptrtoint ptr %node.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node.2, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %.while.end_crit_edge, label %.while.body_crit_edge

.while.body_crit_edge:                            ; preds = %10
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

.while.end_crit_edge:                             ; preds = %10
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %.while.body_crit_edge, %while.body.lr.ph
  %14 = phi ptr [ %3, %while.body.lr.ph ], [ %13, %.while.body_crit_edge ]
  %node.037 = phi ptr [ %children, %while.body.lr.ph ], [ %node.2, %.while.body_crit_edge ]
  %hash1.i.i = getelementptr i8, ptr %14, i32 16
  %15 = ptrtoint ptr %hash1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hash1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %5)
  %cmp.i.i = icmp ugt i32 %16, %5
  br i1 %cmp.i.i, label %while.body.while.cond.thread_crit_edge, label %if.end.i.i

while.body.while.cond.thread_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.thread

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %5)
  %cmp3.i.i = icmp ult i32 %16, %5
  br i1 %cmp3.i.i, label %if.end.i.i.while.cond.thread_crit_edge, label %if.end5.i.i

if.end.i.i.while.cond.thread_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.thread

if.end5.i.i:                                      ; preds = %if.end.i.i
  %ns6.i.i = getelementptr i8, ptr %14, i32 12
  %17 = ptrtoint ptr %ns6.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ns6.i.i, align 8
  %cmp7.i.i = icmp ugt ptr %18, %9
  br i1 %cmp7.i.i, label %if.end5.i.i.while.cond.thread_crit_edge, label %if.end9.i.i

if.end5.i.i.while.cond.thread_crit_edge:          ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.thread

if.end9.i.i:                                      ; preds = %if.end5.i.i
  %cmp11.i.i = icmp ult ptr %18, %9
  br i1 %cmp11.i.i, label %if.end9.i.i.while.cond.thread_crit_edge, label %kernfs_sd_compare.exit

if.end9.i.i.while.cond.thread_crit_edge:          ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.thread

while.cond.thread:                                ; preds = %if.end9.i.i.while.cond.thread_crit_edge, %if.end5.i.i.while.cond.thread_crit_edge, %if.end.i.i.while.cond.thread_crit_edge, %while.body.while.cond.thread_crit_edge
  %cmp41 = phi i1 [ false, %if.end9.i.i.while.cond.thread_crit_edge ], [ false, %if.end.i.i.while.cond.thread_crit_edge ], [ true, %if.end5.i.i.while.cond.thread_crit_edge ], [ true, %while.body.while.cond.thread_crit_edge ]
  %rb_right50 = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 1
  br label %10

kernfs_sd_compare.exit:                           ; preds = %if.end9.i.i
  %name14.i.i = getelementptr i8, ptr %14, i32 -4
  %19 = ptrtoint ptr %name14.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name14.i.i, align 8
  %call.i.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef %20) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.not = icmp eq i32 %call.i.i, 0
  %not.cmp2.not = xor i1 %cmp2.not, true
  %cond = or i1 %cmp, %not.cmp2.not
  br i1 %cond, label %while.cond, label %kernfs_sd_compare.exit.cleanup18_crit_edge

kernfs_sd_compare.exit.cleanup18_crit_edge:       ; preds = %kernfs_sd_compare.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

while.end:                                        ; preds = %.while.end_crit_edge, %entry.while.end_crit_edge
  %parent1.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %14, %.while.end_crit_edge ]
  %node.0.lcssa = phi ptr [ %children, %entry.while.end_crit_edge ], [ %node.2, %.while.end_crit_edge ]
  %rb8 = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 5
  %21 = ptrtoint ptr %parent1.0.lcssa to i32
  %22 = ptrtoint ptr %rb8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rb8, align 4
  %rb_right.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rb_left.i, align 4
  %25 = ptrtoint ptr %node.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rb8, ptr %node.0.lcssa, align 4
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 4
  %children11 = getelementptr inbounds %struct.kernfs_node, ptr %27, i32 0, i32 8, i32 0, i32 1
  tail call void @rb_insert_color(ptr noundef %rb8, ptr noundef %children11) #13
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 11
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags.i, align 8
  %30 = and i16 %29, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %30)
  %cmp13 = icmp eq i16 %30, 1
  br i1 %cmp13, label %if.then14, label %while.end.if.end16_crit_edge

while.end.if.end16_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent, align 4
  %33 = getelementptr inbounds %struct.kernfs_node, ptr %32, i32 0, i32 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %inc = add i32 %35, 1
  store i32 %inc, ptr %33, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %while.end.if.end16_crit_edge
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent, align 4
  %38 = getelementptr inbounds %struct.kernfs_node, ptr %37, i32 0, i32 8
  %rev.i = getelementptr inbounds %struct.kernfs_elem_dir, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rev.i, align 4
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %rev.i, align 4
  br label %cleanup18

cleanup18:                                        ; preds = %if.end16, %kernfs_sd_compare.exit.cleanup18_crit_edge
  %retval.2 = phi i32 [ 0, %if.end16 ], [ -17, %kernfs_sd_compare.exit.cleanup18_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernfs_activate(ptr noundef %kn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr %kn, ptr %1
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %3, i32 0, i32 8
  tail call void @down_write(ptr noundef %kernfs_rwsem) #13
  %call1126 = tail call fastcc ptr @kernfs_next_descendant_post(ptr noundef null, ptr noundef %kn)
  %tobool.not127 = icmp eq ptr %call1126, null
  br i1 %tobool.not127, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %call1128 = phi ptr [ %call1, %while.cond.backedge.while.body_crit_edge ], [ %call1126, %entry.while.body_crit_edge ]
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %call1128, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 8
  %6 = and i16 %5, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool2.not = icmp eq i16 %6, 0
  br i1 %tobool2.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %call1128, i32 0, i32 3
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.end.if.end38_crit_edge, label %land.rhs

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.rhs:                                         ; preds = %if.end
  %rb = getelementptr inbounds %struct.kernfs_node, ptr %call1128, i32 0, i32 5
  %9 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rb, align 4
  %11 = ptrtoint ptr %rb to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp = icmp eq i32 %10, %11
  br i1 %cmp, label %land.rhs9, label %land.rhs.if.end38_crit_edge

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.rhs9:                                        ; preds = %land.rhs
  %.b123 = load i1, ptr @kernfs_activate.__already_done, align 1
  br i1 %.b123, label %land.rhs9.if.end38_crit_edge, label %if.then16, !prof !101

land.rhs9.if.end38_crit_edge:                     ; preds = %land.rhs9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then16:                                        ; preds = %land.rhs9
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @kernfs_activate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1316, i32 noundef 9, ptr noundef null) #13
  br label %if.end38

if.end38:                                         ; preds = %if.then16, %land.rhs9.if.end38_crit_edge, %land.rhs.if.end38_crit_edge, %if.end.if.end38_crit_edge
  %active = getelementptr inbounds %struct.kernfs_node, ptr %call1128, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #13
  %12 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %13)
  %cmp48.not = icmp eq i32 %13, -2147483647
  br i1 %cmp48.not, label %if.end38.if.end95_crit_edge, label %land.rhs57

if.end38.if.end95_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

land.rhs57:                                       ; preds = %if.end38
  %.b121122 = load i1, ptr @kernfs_activate.__already_done.18, align 1
  br i1 %.b121122, label %land.rhs57.if.end95_crit_edge, label %if.then68, !prof !101

land.rhs57.if.end95_crit_edge:                    ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then68:                                        ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @kernfs_activate.__already_done.18, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1317, i32 noundef 9, ptr noundef null) #13
  br label %if.end95

if.end95:                                         ; preds = %if.then68, %land.rhs57.if.end95_crit_edge, %if.end38.if.end95_crit_edge
  %call.i.i125 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %active, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active, ptr %active, i32 -2147483647, ptr elementtype(i32) %active) #13, !srcloc !109
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags, align 8
  %17 = or i16 %16, 16
  store i16 %17, ptr %flags, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end95, %while.body.while.cond.backedge_crit_edge
  %call1 = tail call fastcc ptr @kernfs_next_descendant_post(ptr noundef nonnull %call1128, ptr noundef %kn)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @up_write(ptr noundef %kernfs_rwsem) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kernfs_find_and_get_ns(ptr nocapture noundef readonly %parent, ptr noundef %name, ptr noundef %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %parent, i32 0, i32 3
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr %parent, ptr %1
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %3, i32 0, i32 8
  tail call void @down_read(ptr noundef %kernfs_rwsem) #13
  %call1 = tail call fastcc ptr @kernfs_find_ns(ptr noundef %parent, ptr noundef %name, ptr noundef %ns)
  %tobool.not.i6 = icmp eq ptr %call1, null
  br i1 %tobool.not.i6, label %entry.kernfs_get.exit_crit_edge, label %if.then.i

entry.kernfs_get.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_get.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call1, i32 noundef 4) #13
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %call1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !96

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 1, ptr nonnull elementtype(i32) %call1) #13, !srcloc !97
  br label %kernfs_get.exit

kernfs_get.exit:                                  ; preds = %if.end.i, %entry.kernfs_get.exit_crit_edge
  tail call void @up_read(ptr noundef %kernfs_rwsem) #13
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kernfs_find_ns(ptr nocapture noundef readonly %parent, ptr noundef %name, ptr noundef %ns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %children = getelementptr inbounds %struct.kernfs_node, ptr %parent, i32 0, i32 8, i32 0, i32 1
  %0 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %children, align 4
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %parent, i32 0, i32 11
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 8
  %4 = and i16 %3, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.i = icmp ne i16 %4, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %parent, i32 0, i32 3
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select.i = select i1 %tobool.not.i, ptr %parent, ptr %7
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %8 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root.i, align 8
  %dep_map = getelementptr inbounds %struct.kernfs_root, ptr %9, i32 0, i32 8, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !96

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 792, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool27 = icmp eq ptr %ns, null
  %cmp29.not = xor i1 %tobool27, %tobool.i
  br i1 %cmp29.not, label %if.end61, label %do.end44

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %cond = select i1 %tobool.i, ptr @.str.13, ptr @.str.14
  %name47 = getelementptr inbounds %struct.kernfs_node, ptr %parent, i32 0, i32 4
  %10 = ptrtoint ptr %name47 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name47, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 796, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond, ptr noundef %11, ptr noundef %name) #13
  br label %cleanup76

if.end61:                                         ; preds = %if.end
  %12 = ptrtoint ptr %ns to i32
  %call.i95 = tail call i32 @strlen(ptr noundef %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool.not15.i = icmp eq i32 %call.i95, 0
  br i1 %tobool.not15.i, label %if.end61.kernfs_name_hash.exit_crit_edge, label %if.end61.while.body.i_crit_edge

if.end61.while.body.i_crit_edge:                  ; preds = %if.end61
  br label %while.body.i

if.end61.kernfs_name_hash.exit_crit_edge:         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_name_hash.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end61.while.body.i_crit_edge
  %len.018.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %call.i95, %if.end61.while.body.i_crit_edge ]
  %hash.017.i = phi i32 [ %mul.i.i, %while.body.i.while.body.i_crit_edge ], [ %12, %if.end61.while.body.i_crit_edge ]
  %name.addr.016.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %name, %if.end61.while.body.i_crit_edge ]
  %dec.i = add i32 %len.018.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %name.addr.016.i, i32 1
  %13 = ptrtoint ptr %name.addr.016.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %name.addr.016.i, align 1
  %conv.i = zext i8 %14 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i, 4
  %add.i.i = add i32 %shl.i.i, %hash.017.i
  %shr.i.i = lshr i32 %conv.i, 4
  %add1.i.i = add i32 %add.i.i, %shr.i.i
  %mul.i.i = mul i32 %add1.i.i, 11
  %tobool.not.i96 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i96, label %while.body.i.kernfs_name_hash.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.kernfs_name_hash.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_name_hash.exit

kernfs_name_hash.exit:                            ; preds = %while.body.i.kernfs_name_hash.exit_crit_edge, %if.end61.kernfs_name_hash.exit_crit_edge
  %hash.0.lcssa.i = phi i32 [ %12, %if.end61.kernfs_name_hash.exit_crit_edge ], [ %mul.i.i, %while.body.i.kernfs_name_hash.exit_crit_edge ]
  %mul.i.i.i.i = mul i32 %hash.0.lcssa.i, 1640531527
  %and.i = and i32 %mul.i.i.i.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.i = icmp ult i32 %and.i, 2
  %add.i = add nuw i32 %and.i, 2
  %spec.select.i97 = select i1 %cmp.i, i32 %add.i, i32 %and.i
  %15 = tail call i32 @llvm.umin.i32(i32 %spec.select.i97, i32 2147483646) #13
  %tobool63.not114 = icmp eq ptr %1, null
  br i1 %tobool63.not114, label %kernfs_name_hash.exit.cleanup76_crit_edge, label %kernfs_name_hash.exit.while.body_crit_edge

kernfs_name_hash.exit.while.body_crit_edge:       ; preds = %kernfs_name_hash.exit
  br label %while.body

kernfs_name_hash.exit.cleanup76_crit_edge:        ; preds = %kernfs_name_hash.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup76

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %kernfs_name_hash.exit.while.body_crit_edge
  %node.0115 = phi ptr [ %node.1, %cleanup.while.body_crit_edge ], [ %1, %kernfs_name_hash.exit.while.body_crit_edge ]
  %hash1.i = getelementptr i8, ptr %node.0115, i32 16
  %16 = ptrtoint ptr %hash1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hash1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.i98 = icmp ugt i32 %17, %15
  br i1 %cmp.i98, label %while.body.if.then68_crit_edge, label %if.end.i

while.body.if.then68_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp3.i = icmp ult i32 %17, %15
  br i1 %cmp3.i, label %if.end.i.if.then71_crit_edge, label %if.end5.i

if.end.i.if.then71_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then71

if.end5.i:                                        ; preds = %if.end.i
  %ns6.i = getelementptr i8, ptr %node.0115, i32 12
  %18 = ptrtoint ptr %ns6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ns6.i, align 8
  %cmp7.i = icmp ugt ptr %19, %ns
  br i1 %cmp7.i, label %if.end5.i.if.then68_crit_edge, label %if.end9.i

if.end5.i.if.then68_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68

if.end9.i:                                        ; preds = %if.end5.i
  %cmp11.i = icmp ult ptr %19, %ns
  br i1 %cmp11.i, label %if.end9.i.if.then71_crit_edge, label %kernfs_name_compare.exit

if.end9.i.if.then71_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then71

kernfs_name_compare.exit:                         ; preds = %if.end9.i
  %name14.i = getelementptr i8, ptr %node.0115, i32 -4
  %20 = ptrtoint ptr %name14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name14.i, align 8
  %call.i99 = tail call i32 @strcmp(ptr noundef %name, ptr noundef %21) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp66 = icmp slt i32 %call.i99, 0
  br i1 %cmp66, label %kernfs_name_compare.exit.if.then68_crit_edge, label %if.else

kernfs_name_compare.exit.if.then68_crit_edge:     ; preds = %kernfs_name_compare.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then68

if.then68:                                        ; preds = %kernfs_name_compare.exit.if.then68_crit_edge, %if.end5.i.if.then68_crit_edge, %while.body.if.then68_crit_edge
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %node.0115, i32 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %kernfs_name_compare.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp69.not = icmp eq i32 %call.i99, 0
  br i1 %cmp69.not, label %cleanup76.loopexit.split.loop.exit112, label %if.else.if.then71_crit_edge

if.else.if.then71_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then71

if.then71:                                        ; preds = %if.else.if.then71_crit_edge, %if.end9.i.if.then71_crit_edge, %if.end.i.if.then71_crit_edge
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %node.0115, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %if.then68
  %node.1.in = phi ptr [ %rb_left, %if.then68 ], [ %rb_right, %if.then71 ]
  %22 = ptrtoint ptr %node.1.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %node.1 = load ptr, ptr %node.1.in, align 4
  %tobool63.not = icmp eq ptr %node.1, null
  br i1 %tobool63.not, label %cleanup.cleanup76_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.cleanup76_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup76

cleanup76.loopexit.split.loop.exit112:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.le = getelementptr i8, ptr %node.0115, i32 -44
  br label %cleanup76

cleanup76:                                        ; preds = %cleanup76.loopexit.split.loop.exit112, %cleanup.cleanup76_crit_edge, %kernfs_name_hash.exit.cleanup76_crit_edge, %do.end44
  %retval.2 = phi ptr [ null, %do.end44 ], [ %add.ptr.le, %cleanup76.loopexit.split.loop.exit112 ], [ null, %kernfs_name_hash.exit.cleanup76_crit_edge ], [ null, %cleanup.cleanup76_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kernfs_walk_and_get_ns(ptr noundef %parent, ptr noundef %path, ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  %p.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %parent, i32 0, i32 3
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr %parent, ptr %1
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %3, i32 0, i32 8
  tail call void @down_read(ptr noundef %kernfs_rwsem) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i6 = icmp eq i32 %4, 0
  br i1 %tobool.not.i6, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %parent, ptr %6
  %root.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i, i32 0, i32 8, i32 0, i32 2
  %7 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %root.i.i, align 8
  %dep_map.i = getelementptr inbounds %struct.kernfs_root, ptr %8, i32 0, i32 8, i32 6
  %call1.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !96

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 824, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @kernfs_rename_lock) #13
  %call26.i = tail call i32 @strlcpy(ptr noundef nonnull @kernfs_pr_cont_buf, ptr noundef %path, i32 noundef 4096) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call26.i)
  %cmp.i = icmp ugt i32 %call26.i, 4095
  br i1 %cmp.i, label %kernfs_walk_ns.exit.thread, label %if.end28.i

kernfs_walk_ns.exit.thread:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @kernfs_rename_lock) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #13
  br label %kernfs_get.exit

if.end28.i:                                       ; preds = %if.end.i
  %9 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @kernfs_pr_cont_buf, ptr %p.i, align 4
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end37.i, %if.end28.i
  %parent.addr.0.ph.i = phi ptr [ %call38.i, %if.end37.i ], [ %parent, %if.end28.i ]
  %tobool32.not.i = icmp eq ptr %parent.addr.0.ph.i, null
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.outer.i
  %call29.i = call ptr @strsep(ptr noundef nonnull %p.i, ptr noundef nonnull @.str.22) #13
  %tobool30.not.i = icmp eq ptr %call29.i, null
  %or.cond.i = select i1 %tobool30.not.i, i1 true, i1 %tobool32.not.i
  br i1 %or.cond.i, label %kernfs_walk_ns.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %10 = ptrtoint ptr %call29.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call29.i, align 1
  %cmp34.i = icmp eq i8 %11, 0
  br i1 %cmp34.i, label %while.body.i.while.cond.i_crit_edge, label %if.end37.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

if.end37.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call38.i = call fastcc ptr @kernfs_find_ns(ptr noundef nonnull %parent.addr.0.ph.i, ptr noundef nonnull %call29.i, ptr noundef %ns) #13
  br label %while.cond.outer.i

kernfs_walk_ns.exit:                              ; preds = %while.cond.i
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @kernfs_rename_lock) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #13
  br i1 %tobool32.not.i, label %kernfs_walk_ns.exit.kernfs_get.exit_crit_edge, label %if.then.i

kernfs_walk_ns.exit.kernfs_get.exit_crit_edge:    ; preds = %kernfs_walk_ns.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_get.exit

if.then.i:                                        ; preds = %kernfs_walk_ns.exit
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %parent.addr.0.ph.i, i32 noundef 4) #13
  %12 = ptrtoint ptr %parent.addr.0.ph.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %parent.addr.0.ph.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not.i = icmp eq i32 %13, 0
  br i1 %tobool1.not.i, label %do.end.i8, label %if.then.i.if.end.i9_crit_edge, !prof !96

if.then.i.if.end.i9_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i9

do.end.i8:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i9

if.end.i9:                                        ; preds = %do.end.i8, %if.then.i.if.end.i9_crit_edge
  %call.i.i28.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %parent.addr.0.ph.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr nonnull %parent.addr.0.ph.i, i32 1, i32 3, i32 1) #13
  %14 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %parent.addr.0.ph.i, ptr nonnull %parent.addr.0.ph.i, i32 1, ptr nonnull elementtype(i32) %parent.addr.0.ph.i) #13, !srcloc !97
  br label %kernfs_get.exit

kernfs_get.exit:                                  ; preds = %if.end.i9, %kernfs_walk_ns.exit.kernfs_get.exit_crit_edge, %kernfs_walk_ns.exit.thread
  %retval.0.i12 = phi ptr [ null, %kernfs_walk_ns.exit.thread ], [ null, %kernfs_walk_ns.exit.kernfs_get.exit_crit_edge ], [ %parent.addr.0.ph.i, %if.end.i9 ]
  call void @up_read(ptr noundef %kernfs_rwsem) #13
  ret ptr %retval.0.i12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kernfs_create_root(ptr noundef %scops, i32 noundef %flags, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 236) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ino_idr = getelementptr inbounds %struct.kernfs_root, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %ino_idr, ptr noundef nonnull @.str.27, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #13
  %xa_flags.i.i.i = getelementptr inbounds %struct.kernfs_root, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %1 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.kernfs_root, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xa_head.i.i.i, align 8
  %idr_base.i.i = getelementptr inbounds %struct.kernfs_root, ptr %call7.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.kernfs_root, ptr %call7.i.i, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idr_next.i.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_rwsem(ptr noundef %kernfs_rwsem, ptr noundef nonnull @.str.15, ptr noundef nonnull @kernfs_create_root.__key) #13
  %supers = getelementptr inbounds %struct.kernfs_root, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %supers to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %supers, ptr %supers, align 8
  %prev.i = getelementptr inbounds %struct.kernfs_root, ptr %call7.i.i, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %supers, ptr %prev.i, align 4
  %id_highbits = getelementptr inbounds %struct.kernfs_root, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %id_highbits to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %id_highbits, align 8
  %call5 = tail call fastcc ptr @__kernfs_new_node(ptr noundef nonnull %call7.i.i, ptr noundef null, ptr noundef nonnull @.str.11, i16 noundef zeroext 16749, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 noundef 1)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @idr_destroy(ptr noundef %ino_idr) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %priv11 = getelementptr inbounds %struct.kernfs_node, ptr %call5, i32 0, i32 9
  %8 = ptrtoint ptr %priv11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %priv, ptr %priv11, align 8
  %root12 = getelementptr inbounds %struct.kernfs_node, ptr %call5, i32 0, i32 8, i32 0, i32 2
  %9 = ptrtoint ptr %root12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %root12, align 8
  %syscall_ops = getelementptr inbounds %struct.kernfs_root, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %syscall_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %scops, ptr %syscall_ops, align 4
  %flags13 = getelementptr inbounds %struct.kernfs_root, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %flags, ptr %flags13, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5, ptr %call7.i.i, align 8
  %deactivate_waitq = getelementptr inbounds %struct.kernfs_root, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %deactivate_waitq, ptr noundef nonnull @.str.17, ptr noundef nonnull @kernfs_create_root.__key.16) #13
  %13 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags13, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.then20, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kernfs_activate(ptr noundef nonnull %call5)
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end10.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then7 ], [ %call7.i.i, %if.then20 ], [ %call7.i.i, %if.end10.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernfs_destroy_root(ptr nocapture noundef readonly %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.kernfs_get.exit_crit_edge, label %if.then.i

entry.kernfs_get.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_get.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %1, i32 noundef 4) #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !96

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #13, !srcloc !97
  br label %kernfs_get.exit

kernfs_get.exit:                                  ; preds = %if.end.i, %entry.kernfs_get.exit_crit_edge
  %5 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %root, align 4
  %parent.i.i = getelementptr inbounds %struct.kernfs_node, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %6, ptr %8
  %root.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i, i32 0, i32 8, i32 0, i32 2
  %9 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root.i.i, align 8
  %kernfs_rwsem.i = getelementptr inbounds %struct.kernfs_root, ptr %10, i32 0, i32 8
  tail call void @down_write(ptr noundef %kernfs_rwsem.i) #13
  tail call fastcc void @__kernfs_remove(ptr noundef %6) #13
  tail call void @up_write(ptr noundef %kernfs_rwsem.i) #13
  %11 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %root, align 4
  tail call void @kernfs_put(ptr noundef %12)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernfs_remove(ptr noundef %kn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr %kn, ptr %1
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %3, i32 0, i32 8
  tail call void @down_write(ptr noundef %kernfs_rwsem) #13
  tail call fastcc void @__kernfs_remove(ptr noundef %kn)
  tail call void @up_write(ptr noundef %kernfs_rwsem) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kernfs_create_dir_ns(ptr noundef %parent, ptr noundef %name, i16 noundef zeroext %mode, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce, ptr noundef %priv, ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %mode, 16384
  %call = tail call ptr @kernfs_new_node(ptr noundef %parent, ptr noundef %name, i16 noundef zeroext %0, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce, i32 noundef 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %root = getelementptr inbounds %struct.kernfs_node, ptr %parent, i32 0, i32 8, i32 0, i32 2
  %1 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %root, align 8
  %root6 = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 8, i32 0, i32 2
  %3 = ptrtoint ptr %root6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %root6, align 8
  %ns7 = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %ns7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ns, ptr %ns7, align 8
  %priv8 = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %priv8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %priv, ptr %priv8, align 8
  %call9 = tail call i32 @kernfs_add_one(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kernfs_put(ptr noundef nonnull %call)
  %6 = inttoptr i32 %call9 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.end12 ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kernfs_create_empty_dir(ptr noundef %parent, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kernfs_new_node(ptr noundef %parent, ptr noundef %name, i16 noundef zeroext 16749, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 noundef 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 8
  %2 = or i16 %1, 4096
  store i16 %2, ptr %flags, align 8
  %root = getelementptr inbounds %struct.kernfs_node, ptr %parent, i32 0, i32 8, i32 0, i32 2
  %3 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %root, align 8
  %root6 = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 8, i32 0, i32 2
  %5 = ptrtoint ptr %root6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %root6, align 8
  %ns = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ns, align 8
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 9
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %priv, align 8
  %call7 = tail call i32 @kernfs_add_one(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kernfs_put(ptr noundef nonnull %call)
  %8 = inttoptr i32 %call7 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %if.end10 ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_dop_revalidate(ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup44_crit_edge

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.then1, label %kernfs_dentry_node.exit73

if.then1:                                         ; preds = %if.end
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #13
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %2 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_parent, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %5, null
  br i1 %cmp.i.i, label %if.then1.if.else_crit_edge, label %kernfs_dentry_node.exit

if.then1.if.else_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

kernfs_dentry_node.exit:                          ; preds = %if.then1
  %i_private.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_private.i, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %kernfs_dentry_node.exit.if.else_crit_edge, label %if.then4

kernfs_dentry_node.exit.if.else_crit_edge:        ; preds = %kernfs_dentry_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then4:                                         ; preds = %kernfs_dentry_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #13
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %spec.select.i = select i1 %tobool.not.i, ptr %7, ptr %9
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %10 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %11, i32 0, i32 8
  tail call void @down_read(ptr noundef %kernfs_rwsem) #13
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 8
  %rev.i = getelementptr inbounds %struct.kernfs_elem_dir, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rev.i, align 4
  %d_time.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 10
  %15 = ptrtoint ptr %d_time.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %d_time.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not.i.not = icmp eq i32 %14, %16
  tail call void @up_read(ptr noundef %kernfs_rwsem) #13
  %. = zext i1 %cmp.not.i.not to i32
  br label %cleanup44

if.else:                                          ; preds = %kernfs_dentry_node.exit.if.else_crit_edge, %if.then1.if.else_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #13
  br label %cleanup44

kernfs_dentry_node.exit73:                        ; preds = %if.end
  %i_private.i70 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %17 = ptrtoint ptr %i_private.i70 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_private.i70, align 4
  %parent.i74 = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %parent.i74 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i74, align 4
  %tobool.not.i75 = icmp eq ptr %20, null
  %spec.select.i76 = select i1 %tobool.not.i75, ptr %18, ptr %20
  %root.i77 = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i76, i32 0, i32 8, i32 0, i32 2
  %21 = ptrtoint ptr %root.i77 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %root.i77, align 8
  %kernfs_rwsem19 = getelementptr inbounds %struct.kernfs_root, ptr %22, i32 0, i32 8
  tail call void @down_read(ptr noundef %kernfs_rwsem19) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %23 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i78 = icmp eq i32 %23, 0
  br i1 %tobool.not.i78, label %kernfs_dentry_node.exit73.kernfs_active.exit_crit_edge, label %land.rhs.i

kernfs_dentry_node.exit73.kernfs_active.exit_crit_edge: ; preds = %kernfs_dentry_node.exit73
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit

land.rhs.i:                                       ; preds = %kernfs_dentry_node.exit73
  %24 = ptrtoint ptr %parent.i74 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i74, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %18, ptr %25
  %root.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i, i32 0, i32 8, i32 0, i32 2
  %26 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %root.i.i, align 8
  %dep_map.i = getelementptr inbounds %struct.kernfs_root, ptr %27, i32 0, i32 8, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i79 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i79, label %do.end.i, label %land.rhs.i.kernfs_active.exit_crit_edge, !prof !96

land.rhs.i.kernfs_active.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef 9, ptr noundef null) #13
  br label %kernfs_active.exit

kernfs_active.exit:                               ; preds = %do.end.i, %land.rhs.i.kernfs_active.exit_crit_edge, %kernfs_dentry_node.exit73.kernfs_active.exit_crit_edge
  %active.i = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active.i, i32 noundef 4) #13
  %28 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp26.i = icmp sgt i32 %29, -1
  br i1 %cmp26.i, label %if.end22, label %kernfs_active.exit.out_bad_crit_edge

kernfs_active.exit.out_bad_crit_edge:             ; preds = %kernfs_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_bad

if.end22:                                         ; preds = %kernfs_active.exit
  %d_parent23 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %30 = ptrtoint ptr %d_parent23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_parent23, align 8
  %d_inode.i.i81 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %d_inode.i.i81 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_inode.i.i81, align 8
  %cmp.i.i82 = icmp eq ptr %33, null
  br i1 %cmp.i.i82, label %if.end22.kernfs_dentry_node.exit86_crit_edge, label %if.end.i84

if.end22.kernfs_dentry_node.exit86_crit_edge:     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_dentry_node.exit86

if.end.i84:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %i_private.i83 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 54
  %34 = ptrtoint ptr %i_private.i83 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_private.i83, align 4
  br label %kernfs_dentry_node.exit86

kernfs_dentry_node.exit86:                        ; preds = %if.end.i84, %if.end22.kernfs_dentry_node.exit86_crit_edge
  %retval.0.i85 = phi ptr [ %35, %if.end.i84 ], [ null, %if.end22.kernfs_dentry_node.exit86_crit_edge ]
  %36 = ptrtoint ptr %parent.i74 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent.i74, align 4
  %cmp.not = icmp eq ptr %retval.0.i85, %37
  br i1 %cmp.not, label %if.end27, label %kernfs_dentry_node.exit86.out_bad_crit_edge

kernfs_dentry_node.exit86.out_bad_crit_edge:      ; preds = %kernfs_dentry_node.exit86
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_bad

if.end27:                                         ; preds = %kernfs_dentry_node.exit86
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name, align 8
  %name28 = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 4
  %40 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name28, align 8
  %call29 = tail call i32 @strcmp(ptr noundef %39, ptr noundef %41) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end32, label %if.end27.out_bad_crit_edge

if.end27.out_bad_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_bad

if.end32:                                         ; preds = %if.end27
  %tobool34.not = icmp eq ptr %retval.0.i85, null
  br i1 %tobool34.not, label %if.end32.if.end41_crit_edge, label %land.lhs.true

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end32
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i85, i32 0, i32 11
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %flags.i, align 8
  %44 = and i16 %43, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool.i.not = icmp eq i16 %44, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end41_crit_edge, label %land.lhs.true37

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

land.lhs.true37:                                  ; preds = %land.lhs.true
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %45 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 33
  %47 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info, align 16
  %ns = getelementptr inbounds %struct.kernfs_super_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ns, align 4
  %ns38 = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 6
  %51 = ptrtoint ptr %ns38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ns38, align 8
  %cmp39.not = icmp eq ptr %50, %52
  br i1 %cmp39.not, label %land.lhs.true37.if.end41_crit_edge, label %land.lhs.true37.out_bad_crit_edge

land.lhs.true37.out_bad_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_bad

land.lhs.true37.if.end41_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true37.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end32.if.end41_crit_edge
  tail call void @up_read(ptr noundef %kernfs_rwsem19) #13
  br label %cleanup44

out_bad:                                          ; preds = %land.lhs.true37.out_bad_crit_edge, %if.end27.out_bad_crit_edge, %kernfs_dentry_node.exit86.out_bad_crit_edge, %kernfs_active.exit.out_bad_crit_edge
  tail call void @up_read(ptr noundef %kernfs_rwsem19) #13
  br label %cleanup44

cleanup44:                                        ; preds = %out_bad, %if.end41, %if.else, %if.then4, %entry.cleanup44_crit_edge
  %retval.1 = phi i32 [ 0, %out_bad ], [ 1, %if.end41 ], [ -10, %entry.cleanup44_crit_edge ], [ 1, %if.else ], [ %., %if.then4 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kernfs_iop_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool.not.i, ptr %1, ptr %3
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %4 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 8
  tail call void @down_read(ptr noundef %kernfs_rwsem) #13
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 8
  %8 = and i16 %7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.i.not = icmp eq i16 %8, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info, align 16
  %ns2 = getelementptr inbounds %struct.kernfs_super_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ns2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ns2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ns.0 = phi ptr [ %14, %if.then ], [ null, %entry.if.end_crit_edge ]
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 8
  %call3 = tail call fastcc ptr @kernfs_find_ns(ptr noundef %1, ptr noundef %16, ptr noundef %ns.0)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.if.then17_crit_edge, label %if.then4

if.end.if.then17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i38 = icmp eq i32 %17, 0
  br i1 %tobool.not.i38, label %if.then4.kernfs_active.exit_crit_edge, label %land.rhs.i

if.then4.kernfs_active.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit

land.rhs.i:                                       ; preds = %if.then4
  %parent.i.i = getelementptr inbounds %struct.kernfs_node, ptr %call3, i32 0, i32 3
  %18 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %call3, ptr %19
  %root.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i, i32 0, i32 8, i32 0, i32 2
  %20 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %root.i.i, align 8
  %dep_map.i = getelementptr inbounds %struct.kernfs_root, ptr %21, i32 0, i32 8, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.kernfs_active.exit_crit_edge, !prof !96

land.rhs.i.kernfs_active.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef 9, ptr noundef null) #13
  br label %kernfs_active.exit

kernfs_active.exit:                               ; preds = %do.end.i, %land.rhs.i.kernfs_active.exit_crit_edge, %if.then4.kernfs_active.exit_crit_edge
  %active.i = getelementptr inbounds %struct.kernfs_node, ptr %call3, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active.i, i32 noundef 4) #13
  %22 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp26.i = icmp sgt i32 %23, -1
  br i1 %cmp26.i, label %if.end8, label %if.then6

if.then6:                                         ; preds = %kernfs_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @up_read(ptr noundef %kernfs_rwsem) #13
  br label %cleanup

if.end8:                                          ; preds = %kernfs_active.exit
  %i_sb9 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb9, align 4
  %call10 = tail call ptr @kernfs_get_inode(ptr noundef %25, ptr noundef nonnull %call3) #13
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end8.if.end18_crit_edge, label %if.end15

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end15:                                         ; preds = %if.end8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end15.if.end18_crit_edge, label %if.end15.if.then17_crit_edge

if.end15.if.then17_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then17:                                        ; preds = %if.end15.if.then17_crit_edge, %if.end.if.then17_crit_edge
  %inode.045 = phi ptr [ %call10, %if.end15.if.then17_crit_edge ], [ null, %if.end.if.then17_crit_edge ]
  %26 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 8
  %rev.i = getelementptr inbounds %struct.kernfs_elem_dir, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rev.i, align 4
  %d_time.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 10
  %29 = ptrtoint ptr %d_time.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %d_time.i, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge, %if.end8.if.end18_crit_edge
  %inode.041 = phi ptr [ %inode.045, %if.then17 ], [ %call10, %if.end15.if.end18_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.if.end18_crit_edge ]
  tail call void @up_read(ptr noundef %kernfs_rwsem) #13
  %call20 = tail call ptr @d_splice_alias(ptr noundef %inode.041, ptr noundef %dentry) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then6
  %retval.0 = phi ptr [ %call20, %if.end18 ], [ null, %if.then6 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_permission(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_iop_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %dir, ptr nocapture noundef readonly %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool.not.i, ptr %1, ptr %3
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %4 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root.i, align 8
  %syscall_ops = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %syscall_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %syscall_ops, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mkdir = getelementptr inbounds %struct.kernfs_syscall_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %mkdir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mkdir, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool.not.i15 = icmp eq ptr %1, null
  br i1 %tobool.not.i15, label %if.end.cleanup_crit_edge, label %if.end.i, !prof !96

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %active.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #13
  %10 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %active.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.end.i
  %c.0.i.i.i = phi i32 [ %11, %if.end.i ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i, !prof !96

do.body1.i.i.i.cleanup_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !98
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %active.i) #13, !srcloc !99
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !100
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end5.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !101

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i.i.i

if.end5.i:                                        ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %flags.i.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags.i.i, align 8
  %15 = and i16 %14, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.i.not.i = icmp eq i16 %15, 0
  br i1 %tobool.i.not.i, label %if.end5.i.if.end5_crit_edge, label %if.then7.i

if.end5.i.if.end5_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 2
  %16 = tail call ptr @llvm.returnaddress(i32 0) #13
  %17 = ptrtoint ptr %16 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %17) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then7.i, %if.end5.i.if.end5_crit_edge
  %18 = ptrtoint ptr %mkdir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mkdir, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 8
  %call7 = tail call i32 %19(ptr noundef nonnull %1, ptr noundef %21, i16 noundef zeroext %mode) #13
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags.i.i, align 8
  %24 = and i16 %23, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.i.not.i18 = icmp eq i16 %24, 0
  br i1 %tobool.i.not.i18, label %if.end5.if.end5.i23_crit_edge, label %if.then4.i

if.end5.if.end5.i23_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i23

if.then4.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.i20 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 2
  %25 = tail call ptr @llvm.returnaddress(i32 0) #13
  %26 = ptrtoint ptr %25 to i32
  tail call void @lock_release(ptr noundef %dep_map.i20, i32 noundef %26) #13
  br label %if.end5.i23

if.end5.i23:                                      ; preds = %if.then4.i, %if.end5.if.end5.i23_crit_edge
  %call.i.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #13
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #13, !srcloc !103
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i.i.i, -2147483647
  br i1 %cmp.not.i, label %if.end14.i, label %if.end5.i23.cleanup_crit_edge, !prof !96

if.end5.i23.cleanup_crit_edge:                    ; preds = %if.end5.i23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14.i:                                       ; preds = %if.end5.i23
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %1, ptr %29
  %root.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i, i32 0, i32 8, i32 0, i32 2
  %30 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %root.i.i, align 8
  %deactivate_waitq.i = getelementptr inbounds %struct.kernfs_root, ptr %31, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %deactivate_waitq.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end14.i, %if.end5.i23.cleanup_crit_edge, %do.body1.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ %call7, %if.end5.i23.cleanup_crit_edge ], [ %call7, %if.end14.i ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %do.body1.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_iop_rmdir(ptr nocapture noundef readnone %dir, ptr nocapture noundef readonly %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %1, null
  br i1 %cmp.i.i, label %entry.kernfs_dentry_node.exit_crit_edge, label %if.end.i

entry.kernfs_dentry_node.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_dentry_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  br label %kernfs_dentry_node.exit

kernfs_dentry_node.exit:                          ; preds = %if.end.i, %entry.kernfs_dentry_node.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.kernfs_dentry_node.exit_crit_edge ]
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 3
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select.i = select i1 %tobool.not.i, ptr %retval.0.i, ptr %5
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %6 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root.i, align 8
  %syscall_ops = getelementptr inbounds %struct.kernfs_root, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %syscall_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %syscall_ops, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %kernfs_dentry_node.exit.cleanup_crit_edge, label %lor.lhs.false

kernfs_dentry_node.exit.cleanup_crit_edge:        ; preds = %kernfs_dentry_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %kernfs_dentry_node.exit
  %rmdir = getelementptr inbounds %struct.kernfs_syscall_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmdir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmdir, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool.not.i16 = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not.i16, label %if.end.cleanup_crit_edge, label %if.end.i17, !prof !96

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i17:                                       ; preds = %if.end
  %active.i = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #13
  %12 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %active.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.end.i17
  %c.0.i.i.i = phi i32 [ %13, %if.end.i17 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i, !prof !96

do.body1.i.i.i.cleanup_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !98
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %active.i) #13, !srcloc !99
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !100
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end5.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !101

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i.i.i

if.end5.i:                                        ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %flags.i.i = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 11
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags.i.i, align 8
  %17 = and i16 %16, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.i.not.i = icmp eq i16 %17, 0
  br i1 %tobool.i.not.i, label %if.end5.i.if.end6_crit_edge, label %if.then7.i

if.end5.i.if.end6_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.i = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 2
  %18 = tail call ptr @llvm.returnaddress(i32 0) #13
  %19 = ptrtoint ptr %18 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %19) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then7.i, %if.end5.i.if.end6_crit_edge
  %20 = ptrtoint ptr %rmdir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmdir, align 4
  %call8 = tail call i32 %21(ptr noundef nonnull %retval.0.i) #13
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags.i.i, align 8
  %24 = and i16 %23, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.i.not.i21 = icmp eq i16 %24, 0
  br i1 %tobool.i.not.i21, label %if.end6.if.end5.i26_crit_edge, label %if.then4.i

if.end6.if.end5.i26_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i26

if.then4.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.i23 = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 2
  %25 = tail call ptr @llvm.returnaddress(i32 0) #13
  %26 = ptrtoint ptr %25 to i32
  tail call void @lock_release(ptr noundef %dep_map.i23, i32 noundef %26) #13
  br label %if.end5.i26

if.end5.i26:                                      ; preds = %if.then4.i, %if.end6.if.end5.i26_crit_edge
  %call.i.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #13
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #13, !srcloc !103
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i.i.i, -2147483647
  br i1 %cmp.not.i, label %if.end14.i, label %if.end5.i26.cleanup_crit_edge, !prof !96

if.end5.i26.cleanup_crit_edge:                    ; preds = %if.end5.i26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14.i:                                       ; preds = %if.end5.i26
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %retval.0.i, ptr %29
  %root.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i, i32 0, i32 8, i32 0, i32 2
  %30 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %root.i.i, align 8
  %deactivate_waitq.i = getelementptr inbounds %struct.kernfs_root, ptr %31, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %deactivate_waitq.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end14.i, %if.end5.i26.cleanup_crit_edge, %do.body1.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %kernfs_dentry_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %kernfs_dentry_node.exit.cleanup_crit_edge ], [ %call8, %if.end5.i26.cleanup_crit_edge ], [ %call8, %if.end14.i ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %do.body1.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_iop_rename(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %old_dir, ptr nocapture noundef readonly %old_dentry, ptr nocapture noundef readonly %new_dir, ptr nocapture noundef readonly %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %1, null
  br i1 %cmp.i.i, label %entry.kernfs_dentry_node.exit_crit_edge, label %if.end.i

entry.kernfs_dentry_node.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_dentry_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  br label %kernfs_dentry_node.exit

kernfs_dentry_node.exit:                          ; preds = %if.end.i, %entry.kernfs_dentry_node.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.kernfs_dentry_node.exit_crit_edge ]
  %i_private = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 54
  %4 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private, align 4
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 3
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select.i = select i1 %tobool.not.i, ptr %retval.0.i, ptr %7
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %8 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root.i, align 8
  %syscall_ops = getelementptr inbounds %struct.kernfs_root, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %syscall_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %syscall_ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %if.end, label %kernfs_dentry_node.exit.cleanup_crit_edge

kernfs_dentry_node.exit.cleanup_crit_edge:        ; preds = %kernfs_dentry_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %kernfs_dentry_node.exit
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %rename = getelementptr inbounds %struct.kernfs_syscall_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %rename to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rename, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %tobool.not.i27 = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not.i27, label %if.end5.cleanup_crit_edge, label %if.end.i28, !prof !96

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i28:                                       ; preds = %if.end5
  %active.i = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #13
  %14 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %active.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.end.i28
  %c.0.i.i.i = phi i32 [ %15, %if.end.i28 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i, !prof !96

do.body1.i.i.i.cleanup_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !98
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %active.i) #13, !srcloc !99
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !100
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end5.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !101

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i.i.i

if.end5.i:                                        ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %flags.i.i = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 11
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags.i.i, align 8
  %19 = and i16 %18, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.i.not.i = icmp eq i16 %19, 0
  br i1 %tobool.i.not.i, label %if.end5.i.if.end9_crit_edge, label %if.then7.i

if.end5.i.if.end9_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.i = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 2
  %20 = tail call ptr @llvm.returnaddress(i32 0) #13
  %21 = ptrtoint ptr %20 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %21) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then7.i, %if.end5.i.if.end9_crit_edge
  %tobool.not.i30 = icmp eq ptr %5, null
  br i1 %tobool.not.i30, label %if.end9.if.end.i55_crit_edge, label %if.end.i33, !prof !96

if.end9.if.end.i55_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i55

if.end.i33:                                       ; preds = %if.end9
  %active.i31 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 1
  %call.i.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i31, i32 noundef 4) #13
  %22 = ptrtoint ptr %active.i31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %active.i31, align 4
  br label %do.body1.i.i.i36

do.body1.i.i.i36:                                 ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i44.do.body1.i.i.i36_crit_edge, %if.end.i33
  %c.0.i.i.i34 = phi i32 [ %23, %if.end.i33 ], [ %asmresult3.i.i.i.i.i.i42, %arch_atomic_cmpxchg.exit.i.i.i.i44.do.body1.i.i.i36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i34)
  %cmp.i.i.i35 = icmp slt i32 %c.0.i.i.i34, 0
  br i1 %cmp.i.i.i35, label %do.body1.i.i.i36.if.end.i55_crit_edge, label %do.cond3.i.i.i38, !prof !96

do.body1.i.i.i36.if.end.i55_crit_edge:            ; preds = %do.body1.i.i.i36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i55

do.cond3.i.i.i38:                                 ; preds = %do.body1.i.i.i36
  %add.i.i.i37 = add nuw i32 %c.0.i.i.i34, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !98
  tail call void @llvm.prefetch.p0(ptr %active.i31, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i41

do.body.i.i.i.i.i.i41:                            ; preds = %do.body.i.i.i.i.i.i41.do.body.i.i.i.i.i.i41_crit_edge, %do.cond3.i.i.i38
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %active.i31, ptr %active.i31, i32 %c.0.i.i.i34, i32 %add.i.i.i37, ptr elementtype(i32) %active.i31) #13, !srcloc !99
  %asmresult.i.i.i.i.i.i39 = extractvalue { i32, i32 } %24, 0
  %tobool.not.i.i.i.i.i.i40 = icmp eq i32 %asmresult.i.i.i.i.i.i39, 0
  br i1 %tobool.not.i.i.i.i.i.i40, label %arch_atomic_cmpxchg.exit.i.i.i.i44, label %do.body.i.i.i.i.i.i41.do.body.i.i.i.i.i.i41_crit_edge

do.body.i.i.i.i.i.i41.do.body.i.i.i.i.i.i41_crit_edge: ; preds = %do.body.i.i.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i41

arch_atomic_cmpxchg.exit.i.i.i.i44:               ; preds = %do.body.i.i.i.i.i.i41
  %asmresult3.i.i.i.i.i.i42 = extractvalue { i32, i32 } %24, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !100
  %cmp.not.i.i.i.i43 = icmp eq i32 %asmresult3.i.i.i.i.i.i42, %c.0.i.i.i34
  br i1 %cmp.not.i.i.i.i43, label %if.end5.i47, label %arch_atomic_cmpxchg.exit.i.i.i.i44.do.body1.i.i.i36_crit_edge, !prof !101

arch_atomic_cmpxchg.exit.i.i.i.i44.do.body1.i.i.i36_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i44
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i.i.i36

if.end5.i47:                                      ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i44
  %flags.i.i45 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 11
  %25 = ptrtoint ptr %flags.i.i45 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags.i.i45, align 8
  %27 = and i16 %26, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.i.not.i46 = icmp eq i16 %27, 0
  br i1 %tobool.i.not.i46, label %if.end5.i47.if.end13_crit_edge, label %if.then7.i49

if.end5.i47.if.end13_crit_edge:                   ; preds = %if.end5.i47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then7.i49:                                     ; preds = %if.end5.i47
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.i48 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %28 = tail call ptr @llvm.returnaddress(i32 0) #13
  %29 = ptrtoint ptr %28 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i48, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %29) #13
  br label %if.end13

if.end.i55:                                       ; preds = %do.body1.i.i.i36.if.end.i55_crit_edge, %if.end9.if.end.i55_crit_edge
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags.i.i, align 8
  %32 = and i16 %31, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.i.not.i54 = icmp eq i16 %32, 0
  br i1 %tobool.i.not.i54, label %if.end.i55.if.end5.i59_crit_edge, label %if.then4.i

if.end.i55.if.end5.i59_crit_edge:                 ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i59

if.then4.i:                                       ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.i56 = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 2
  %33 = tail call ptr @llvm.returnaddress(i32 0) #13
  %34 = ptrtoint ptr %33 to i32
  tail call void @lock_release(ptr noundef %dep_map.i56, i32 noundef %34) #13
  br label %if.end5.i59

if.end5.i59:                                      ; preds = %if.then4.i, %if.end.i55.if.end5.i59_crit_edge
  %call.i.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #13
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #13, !srcloc !103
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i.i.i, -2147483647
  br i1 %cmp.not.i, label %if.end5.i59.cleanup.sink.split_crit_edge, label %if.end5.i59.cleanup_crit_edge, !prof !96

if.end5.i59.cleanup_crit_edge:                    ; preds = %if.end5.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5.i59.cleanup.sink.split_crit_edge:         ; preds = %if.end5.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.then7.i49, %if.end5.i47.if.end13_crit_edge
  %36 = ptrtoint ptr %rename to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rename, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name, align 8
  %call15 = tail call i32 %37(ptr noundef nonnull %retval.0.i, ptr noundef nonnull %5, ptr noundef %39) #13
  %40 = ptrtoint ptr %flags.i.i45 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags.i.i45, align 8
  %42 = and i16 %41, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.i.not.i62 = icmp eq i16 %42, 0
  br i1 %tobool.i.not.i62, label %if.end13.if.end5.i70_crit_edge, label %if.then4.i65

if.end13.if.end5.i70_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i70

if.then4.i65:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.i64 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %43 = tail call ptr @llvm.returnaddress(i32 0) #13
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_release(ptr noundef %dep_map.i64, i32 noundef %44) #13
  br label %if.end5.i70

if.end5.i70:                                      ; preds = %if.then4.i65, %if.end13.if.end5.i70_crit_edge
  %call.i.i.i67 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i31, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %active.i31, i32 1, i32 3, i32 1) #13
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i31, ptr %active.i31, i32 1, ptr elementtype(i32) %active.i31) #13, !srcloc !103
  %asmresult.i.i.i.i.i68 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %asmresult.i.i.i.i.i68)
  %cmp.not.i69 = icmp eq i32 %asmresult.i.i.i.i.i68, -2147483647
  br i1 %cmp.not.i69, label %if.end14.i76, label %if.end5.i70.if.end.i81_crit_edge, !prof !96

if.end5.i70.if.end.i81_crit_edge:                 ; preds = %if.end5.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i81

if.end14.i76:                                     ; preds = %if.end5.i70
  call void @__sanitizer_cov_trace_pc() #15
  %parent.i.i71 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 3
  %46 = ptrtoint ptr %parent.i.i71 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent.i.i71, align 4
  %tobool.not.i.i72 = icmp eq ptr %47, null
  %spec.select.i.i73 = select i1 %tobool.not.i.i72, ptr %5, ptr %47
  %root.i.i74 = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i73, i32 0, i32 8, i32 0, i32 2
  %48 = ptrtoint ptr %root.i.i74 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %root.i.i74, align 8
  %deactivate_waitq.i75 = getelementptr inbounds %struct.kernfs_root, ptr %49, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %deactivate_waitq.i75, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %if.end.i81

if.end.i81:                                       ; preds = %if.end14.i76, %if.end5.i70.if.end.i81_crit_edge
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %flags.i.i, align 8
  %52 = and i16 %51, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool.i.not.i80 = icmp eq i16 %52, 0
  br i1 %tobool.i.not.i80, label %if.end.i81.if.end5.i88_crit_edge, label %if.then4.i83

if.end.i81.if.end5.i88_crit_edge:                 ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i88

if.then4.i83:                                     ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.i82 = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 2
  %53 = tail call ptr @llvm.returnaddress(i32 0) #13
  %54 = ptrtoint ptr %53 to i32
  tail call void @lock_release(ptr noundef %dep_map.i82, i32 noundef %54) #13
  br label %if.end5.i88

if.end5.i88:                                      ; preds = %if.then4.i83, %if.end.i81.if.end5.i88_crit_edge
  %call.i.i.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #13
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #13, !srcloc !103
  %asmresult.i.i.i.i.i86 = extractvalue { i32, i32 } %55, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %asmresult.i.i.i.i.i86)
  %cmp.not.i87 = icmp eq i32 %asmresult.i.i.i.i.i86, -2147483647
  br i1 %cmp.not.i87, label %if.end5.i88.cleanup.sink.split_crit_edge, label %if.end5.i88.cleanup_crit_edge, !prof !96

if.end5.i88.cleanup_crit_edge:                    ; preds = %if.end5.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5.i88.cleanup.sink.split_crit_edge:         ; preds = %if.end5.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end5.i88.cleanup.sink.split_crit_edge, %if.end5.i59.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -19, %if.end5.i59.cleanup.sink.split_crit_edge ], [ %call15, %if.end5.i88.cleanup.sink.split_crit_edge ]
  %56 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent.i, align 4
  %tobool.not.i.i90 = icmp eq ptr %57, null
  %spec.select.i.i91 = select i1 %tobool.not.i.i90, ptr %retval.0.i, ptr %57
  %root.i.i92 = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i91, i32 0, i32 8, i32 0, i32 2
  %58 = ptrtoint ptr %root.i.i92 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %root.i.i92, align 8
  %deactivate_waitq.i93 = getelementptr inbounds %struct.kernfs_root, ptr %59, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %deactivate_waitq.i93, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.i88.cleanup_crit_edge, %if.end5.i59.cleanup_crit_edge, %do.body1.i.i.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %kernfs_dentry_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %kernfs_dentry_node.exit.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -19, %if.end5.i59.cleanup_crit_edge ], [ %call15, %if.end5.i88.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -19, %do.body1.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kernfs_next_descendant_post(ptr noundef %pos, ptr noundef %root) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %root, i32 0, i32 3
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %spec.select.i = select i1 %tobool.not.i, ptr %root, ptr %2
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %3 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %root.i, align 8
  %dep_map = getelementptr inbounds %struct.kernfs_root, ptr %4, i32 0, i32 8, i32 6
  %call1 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !96

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1272, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %pos, null
  br i1 %tobool26.not, label %if.end.while.cond.i_crit_edge, label %if.end29

if.end.while.cond.i_crit_edge:                    ; preds = %if.end
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i.while.cond.i_crit_edge, %if.end.while.cond.i_crit_edge
  %pos.addr.0.i = phi ptr [ %add.ptr.i, %if.end.i.while.cond.i_crit_edge ], [ %root, %if.end.while.cond.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.kernfs_node, ptr %pos.addr.0.i, i32 0, i32 11
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags.i.i, align 8
  %7 = and i16 %6, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp.not.i = icmp eq i16 %7, 1
  br i1 %cmp.not.i, label %if.end.i, label %while.cond.i.cleanup_crit_edge

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %while.cond.i
  %children.i = getelementptr inbounds %struct.kernfs_node, ptr %pos.addr.0.i, i32 0, i32 8, i32 0, i32 1
  %call1.i = tail call ptr @rb_first(ptr noundef %children.i) #13
  %tobool.not.i45 = icmp eq ptr %call1.i, null
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 -44
  br i1 %tobool.not.i45, label %if.end.i.cleanup_crit_edge, label %if.end.i.while.cond.i_crit_edge

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %cmp = icmp eq ptr %pos, %root
  br i1 %cmp, label %if.end29.cleanup_crit_edge, label %if.end31

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %if.end29
  %rb = getelementptr inbounds %struct.kernfs_node, ptr %pos, i32 0, i32 5
  %call32 = tail call ptr @rb_next(ptr noundef %rb) #13
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end37, label %if.end31.while.cond.i49_crit_edge

if.end31.while.cond.i49_crit_edge:                ; preds = %if.end31
  br label %while.cond.i49

while.cond.i49:                                   ; preds = %if.end.i54.while.cond.i49_crit_edge, %if.end31.while.cond.i49_crit_edge
  %call32.pn = phi ptr [ %call1.i51, %if.end.i54.while.cond.i49_crit_edge ], [ %call32, %if.end31.while.cond.i49_crit_edge ]
  %flags.i.i47 = getelementptr i8, ptr %call32.pn, i32 60
  %8 = ptrtoint ptr %flags.i.i47 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags.i.i47, align 8
  %10 = and i16 %9, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp.not.i48 = icmp eq i16 %10, 1
  br i1 %cmp.not.i48, label %if.end.i54, label %while.cond.i49.cleanup.loopexit56_crit_edge

while.cond.i49.cleanup.loopexit56_crit_edge:      ; preds = %while.cond.i49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.loopexit56

if.end.i54:                                       ; preds = %while.cond.i49
  %children.i50 = getelementptr i8, ptr %call32.pn, i32 24
  %call1.i51 = tail call ptr @rb_first(ptr noundef %children.i50) #13
  %tobool.not.i52 = icmp eq ptr %call1.i51, null
  br i1 %tobool.not.i52, label %if.end.i54.cleanup.loopexit56_crit_edge, label %if.end.i54.while.cond.i49_crit_edge

if.end.i54.while.cond.i49_crit_edge:              ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i49

if.end.i54.cleanup.loopexit56_crit_edge:          ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.loopexit56

if.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %pos, i32 0, i32 3
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 4
  br label %cleanup

cleanup.loopexit56:                               ; preds = %if.end.i54.cleanup.loopexit56_crit_edge, %while.cond.i49.cleanup.loopexit56_crit_edge
  %pos.addr.0.i46.le = getelementptr i8, ptr %call32.pn, i32 -44
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit56, %if.end37, %if.end29.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %if.end37 ], [ null, %if.end29.cleanup_crit_edge ], [ %pos.addr.0.i46.le, %cleanup.loopexit56 ], [ %pos.addr.0.i, %while.cond.i.cleanup_crit_edge ], [ %pos.addr.0.i, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__kernfs_remove(ptr noundef %kn) unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %spec.select.i = select i1 %tobool.not.i, ptr %kn, ptr %2
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %3 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %root.i, align 8
  %dep_map = getelementptr inbounds %struct.kernfs_root, ptr %4, i32 0, i32 8, i32 6
  %call1 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !96

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1330, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %kn, null
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %tobool27.not = icmp eq ptr %6, null
  br i1 %tobool27.not, label %lor.lhs.false.do.body31_crit_edge, label %land.lhs.true

lor.lhs.false.do.body31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body31

land.lhs.true:                                    ; preds = %lor.lhs.false
  %rb = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 5
  %7 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rb, align 4
  %9 = ptrtoint ptr %rb to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp = icmp eq i32 %8, %9
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body31_crit_edge

land.lhs.true.do.body31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body31

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body31:                                        ; preds = %land.lhs.true.do.body31_crit_edge, %lor.lhs.false.do.body31_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__kernfs_remove.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__kernfs_remove, %if.then41)) #13
          to label %do.end44 [label %if.then41], !srcloc !110

if.then41:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 4
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__kernfs_remove.__UNIQUE_ID_ddebug222, ptr noundef nonnull @.str.30, ptr noundef %11) #13
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body31
  %call45188 = tail call fastcc ptr @kernfs_next_descendant_post(ptr noundef null, ptr noundef nonnull %kn)
  %tobool46.not189 = icmp eq ptr %call45188, null
  br i1 %tobool46.not189, label %do.end44.do.body50.preheader_crit_edge, label %do.end44.while.body_crit_edge

do.end44.while.body_crit_edge:                    ; preds = %do.end44
  br label %while.body

do.end44.do.body50.preheader_crit_edge:           ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body50.preheader

do.body50.preheader:                              ; preds = %if.end49.do.body50.preheader_crit_edge, %do.end44.do.body50.preheader_crit_edge
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 11
  %active54 = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 1
  br label %while.cond.i

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %do.end44.while.body_crit_edge
  %call45190 = phi ptr [ %call45, %if.end49.while.body_crit_edge ], [ %call45188, %do.end44.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i159 = icmp eq i32 %12, 0
  br i1 %tobool.not.i159, label %while.body.kernfs_active.exit_crit_edge, label %land.rhs.i

while.body.kernfs_active.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit

land.rhs.i:                                       ; preds = %while.body
  %parent.i.i = getelementptr inbounds %struct.kernfs_node, ptr %call45190, i32 0, i32 3
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %call45190, ptr %14
  %root.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i, i32 0, i32 8, i32 0, i32 2
  %15 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %root.i.i, align 8
  %dep_map.i = getelementptr inbounds %struct.kernfs_root, ptr %16, i32 0, i32 8, i32 6
  %call.i.i160 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i160)
  %cmp.not.i = icmp eq i32 %call.i.i160, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.kernfs_active.exit_crit_edge, !prof !96

land.rhs.i.kernfs_active.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef 9, ptr noundef null) #13
  br label %kernfs_active.exit

kernfs_active.exit:                               ; preds = %do.end.i, %land.rhs.i.kernfs_active.exit_crit_edge, %while.body.kernfs_active.exit_crit_edge
  %active.i = getelementptr inbounds %struct.kernfs_node, ptr %call45190, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active.i, i32 noundef 4) #13
  %17 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp26.i = icmp sgt i32 %18, -1
  br i1 %cmp26.i, label %if.then48, label %kernfs_active.exit.if.end49_crit_edge

kernfs_active.exit.if.end49_crit_edge:            ; preds = %kernfs_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then48:                                        ; preds = %kernfs_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #13
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 -2147483647, ptr elementtype(i32) %active.i) #13, !srcloc !97
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %kernfs_active.exit.if.end49_crit_edge
  %call45 = tail call fastcc ptr @kernfs_next_descendant_post(ptr noundef nonnull %call45190, ptr noundef nonnull %kn)
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end49.do.body50.preheader_crit_edge, label %if.end49.while.body_crit_edge

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end49.do.body50.preheader_crit_edge:           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body50.preheader

while.cond.i:                                     ; preds = %while.cond.i.backedge, %do.body50.preheader
  %pos.addr.0.i = phi ptr [ %kn, %do.body50.preheader ], [ %pos.addr.0.i.be, %while.cond.i.backedge ]
  %flags.i.i = getelementptr inbounds %struct.kernfs_node, ptr %pos.addr.0.i, i32 0, i32 11
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags.i.i, align 8
  %22 = and i16 %21, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %cmp.not.i161 = icmp eq i16 %22, 1
  br i1 %cmp.not.i161, label %if.end.i, label %while.cond.i.kernfs_leftmost_descendant.exit_crit_edge

while.cond.i.kernfs_leftmost_descendant.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_leftmost_descendant.exit

if.end.i:                                         ; preds = %while.cond.i
  %children.i = getelementptr inbounds %struct.kernfs_node, ptr %pos.addr.0.i, i32 0, i32 8, i32 0, i32 1
  %call1.i = call ptr @rb_first(ptr noundef %children.i) #13
  %tobool.not.i162 = icmp eq ptr %call1.i, null
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 -44
  br i1 %tobool.not.i162, label %if.end.i.kernfs_leftmost_descendant.exit_crit_edge, label %if.end.i.while.cond.i.backedge_crit_edge

if.end.i.while.cond.i.backedge_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.backedge

if.end.i.kernfs_leftmost_descendant.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_leftmost_descendant.exit

while.cond.i.backedge:                            ; preds = %if.end125.while.cond.i.backedge_crit_edge, %if.end.i.while.cond.i.backedge_crit_edge
  %pos.addr.0.i.be = phi ptr [ %add.ptr.i, %if.end.i.while.cond.i.backedge_crit_edge ], [ %kn, %if.end125.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

kernfs_leftmost_descendant.exit:                  ; preds = %if.end.i.kernfs_leftmost_descendant.exit_crit_edge, %while.cond.i.kernfs_leftmost_descendant.exit_crit_edge
  %flags.i.i.le = getelementptr inbounds %struct.kernfs_node, ptr %pos.addr.0.i, i32 0, i32 11
  %tobool.not.i163 = icmp eq ptr %pos.addr.0.i, null
  br i1 %tobool.not.i163, label %kernfs_leftmost_descendant.exit.kernfs_get.exit_crit_edge, label %if.then.i

kernfs_leftmost_descendant.exit.kernfs_get.exit_crit_edge: ; preds = %kernfs_leftmost_descendant.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_get.exit

if.then.i:                                        ; preds = %kernfs_leftmost_descendant.exit
  %call.i.i.i164 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %pos.addr.0.i, i32 noundef 4) #13
  %23 = ptrtoint ptr %pos.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %pos.addr.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool1.not.i = icmp eq i32 %24, 0
  br i1 %tobool1.not.i, label %do.end.i165, label %if.then.i.if.end.i166_crit_edge, !prof !96

if.then.i.if.end.i166_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i166

do.end.i165:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i166

if.end.i166:                                      ; preds = %do.end.i165, %if.then.i.if.end.i166_crit_edge
  %call.i.i28.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pos.addr.0.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr nonnull %pos.addr.0.i, i32 1, i32 3, i32 1) #13
  %25 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pos.addr.0.i, ptr nonnull %pos.addr.0.i, i32 1, ptr nonnull elementtype(i32) %pos.addr.0.i) #13, !srcloc !97
  br label %kernfs_get.exit

kernfs_get.exit:                                  ; preds = %if.end.i166, %kernfs_leftmost_descendant.exit.kernfs_get.exit_crit_edge
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags, align 8
  %28 = and i16 %27, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool52.not = icmp eq i16 %28, 0
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %kernfs_get.exit
  %parent.i.i167 = getelementptr inbounds %struct.kernfs_node, ptr %pos.addr.0.i, i32 0, i32 3
  %29 = ptrtoint ptr %parent.i.i167 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i.i167, align 4
  %tobool.not.i.i168 = icmp eq ptr %30, null
  %spec.select.i.i169 = select i1 %tobool.not.i.i168, ptr %pos.addr.0.i, ptr %30
  %root.i.i170 = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i169, i32 0, i32 8, i32 0, i32 2
  %31 = ptrtoint ptr %root.i.i170 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %root.i.i170, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %33 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i171 = icmp eq i32 %33, 0
  br i1 %tobool.not.i171, label %if.then53.kernfs_active.exit.i_crit_edge, label %land.rhs.i174

if.then53.kernfs_active.exit.i_crit_edge:         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit.i

land.rhs.i174:                                    ; preds = %if.then53
  %dep_map.i172 = getelementptr inbounds %struct.kernfs_root, ptr %32, i32 0, i32 8, i32 6
  %call1.i173 = call i32 @lock_is_held_type(ptr noundef %dep_map.i172, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i173)
  %tobool2.not.i = icmp eq i32 %call1.i173, 0
  br i1 %tobool2.not.i, label %do.end.i175, label %land.rhs.i174.if.end.i176_crit_edge, !prof !96

land.rhs.i174.if.end.i176_crit_edge:              ; preds = %land.rhs.i174
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i176

do.end.i175:                                      ; preds = %land.rhs.i174
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 464, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i176

if.end.i176:                                      ; preds = %do.end.i175, %land.rhs.i174.if.end.i176_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i136.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i136.i, label %if.end.i176.kernfs_active.exit.i_crit_edge, label %land.rhs.i.i

if.end.i176.kernfs_active.exit.i_crit_edge:       ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i176
  %34 = ptrtoint ptr %parent.i.i167 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i.i167, align 4
  %tobool.not.i.i.i = icmp eq ptr %35, null
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr %pos.addr.0.i, ptr %35
  %root.i.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i.i, i32 0, i32 8, i32 0, i32 2
  %36 = ptrtoint ptr %root.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %root.i.i.i, align 8
  %dep_map.i.i = getelementptr inbounds %struct.kernfs_root, ptr %37, i32 0, i32 8, i32 6
  %call.i.i137.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i137.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i137.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.kernfs_active.exit.i_crit_edge, !prof !96

land.rhs.i.i.kernfs_active.exit.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef 9, ptr noundef null) #13
  br label %kernfs_active.exit.i

kernfs_active.exit.i:                             ; preds = %do.end.i.i, %land.rhs.i.i.kernfs_active.exit.i_crit_edge, %if.end.i176.kernfs_active.exit.i_crit_edge, %if.then53.kernfs_active.exit.i_crit_edge
  %active.i.i = getelementptr inbounds %struct.kernfs_node, ptr %pos.addr.0.i, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %active.i.i, i32 noundef 4) #13
  %38 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp26.i.i = icmp sgt i32 %39, -1
  br i1 %cmp26.i.i, label %land.rhs32.i, label %kernfs_active.exit.i.if.end70.i_crit_edge

kernfs_active.exit.i.if.end70.i_crit_edge:        ; preds = %kernfs_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70.i

land.rhs32.i:                                     ; preds = %kernfs_active.exit.i
  %.b133.i = load i1, ptr @kernfs_drain.__already_done, align 1
  br i1 %.b133.i, label %land.rhs32.i.if.end70.i_crit_edge, label %if.then43.i, !prof !101

land.rhs32.i.if.end70.i_crit_edge:                ; preds = %land.rhs32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70.i

if.then43.i:                                      ; preds = %land.rhs32.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @kernfs_drain.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 465, i32 noundef 9, ptr noundef null) #13
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then43.i, %land.rhs32.i.if.end70.i_crit_edge, %kernfs_active.exit.i.if.end70.i_crit_edge
  %kernfs_rwsem78.i = getelementptr inbounds %struct.kernfs_root, ptr %32, i32 0, i32 8
  call void @up_write(ptr noundef %kernfs_rwsem78.i) #13
  %40 = ptrtoint ptr %flags.i.i.le to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags.i.i.le, align 8
  %42 = and i16 %41, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.i.not.i = icmp eq i16 %42, 0
  br i1 %tobool.i.not.i, label %if.end70.i.do.body88.i_crit_edge, label %if.then80.i

if.end70.i.do.body88.i_crit_edge:                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body88.i

if.then80.i:                                      ; preds = %if.end70.i
  %dep_map81.i = getelementptr inbounds %struct.kernfs_node, ptr %pos.addr.0.i, i32 0, i32 2
  %43 = call ptr @llvm.returnaddress(i32 0) #13
  %44 = ptrtoint ptr %43 to i32
  call void @lock_acquire(ptr noundef %dep_map81.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #13
  %call.i.i.i178 = call zeroext i1 @__kasan_check_read(ptr noundef %active.i.i, i32 noundef 4) #13
  %45 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %46)
  %cmp.not.i179 = icmp eq i32 %46, -2147483647
  br i1 %cmp.not.i179, label %if.then80.i.do.body88.i_crit_edge, label %if.then83.i

if.then80.i.do.body88.i_crit_edge:                ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body88.i

if.then83.i:                                      ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @lock_contended(ptr noundef %dep_map81.i, i32 noundef %44) #13
  br label %do.body88.i

do.body88.i:                                      ; preds = %if.then83.i, %if.then80.i.do.body88.i_crit_edge, %if.end70.i.do.body88.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 477) #13
  %call.i.i134.i = call zeroext i1 @__kasan_check_read(ptr noundef %active.i.i, i32 noundef 4) #13
  %47 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %48)
  %cmp96.i = icmp eq i32 %48, -2147483647
  br i1 %cmp96.i, label %do.body88.i.do.end108.i_crit_edge, label %if.end98.i

do.body88.i.do.end108.i_crit_edge:                ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end108.i

if.end98.i:                                       ; preds = %do.body88.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #13
  %49 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #13
  %deactivate_waitq.i = getelementptr inbounds %struct.kernfs_root, ptr %32, i32 0, i32 7
  %call99143.i = call i32 @prepare_to_wait_event(ptr noundef %deactivate_waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #13
  %call.i.i135144.i = call zeroext i1 @__kasan_check_read(ptr noundef %active.i.i, i32 noundef 4) #13
  %50 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %51)
  %cmp102145.i = icmp eq i32 %51, -2147483647
  br i1 %cmp102145.i, label %if.end98.i.for.end.i_crit_edge, label %if.end98.i.cleanup.i_crit_edge

if.end98.i.cleanup.i_crit_edge:                   ; preds = %if.end98.i
  br label %cleanup.i

if.end98.i.for.end.i_crit_edge:                   ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end98.i.cleanup.i_crit_edge
  call void @schedule() #13
  %call99.i = call i32 @prepare_to_wait_event(ptr noundef %deactivate_waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #13
  %call.i.i135.i = call zeroext i1 @__kasan_check_read(ptr noundef %active.i.i, i32 noundef 4) #13
  %52 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %active.i.i, align 4
  %cmp102.i = icmp eq i32 %53, -2147483647
  br i1 %cmp102.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end98.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %deactivate_waitq.i, ptr noundef nonnull %__wq_entry.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #13
  br label %do.end108.i

do.end108.i:                                      ; preds = %for.end.i, %do.body88.i.do.end108.i_crit_edge
  %54 = ptrtoint ptr %flags.i.i.le to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %flags.i.i.le, align 8
  %56 = and i16 %55, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool.i139.not.i = icmp eq i16 %56, 0
  br i1 %tobool.i139.not.i, label %do.end108.i.kernfs_drain.exit_crit_edge, label %if.then110.i

do.end108.i.kernfs_drain.exit_crit_edge:          ; preds = %do.end108.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_drain.exit

if.then110.i:                                     ; preds = %do.end108.i
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map111.i = getelementptr inbounds %struct.kernfs_node, ptr %pos.addr.0.i, i32 0, i32 2
  %57 = call ptr @llvm.returnaddress(i32 0) #13
  %58 = ptrtoint ptr %57 to i32
  call void @lock_acquired(ptr noundef %dep_map111.i, i32 noundef %58) #13
  call void @lock_release(ptr noundef %dep_map111.i, i32 noundef %58) #13
  br label %kernfs_drain.exit

kernfs_drain.exit:                                ; preds = %if.then110.i, %do.end108.i.kernfs_drain.exit_crit_edge
  call void @kernfs_drain_open_files(ptr noundef %pos.addr.0.i) #13
  call void @down_write(ptr noundef %kernfs_rwsem78.i) #13
  br label %if.end111

if.else:                                          ; preds = %kernfs_get.exit
  %call.i.i158 = call zeroext i1 @__kasan_check_read(ptr noundef %active54, i32 noundef 4) #13
  %59 = ptrtoint ptr %active54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %active54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %60)
  %cmp56.not = icmp eq i32 %60, -2147483647
  br i1 %cmp56.not, label %if.else.if.end111_crit_edge, label %land.rhs65

if.else.if.end111_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

land.rhs65:                                       ; preds = %if.else
  %.b157 = load i1, ptr @__kernfs_remove.__already_done, align 1
  br i1 %.b157, label %land.rhs65.if.end111_crit_edge, label %if.then76, !prof !101

land.rhs65.if.end111_crit_edge:                   ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

if.then76:                                        ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__kernfs_remove.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1369, i32 noundef 9, ptr noundef null) #13
  br label %if.end111

if.end111:                                        ; preds = %if.then76, %land.rhs65.if.end111_crit_edge, %if.else.if.end111_crit_edge, %kernfs_drain.exit
  %parent112 = getelementptr inbounds %struct.kernfs_node, ptr %pos.addr.0.i, i32 0, i32 3
  %61 = ptrtoint ptr %parent112 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %parent112, align 4
  %tobool113.not = icmp eq ptr %62, null
  br i1 %tobool113.not, label %if.end111.if.end124_crit_edge, label %lor.lhs.false114

if.end111.if.end124_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

lor.lhs.false114:                                 ; preds = %if.end111
  %rb.i = getelementptr inbounds %struct.kernfs_node, ptr %pos.addr.0.i, i32 0, i32 5
  %63 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rb.i, align 4
  %65 = ptrtoint ptr %rb.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %65)
  %cmp.i = icmp eq i32 %64, %65
  br i1 %cmp.i, label %lor.lhs.false114.if.end125_crit_edge, label %if.end.i181

lor.lhs.false114.if.end125_crit_edge:             ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

if.end.i181:                                      ; preds = %lor.lhs.false114
  %66 = ptrtoint ptr %flags.i.i.le to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %flags.i.i.le, align 8
  %68 = and i16 %67, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %68)
  %cmp2.i = icmp eq i16 %68, 1
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i181.if.then117_crit_edge

if.end.i181.if.then117_crit_edge:                 ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then117

if.then3.i:                                       ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #15
  %69 = getelementptr inbounds %struct.kernfs_node, ptr %62, i32 0, i32 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 8
  %dec.i = add i32 %71, -1
  store i32 %dec.i, ptr %69, align 8
  br label %if.then117

if.then117:                                       ; preds = %if.then3.i, %if.end.i181.if.then117_crit_edge
  %72 = ptrtoint ptr %parent112 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %parent112, align 4
  %74 = getelementptr inbounds %struct.kernfs_node, ptr %73, i32 0, i32 8
  %rev.i.i = getelementptr inbounds %struct.kernfs_elem_dir, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rev.i.i, align 4
  %inc.i.i = add i32 %76, 1
  store i32 %inc.i.i, ptr %rev.i.i, align 4
  %77 = load ptr, ptr %parent112, align 4
  %children.i183 = getelementptr inbounds %struct.kernfs_node, ptr %77, i32 0, i32 8, i32 0, i32 1
  call void @rb_erase(ptr noundef %rb.i, ptr noundef %children.i183) #13
  %78 = ptrtoint ptr %rb.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %65, ptr %rb.i, align 4
  %79 = ptrtoint ptr %parent112 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr = load ptr, ptr %parent112, align 4
  %tobool119.not = icmp eq ptr %.pr, null
  br i1 %tobool119.not, label %if.then117.if.end124_crit_edge, label %cond.end

if.then117.if.end124_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

cond.end:                                         ; preds = %if.then117
  %iattr = getelementptr inbounds %struct.kernfs_node, ptr %.pr, i32 0, i32 13
  %80 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %iattr, align 4
  %tobool121.not = icmp eq ptr %81, null
  br i1 %tobool121.not, label %cond.end.if.end124_crit_edge, label %if.then122

cond.end.if.end124_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

if.then122:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %ia_ctime = getelementptr inbounds %struct.kernfs_iattrs, ptr %81, i32 0, i32 4
  call void @ktime_get_real_ts64(ptr noundef %ia_ctime) #13
  %ia_mtime = getelementptr inbounds %struct.kernfs_iattrs, ptr %81, i32 0, i32 3
  %82 = call ptr @memcpy(ptr %ia_mtime, ptr %ia_ctime, i32 16)
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %cond.end.if.end124_crit_edge, %if.then117.if.end124_crit_edge, %if.end111.if.end124_crit_edge
  call void @kernfs_put(ptr noundef %pos.addr.0.i)
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %lor.lhs.false114.if.end125_crit_edge
  call void @kernfs_put(ptr noundef %pos.addr.0.i)
  %cmp127.not = icmp eq ptr %pos.addr.0.i, %kn
  br i1 %cmp127.not, label %if.end125.cleanup_crit_edge, label %if.end125.while.cond.i.backedge_crit_edge

if.end125.while.cond.i.backedge_crit_edge:        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.backedge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end125.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernfs_break_active_protection(ptr noundef %kn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %kn, null
  br i1 %tobool.not.i, label %entry.kernfs_put_active.exit_crit_edge, label %if.end.i, !prof !96

entry.kernfs_put_active.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_put_active.exit

if.end.i:                                         ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 11
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i.i, align 8
  %2 = and i16 %1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not.i = icmp eq i16 %2, 0
  br i1 %tobool.i.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 2
  %3 = tail call ptr @llvm.returnaddress(i32 0) #13
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %4) #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %active.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #13, !srcloc !103
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i.i.i, -2147483647
  br i1 %cmp.not.i, label %if.end14.i, label %if.end5.i.kernfs_put_active.exit_crit_edge, !prof !96

if.end5.i.kernfs_put_active.exit_crit_edge:       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_put_active.exit

if.end14.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %parent.i.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %kn, ptr %7
  %root.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i, i32 0, i32 8, i32 0, i32 2
  %8 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root.i.i, align 8
  %deactivate_waitq.i = getelementptr inbounds %struct.kernfs_root, ptr %9, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %deactivate_waitq.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %kernfs_put_active.exit

kernfs_put_active.exit:                           ; preds = %if.end14.i, %if.end5.i.kernfs_put_active.exit_crit_edge, %entry.kernfs_put_active.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernfs_unbreak_active_protection(ptr noundef %kn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %active, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active, ptr %active, i32 1, ptr elementtype(i32) %active) #13, !srcloc !97
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 11
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags.i, align 8
  %3 = and i16 %2, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not = icmp eq i16 %3, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 2
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = ptrtoint ptr %4 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %5) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kernfs_remove_self(ptr noundef %kn) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr %kn, ptr %1
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %3, i32 0, i32 8
  tail call void @down_write(ptr noundef %kernfs_rwsem) #13
  %tobool.not.i.i = icmp eq ptr %kn, null
  br i1 %tobool.not.i.i, label %entry.kernfs_break_active_protection.exit_crit_edge, label %if.end.i.i, !prof !96

entry.kernfs_break_active_protection.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_break_active_protection.exit

if.end.i.i:                                       ; preds = %entry
  %flags.i.i.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 11
  %4 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i.i.i, align 8
  %6 = and i16 %5, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.i.not.i.i = icmp eq i16 %6, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.i.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 2
  %7 = tail call ptr @llvm.returnaddress(i32 0) #13
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %8) #13
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %active.i.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %active.i.i, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i.i, ptr %active.i.i, i32 1, ptr elementtype(i32) %active.i.i) #13, !srcloc !103
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, -2147483647
  br i1 %cmp.not.i.i, label %if.end14.i.i, label %if.end5.i.i.kernfs_break_active_protection.exit_crit_edge, !prof !96

if.end5.i.i.kernfs_break_active_protection.exit_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_break_active_protection.exit

if.end14.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr %kn, ptr %11
  %root.i.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i.i, i32 0, i32 8, i32 0, i32 2
  %12 = ptrtoint ptr %root.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %root.i.i.i, align 8
  %deactivate_waitq.i.i = getelementptr inbounds %struct.kernfs_root, ptr %13, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %deactivate_waitq.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %kernfs_break_active_protection.exit

kernfs_break_active_protection.exit:              ; preds = %if.end14.i.i, %if.end5.i.i.kernfs_break_active_protection.exit_crit_edge, %entry.kernfs_break_active_protection.exit_crit_edge
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 11
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 8
  %16 = and i16 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %kernfs_break_active_protection.exit
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i16 %15, 1024
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %or, ptr %flags, align 8
  tail call fastcc void @__kernfs_remove(ptr noundef %kn)
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 8
  %20 = or i16 %19, 2048
  store i16 %20, ptr %flags, align 8
  br label %if.end65

if.else:                                          ; preds = %kernfs_break_active_protection.exit
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i, align 4
  %tobool.not.i87 = icmp eq ptr %22, null
  %spec.select.i88 = select i1 %tobool.not.i87, ptr %kn, ptr %22
  %root.i89 = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i88, i32 0, i32 8, i32 0, i32 2
  %23 = ptrtoint ptr %root.i89 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %root.i89, align 8
  %deactivate_waitq = getelementptr inbounds %struct.kernfs_root, ptr %24, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %25 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %26 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %27 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %28 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %wait, align 4
  %30 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %25, align 4
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @autoremove_wake_function, ptr %26, align 4
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %27, ptr %27, align 4
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %27, ptr %28, align 4
  %active = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  call void @prepare_to_wait(ptr noundef %deactivate_waitq, ptr noundef nonnull %wait, i32 noundef 2) #13
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags, align 8
  %40 = and i16 %39, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool17.not = icmp eq i16 %40, 0
  br i1 %tobool17.not, label %while.cond.if.end_crit_edge, label %land.lhs.true

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %while.cond
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #13
  %41 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %42)
  %cmp = icmp eq i32 %42, -2147483647
  br i1 %cmp, label %while.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.cond.if.end_crit_edge
  call void @up_write(ptr noundef %kernfs_rwsem) #13
  call void @schedule() #13
  call void @down_write(ptr noundef %kernfs_rwsem) #13
  br label %while.cond

while.end:                                        ; preds = %land.lhs.true
  call void @finish_wait(ptr noundef %deactivate_waitq, ptr noundef nonnull %wait) #13
  %rb = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 5
  %43 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rb, align 4
  %45 = ptrtoint ptr %rb to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %45)
  %cmp24.not = icmp eq i32 %44, %45
  br i1 %cmp24.not, label %while.end.if.end57_crit_edge, label %land.rhs

while.end.if.end57_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

land.rhs:                                         ; preds = %while.end
  %.b85 = load i1, ptr @kernfs_remove_self.__already_done, align 1
  br i1 %.b85, label %land.rhs.if.end57_crit_edge, label %if.then35, !prof !101

land.rhs.if.end57_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then35:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @kernfs_remove_self.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1525, i32 noundef 9, ptr noundef null) #13
  br label %if.end57

if.end57:                                         ; preds = %if.then35, %land.rhs.if.end57_crit_edge, %while.end.if.end57_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  br label %if.end65

if.end65:                                         ; preds = %if.end57, %if.then
  %active.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #13
  %46 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #13, !srcloc !97
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flags, align 8
  %49 = and i16 %48, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.i.not.i = icmp eq i16 %49, 0
  br i1 %tobool.i.not.i, label %if.end65.kernfs_unbreak_active_protection.exit_crit_edge, label %if.then.i

if.end65.kernfs_unbreak_active_protection.exit_crit_edge: ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_unbreak_active_protection.exit

if.then.i:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 2
  %50 = call ptr @llvm.returnaddress(i32 0) #13
  %51 = ptrtoint ptr %50 to i32
  call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %51) #13
  br label %kernfs_unbreak_active_protection.exit

kernfs_unbreak_active_protection.exit:            ; preds = %if.then.i, %if.end65.kernfs_unbreak_active_protection.exit_crit_edge
  call void @up_write(ptr noundef %kernfs_rwsem) #13
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernfs_remove_by_name_ns(ptr noundef readonly %parent, ptr noundef %name, ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %do.end, label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1556, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %name) #13
  br label %cleanup

if.end17:                                         ; preds = %entry
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %parent, i32 0, i32 3
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr %parent, ptr %1
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %3, i32 0, i32 8
  tail call void @down_write(ptr noundef %kernfs_rwsem) #13
  %call18 = tail call fastcc ptr @kernfs_find_ns(ptr noundef nonnull %parent, ptr noundef %name, ptr noundef %ns)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @__kernfs_remove(ptr noundef nonnull %call18)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %. = phi i32 [ 0, %if.then20 ], [ -2, %if.end17.if.end21_crit_edge ]
  tail call void @up_write(ptr noundef %kernfs_rwsem) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ %., %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernfs_rename_ns(ptr noundef %kn, ptr noundef %new_parent, ptr noundef %new_name, ptr noundef %new_ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 8, i32 0, i32 2
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %3, i32 0, i32 8
  tail call void @down_write(ptr noundef %kernfs_rwsem) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i78 = icmp eq i32 %4, 0
  br i1 %tobool.not.i78, label %if.end.kernfs_active.exit_crit_edge, label %land.rhs.i

if.end.kernfs_active.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit

land.rhs.i:                                       ; preds = %if.end
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %kn, ptr %6
  %root.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i, i32 0, i32 8, i32 0, i32 2
  %7 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %root.i.i, align 8
  %dep_map.i = getelementptr inbounds %struct.kernfs_root, ptr %8, i32 0, i32 8, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.kernfs_active.exit_crit_edge, !prof !96

land.rhs.i.kernfs_active.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef 9, ptr noundef null) #13
  br label %kernfs_active.exit

kernfs_active.exit:                               ; preds = %do.end.i, %land.rhs.i.kernfs_active.exit_crit_edge, %if.end.kernfs_active.exit_crit_edge
  %active.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active.i, i32 noundef 4) #13
  %9 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp26.i = icmp sgt i32 %10, -1
  br i1 %cmp26.i, label %lor.lhs.false, label %kernfs_active.exit.out_crit_edge

kernfs_active.exit.out_crit_edge:                 ; preds = %kernfs_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false:                                    ; preds = %kernfs_active.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i79 = icmp eq i32 %11, 0
  br i1 %tobool.not.i79, label %lor.lhs.false.kernfs_active.exit92_crit_edge, label %land.rhs.i87

lor.lhs.false.kernfs_active.exit92_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit92

land.rhs.i87:                                     ; preds = %lor.lhs.false
  %parent.i.i80 = getelementptr inbounds %struct.kernfs_node, ptr %new_parent, i32 0, i32 3
  %12 = ptrtoint ptr %parent.i.i80 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i.i80, align 4
  %tobool.not.i.i81 = icmp eq ptr %13, null
  %spec.select.i.i82 = select i1 %tobool.not.i.i81, ptr %new_parent, ptr %13
  %root.i.i83 = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i82, i32 0, i32 8, i32 0, i32 2
  %14 = ptrtoint ptr %root.i.i83 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %root.i.i83, align 8
  %dep_map.i84 = getelementptr inbounds %struct.kernfs_root, ptr %15, i32 0, i32 8, i32 6
  %call.i.i85 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i84, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85)
  %cmp.not.i86 = icmp eq i32 %call.i.i85, 0
  br i1 %cmp.not.i86, label %do.end.i88, label %land.rhs.i87.kernfs_active.exit92_crit_edge, !prof !96

land.rhs.i87.kernfs_active.exit92_crit_edge:      ; preds = %land.rhs.i87
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit92

do.end.i88:                                       ; preds = %land.rhs.i87
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef 9, ptr noundef null) #13
  br label %kernfs_active.exit92

kernfs_active.exit92:                             ; preds = %do.end.i88, %land.rhs.i87.kernfs_active.exit92_crit_edge, %lor.lhs.false.kernfs_active.exit92_crit_edge
  %active.i89 = getelementptr inbounds %struct.kernfs_node, ptr %new_parent, i32 0, i32 1
  %call.i.i.i90 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active.i89, i32 noundef 4) #13
  %16 = ptrtoint ptr %active.i89 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %active.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp26.i91 = icmp sgt i32 %17, -1
  br i1 %cmp26.i91, label %lor.lhs.false3, label %kernfs_active.exit92.out_crit_edge

kernfs_active.exit92.out_crit_edge:               ; preds = %kernfs_active.exit92
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false3:                                   ; preds = %kernfs_active.exit92
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %new_parent, i32 0, i32 11
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 8
  %20 = and i16 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool4.not = icmp eq i16 %20, 0
  br i1 %tobool4.not, label %if.end6, label %lor.lhs.false3.out_crit_edge

lor.lhs.false3.out_crit_edge:                     ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end6:                                          ; preds = %lor.lhs.false3
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent, align 4
  %cmp = icmp eq ptr %22, %new_parent
  br i1 %cmp, label %land.lhs.true, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end6
  %ns = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 6
  %23 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ns, align 8
  %cmp9 = icmp eq ptr %24, %new_ns
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %name = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 4
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 8
  %call12 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %new_name) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %land.lhs.true11.out_crit_edge, label %land.lhs.true11.if.end16_crit_edge

land.lhs.true11.if.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

land.lhs.true11.out_crit_edge:                    ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end16:                                         ; preds = %land.lhs.true11.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %call17 = tail call fastcc ptr @kernfs_find_ns(ptr noundef %new_parent, ptr noundef %new_name, ptr noundef %new_ns)
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end20, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end20:                                         ; preds = %if.end16
  %name21 = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 4
  %27 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name21, align 8
  %call22 = tail call i32 @strcmp(ptr noundef %28, ptr noundef %new_name) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end20.if.end30_crit_edge, label %if.then25

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then25:                                        ; preds = %if.end20
  %call26 = tail call ptr @kstrdup_const(ptr noundef %new_name, i32 noundef 3264) #13
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.then25.out_crit_edge, label %if.then25.if.end30_crit_edge

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then25.out_crit_edge:                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end30:                                         ; preds = %if.then25.if.end30_crit_edge, %if.end20.if.end30_crit_edge
  %new_name.addr.0 = phi ptr [ %call26, %if.then25.if.end30_crit_edge ], [ null, %if.end20.if.end30_crit_edge ]
  %rb.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 5
  %29 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rb.i, align 4
  %31 = ptrtoint ptr %rb.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %31)
  %cmp.i = icmp eq i32 %30, %31
  br i1 %cmp.i, label %if.end30.kernfs_unlink_sibling.exit_crit_edge, label %if.end.i

if.end30.kernfs_unlink_sibling.exit_crit_edge:    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_unlink_sibling.exit

if.end.i:                                         ; preds = %if.end30
  %flags.i.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 11
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags.i.i, align 8
  %34 = and i16 %33, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %34)
  %cmp2.i = icmp eq i16 %34, 1
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent, align 4
  %37 = getelementptr inbounds %struct.kernfs_node, ptr %36, i32 0, i32 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %dec.i = add i32 %39, -1
  store i32 %dec.i, ptr %37, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %40 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent, align 4
  %42 = getelementptr inbounds %struct.kernfs_node, ptr %41, i32 0, i32 8
  %rev.i.i = getelementptr inbounds %struct.kernfs_elem_dir, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rev.i.i, align 4
  %inc.i.i = add i32 %44, 1
  store i32 %inc.i.i, ptr %rev.i.i, align 4
  %45 = load ptr, ptr %parent, align 4
  %children.i = getelementptr inbounds %struct.kernfs_node, ptr %45, i32 0, i32 8, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %rb.i, ptr noundef %children.i) #13
  %46 = ptrtoint ptr %rb.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %31, ptr %rb.i, align 4
  br label %kernfs_unlink_sibling.exit

kernfs_unlink_sibling.exit:                       ; preds = %if.end4.i, %if.end30.kernfs_unlink_sibling.exit_crit_edge
  %tobool.not.i94 = icmp eq ptr %new_parent, null
  br i1 %tobool.not.i94, label %kernfs_unlink_sibling.exit.kernfs_get.exit_crit_edge, label %if.then.i

kernfs_unlink_sibling.exit.kernfs_get.exit_crit_edge: ; preds = %kernfs_unlink_sibling.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_get.exit

if.then.i:                                        ; preds = %kernfs_unlink_sibling.exit
  %call.i.i.i95 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %new_parent, i32 noundef 4) #13
  %47 = ptrtoint ptr %new_parent to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %new_parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool1.not.i = icmp eq i32 %48, 0
  br i1 %tobool1.not.i, label %do.end.i96, label %if.then.i.if.end.i97_crit_edge, !prof !96

if.then.i.if.end.i97_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i97

do.end.i96:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i97

if.end.i97:                                       ; preds = %do.end.i96, %if.then.i.if.end.i97_crit_edge
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new_parent, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %new_parent, i32 1, i32 3, i32 1) #13
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %new_parent, ptr nonnull %new_parent, i32 1, ptr nonnull elementtype(i32) %new_parent) #13, !srcloc !97
  br label %kernfs_get.exit

kernfs_get.exit:                                  ; preds = %if.end.i97, %kernfs_unlink_sibling.exit.kernfs_get.exit_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @kernfs_rename_lock) #13
  %50 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parent, align 4
  store ptr %new_parent, ptr %parent, align 4
  %ns34 = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 6
  %52 = ptrtoint ptr %ns34 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %new_ns, ptr %ns34, align 8
  %tobool35.not = icmp eq ptr %new_name.addr.0, null
  br i1 %tobool35.not, label %kernfs_get.exit.if.end39_crit_edge, label %if.then36

kernfs_get.exit.if.end39_crit_edge:               ; preds = %kernfs_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then36:                                        ; preds = %kernfs_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name21, align 8
  store ptr %new_name.addr.0, ptr %name21, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %kernfs_get.exit.if.end39_crit_edge
  %old_name.0 = phi ptr [ %54, %if.then36 ], [ null, %kernfs_get.exit.if.end39_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @kernfs_rename_lock) #13
  %55 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name21, align 8
  %57 = ptrtoint ptr %ns34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ns34, align 8
  %59 = ptrtoint ptr %58 to i32
  %call.i = tail call i32 @strlen(ptr noundef %56) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not15.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not15.i, label %if.end39.kernfs_name_hash.exit_crit_edge, label %if.end39.while.body.i_crit_edge

if.end39.while.body.i_crit_edge:                  ; preds = %if.end39
  br label %while.body.i

if.end39.kernfs_name_hash.exit_crit_edge:         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_name_hash.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end39.while.body.i_crit_edge
  %len.018.i = phi i32 [ %dec.i98, %while.body.i.while.body.i_crit_edge ], [ %call.i, %if.end39.while.body.i_crit_edge ]
  %hash.017.i = phi i32 [ %mul.i.i, %while.body.i.while.body.i_crit_edge ], [ %59, %if.end39.while.body.i_crit_edge ]
  %name.addr.016.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %56, %if.end39.while.body.i_crit_edge ]
  %dec.i98 = add i32 %len.018.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %name.addr.016.i, i32 1
  %60 = ptrtoint ptr %name.addr.016.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %name.addr.016.i, align 1
  %conv.i = zext i8 %61 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i, 4
  %add.i.i = add i32 %shl.i.i, %hash.017.i
  %shr.i.i = lshr i32 %conv.i, 4
  %add1.i.i = add i32 %add.i.i, %shr.i.i
  %mul.i.i = mul i32 %add1.i.i, 11
  %tobool.not.i99 = icmp eq i32 %dec.i98, 0
  br i1 %tobool.not.i99, label %while.body.i.kernfs_name_hash.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.kernfs_name_hash.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_name_hash.exit

kernfs_name_hash.exit:                            ; preds = %while.body.i.kernfs_name_hash.exit_crit_edge, %if.end39.kernfs_name_hash.exit_crit_edge
  %hash.0.lcssa.i = phi i32 [ %59, %if.end39.kernfs_name_hash.exit_crit_edge ], [ %mul.i.i, %while.body.i.kernfs_name_hash.exit_crit_edge ]
  %mul.i.i.i.i = mul i32 %hash.0.lcssa.i, 1640531527
  %and.i = and i32 %mul.i.i.i.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.i100 = icmp ult i32 %and.i, 2
  %add.i = add nuw i32 %and.i, 2
  %spec.select.i101 = select i1 %cmp.i100, i32 %add.i, i32 %and.i
  %62 = tail call i32 @llvm.umin.i32(i32 %spec.select.i101, i32 2147483646) #13
  %hash = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 7
  %63 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %hash, align 4
  %call43 = tail call fastcc i32 @kernfs_link_sibling(ptr noundef %kn)
  tail call void @kernfs_put(ptr noundef %51)
  tail call void @kfree_const(ptr noundef %old_name.0) #13
  br label %out

out:                                              ; preds = %kernfs_name_hash.exit, %if.then25.out_crit_edge, %if.end16.out_crit_edge, %land.lhs.true11.out_crit_edge, %lor.lhs.false3.out_crit_edge, %kernfs_active.exit92.out_crit_edge, %kernfs_active.exit.out_crit_edge
  %error.0 = phi i32 [ -2, %lor.lhs.false3.out_crit_edge ], [ 0, %land.lhs.true11.out_crit_edge ], [ -17, %if.end16.out_crit_edge ], [ 0, %kernfs_name_hash.exit ], [ -12, %if.then25.out_crit_edge ], [ -2, %kernfs_active.exit92.out_crit_edge ], [ -2, %kernfs_active.exit.out_crit_edge ]
  tail call void @up_write(ptr noundef %kernfs_rwsem) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_fop_readdir(ptr nocapture noundef %file, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %3, null
  br i1 %cmp.i.i, label %entry.kernfs_dentry_node.exit_crit_edge, label %if.end.i

entry.kernfs_dentry_node.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_dentry_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  br label %kernfs_dentry_node.exit

kernfs_dentry_node.exit:                          ; preds = %if.end.i, %entry.kernfs_dentry_node.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ null, %entry.kernfs_dentry_node.exit_crit_edge ]
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i64 %9, label %kernfs_dentry_node.exit.if.end_crit_edge [
    i64 0, label %if.then.i
    i64 1, label %kernfs_dentry_node.exit.if.then6.i_crit_edge
  ]

kernfs_dentry_node.exit.if.then6.i_crit_edge:     ; preds = %kernfs_dentry_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6.i

kernfs_dentry_node.exit.if.end_crit_edge:         ; preds = %kernfs_dentry_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %kernfs_dentry_node.exit
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %13 to i64
  %call.i.i = tail call i32 %11(ptr noundef %ctx, ptr noundef nonnull @.str.31, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i64 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i64, label %if.end3.thread.i, label %if.then.i.cleanup32_crit_edge

if.then.i.cleanup32_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

if.end3.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1, ptr %pos.i, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %kernfs_dentry_node.exit.if.then6.i_crit_edge
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 8
  %17 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dentry1, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #13
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #13
  %conv.i20.i = zext i32 %24 to i64
  %call1.i.i = tail call i32 %16(ptr noundef %ctx, ptr noundef nonnull @.str.32, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i21.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i21.i, label %if.end9.i, label %if.then6.i.cleanup32_crit_edge

if.then6.i.cleanup32_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 2, ptr %pos.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end9.i, %kernfs_dentry_node.exit.if.end_crit_edge
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 3
  %26 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  %spec.select.i = select i1 %tobool.not.i, ptr %retval.0.i, ptr %27
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %28 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %29, i32 0, i32 8
  tail call void @down_read(ptr noundef %kernfs_rwsem) #13
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %retval.0.i, i32 0, i32 11
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags.i, align 8
  %32 = and i16 %31, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.i.not = icmp eq i16 %32, 0
  br i1 %tobool.i.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info, align 16
  %ns6 = getelementptr inbounds %struct.kernfs_super_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %ns6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ns6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %ns.0 = phi ptr [ %38, %if.then5 ], [ null, %if.end.if.end7_crit_edge ]
  %39 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %pos.i, align 8
  %call9 = tail call fastcc ptr @kernfs_dir_pos(ptr noundef %ns.0, ptr noundef %retval.0.i, i64 noundef %40, ptr noundef %7)
  %tobool.not75 = icmp eq ptr %call9, null
  br i1 %tobool.not75, label %if.end7.for.end_crit_edge, label %if.end7.if.then.i68_crit_edge

if.end7.if.then.i68_crit_edge:                    ; preds = %if.end7
  br label %if.then.i68

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then.i68:                                      ; preds = %lor.rhs.i.if.then.i68_crit_edge, %if.end7.if.then.i68_crit_edge
  %pos.076 = phi ptr [ %call9, %if.end7.if.then.i68_crit_edge ], [ %add.ptr25.i, %lor.rhs.i.if.then.i68_crit_edge ]
  %name10 = getelementptr inbounds %struct.kernfs_node, ptr %pos.076, i32 0, i32 4
  %41 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name10, align 8
  %mode.i = getelementptr inbounds %struct.kernfs_node, ptr %pos.076, i32 0, i32 12
  %43 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %mode.i, align 2
  %45 = lshr i16 %44, 12
  %conv1.i = zext i16 %45 to i32
  %call12 = tail call i32 @strlen(ptr noundef %42) #19
  %id.i = getelementptr inbounds %struct.kernfs_node, ptr %pos.076, i32 0, i32 10
  %46 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %id.i, align 8
  %hash = getelementptr inbounds %struct.kernfs_node, ptr %pos.076, i32 0, i32 7
  %48 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hash, align 4
  %conv14 = zext i32 %49 to i64
  %50 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv14, ptr %pos.i, align 8
  %51 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %pos.076, ptr %private_data, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %pos.076, i32 noundef 4) #13
  %52 = ptrtoint ptr %pos.076 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %pos.076, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool1.not.i = icmp eq i32 %53, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.then.i68.kernfs_get.exit_crit_edge, !prof !96

if.then.i68.kernfs_get.exit_crit_edge:            ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_get.exit

do.end.i:                                         ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %kernfs_get.exit

kernfs_get.exit:                                  ; preds = %do.end.i, %if.then.i68.kernfs_get.exit_crit_edge
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pos.076, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %pos.076, i32 1, i32 3, i32 1) #13
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pos.076, ptr nonnull %pos.076, i32 1, ptr nonnull elementtype(i32) %pos.076) #13, !srcloc !97
  tail call void @up_read(ptr noundef %kernfs_rwsem) #13
  %conv18 = and i64 %47, 4294967295
  %55 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctx, align 8
  %57 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %pos.i, align 8
  %call.i = tail call i32 %56(ptr noundef %ctx, ptr noundef %42, i32 noundef %call12, i64 noundef %58, i64 noundef %conv18, i32 noundef %conv1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end21, label %kernfs_get.exit.cleanup32_crit_edge

kernfs_get.exit.cleanup32_crit_edge:              ; preds = %kernfs_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

if.end21:                                         ; preds = %kernfs_get.exit
  tail call void @down_read(ptr noundef %kernfs_rwsem) #13
  %59 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %pos.i, align 8
  %conv.i = and i64 %60, 4294967295
  %call.i71 = tail call fastcc ptr @kernfs_dir_pos(ptr noundef %ns.0, ptr noundef %retval.0.i, i64 noundef %conv.i, ptr noundef nonnull %pos.076) #13
  %tobool.not.i72 = icmp eq ptr %call.i71, null
  br i1 %tobool.not.i72, label %if.end21.for.end_crit_edge, label %do.body.preheader.i

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.preheader.i:                              ; preds = %if.end21
  %rb18.i = getelementptr inbounds %struct.kernfs_node, ptr %call.i71, i32 0, i32 5
  %call119.i = tail call ptr @rb_next(ptr noundef %rb18.i) #13
  %tobool2.not20.i = icmp eq ptr %call119.i, null
  %add.ptr21.i = getelementptr i8, ptr %call119.i, i32 -44
  %tobool4.not1722.i = icmp eq ptr %add.ptr21.i, null
  %tobool4.not23.i = or i1 %tobool2.not20.i, %tobool4.not1722.i
  br i1 %tobool4.not23.i, label %do.body.preheader.i.for.end_crit_edge, label %do.body.preheader.i.land.rhs.i_crit_edge

do.body.preheader.i.land.rhs.i_crit_edge:         ; preds = %do.body.preheader.i
  br label %land.rhs.i

do.body.preheader.i.for.end_crit_edge:            ; preds = %do.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.rhs.i:                                       ; preds = %do.body.backedge.i.land.rhs.i_crit_edge, %do.body.preheader.i.land.rhs.i_crit_edge
  %add.ptr25.i = phi ptr [ %add.ptr.i, %do.body.backedge.i.land.rhs.i_crit_edge ], [ %add.ptr21.i, %do.body.preheader.i.land.rhs.i_crit_edge ]
  %call124.i = phi ptr [ %call1.i, %do.body.backedge.i.land.rhs.i_crit_edge ], [ %call119.i, %do.body.preheader.i.land.rhs.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %61 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.kernfs_active.exit.i_crit_edge, label %land.rhs.i.i

land.rhs.i.kernfs_active.exit.i_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit.i

land.rhs.i.i:                                     ; preds = %land.rhs.i
  %parent.i.i.i = getelementptr i8, ptr %call124.i, i32 -8
  %62 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %63, null
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr %add.ptr25.i, ptr %63
  %root.i.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i.i, i32 0, i32 8, i32 0, i32 2
  %64 = ptrtoint ptr %root.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %root.i.i.i, align 8
  %dep_map.i.i = getelementptr inbounds %struct.kernfs_root, ptr %65, i32 0, i32 8, i32 6
  %call.i.i.i73 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i73)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i73, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.kernfs_active.exit.i_crit_edge, !prof !96

land.rhs.i.i.kernfs_active.exit.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef 9, ptr noundef null) #13
  br label %kernfs_active.exit.i

kernfs_active.exit.i:                             ; preds = %do.end.i.i, %land.rhs.i.i.kernfs_active.exit.i_crit_edge, %land.rhs.i.kernfs_active.exit.i_crit_edge
  %active.i.i = getelementptr i8, ptr %call124.i, i32 -40
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active.i.i, i32 noundef 4) #13
  %66 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp26.i.i = icmp sgt i32 %67, -1
  br i1 %cmp26.i.i, label %lor.rhs.i, label %kernfs_active.exit.i.do.body.backedge.i_crit_edge

kernfs_active.exit.i.do.body.backedge.i_crit_edge: ; preds = %kernfs_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.backedge.i

lor.rhs.i:                                        ; preds = %kernfs_active.exit.i
  %ns6.i = getelementptr i8, ptr %call124.i, i32 12
  %68 = ptrtoint ptr %ns6.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ns6.i, align 8
  %cmp.not.i = icmp eq ptr %69, %ns.0
  br i1 %cmp.not.i, label %lor.rhs.i.if.then.i68_crit_edge, label %lor.rhs.i.do.body.backedge.i_crit_edge

lor.rhs.i.do.body.backedge.i_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.backedge.i

lor.rhs.i.if.then.i68_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i68

do.body.backedge.i:                               ; preds = %lor.rhs.i.do.body.backedge.i_crit_edge, %kernfs_active.exit.i.do.body.backedge.i_crit_edge
  %rb.i = getelementptr inbounds %struct.kernfs_node, ptr %add.ptr25.i, i32 0, i32 5
  %call1.i = tail call ptr @rb_next(ptr noundef %rb.i) #13
  %tobool2.not.i = icmp eq ptr %call1.i, null
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 -44
  %tobool4.not17.i = icmp eq ptr %add.ptr.i, null
  %tobool4.not.i = or i1 %tobool2.not.i, %tobool4.not17.i
  br i1 %tobool4.not.i, label %do.body.backedge.i.for.end_crit_edge, label %do.body.backedge.i.land.rhs.i_crit_edge

do.body.backedge.i.land.rhs.i_crit_edge:          ; preds = %do.body.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

do.body.backedge.i.for.end_crit_edge:             ; preds = %do.body.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %do.body.backedge.i.for.end_crit_edge, %do.body.preheader.i.for.end_crit_edge, %if.end21.for.end_crit_edge, %if.end7.for.end_crit_edge
  tail call void @up_read(ptr noundef %kernfs_rwsem) #13
  %70 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %private_data, align 4
  %71 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 2147483647, ptr %pos.i, align 8
  br label %cleanup32

cleanup32:                                        ; preds = %for.end, %kernfs_get.exit.cleanup32_crit_edge, %if.then6.i.cleanup32_crit_edge, %if.then.i.cleanup32_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_dir_fop_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kernfs_put(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kernfs_setattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_kernfs_init_security(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !86) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !101

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #13
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_get_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_contended(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquired(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_drain_open_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kernfs_dir_pos(ptr noundef readnone %ns, ptr noundef readonly %parent, i64 noundef %hash, ptr noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pos, null
  br i1 %tobool.not, label %entry.land.lhs.true9_crit_edge, label %if.then

entry.land.lhs.true9_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true9

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.then.kernfs_active.exit_crit_edge, label %land.rhs.i

if.then.kernfs_active.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit

land.rhs.i:                                       ; preds = %if.then
  %parent.i.i = getelementptr inbounds %struct.kernfs_node, ptr %pos, i32 0, i32 3
  %1 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %pos, ptr %2
  %root.i.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i, i32 0, i32 8, i32 0, i32 2
  %3 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %root.i.i, align 8
  %dep_map.i = getelementptr inbounds %struct.kernfs_root, ptr %4, i32 0, i32 8, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.kernfs_active.exit_crit_edge, !prof !96

land.rhs.i.kernfs_active.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef 9, ptr noundef null) #13
  br label %kernfs_active.exit

kernfs_active.exit:                               ; preds = %do.end.i, %land.rhs.i.kernfs_active.exit_crit_edge, %if.then.kernfs_active.exit_crit_edge
  %active.i = getelementptr inbounds %struct.kernfs_node, ptr %pos, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active.i, i32 noundef 4) #13
  %5 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp26.i = icmp sgt i32 %6, -1
  br i1 %cmp26.i, label %land.lhs.true, label %kernfs_active.exit.land.end.thread_crit_edge

kernfs_active.exit.land.end.thread_crit_edge:     ; preds = %kernfs_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.thread

land.lhs.true:                                    ; preds = %kernfs_active.exit
  %parent1 = getelementptr inbounds %struct.kernfs_node, ptr %pos, i32 0, i32 3
  %7 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent1, align 4
  %cmp = icmp eq ptr %8, %parent
  br i1 %cmp, label %land.end, label %land.lhs.true.land.end.thread_crit_edge

land.lhs.true.land.end.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.lhs.true.land.end.thread_crit_edge, %kernfs_active.exit.land.end.thread_crit_edge
  tail call void @kernfs_put(ptr noundef nonnull %pos)
  br label %land.lhs.true9

land.end:                                         ; preds = %land.lhs.true
  %hash2 = getelementptr inbounds %struct.kernfs_node, ptr %pos, i32 0, i32 7
  %9 = ptrtoint ptr %hash2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hash2, align 4
  %conv = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %hash)
  %cmp3 = icmp eq i64 %conv, %hash
  tail call void @kernfs_put(ptr noundef nonnull %pos)
  br i1 %cmp3, label %land.end.land.rhs33.preheader_crit_edge, label %land.end.land.lhs.true9_crit_edge

land.end.land.lhs.true9_crit_edge:                ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true9

land.end.land.rhs33.preheader_crit_edge:          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs33.preheader

land.lhs.true9:                                   ; preds = %land.end.land.lhs.true9_crit_edge, %land.end.thread, %entry.land.lhs.true9_crit_edge
  %11 = add i64 %hash, -2
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483645, i64 %11)
  %12 = icmp ult i64 %11, 2147483645
  br i1 %12, label %if.then15, label %land.lhs.true9.while.end50_crit_edge

land.lhs.true9.while.end50_crit_edge:             ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end50

if.then15:                                        ; preds = %land.lhs.true9
  %children = getelementptr inbounds %struct.kernfs_node, ptr %parent, i32 0, i32 8, i32 0, i32 1
  %13 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.088 = load ptr, ptr %children, align 4
  %tobool16.not89 = icmp eq ptr %node.088, null
  br i1 %tobool16.not89, label %if.then15.while.end50_crit_edge, label %if.then15.while.body_crit_edge

if.then15.while.body_crit_edge:                   ; preds = %if.then15
  br label %while.body

if.then15.while.end50_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end50

while.body:                                       ; preds = %if.end29.while.body_crit_edge, %if.then15.while.body_crit_edge
  %node.090 = phi ptr [ %node.0, %if.end29.while.body_crit_edge ], [ %node.088, %if.then15.while.body_crit_edge ]
  %hash17 = getelementptr i8, ptr %node.090, i32 16
  %14 = ptrtoint ptr %hash17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hash17, align 4
  %conv18 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv18, i64 %hash)
  %cmp19 = icmp sgt i64 %conv18, %hash
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %node.090, i32 0, i32 2
  br label %if.end29

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %conv18, i64 %hash)
  %cmp24 = icmp ult i64 %conv18, %hash
  br i1 %cmp24, label %if.then26, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %node.090, i32 0, i32 1
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then21
  %node.1.in = phi ptr [ %rb_left, %if.then21 ], [ %rb_right, %if.then26 ]
  %16 = ptrtoint ptr %node.1.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %node.0 = load ptr, ptr %node.1.in, align 4
  %tobool16.not = icmp eq ptr %node.0, null
  br i1 %tobool16.not, label %if.end29.if.end30_crit_edge, label %if.end29.while.body_crit_edge

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end29.if.end30_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.end30:                                         ; preds = %if.end29.if.end30_crit_edge, %if.else.if.end30_crit_edge
  %add.ptr.le92 = getelementptr i8, ptr %node.090, i32 -44
  %tobool32.not94 = icmp eq ptr %add.ptr.le92, null
  br i1 %tobool32.not94, label %if.end30.while.end50_crit_edge, label %if.end30.land.rhs33.preheader_crit_edge

if.end30.land.rhs33.preheader_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs33.preheader

if.end30.while.end50_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end50

land.rhs33.preheader:                             ; preds = %if.end30.land.rhs33.preheader_crit_edge, %land.end.land.rhs33.preheader_crit_edge
  %pos.addr.595.ph = phi ptr [ %pos, %land.end.land.rhs33.preheader_crit_edge ], [ %add.ptr.le92, %if.end30.land.rhs33.preheader_crit_edge ]
  br label %land.rhs33

land.rhs33:                                       ; preds = %while.body40.land.rhs33_crit_edge, %land.rhs33.preheader
  %pos.addr.595 = phi ptr [ %add.ptr48, %while.body40.land.rhs33_crit_edge ], [ %pos.addr.595.ph, %land.rhs33.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i72 = icmp eq i32 %17, 0
  br i1 %tobool.not.i72, label %land.rhs33.kernfs_active.exit85_crit_edge, label %land.rhs.i80

land.rhs33.kernfs_active.exit85_crit_edge:        ; preds = %land.rhs33
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit85

land.rhs.i80:                                     ; preds = %land.rhs33
  %parent.i.i73 = getelementptr inbounds %struct.kernfs_node, ptr %pos.addr.595, i32 0, i32 3
  %18 = ptrtoint ptr %parent.i.i73 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i.i73, align 4
  %tobool.not.i.i74 = icmp eq ptr %19, null
  %spec.select.i.i75 = select i1 %tobool.not.i.i74, ptr %pos.addr.595, ptr %19
  %root.i.i76 = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i.i75, i32 0, i32 8, i32 0, i32 2
  %20 = ptrtoint ptr %root.i.i76 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %root.i.i76, align 8
  %dep_map.i77 = getelementptr inbounds %struct.kernfs_root, ptr %21, i32 0, i32 8, i32 6
  %call.i.i78 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i77, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %cmp.not.i79 = icmp eq i32 %call.i.i78, 0
  br i1 %cmp.not.i79, label %do.end.i81, label %land.rhs.i80.kernfs_active.exit85_crit_edge, !prof !96

land.rhs.i80.kernfs_active.exit85_crit_edge:      ; preds = %land.rhs.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %kernfs_active.exit85

do.end.i81:                                       ; preds = %land.rhs.i80
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef 9, ptr noundef null) #13
  br label %kernfs_active.exit85

kernfs_active.exit85:                             ; preds = %do.end.i81, %land.rhs.i80.kernfs_active.exit85_crit_edge, %land.rhs33.kernfs_active.exit85_crit_edge
  %active.i82 = getelementptr inbounds %struct.kernfs_node, ptr %pos.addr.595, i32 0, i32 1
  %call.i.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active.i82, i32 noundef 4) #13
  %22 = ptrtoint ptr %active.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %active.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp26.i84 = icmp sgt i32 %23, -1
  br i1 %cmp26.i84, label %lor.rhs, label %kernfs_active.exit85.while.body40_crit_edge

kernfs_active.exit85.while.body40_crit_edge:      ; preds = %kernfs_active.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body40

lor.rhs:                                          ; preds = %kernfs_active.exit85
  %ns35 = getelementptr inbounds %struct.kernfs_node, ptr %pos.addr.595, i32 0, i32 6
  %24 = ptrtoint ptr %ns35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ns35, align 8
  %cmp36.not = icmp eq ptr %25, %ns
  br i1 %cmp36.not, label %lor.rhs.while.end50_crit_edge, label %lor.rhs.while.body40_crit_edge

lor.rhs.while.body40_crit_edge:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body40

lor.rhs.while.end50_crit_edge:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end50

while.body40:                                     ; preds = %lor.rhs.while.body40_crit_edge, %kernfs_active.exit85.while.body40_crit_edge
  %rb = getelementptr inbounds %struct.kernfs_node, ptr %pos.addr.595, i32 0, i32 5
  %call42 = tail call ptr @rb_next(ptr noundef %rb) #13
  %tobool43.not = icmp eq ptr %call42, null
  %add.ptr48 = getelementptr i8, ptr %call42, i32 -44
  %tobool32.not106 = icmp eq ptr %add.ptr48, null
  %tobool32.not = or i1 %tobool43.not, %tobool32.not106
  br i1 %tobool32.not, label %while.body40.while.end50_crit_edge, label %while.body40.land.rhs33_crit_edge

while.body40.land.rhs33_crit_edge:                ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs33

while.body40.while.end50_crit_edge:               ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end50

while.end50:                                      ; preds = %while.body40.while.end50_crit_edge, %lor.rhs.while.end50_crit_edge, %if.end30.while.end50_crit_edge, %if.then15.while.end50_crit_edge, %land.lhs.true9.while.end50_crit_edge
  %pos.addr.5.lcssa = phi ptr [ null, %if.end30.while.end50_crit_edge ], [ null, %land.lhs.true9.while.end50_crit_edge ], [ null, %if.then15.while.end50_crit_edge ], [ null, %while.body40.while.end50_crit_edge ], [ %pos.addr.595, %lor.rhs.while.end50_crit_edge ]
  ret ptr %pos.addr.5.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !63, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !78, !80, !82, !84}
!llvm.named.register.sp = !{!86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__ksymtab_kernfs_path_from_node, !1, !"__ksymtab_kernfs_path_from_node", i1 false, i1 false}
!1 = !{!"../fs/kernfs/dir.c", i32 220, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/kernfs/dir.c", i32 235, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pr_cont_kernfs_name._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @pr_cont_kernfs_name._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/kernfs/dir.c", i32 256, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @pr_cont_kernfs_path._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @pr_cont_kernfs_path._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/kernfs/dir.c", i32 261, i32 3}
!15 = !{ptr @pr_cont_kernfs_path._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @pr_cont_kernfs_path._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @pr_cont_kernfs_path._entry.8, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../fs/kernfs/dir.c", i32 265, i32 2}
!19 = !{ptr @pr_cont_kernfs_path._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_kernfs_get, !21, !"__ksymtab_kernfs_get", i1 false, i1 false}
!21 = !{!"../fs/kernfs/dir.c", i32 500, i32 1}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../fs/kernfs/dir.c", i32 523, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__ksymtab_kernfs_put, !27, !"__ksymtab_kernfs_put", i1 false, i1 false}
!27 = !{!"../fs/kernfs/dir.c", i32 551, i32 1}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/kernfs/dir.c", i32 730, i32 6}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__ksymtab_kernfs_find_and_get_ns, !33, !"__ksymtab_kernfs_find_and_get_ns", i1 false, i1 false}
!33 = !{!"../fs/kernfs/dir.c", i32 872, i32 1}
!34 = !{ptr @kernfs_create_root.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../fs/kernfs/dir.c", i32 918, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @kernfs_create_root.__key.16, !38, !"__key", i1 false, i1 false}
!38 = !{!"../fs/kernfs/dir.c", i32 947, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @kernfs_dops, !41, !"kernfs_dops", i1 false, i1 false}
!41 = !{!"../fs/kernfs/dir.c", i32 1108, i32 32}
!42 = !{ptr @kernfs_dir_iops, !43, !"kernfs_dir_iops", i1 false, i1 false}
!43 = !{!"../fs/kernfs/dir.c", i32 1224, i32 31}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../fs/kernfs/dir.c", i32 1316, i32 3}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../fs/kernfs/dir.c", i32 1317, i32 3}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../fs/kernfs/dir.c", i32 1525, i32 3}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/kernfs/dir.c", i32 1555, i32 3}
!52 = !{ptr @kernfs_dir_fops, !53, !"kernfs_dir_fops", i1 false, i1 false}
!53 = !{!"../fs/kernfs/dir.c", i32 1755, i32 30}
!54 = !{ptr @kernfs_pr_cont_buf, !55, !"kernfs_pr_cont_buf", i1 false, i1 false}
!55 = !{!"../fs/kernfs/dir.c", i32 21, i32 13}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/kernfs/dir.c", i32 20, i32 8}
!58 = !{ptr @kernfs_rename_lock, !57, !"kernfs_rename_lock", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/kernfs/dir.c", i32 44, i32 23}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/kernfs/dir.c", i32 46, i32 46}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/kernfs/dir.c", i32 22, i32 8}
!65 = !{ptr @kernfs_idr_lock, !64, !"kernfs_idr_lock", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!68 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @xa_init_flags.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/kernfs/dir.c", i32 1340, i32 2}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @__kernfs_remove.__UNIQUE_ID_ddebug222, !74, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../fs/kernfs/dir.c", i32 1369, i32 4}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../fs/kernfs/dir.c", i32 465, i32 2}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!86 = !{!"sp"}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{i64 2148462748, i64 2148462774, i64 2148462803, i64 2148462837, i64 2148462868, i64 2148462891}
!98 = !{i64 2148564571}
!99 = !{i64 948261, i64 948285, i64 948306, i64 948323, i64 948340}
!100 = !{i64 2148564797}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2148551200}
!103 = !{i64 2148465933, i64 2148465965, i64 2148465994, i64 2148466028, i64 2148466059, i64 2148466082}
!104 = !{i64 2148551429}
!105 = !{i64 2152605562}
!106 = !{i64 2148462167}
!107 = !{i64 948767, i64 948792, i64 948814, i64 948830, i64 948842, i64 948862, i64 948886, i64 948902, i64 948914}
!108 = !{i64 2148462355}
!109 = !{i64 2148465213, i64 2148465239, i64 2148465268, i64 2148465302, i64 2148465333, i64 2148465356}
!110 = !{i64 2148276141, i64 2148276146, i64 2148276159, i64 2148276203, i64 2148276237, i64 2148276258}
