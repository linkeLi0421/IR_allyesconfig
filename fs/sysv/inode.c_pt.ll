; ModuleID = '/llk/IR_all_yes/fs/sysv/inode.c_pt.bc'
source_filename = "../fs/sysv/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sysv_sb_info = type { ptr, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i16, i32, %struct.mutex }
%struct.sysv_inode = type { i16, i16, i16, i16, i32, [39 x i8], i8, i32, i32, i32 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.sysv_inode_info = type { [13 x i32], i32, %struct.inode }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@sysv_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@sysv_file_operations = external dso_local constant %struct.file_operations, align 4
@sysv_aops = external dso_local constant %struct.address_space_operations, align 4
@sysv_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@sysv_dir_operations = external dso_local constant %struct.file_operations, align 4
@sysv_symlink_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @page_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysv_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@sysv_iget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Bad inode number on dev %s: %d is out of range\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sysv_iget\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/sysv/inode.c\00", [16 x i8] zeroinitializer }, align 32
@sysv_iget._entry_ptr = internal global ptr @sysv_iget._entry, section ".printk_index", align 4
@sysv_iget._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Major problem: unable to read inode from dev %s\0A\00", [47 x i8] zeroinitializer }, align 32
@sysv_iget._entry_ptr.5 = internal global ptr @sysv_iget._entry.3, section ".printk_index", align 4
@sysv_sops = dso_local constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @sysv_alloc_inode, ptr null, ptr @sysv_free_in_core_inode, ptr null, ptr @sysv_write_inode, ptr null, ptr @sysv_evict_inode, ptr @sysv_put_super, ptr @sysv_sync_fs, ptr null, ptr null, ptr null, ptr null, ptr @sysv_statfs, ptr @sysv_remount, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sysv_inode_cache\00", [47 x i8] zeroinitializer }, align 32
@sysv_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__sysv_write_inode._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 243, ptr null, ptr null }, align 1
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__sysv_write_inode\00", [45 x i8] zeroinitializer }, align 32
@__sysv_write_inode._entry_ptr = internal global ptr @__sysv_write_inode._entry, section ".printk_index", align 4
@__sysv_write_inode._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 248, ptr null, ptr null }, align 1
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to read i-node block\0A\00", [35 x i8] zeroinitializer }, align 32
@__sysv_write_inode._entry_ptr.10 = internal global ptr @__sysv_write_inode._entry.8, section ".printk_index", align 4
@fs_overflowuid = external dso_local local_unnamed_addr global i32, align 4
@fs_overflowgid = external dso_local local_unnamed_addr global i32, align 4
@__sysv_write_inode._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 272, ptr null, ptr null }, align 1
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IO error syncing sysv inode [%s:%08x]\0A\00", [57 x i8] zeroinitializer }, align 32
@__sysv_write_inode._entry_ptr.13 = internal global ptr @__sysv_write_inode._entry.11, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 180, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 193, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"sysv_sops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 327, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 340, i32 40 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"sysv_inode_cachep\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 303, i32 27 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 242, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 248, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [19 x i8] c"../fs/sysv/inode.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 271, i32 25 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__sysv_write_inode._entry, ptr @__sysv_write_inode._entry.11, ptr @__sysv_write_inode._entry.8, ptr @__sysv_write_inode._entry_ptr, ptr @__sysv_write_inode._entry_ptr.10, ptr @__sysv_write_inode._entry_ptr.13, ptr @sysv_iget._entry, ptr @sysv_iget._entry.3, ptr @sysv_iget._entry_ptr, ptr @sysv_iget._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @sysv_sops, ptr @.str.6, ptr @sysv_inode_cachep, ptr @.str.7, ptr @.str.9, ptr @.str.12], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_iget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_iget._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sysv_set_inode(ptr noundef %inode, i32 noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %if.else21 [
    i16 -32768, label %if.then
    i16 16384, label %if.then7
    i16 -24576, label %if.then17
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %4 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sysv_file_inode_operations, ptr %i_op, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sysv_file_operations, ptr %5, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %7 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sysv_aops, ptr %a_ops, align 4
  br label %if.end24

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_op8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %10 = ptrtoint ptr %i_op8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sysv_dir_inode_operations, ptr %i_op8, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sysv_dir_operations, ptr %11, align 8
  %i_mapping9 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %13 = ptrtoint ptr %i_mapping9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_mapping9, align 8
  %a_ops10 = getelementptr inbounds %struct.address_space, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %a_ops10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sysv_aops, ptr %a_ops10, align 4
  br label %if.end24

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_op18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %16 = ptrtoint ptr %i_op18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sysv_symlink_inode_operations, ptr %i_op18, align 8
  tail call void @inode_nohighmem(ptr noundef %inode) #6
  %i_mapping19 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %17 = ptrtoint ptr %i_mapping19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping19, align 8
  %a_ops20 = getelementptr inbounds %struct.address_space, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %a_ops20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sysv_aops, ptr %a_ops20, align 4
  br label %if.end24

if.else21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %1, i32 noundef %rdev) #6
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then17, %if.then7, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sysv_iget(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #6
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ino)
  %tobool.not = icmp eq i32 %ino, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %s_ninodes = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %s_ninodes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_ninodes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %ino)
  %cmp = icmp ult i32 %4, %ino
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %s_id, i32 noundef %ino) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %ino) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %i_state = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 24
  %5 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_state, align 8
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %call11 = call ptr @sysv_raw_inode(ptr noundef %sb, i32 noundef %ino, ptr noundef nonnull %bh) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end21

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %i_sb = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_id18 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 39
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %s_id18) #9
  call void @iget_failed(ptr noundef nonnull %call3) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %call11 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %call11, align 4
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp.not.i = icmp eq i8 %12, 2
  %13 = call i16 @llvm.bswap.i16(i16 %10) #6
  %retval.0.i = select i1 %cmp.not.i, i16 %10, i16 %13
  %14 = ptrtoint ptr %call3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %retval.0.i, ptr %call3, align 8
  %i_uid = getelementptr inbounds %struct.sysv_inode, ptr %call11, i32 0, i32 2
  %15 = ptrtoint ptr %i_uid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %i_uid, align 4
  %17 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp.not.i132 = icmp eq i8 %18, 2
  %19 = call i16 @llvm.bswap.i16(i16 %16) #6
  %retval.0.i133 = select i1 %cmp.not.i132, i16 %16, i16 %19
  %conv = zext i16 %retval.0.i133 to i32
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 2
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 53
  %22 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = call i32 @make_kuid(ptr noundef %23, i32 noundef %conv) #6
  %24 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %i_gid = getelementptr inbounds %struct.sysv_inode, ptr %call11, i32 0, i32 3
  %25 = ptrtoint ptr %i_gid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %i_gid, align 2
  %27 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp.not.i135 = icmp eq i8 %28, 2
  %29 = call i16 @llvm.bswap.i16(i16 %26) #6
  %retval.0.i136 = select i1 %cmp.not.i135, i16 %26, i16 %29
  %conv26 = zext i16 %retval.0.i136 to i32
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 3
  %30 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i138 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 53
  %32 = ptrtoint ptr %s_user_ns.i.i138 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_user_ns.i.i138, align 8
  %call1.i139 = call i32 @make_kgid(ptr noundef %33, i32 noundef %conv26) #6
  %34 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call1.i139, ptr %i_gid.i, align 8
  %i_nlink = getelementptr inbounds %struct.sysv_inode, ptr %call11, i32 0, i32 1
  %35 = ptrtoint ptr %i_nlink to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %i_nlink, align 2
  %37 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %cmp.not.i141 = icmp eq i8 %38, 2
  %39 = call i16 @llvm.bswap.i16(i16 %36) #6
  %retval.0.i142 = select i1 %cmp.not.i141, i16 %36, i16 %39
  %conv28 = zext i16 %retval.0.i142 to i32
  call void @set_nlink(ptr noundef nonnull %call3, i32 noundef %conv28) #6
  %i_size = getelementptr inbounds %struct.sysv_inode, ptr %call11, i32 0, i32 4
  %40 = ptrtoint ptr %i_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_size, align 4
  %42 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %s_bytesex.i, align 4
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %43, label %if.end21.fs32_to_cpu.exit_crit_edge [
    i8 1, label %if.then.i
    i8 0, label %if.then6.i
  ]

if.end21.fs32_to_cpu.exit_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs32_to_cpu.exit

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i = shl i32 %41, 8
  %shl.i.i = and i32 %and.i.i, -16711936
  %and1.i.i = lshr i32 %41, 8
  %shr.i.i = and i32 %and1.i.i, 16711935
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  br label %fs32_to_cpu.exit

if.then6.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %45 = call i32 @llvm.bswap.i32(i32 %41) #6
  br label %fs32_to_cpu.exit

fs32_to_cpu.exit:                                 ; preds = %if.then6.i, %if.then.i, %if.end21.fs32_to_cpu.exit_crit_edge
  %retval.0.i144 = phi i32 [ %or.i.i, %if.then.i ], [ %45, %if.then6.i ], [ %41, %if.end21.fs32_to_cpu.exit_crit_edge ]
  %conv30 = zext i32 %retval.0.i144 to i64
  %i_size31 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 14
  %46 = ptrtoint ptr %i_size31 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv30, ptr %i_size31, align 8
  %i_atime = getelementptr inbounds %struct.sysv_inode, ptr %call11, i32 0, i32 7
  %47 = ptrtoint ptr %i_atime to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_atime, align 4
  %49 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %s_bytesex.i, align 4
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %50, label %fs32_to_cpu.exit.fs32_to_cpu.exit154_crit_edge [
    i8 1, label %if.then.i151
    i8 0, label %if.then6.i152
  ]

fs32_to_cpu.exit.fs32_to_cpu.exit154_crit_edge:   ; preds = %fs32_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs32_to_cpu.exit154

if.then.i151:                                     ; preds = %fs32_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i146 = shl i32 %48, 8
  %shl.i.i147 = and i32 %and.i.i146, -16711936
  %and1.i.i148 = lshr i32 %48, 8
  %shr.i.i149 = and i32 %and1.i.i148, 16711935
  %or.i.i150 = or i32 %shl.i.i147, %shr.i.i149
  br label %fs32_to_cpu.exit154

if.then6.i152:                                    ; preds = %fs32_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #8
  %52 = call i32 @llvm.bswap.i32(i32 %48) #6
  br label %fs32_to_cpu.exit154

fs32_to_cpu.exit154:                              ; preds = %if.then6.i152, %if.then.i151, %fs32_to_cpu.exit.fs32_to_cpu.exit154_crit_edge
  %retval.0.i153 = phi i32 [ %or.i.i150, %if.then.i151 ], [ %52, %if.then6.i152 ], [ %48, %fs32_to_cpu.exit.fs32_to_cpu.exit154_crit_edge ]
  %conv33 = zext i32 %retval.0.i153 to i64
  %i_atime34 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 15
  %53 = ptrtoint ptr %i_atime34 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv33, ptr %i_atime34, align 8
  %i_mtime = getelementptr inbounds %struct.sysv_inode, ptr %call11, i32 0, i32 8
  %54 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_mtime, align 4
  %56 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %s_bytesex.i, align 4
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %57, label %fs32_to_cpu.exit154.fs32_to_cpu.exit164_crit_edge [
    i8 1, label %if.then.i161
    i8 0, label %if.then6.i162
  ]

fs32_to_cpu.exit154.fs32_to_cpu.exit164_crit_edge: ; preds = %fs32_to_cpu.exit154
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs32_to_cpu.exit164

if.then.i161:                                     ; preds = %fs32_to_cpu.exit154
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i156 = shl i32 %55, 8
  %shl.i.i157 = and i32 %and.i.i156, -16711936
  %and1.i.i158 = lshr i32 %55, 8
  %shr.i.i159 = and i32 %and1.i.i158, 16711935
  %or.i.i160 = or i32 %shl.i.i157, %shr.i.i159
  br label %fs32_to_cpu.exit164

if.then6.i162:                                    ; preds = %fs32_to_cpu.exit154
  call void @__sanitizer_cov_trace_pc() #8
  %59 = call i32 @llvm.bswap.i32(i32 %55) #6
  br label %fs32_to_cpu.exit164

fs32_to_cpu.exit164:                              ; preds = %if.then6.i162, %if.then.i161, %fs32_to_cpu.exit154.fs32_to_cpu.exit164_crit_edge
  %retval.0.i163 = phi i32 [ %or.i.i160, %if.then.i161 ], [ %59, %if.then6.i162 ], [ %55, %fs32_to_cpu.exit154.fs32_to_cpu.exit164_crit_edge ]
  %conv36 = zext i32 %retval.0.i163 to i64
  %i_mtime37 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 16
  %60 = ptrtoint ptr %i_mtime37 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv36, ptr %i_mtime37, align 8
  %i_ctime = getelementptr inbounds %struct.sysv_inode, ptr %call11, i32 0, i32 9
  %61 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %i_ctime, align 4
  %63 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %s_bytesex.i, align 4
  %65 = zext i8 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %64, label %fs32_to_cpu.exit164.fs32_to_cpu.exit174_crit_edge [
    i8 1, label %if.then.i171
    i8 0, label %if.then6.i172
  ]

fs32_to_cpu.exit164.fs32_to_cpu.exit174_crit_edge: ; preds = %fs32_to_cpu.exit164
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs32_to_cpu.exit174

if.then.i171:                                     ; preds = %fs32_to_cpu.exit164
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i166 = shl i32 %62, 8
  %shl.i.i167 = and i32 %and.i.i166, -16711936
  %and1.i.i168 = lshr i32 %62, 8
  %shr.i.i169 = and i32 %and1.i.i168, 16711935
  %or.i.i170 = or i32 %shl.i.i167, %shr.i.i169
  br label %fs32_to_cpu.exit174

if.then6.i172:                                    ; preds = %fs32_to_cpu.exit164
  call void @__sanitizer_cov_trace_pc() #8
  %66 = call i32 @llvm.bswap.i32(i32 %62) #6
  br label %fs32_to_cpu.exit174

fs32_to_cpu.exit174:                              ; preds = %if.then6.i172, %if.then.i171, %fs32_to_cpu.exit164.fs32_to_cpu.exit174_crit_edge
  %retval.0.i173 = phi i32 [ %or.i.i170, %if.then.i171 ], [ %66, %if.then6.i172 ], [ %62, %fs32_to_cpu.exit164.fs32_to_cpu.exit174_crit_edge ]
  %conv40 = zext i32 %retval.0.i173 to i64
  %i_ctime41 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 17
  %67 = ptrtoint ptr %i_ctime41 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv40, ptr %i_ctime41, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 17, i32 1
  %68 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %tv_nsec, align 8
  %tv_nsec45 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 15, i32 1
  %69 = ptrtoint ptr %tv_nsec45 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %tv_nsec45, align 8
  %tv_nsec47 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 16, i32 1
  %70 = ptrtoint ptr %tv_nsec47 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %tv_nsec47, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 22
  %71 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 0, ptr %i_blocks, align 8
  %add.ptr.i = getelementptr i8, ptr %call3, i32 -56
  br label %for.body

for.body:                                         ; preds = %read3byte.exit.for.body_crit_edge, %fs32_to_cpu.exit174
  %block.0203 = phi i32 [ 0, %fs32_to_cpu.exit174 ], [ %inc, %read3byte.exit.for.body_crit_edge ]
  %mul = mul nuw nsw i32 %block.0203, 3
  %arrayidx = getelementptr %struct.sysv_inode, ptr %call11, i32 0, i32 5, i32 %mul
  %arrayidx52 = getelementptr [13 x i32], ptr %add.ptr.i, i32 0, i32 %block.0203
  %72 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %s_bytesex.i, align 4
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %73, label %if.else20.i [
    i8 1, label %if.then.i176
    i8 0, label %if.then12.i
  ]

if.then.i176:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx, align 1
  %77 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx52, align 1
  %arrayidx3.i = getelementptr i8, ptr %arrayidx52, i32 1
  %78 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %arrayidx, i32 1
  %79 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx4.i, align 1
  %arrayidx5.i = getelementptr i8, ptr %arrayidx52, i32 2
  %81 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx5.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %arrayidx, i32 2
  %82 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx6.i, align 1
  br label %read3byte.exit

if.then12.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx, align 1
  %86 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %arrayidx52, align 1
  %arrayidx15.i = getelementptr i8, ptr %arrayidx, i32 1
  %87 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx15.i, align 1
  %arrayidx16.i = getelementptr i8, ptr %arrayidx52, i32 1
  %89 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx16.i, align 1
  %arrayidx17.i = getelementptr i8, ptr %arrayidx, i32 2
  %90 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx17.i, align 1
  %arrayidx18.i = getelementptr i8, ptr %arrayidx52, i32 2
  %92 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx18.i, align 1
  br label %read3byte.exit

if.else20.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %arrayidx52, align 1
  %94 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx, align 1
  %arrayidx23.i = getelementptr i8, ptr %arrayidx52, i32 1
  %96 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx23.i, align 1
  %arrayidx24.i = getelementptr i8, ptr %arrayidx, i32 1
  %97 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx24.i, align 1
  %arrayidx25.i = getelementptr i8, ptr %arrayidx52, i32 2
  %99 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx25.i, align 1
  %arrayidx26.i = getelementptr i8, ptr %arrayidx, i32 2
  %100 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx26.i, align 1
  br label %read3byte.exit

read3byte.exit:                                   ; preds = %if.else20.i, %if.then12.i, %if.then.i176
  %.sink.i = phi i8 [ 0, %if.then12.i ], [ %101, %if.else20.i ], [ %83, %if.then.i176 ]
  %arrayidx19.i = getelementptr i8, ptr %arrayidx52, i32 3
  %102 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %.sink.i, ptr %arrayidx19.i, align 1
  %inc = add nuw nsw i32 %block.0203, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.end, label %read3byte.exit.for.body_crit_edge

read3byte.exit.for.body_crit_edge:                ; preds = %read3byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %read3byte.exit
  %103 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %104, null
  br i1 %tobool.not.i, label %for.end.brelse.exit_crit_edge, label %if.then.i177

for.end.brelse.exit_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i177:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %104) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i177, %for.end.brelse.exit_crit_edge
  %i_dir_start_lookup = getelementptr i8, ptr %call3, i32 -4
  %105 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %i_dir_start_lookup, align 4
  %106 = ptrtoint ptr %call3 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %call3, align 8
  %108 = and i16 %107, -4096
  %109 = call i16 @llvm.fshl.i16(i16 %108, i16 %107, i16 3)
  %110 = xor i16 %109, 4
  %111 = zext i16 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %110, label %if.else21.i201 [
    i16 5, label %brelse.exit.if.then64_crit_edge
    i16 7, label %brelse.exit.if.then64_crit_edge204
    i16 0, label %if.then.i192
    i16 6, label %if.then7.i196
    i16 1, label %if.then17.i200
  ]

brelse.exit.if.then64_crit_edge204:               ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then64

brelse.exit.if.then64_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then64

if.then64:                                        ; preds = %brelse.exit.if.then64_crit_edge, %brelse.exit.if.then64_crit_edge204
  %112 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i, align 8
  %114 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %s_bytesex.i, align 4
  %116 = zext i8 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %115, label %if.then64.fs32_to_cpu.exit187_crit_edge [
    i8 1, label %if.then.i184
    i8 0, label %if.then6.i185
  ]

if.then64.fs32_to_cpu.exit187_crit_edge:          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs32_to_cpu.exit187

if.then.i184:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i179 = shl i32 %113, 8
  %shl.i.i180 = and i32 %and.i.i179, -16711936
  %and1.i.i181 = lshr i32 %113, 8
  %shr.i.i182 = and i32 %and1.i.i181, 16711935
  %or.i.i183 = or i32 %shl.i.i180, %shr.i.i182
  br label %fs32_to_cpu.exit187

if.then6.i185:                                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %117 = call i32 @llvm.bswap.i32(i32 %113) #6
  br label %fs32_to_cpu.exit187

fs32_to_cpu.exit187:                              ; preds = %if.then6.i185, %if.then.i184, %if.then64.fs32_to_cpu.exit187_crit_edge
  %retval.0.i186 = phi i32 [ %or.i.i183, %if.then.i184 ], [ %117, %if.then6.i185 ], [ %113, %if.then64.fs32_to_cpu.exit187_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %108)
  %cond = icmp eq i16 %108, 16384
  br i1 %cond, label %if.then7.i, label %if.else21.i

if.then7.i:                                       ; preds = %fs32_to_cpu.exit187
  call void @__sanitizer_cov_trace_pc() #8
  %i_op8.i = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 7
  %118 = ptrtoint ptr %i_op8.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @sysv_dir_inode_operations, ptr %i_op8.i, align 8
  %119 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 44
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @sysv_dir_operations, ptr %119, align 8
  %i_mapping9.i = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 9
  %121 = ptrtoint ptr %i_mapping9.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i_mapping9.i, align 8
  %a_ops10.i = getelementptr inbounds %struct.address_space, ptr %122, i32 0, i32 9
  %123 = ptrtoint ptr %a_ops10.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @sysv_aops, ptr %a_ops10.i, align 4
  br label %if.end70

if.else21.i:                                      ; preds = %fs32_to_cpu.exit187
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = shl i32 %retval.0.i186, 12
  %shl.i = and i32 %conv.i, 267386880
  %and2.i = and i32 %retval.0.i186, 255
  %or.i = or i32 %shl.i, %and2.i
  call void @init_special_inode(ptr noundef %call3, i16 noundef zeroext %107, i32 noundef %or.i) #6
  br label %if.end70

if.then.i192:                                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  %i_op.i189 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 7
  %124 = ptrtoint ptr %i_op.i189 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @sysv_file_inode_operations, ptr %i_op.i189, align 8
  %125 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 44
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @sysv_file_operations, ptr %125, align 8
  %i_mapping.i190 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 9
  %127 = ptrtoint ptr %i_mapping.i190 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %i_mapping.i190, align 8
  %a_ops.i191 = getelementptr inbounds %struct.address_space, ptr %128, i32 0, i32 9
  %129 = ptrtoint ptr %a_ops.i191 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @sysv_aops, ptr %a_ops.i191, align 4
  br label %if.end70

if.then7.i196:                                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  %i_op8.i193 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 7
  %130 = ptrtoint ptr %i_op8.i193 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @sysv_dir_inode_operations, ptr %i_op8.i193, align 8
  %131 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 44
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @sysv_dir_operations, ptr %131, align 8
  %i_mapping9.i194 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 9
  %133 = ptrtoint ptr %i_mapping9.i194 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i_mapping9.i194, align 8
  %a_ops10.i195 = getelementptr inbounds %struct.address_space, ptr %134, i32 0, i32 9
  %135 = ptrtoint ptr %a_ops10.i195 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @sysv_aops, ptr %a_ops10.i195, align 4
  br label %if.end70

if.then17.i200:                                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  %i_op18.i197 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 7
  %136 = ptrtoint ptr %i_op18.i197 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @sysv_symlink_inode_operations, ptr %i_op18.i197, align 8
  call void @inode_nohighmem(ptr noundef %call3) #6
  %i_mapping19.i198 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 9
  %137 = ptrtoint ptr %i_mapping19.i198 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i_mapping19.i198, align 8
  %a_ops20.i199 = getelementptr inbounds %struct.address_space, ptr %138, i32 0, i32 9
  %139 = ptrtoint ptr %a_ops20.i199 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @sysv_aops, ptr %a_ops20.i199, align 4
  br label %if.end70

if.else21.i201:                                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @init_special_inode(ptr noundef %call3, i16 noundef zeroext %107, i32 noundef 0) #6
  br label %if.end70

if.end70:                                         ; preds = %if.else21.i201, %if.then17.i200, %if.then7.i196, %if.then.i192, %if.else21.i, %if.then7.i
  call void @unlock_new_inode(ptr noundef %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %do.end16, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %do.end ], [ %call3, %if.end70 ], [ inttoptr (i32 -5 to ptr), %do.end16 ], [ %call3, %if.end7.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sysv_raw_inode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysv_write_inode(ptr nocapture noundef %inode, ptr nocapture noundef readonly %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %0 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @__sysv_write_inode(ptr noundef %inode, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__sysv_write_inode(ptr nocapture noundef %inode, i32 noundef %wait) unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #6
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !39
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %s_ninodes = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 27
  %7 = ptrtoint ptr %s_ninodes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_ninodes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp ugt i32 %6, %8
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %s_id = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 39
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %s_id, i32 noundef %6) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call ptr @sysv_raw_inode(ptr noundef %1, i32 noundef %6, ptr noundef nonnull %bh) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %9 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %inode, align 8
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp.not.i = icmp eq i8 %12, 2
  %13 = call i16 @llvm.bswap.i16(i16 %10) #6
  %retval.0.i = select i1 %cmp.not.i, i16 %10, i16 %13
  %14 = ptrtoint ptr %call3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %retval.0.i, ptr %call3, align 4
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 53
  %17 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %19 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %20 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = call i32 @from_kuid(ptr noundef %18, [1 x i32] %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call1.i)
  %tobool15.not = icmp ult i32 %call1.i, 65536
  br i1 %tobool15.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_overflowuid to i32))
  %21 = load i32, ptr @fs_overflowuid, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i146 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 53
  %24 = ptrtoint ptr %s_user_ns.i.i146 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_user_ns.i.i146, align 8
  %26 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack.i148 = load i32, ptr %i_uid.i, align 4
  %27 = insertvalue [1 x i32] undef, i32 %.unpack.i148, 0
  %call1.i149 = call i32 @from_kuid(ptr noundef %25, [1 x i32] %27) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %21, %cond.true ], [ %call1.i149, %cond.false ]
  %conv20 = trunc i32 %cond.in to i16
  %28 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp.not.i151 = icmp eq i8 %29, 2
  %30 = call i16 @llvm.bswap.i16(i16 %conv20) #6
  %retval.0.i152 = select i1 %cmp.not.i151, i16 %conv20, i16 %30
  %i_uid = getelementptr inbounds %struct.sysv_inode, ptr %call3, i32 0, i32 2
  %31 = ptrtoint ptr %i_uid to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %retval.0.i152, ptr %i_uid, align 4
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i154 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 53
  %34 = ptrtoint ptr %s_user_ns.i.i154 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_user_ns.i.i154, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %36 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack.i155 = load i32, ptr %i_gid.i, align 8
  %37 = insertvalue [1 x i32] undef, i32 %.unpack.i155, 0
  %call1.i156 = call i32 @from_kgid(ptr noundef %35, [1 x i32] %37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call1.i156)
  %tobool24.not = icmp ult i32 %call1.i156, 65536
  br i1 %tobool24.not, label %cond.false28, label %cond.true25

cond.true25:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_overflowgid to i32))
  %38 = load i32, ptr @fs_overflowgid, align 4
  br label %cond.end32

cond.false28:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i158 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 53
  %41 = ptrtoint ptr %s_user_ns.i.i158 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_user_ns.i.i158, align 8
  %43 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack.i160 = load i32, ptr %i_gid.i, align 8
  %44 = insertvalue [1 x i32] undef, i32 %.unpack.i160, 0
  %call1.i161 = call i32 @from_kgid(ptr noundef %42, [1 x i32] %44) #6
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false28, %cond.true25
  %cond33.in = phi i32 [ %38, %cond.true25 ], [ %call1.i161, %cond.false28 ]
  %conv34 = trunc i32 %cond33.in to i16
  %45 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp.not.i163 = icmp eq i8 %46, 2
  %47 = call i16 @llvm.bswap.i16(i16 %conv34) #6
  %retval.0.i164 = select i1 %cmp.not.i163, i16 %conv34, i16 %47
  %i_gid = getelementptr inbounds %struct.sysv_inode, ptr %call3, i32 0, i32 3
  %48 = ptrtoint ptr %i_gid to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %retval.0.i164, ptr %i_gid, align 2
  %49 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %conv36 = trunc i32 %51 to i16
  %52 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp.not.i166 = icmp eq i8 %53, 2
  %54 = call i16 @llvm.bswap.i16(i16 %conv36) #6
  %retval.0.i167 = select i1 %cmp.not.i166, i16 %conv36, i16 %54
  %i_nlink = getelementptr inbounds %struct.sysv_inode, ptr %call3, i32 0, i32 1
  %55 = ptrtoint ptr %i_nlink to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %retval.0.i167, ptr %i_nlink, align 2
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %56 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %i_size, align 8
  %conv38 = trunc i64 %57 to i32
  %58 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %s_bytesex.i, align 4
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %59, label %cond.end32.cpu_to_fs32.exit_crit_edge [
    i8 1, label %if.then.i
    i8 0, label %if.then6.i
  ]

cond.end32.cpu_to_fs32.exit_crit_edge:            ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_to_fs32.exit

if.then.i:                                        ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i = shl i32 %conv38, 8
  %shl.i.i = and i32 %and.i.i, -16711936
  %and1.i.i169 = lshr i32 %conv38, 8
  %shr.i.i170 = and i32 %and1.i.i169, 16711935
  %or.i.i = or i32 %shl.i.i, %shr.i.i170
  br label %cpu_to_fs32.exit

if.then6.i:                                       ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #8
  %61 = call i32 @llvm.bswap.i32(i32 %conv38) #6
  br label %cpu_to_fs32.exit

cpu_to_fs32.exit:                                 ; preds = %if.then6.i, %if.then.i, %cond.end32.cpu_to_fs32.exit_crit_edge
  %retval.0.i171 = phi i32 [ %or.i.i, %if.then.i ], [ %61, %if.then6.i ], [ %conv38, %cond.end32.cpu_to_fs32.exit_crit_edge ]
  %i_size40 = getelementptr inbounds %struct.sysv_inode, ptr %call3, i32 0, i32 4
  %62 = ptrtoint ptr %i_size40 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %retval.0.i171, ptr %i_size40, align 4
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %63 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %i_atime, align 8
  %conv41 = trunc i64 %64 to i32
  %65 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %s_bytesex.i, align 4
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %66, label %cpu_to_fs32.exit.cpu_to_fs32.exit181_crit_edge [
    i8 1, label %if.then.i178
    i8 0, label %if.then6.i179
  ]

cpu_to_fs32.exit.cpu_to_fs32.exit181_crit_edge:   ; preds = %cpu_to_fs32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_to_fs32.exit181

if.then.i178:                                     ; preds = %cpu_to_fs32.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i173 = shl i32 %conv41, 8
  %shl.i.i174 = and i32 %and.i.i173, -16711936
  %and1.i.i175 = lshr i32 %conv41, 8
  %shr.i.i176 = and i32 %and1.i.i175, 16711935
  %or.i.i177 = or i32 %shl.i.i174, %shr.i.i176
  br label %cpu_to_fs32.exit181

if.then6.i179:                                    ; preds = %cpu_to_fs32.exit
  call void @__sanitizer_cov_trace_pc() #8
  %68 = call i32 @llvm.bswap.i32(i32 %conv41) #6
  br label %cpu_to_fs32.exit181

cpu_to_fs32.exit181:                              ; preds = %if.then6.i179, %if.then.i178, %cpu_to_fs32.exit.cpu_to_fs32.exit181_crit_edge
  %retval.0.i180 = phi i32 [ %or.i.i177, %if.then.i178 ], [ %68, %if.then6.i179 ], [ %conv41, %cpu_to_fs32.exit.cpu_to_fs32.exit181_crit_edge ]
  %i_atime43 = getelementptr inbounds %struct.sysv_inode, ptr %call3, i32 0, i32 7
  %69 = ptrtoint ptr %i_atime43 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %retval.0.i180, ptr %i_atime43, align 4
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %70 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %i_mtime, align 8
  %conv45 = trunc i64 %71 to i32
  %72 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %s_bytesex.i, align 4
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %73, label %cpu_to_fs32.exit181.cpu_to_fs32.exit191_crit_edge [
    i8 1, label %if.then.i188
    i8 0, label %if.then6.i189
  ]

cpu_to_fs32.exit181.cpu_to_fs32.exit191_crit_edge: ; preds = %cpu_to_fs32.exit181
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_to_fs32.exit191

if.then.i188:                                     ; preds = %cpu_to_fs32.exit181
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i183 = shl i32 %conv45, 8
  %shl.i.i184 = and i32 %and.i.i183, -16711936
  %and1.i.i185 = lshr i32 %conv45, 8
  %shr.i.i186 = and i32 %and1.i.i185, 16711935
  %or.i.i187 = or i32 %shl.i.i184, %shr.i.i186
  br label %cpu_to_fs32.exit191

if.then6.i189:                                    ; preds = %cpu_to_fs32.exit181
  call void @__sanitizer_cov_trace_pc() #8
  %75 = call i32 @llvm.bswap.i32(i32 %conv45) #6
  br label %cpu_to_fs32.exit191

cpu_to_fs32.exit191:                              ; preds = %if.then6.i189, %if.then.i188, %cpu_to_fs32.exit181.cpu_to_fs32.exit191_crit_edge
  %retval.0.i190 = phi i32 [ %or.i.i187, %if.then.i188 ], [ %75, %if.then6.i189 ], [ %conv45, %cpu_to_fs32.exit181.cpu_to_fs32.exit191_crit_edge ]
  %i_mtime47 = getelementptr inbounds %struct.sysv_inode, ptr %call3, i32 0, i32 8
  %76 = ptrtoint ptr %i_mtime47 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %retval.0.i190, ptr %i_mtime47, align 4
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %77 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %i_ctime, align 8
  %conv49 = trunc i64 %78 to i32
  %79 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %s_bytesex.i, align 4
  %81 = zext i8 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %80, label %cpu_to_fs32.exit191.cpu_to_fs32.exit201_crit_edge [
    i8 1, label %if.then.i198
    i8 0, label %if.then6.i199
  ]

cpu_to_fs32.exit191.cpu_to_fs32.exit201_crit_edge: ; preds = %cpu_to_fs32.exit191
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_to_fs32.exit201

if.then.i198:                                     ; preds = %cpu_to_fs32.exit191
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i193 = shl i32 %conv49, 8
  %shl.i.i194 = and i32 %and.i.i193, -16711936
  %and1.i.i195 = lshr i32 %conv49, 8
  %shr.i.i196 = and i32 %and1.i.i195, 16711935
  %or.i.i197 = or i32 %shl.i.i194, %shr.i.i196
  br label %cpu_to_fs32.exit201

if.then6.i199:                                    ; preds = %cpu_to_fs32.exit191
  call void @__sanitizer_cov_trace_pc() #8
  %82 = call i32 @llvm.bswap.i32(i32 %conv49) #6
  br label %cpu_to_fs32.exit201

cpu_to_fs32.exit201:                              ; preds = %if.then6.i199, %if.then.i198, %cpu_to_fs32.exit191.cpu_to_fs32.exit201_crit_edge
  %retval.0.i200 = phi i32 [ %or.i.i197, %if.then.i198 ], [ %82, %if.then6.i199 ], [ %conv49, %cpu_to_fs32.exit191.cpu_to_fs32.exit201_crit_edge ]
  %i_ctime51 = getelementptr inbounds %struct.sysv_inode, ptr %call3, i32 0, i32 9
  %83 = ptrtoint ptr %i_ctime51 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %retval.0.i200, ptr %i_ctime51, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -56
  %84 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %inode, align 8
  %86 = and i16 %85, -4096
  %87 = zext i16 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %86, label %cpu_to_fs32.exit201.for.body.preheader_crit_edge [
    i16 8192, label %cpu_to_fs32.exit201.if.then64_crit_edge
    i16 24576, label %cpu_to_fs32.exit201.if.then64_crit_edge215
  ]

cpu_to_fs32.exit201.if.then64_crit_edge215:       ; preds = %cpu_to_fs32.exit201
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then64

cpu_to_fs32.exit201.if.then64_crit_edge:          ; preds = %cpu_to_fs32.exit201
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then64

cpu_to_fs32.exit201.for.body.preheader_crit_edge: ; preds = %cpu_to_fs32.exit201
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.then64:                                        ; preds = %cpu_to_fs32.exit201.if.then64_crit_edge, %cpu_to_fs32.exit201.if.then64_crit_edge215
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %88 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %i_rdev, align 8
  %90 = lshr i32 %89, 12
  %shl.i = and i32 %90, 65280
  %.masked = and i32 %89, 65535
  %conv66 = or i32 %shl.i, %.masked
  %91 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %s_bytesex.i, align 4
  %93 = zext i8 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %92, label %if.then64.cpu_to_fs32.exit211_crit_edge [
    i8 1, label %if.then.i208
    i8 0, label %if.then6.i209
  ]

if.then64.cpu_to_fs32.exit211_crit_edge:          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_to_fs32.exit211

if.then.i208:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i203 = shl nuw nsw i32 %.masked, 8
  %shl.i.i204 = and i32 %and.i.i203, 65280
  %and1.i.i205 = lshr i32 %conv66, 8
  %or.i.i207 = or i32 %and1.i.i205, %shl.i.i204
  br label %cpu_to_fs32.exit211

if.then6.i209:                                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %94 = call i32 @llvm.bswap.i32(i32 %conv66) #6
  br label %cpu_to_fs32.exit211

cpu_to_fs32.exit211:                              ; preds = %if.then6.i209, %if.then.i208, %if.then64.cpu_to_fs32.exit211_crit_edge
  %retval.0.i210 = phi i32 [ %or.i.i207, %if.then.i208 ], [ %94, %if.then6.i209 ], [ %conv66, %if.then64.cpu_to_fs32.exit211_crit_edge ]
  %95 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %retval.0.i210, ptr %add.ptr.i, align 8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %cpu_to_fs32.exit211, %cpu_to_fs32.exit201.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %write3byte.exit.for.body_crit_edge, %for.body.preheader
  %block.0214 = phi i32 [ %inc, %write3byte.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx72 = getelementptr [13 x i32], ptr %add.ptr.i, i32 0, i32 %block.0214
  %mul = mul nuw nsw i32 %block.0214, 3
  %arrayidx74 = getelementptr %struct.sysv_inode, ptr %call3, i32 0, i32 5, i32 %mul
  %96 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %s_bytesex.i, align 4
  %98 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %97, label %if.else18.i [
    i8 1, label %for.body.write3byte.exit_crit_edge
    i8 0, label %if.then11.i
  ]

for.body.write3byte.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %write3byte.exit

if.then11.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %write3byte.exit

if.else18.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx19.i = getelementptr i8, ptr %arrayidx72, i32 1
  br label %write3byte.exit

write3byte.exit:                                  ; preds = %if.else18.i, %if.then11.i, %for.body.write3byte.exit_crit_edge
  %from.sink.i = phi ptr [ %arrayidx72, %if.then11.i ], [ %arrayidx19.i, %if.else18.i ], [ %arrayidx72, %for.body.write3byte.exit_crit_edge ]
  %.sink44.i = phi i32 [ 1, %if.then11.i ], [ 2, %if.else18.i ], [ 2, %for.body.write3byte.exit_crit_edge ]
  %.sink.i = phi i32 [ 2, %if.then11.i ], [ 3, %if.else18.i ], [ 3, %for.body.write3byte.exit_crit_edge ]
  %99 = ptrtoint ptr %from.sink.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %from.sink.i, align 1
  %101 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %arrayidx74, align 1
  %arrayidx14.i = getelementptr i8, ptr %arrayidx72, i32 %.sink44.i
  %102 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx14.i, align 1
  %arrayidx15.i = getelementptr i8, ptr %arrayidx74, i32 1
  %104 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %arrayidx15.i, align 1
  %arrayidx16.i = getelementptr i8, ptr %arrayidx72, i32 %.sink.i
  %105 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx16.i, align 1
  %arrayidx17.i = getelementptr i8, ptr %arrayidx74, i32 2
  %107 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %arrayidx17.i, align 1
  %inc = add nuw nsw i32 %block.0214, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.end, label %write3byte.exit.for.body_crit_edge

write3byte.exit.for.body_crit_edge:               ; preds = %write3byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %write3byte.exit
  %108 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %109) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool75.not = icmp eq i32 %wait, 0
  br i1 %tobool75.not, label %for.end.if.end91thread-pre-split_crit_edge, label %if.then76

for.end.if.end91thread-pre-split_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91thread-pre-split

if.then76:                                        ; preds = %for.end
  %110 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bh, align 4
  %call77 = call i32 @sync_dirty_buffer(ptr noundef %111) #6
  %112 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bh, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %113, align 4
  %116 = and i32 %115, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool79.not = icmp eq i32 %116, 0
  br i1 %tobool79.not, label %if.then76.if.end91_crit_edge, label %land.lhs.true

if.then76.if.end91_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

land.lhs.true:                                    ; preds = %if.then76
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %113, align 4
  %and1.i.i144 = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i144)
  %tobool81.not = icmp eq i32 %and1.i.i144, 0
  br i1 %tobool81.not, label %do.end85, label %land.lhs.true.if.end91thread-pre-split_crit_edge

land.lhs.true.if.end91thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91thread-pre-split

do.end85:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %s_id87 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 39
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %s_id87, i32 noundef %6) #9
  br label %if.end91thread-pre-split

if.end91thread-pre-split:                         ; preds = %do.end85, %land.lhs.true.if.end91thread-pre-split_crit_edge, %for.end.if.end91thread-pre-split_crit_edge
  %err.0.ph = phi i32 [ 0, %for.end.if.end91thread-pre-split_crit_edge ], [ -5, %do.end85 ], [ 0, %land.lhs.true.if.end91thread-pre-split_crit_edge ]
  %119 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pr = load ptr, ptr %bh, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end91thread-pre-split, %if.then76.if.end91_crit_edge
  %120 = phi ptr [ %.pr, %if.end91thread-pre-split ], [ %113, %if.then76.if.end91_crit_edge ]
  %err.0 = phi i32 [ %err.0.ph, %if.end91thread-pre-split ], [ 0, %if.then76.if.end91_crit_edge ]
  %tobool.not.i = icmp eq ptr %120, null
  br i1 %tobool.not.i, label %if.end91.cleanup_crit_edge, label %if.then.i213

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i213:                                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %120) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i213, %if.end91.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end8 ], [ %err.0, %if.end91.cleanup_crit_edge ], [ %err.0, %if.then.i213 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysv_sync_inode(ptr nocapture noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__sysv_write_inode(ptr noundef %inode, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @sysv_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sysv_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.sysv_inode_info, ptr %call, i32 0, i32 2
  %retval.0 = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysv_free_in_core_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sysv_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -56
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysv_evict_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #6
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %3 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %i_size, align 8
  tail call void @sysv_truncate(ptr noundef %inode) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @invalidate_inode_buffers(ptr noundef %inode) #6
  tail call void @clear_inode(ptr noundef %inode) #6
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sysv_free_inode(ptr noundef %inode) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysv_put_super(ptr nocapture noundef readonly %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %s_bh1 = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %s_bh1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bh1, align 4
  tail call void @mark_buffer_dirty(ptr noundef %5) #6
  %6 = ptrtoint ptr %s_bh1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bh1, align 4
  %s_bh2 = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %s_bh2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bh2, align 4
  %cmp.not = icmp eq ptr %7, %9
  br i1 %cmp.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mark_buffer_dirty(ptr noundef %9) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %s_bh16 = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %s_bh16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bh16, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end5.brelse.exit_crit_edge, label %if.then.i

if.end5.brelse.exit_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %11) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end5.brelse.exit_crit_edge
  %12 = ptrtoint ptr %s_bh16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bh16, align 4
  %s_bh28 = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %s_bh28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bh28, align 4
  %cmp9.not = icmp eq ptr %13, %15
  %tobool.not.i23 = icmp eq ptr %15, null
  %or.cond = or i1 %cmp9.not, %tobool.not.i23
  br i1 %or.cond, label %brelse.exit.if.end12_crit_edge, label %if.then.i24

brelse.exit.if.end12_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then.i24:                                      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %15) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then.i24, %brelse.exit.if.end12_crit_edge
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysv_sync_fs(ptr nocapture noundef readonly %sb, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call i64 @ktime_get_real_seconds() #6
  %conv = trunc i64 %call1 to i32
  %s_lock = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #6
  %s_sb_time = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %s_sb_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_sb_time, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_bytesex.i, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %7, label %entry.fs32_to_cpu.exit_crit_edge [
    i8 1, label %if.then.i
    i8 0, label %if.then6.i
  ]

entry.fs32_to_cpu.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs32_to_cpu.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i = shl i32 %5, 8
  %shl.i.i = and i32 %and.i.i, -16711936
  %and1.i.i = lshr i32 %5, 8
  %shr.i.i = and i32 %and1.i.i, 16711935
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  br label %fs32_to_cpu.exit

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  br label %fs32_to_cpu.exit

fs32_to_cpu.exit:                                 ; preds = %if.then6.i, %if.then.i, %entry.fs32_to_cpu.exit_crit_edge
  %retval.0.i = phi i32 [ %or.i.i, %if.then.i ], [ %9, %if.then6.i ], [ %5, %entry.fs32_to_cpu.exit_crit_edge ]
  %s_type = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %if.then, label %fs32_to_cpu.exit.if.end13_crit_edge

fs32_to_cpu.exit.if.end13_crit_edge:              ; preds = %fs32_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %fs32_to_cpu.exit
  %s_sb_state = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %s_sb_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_sb_state, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %sub = sub i32 2082905400, %retval.0.i
  %16 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %7, label %if.then.cpu_to_fs32.exit_crit_edge [
    i8 1, label %if.then.i33
    i8 0, label %if.then6.i34
  ]

if.then.cpu_to_fs32.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_to_fs32.exit

if.then.i33:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i28 = shl i32 %sub, 8
  %shl.i.i29 = and i32 %and.i.i28, -16711936
  %and1.i.i30 = lshr i32 %sub, 8
  %shr.i.i31 = and i32 %and1.i.i30, 16711935
  %or.i.i32 = or i32 %shl.i.i29, %shr.i.i31
  br label %cpu_to_fs32.exit

if.then6.i34:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %sub) #6
  br label %cpu_to_fs32.exit

cpu_to_fs32.exit:                                 ; preds = %if.then6.i34, %if.then.i33, %if.then.cpu_to_fs32.exit_crit_edge
  %retval.0.i35 = phi i32 [ %or.i.i32, %if.then.i33 ], [ %17, %if.then6.i34 ], [ %sub, %if.then.cpu_to_fs32.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %retval.0.i35)
  %cmp5 = icmp eq i32 %15, %retval.0.i35
  br i1 %cmp5, label %if.then7, label %cpu_to_fs32.exit.if.end_crit_edge

cpu_to_fs32.exit.if.end_crit_edge:                ; preds = %cpu_to_fs32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then7:                                         ; preds = %cpu_to_fs32.exit
  %sub8 = sub i32 2082905400, %conv
  %18 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %7, label %if.then7.cpu_to_fs32.exit45_crit_edge [
    i8 1, label %if.then.i42
    i8 0, label %if.then6.i43
  ]

if.then7.cpu_to_fs32.exit45_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_to_fs32.exit45

if.then.i42:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i37 = shl i32 %sub8, 8
  %shl.i.i38 = and i32 %and.i.i37, -16711936
  %and1.i.i39 = lshr i32 %sub8, 8
  %shr.i.i40 = and i32 %and1.i.i39, 16711935
  %or.i.i41 = or i32 %shl.i.i38, %shr.i.i40
  br label %cpu_to_fs32.exit45

if.then6.i43:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %sub8) #6
  br label %cpu_to_fs32.exit45

cpu_to_fs32.exit45:                               ; preds = %if.then6.i43, %if.then.i42, %if.then7.cpu_to_fs32.exit45_crit_edge
  %retval.0.i44 = phi i32 [ %or.i.i41, %if.then.i42 ], [ %19, %if.then6.i43 ], [ %sub8, %if.then7.cpu_to_fs32.exit45_crit_edge ]
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i44, ptr %13, align 4
  br label %if.end

if.end:                                           ; preds = %cpu_to_fs32.exit45, %cpu_to_fs32.exit.if.end_crit_edge
  %21 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %s_bytesex.i, align 4
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %22, label %if.end.cpu_to_fs32.exit55_crit_edge [
    i8 1, label %if.then.i52
    i8 0, label %if.then6.i53
  ]

if.end.cpu_to_fs32.exit55_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_to_fs32.exit55

if.then.i52:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i47 = shl i32 %conv, 8
  %shl.i.i48 = and i32 %and.i.i47, -16711936
  %and1.i.i49 = lshr i32 %conv, 8
  %shr.i.i50 = and i32 %and1.i.i49, 16711935
  %or.i.i51 = or i32 %shl.i.i48, %shr.i.i50
  br label %cpu_to_fs32.exit55

if.then6.i53:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  br label %cpu_to_fs32.exit55

cpu_to_fs32.exit55:                               ; preds = %if.then6.i53, %if.then.i52, %if.end.cpu_to_fs32.exit55_crit_edge
  %retval.0.i54 = phi i32 [ %or.i.i51, %if.then.i52 ], [ %24, %if.then6.i53 ], [ %conv, %if.end.cpu_to_fs32.exit55_crit_edge ]
  %25 = ptrtoint ptr %s_sb_time to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_sb_time, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i54, ptr %26, align 4
  %s_bh2 = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 14
  %28 = ptrtoint ptr %s_bh2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_bh2, align 4
  tail call void @mark_buffer_dirty(ptr noundef %29) #6
  br label %if.end13

if.end13:                                         ; preds = %cpu_to_fs32.exit55, %fs32_to_cpu.exit.if.end13_crit_edge
  tail call void @mutex_unlock(ptr noundef %s_lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysv_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bd_dev, align 4
  %and1.i.i = and i32 %7, 255
  %8 = lshr i32 %7, 12
  %shl.i.i = and i32 %8, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %7, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_magic, align 4
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %buf, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %14 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %f_bsize, align 4
  %s_ndatazones = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 28
  %15 = ptrtoint ptr %s_ndatazones to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_ndatazones, align 4
  %conv = zext i32 %16 to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %17 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %f_blocks, align 8
  %call2 = tail call i32 @sysv_count_free_blocks(ptr noundef %1) #6
  %conv3 = zext i32 %call2 to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %18 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv3, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %19 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv3, ptr %f_bavail, align 8
  %s_ninodes = getelementptr inbounds %struct.sysv_sb_info, ptr %3, i32 0, i32 27
  %20 = ptrtoint ptr %s_ninodes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_ninodes, align 4
  %conv4 = zext i32 %21 to i64
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %22 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv4, ptr %f_files, align 8
  %call5 = tail call i32 @sysv_count_free_inodes(ptr noundef %1) #6
  %conv6 = zext i32 %call5 to i64
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %23 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv6, ptr %f_ffree, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %24 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 14, ptr %f_namelen, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %25 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysv_remount(ptr noundef %sb, ptr nocapture noundef %flags, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call i32 @sync_filesystem(ptr noundef %sb) #6
  %s_forced_ro = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %s_forced_ro to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_forced_ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysv_init_icache() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.6, i32 noundef 840, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @init_once) #6
  store ptr %call, ptr @sysv_inode_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.sysv_inode_info, ptr %p, i32 0, i32 2
  tail call void @inode_init_once(ptr noundef %vfs_inode) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sysv_destroy_icache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_barrier() #6
  %0 = load ptr, ptr @sysv_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_get_link(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysv_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysv_truncate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_inode_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysv_free_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysv_count_free_blocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysv_count_free_inodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20, !21, !22, !24, !25, !26, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/sysv/inode.c", i32 180, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sysv_iget._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sysv_iget._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/sysv/inode.c", i32 193, i32 3}
!8 = !{ptr @sysv_iget._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @sysv_iget._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @sysv_sops, !11, !"sysv_sops", i1 false, i1 false}
!11 = !{!"../fs/sysv/inode.c", i32 327, i32 31}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/sysv/inode.c", i32 340, i32 40}
!14 = !{ptr @sysv_inode_cachep, !15, !"sysv_inode_cachep", i1 false, i1 false}
!15 = !{!"../fs/sysv/inode.c", i32 303, i32 27}
!16 = !{ptr @sysv_symlink_inode_operations, !17, !"sysv_symlink_inode_operations", i1 false, i1 false}
!17 = !{!"../fs/sysv/inode.c", i32 147, i32 38}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/sysv/inode.c", i32 242, i32 3}
!20 = !{ptr @__sysv_write_inode._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @__sysv_write_inode._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/sysv/inode.c", i32 248, i32 3}
!24 = !{ptr @__sysv_write_inode._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @__sysv_write_inode._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/sysv/inode.c", i32 271, i32 25}
!28 = !{ptr @__sysv_write_inode._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @__sysv_write_inode._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
