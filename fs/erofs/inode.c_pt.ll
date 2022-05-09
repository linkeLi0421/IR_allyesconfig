; ModuleID = '/llk/IR_all_yes/fs/erofs/inode.c_pt.bc'
source_filename = "../fs/erofs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.erofs_buf = type { ptr, ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.erofs_sb_info = type { %struct.erofs_mount_opts, %struct.list_head, %struct.mutex, %struct.xarray, i32, i16, ptr, %struct.erofs_sb_lz4_info, ptr, ptr, i64, i64, i32, i32, i32, i16, i8, i32, i32, i64, i64, i64, [16 x i8], [16 x i8], i32, i32, %struct.kobject, %struct.completion }
%struct.erofs_mount_opts = type { i8, i32, i32, i32 }
%struct.erofs_sb_lz4_info = type { i16, i16 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.erofs_inode_extended = type { i16, i16, i16, i16, i64, %union.anon.86, i32, i32, i32, i64, i32, i32, [16 x i8] }
%union.anon.86 = type { i32 }
%struct.erofs_inode_compact = type { i16, i16, i16, i16, i32, i32, %union.anon.85, i32, i16, i16, i32 }
%union.anon.85 = type { i32 }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@erofs_generic_iops = dso_local constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr @erofs_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @erofs_getattr, ptr @erofs_listxattr, ptr @erofs_fiemap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@erofs_symlink_iops = dso_local constant %struct.inode_operations { ptr null, ptr @page_get_link, ptr null, ptr @erofs_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @erofs_getattr, ptr @erofs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@erofs_fast_symlink_iops = dso_local constant %struct.inode_operations { ptr null, ptr @simple_get_link, ptr null, ptr @erofs_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @erofs_getattr, ptr @erofs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@generic_ro_fops = external dso_local constant %struct.file_operations, align 4
@erofs_file_fops = external dso_local constant %struct.file_operations, align 4
@erofs_dir_iops = external dso_local constant %struct.inode_operations, align 128
@erofs_dir_fops = external dso_local constant %struct.file_operations, align 4
@erofs_raw_access_aops = external dso_local constant %struct.address_space_operations, align 4
@__tracepoint_erofs_fill_inode = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/erofs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_erofs_fill_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@erofs_read_inode.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"erofs\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"erofs_read_inode\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/erofs/inode.c\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s, reading inode nid %llu at %u of blkaddr %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"erofs: %s, reading inode nid %llu at %u of blkaddr %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to get inode (nid: %llu) page, err %ld\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unsupported i_format %u of nid %llu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unsupported datalayout %u of nid %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"failed to get inode payload block (nid: %llu), err %ld\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unsupported chunk format %x of nid %llu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bogus i_mode (%o) @ nid %llu\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.erofs_fill_symlink = private unnamed_addr constant [19 x i8] c"erofs_fill_symlink\00", align 1
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"inline data cross block boundary @ nid %llu\0A\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.16 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.17 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@___asan_gen_.22 = private unnamed_addr constant [32 x i8] c"../include/trace/events/erofs.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 55, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 108, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 34, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 39, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 48, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 56, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 81, i32 5 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 178, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 204, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [20 x i8] c"../fs/erofs/inode.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 235, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @erofs_iget(ptr noundef %sb, i64 noundef %nid, i1 noundef zeroext %isdir) local_unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca %struct.erofs_buf, align 4
  %ofs.i = alloca i32, align 4
  %nid.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nid.addr.i)
  %0 = ptrtoint ptr %nid.addr.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %nid, ptr %nid.addr.i, align 8
  %shr.i.i = lshr i64 %nid, 32
  %xor.i.i = xor i64 %shr.i.i, %nid
  %conv.i.i = trunc i64 %xor.i.i to i32
  %call1.i = call ptr @iget5_locked(ptr noundef %sb, i32 noundef %conv.i.i, ptr noundef nonnull @erofs_ilookup_test_actor, ptr noundef nonnull @erofs_iget_set_actor, ptr noundef nonnull %nid.addr.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nid.addr.i)
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 24
  %1 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_state, align 8
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call1.i, i32 -56
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %nid, ptr %add.ptr, align 8
  %conv = zext i1 %isdir to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf.i) #10
  %4 = call ptr @memset(ptr %buf.i, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ofs.i) #10
  %5 = ptrtoint ptr %ofs.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %ofs.i, align 4, !annotation !48
  call fastcc void @trace_erofs_fill_inode(ptr noundef nonnull %call1.i, i32 noundef %conv) #10
  %call.i = call fastcc ptr @erofs_read_inode(ptr noundef nonnull %buf.i, ptr noundef nonnull %call1.i, ptr noundef nonnull %ofs.i) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call.i to i32
  br label %erofs_fill_inode.exit

if.end.i:                                         ; preds = %if.then3
  %7 = ptrtoint ptr %call1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %call1.i, align 8
  %9 = and i16 %8, -4096
  %and.i = zext i16 %9 to i32
  %10 = add nsw i32 %and.i, -4096
  %11 = lshr exact i32 %10, 12
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end.i.out_unlock.i_crit_edge [
    i32 7, label %sw.bb.i
    i32 3, label %sw.bb7.i
    i32 9, label %sw.bb9.i
    i32 1, label %if.end.i.sw.bb13.i_crit_edge
    i32 5, label %if.end.i.sw.bb13.i_crit_edge20
    i32 0, label %if.end.i.sw.bb13.i_crit_edge21
    i32 11, label %if.end.i.sw.bb13.i_crit_edge22
  ]

if.end.i.sw.bb13.i_crit_edge22:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13.i

if.end.i.sw.bb13.i_crit_edge21:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13.i

if.end.i.sw.bb13.i_crit_edge20:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13.i

if.end.i.sw.bb13.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13.i

if.end.i.out_unlock.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i

sw.bb.i:                                          ; preds = %if.end.i
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 7
  %13 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @erofs_generic_iops, ptr %i_op.i, align 8
  %datalayout.i = getelementptr i8, ptr %call1.i, i32 -44
  %14 = ptrtoint ptr %datalayout.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %datalayout.i, align 4
  %16 = and i8 %15, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %17 = icmp eq i8 %16, 1
  %18 = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 44
  br i1 %17, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @generic_ro_fops, ptr %18, align 8
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @erofs_file_fops, ptr %18, align 8
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_op8.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 7
  %21 = ptrtoint ptr %i_op8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @erofs_dir_iops, ptr %i_op8.i, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 44
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @erofs_dir_fops, ptr %22, align 8
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end.i
  %24 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ofs.i, align 4
  %datalayout.i.i = getelementptr i8, ptr %call1.i, i32 -44
  %26 = ptrtoint ptr %datalayout.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %datalayout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp.not.i.i = icmp eq i8 %27, 2
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %sw.bb9.i.if.end12.i_crit_edge

sw.bb9.i.if.end12.i_crit_edge:                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

lor.lhs.false.i.i:                                ; preds = %sw.bb9.i
  %i_size.i.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 14
  %28 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4095, i64 %29)
  %cmp2.i.i = icmp sgt i64 %29, 4095
  br i1 %cmp2.i.i, label %lor.lhs.false.i.i.if.end12.i_crit_edge, label %if.end8.i.i.i

lor.lhs.false.i.i.if.end12.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.end8.i.i.i:                                    ; preds = %lor.lhs.false.i.i
  %30 = trunc i64 %29 to i32
  %conv5.i.i = add i32 %30, 1
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv5.i.i, i32 noundef 3264) #13
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.out_unlock.i_crit_edge, label %if.end7.i.i

if.end8.i.i.i.out_unlock.i_crit_edge:             ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i

if.end7.i.i:                                      ; preds = %if.end8.i.i.i
  %xattr_isize.i.i = getelementptr i8, ptr %call1.i, i32 -42
  %31 = ptrtoint ptr %xattr_isize.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %xattr_isize.i.i, align 2
  %conv8.i.i = zext i16 %32 to i32
  %add9.i.i = add i32 %25, %conv8.i.i
  %conv10.i.i = zext i32 %add9.i.i to i64
  %33 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_size.i.i, align 8
  %add12.i.i = add i64 %34, %conv10.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %add12.i.i)
  %cmp13.i.i = icmp sgt i64 %add12.i.i, 4096
  br i1 %cmp13.i.i, label %if.then15.i.i, label %if.end22.i.i

if.then15.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #10
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i.i, align 4
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %36, ptr noundef nonnull @__func__.erofs_fill_symlink, ptr noundef nonnull @.str.15, i64 noundef %38) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #10, !srcloc !49
  unreachable

if.end22.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr23.i.i = getelementptr i8, ptr %call.i, i32 %add9.i.i
  %conv25.i.i = trunc i64 %34 to i32
  %39 = call ptr @memcpy(ptr %call9.i.i.i, ptr %add.ptr23.i.i, i32 %conv25.i.i)
  %40 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_size.i.i, align 8
  %idxprom.i.i = trunc i64 %41 to i32
  %arrayidx.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %idxprom.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx.i.i, align 1
  %43 = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 48
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call9.i.i.i, ptr %43, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end22.i.i, %lor.lhs.false.i.i.if.end12.i_crit_edge, %sw.bb9.i.if.end12.i_crit_edge
  %erofs_fast_symlink_iops.sink.i.i = phi ptr [ @erofs_fast_symlink_iops, %if.end22.i.i ], [ @erofs_symlink_iops, %lor.lhs.false.i.i.if.end12.i_crit_edge ], [ @erofs_symlink_iops, %sw.bb9.i.if.end12.i_crit_edge ]
  %i_op27.i.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 7
  %45 = ptrtoint ptr %i_op27.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %erofs_fast_symlink_iops.sink.i.i, ptr %i_op27.i.i, align 8
  call void @inode_nohighmem(ptr noundef nonnull %call1.i) #10
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end.i.sw.bb13.i_crit_edge, %if.end.i.sw.bb13.i_crit_edge20, %if.end.i.sw.bb13.i_crit_edge21, %if.end.i.sw.bb13.i_crit_edge22
  %i_op14.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 7
  %46 = ptrtoint ptr %i_op14.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @erofs_generic_iops, ptr %i_op14.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 13
  %47 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_rdev.i, align 8
  call void @init_special_inode(ptr noundef nonnull %call1.i, i16 noundef zeroext %8, i32 noundef %48) #10
  br label %out_unlock.i

sw.epilog.i:                                      ; preds = %if.end12.i, %sw.bb7.i, %if.else.i, %if.then5.i
  %datalayout16.i = getelementptr i8, ptr %call1.i, i32 -44
  %49 = ptrtoint ptr %datalayout16.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %datalayout16.i, align 4
  %51 = and i8 %50, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %51)
  %52 = icmp eq i8 %51, 1
  br i1 %52, label %if.then19.i, label %if.end21.i

if.then19.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %call20.i = call i32 @z_erofs_fill_inode(ptr noundef nonnull %call1.i) #10
  br label %out_unlock.i

if.end21.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 9
  %53 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @erofs_raw_access_aops, ptr %a_ops.i, align 4
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %if.end21.i, %if.then19.i, %sw.bb13.i, %if.end8.i.i.i.out_unlock.i_crit_edge, %if.end.i.out_unlock.i_crit_edge
  %err.1.i = phi i32 [ 0, %sw.bb13.i ], [ %call20.i, %if.then19.i ], [ 0, %if.end21.i ], [ -117, %if.end.i.out_unlock.i_crit_edge ], [ -12, %if.end8.i.i.i.out_unlock.i_crit_edge ]
  call void @erofs_put_metabuf(ptr noundef nonnull %buf.i) #10
  br label %erofs_fill_inode.exit

erofs_fill_inode.exit:                            ; preds = %out_unlock.i, %if.then.i
  %retval.0.i = phi i32 [ %6, %if.then.i ], [ %err.1.i, %out_unlock.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ofs.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool7.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %erofs_fill_inode.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @unlock_new_inode(ptr noundef nonnull %call1.i) #10
  br label %cleanup

if.else:                                          ; preds = %erofs_fill_inode.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @iget_failed(ptr noundef nonnull %call1.i) #10
  %56 = inttoptr i32 %retval.0.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1.i, %if.end.cleanup_crit_edge ], [ %56, %if.else ], [ %call1.i, %if.then8 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @erofs_getattr(ptr nocapture readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 %request_mask, i32 %query_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %datalayout = getelementptr i8, ptr %3, i32 -44
  %4 = ptrtoint ptr %datalayout to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %datalayout, align 4
  %6 = and i8 %5, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %attributes = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %8 = ptrtoint ptr %attributes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %attributes, align 8
  %or = or i64 %9, 4
  store i64 %or, ptr %attributes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %attributes2 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %10 = ptrtoint ptr %attributes2 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %attributes2, align 8
  %or3 = or i64 %11, 16
  store i64 %or3, ptr %attributes2, align 8
  %attributes_mask = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 5
  %12 = ptrtoint ptr %attributes_mask to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %attributes_mask, align 8
  %or4 = or i64 %13, 20
  store i64 %or4, ptr %attributes_mask, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @erofs_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @erofs_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_get_link(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_get_link(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @erofs_ilookup_test_actor(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %opaque) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opaque to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %opaque, align 8
  %add.ptr = getelementptr i8, ptr %inode, i32 -56
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %1)
  %cmp = icmp eq i64 %3, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @erofs_iget_set_actor(ptr nocapture noundef writeonly %inode, ptr nocapture noundef readonly %opaque) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opaque to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %opaque, align 8
  %shr.i = lshr i64 %1, 32
  %xor.i = xor i64 %shr.i, %1
  %conv.i = trunc i64 %xor.i to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv.i, ptr %i_ino, align 8
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_erofs_fill_inode(ptr noundef %inode, i32 noundef %isdir) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_fill_inode, i32 0, i32 1), ptr blockaddress(@trace_erofs_fill_inode, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !50

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !51

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  %call42 = tail call i32 @__traceiter_erofs_fill_inode(ptr noundef null, ptr noundef %inode, i32 noundef %isdir) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  %13 = tail call i32 @llvm.read_register.i32(metadata !38) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !38) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !51

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !38) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_fill_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_fill_inode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_erofs_fill_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_erofs_fill_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 79, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !55
  %31 = tail call i32 @llvm.read_register.i32(metadata !38) #10
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
define internal fastcc ptr @erofs_read_inode(ptr noundef %buf, ptr noundef %inode, ptr nocapture noundef %ofs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %add.ptr = getelementptr i8, ptr %inode, i32 -56
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr, align 8
  %meta_blkaddr.i = getelementptr inbounds %struct.erofs_sb_info, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %meta_blkaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %meta_blkaddr.i, align 4
  %conv.i = zext i32 %7 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 12
  %islotbits.i = getelementptr inbounds %struct.erofs_sb_info, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %islotbits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %islotbits.i, align 2
  %sh_prom.i = zext i8 %9 to i64
  %shl.i382 = shl i64 %5, %sh_prom.i
  %add.i = add i64 %shl.i382, %mul.i
  %div375 = lshr i64 %add.i, 12
  %conv = trunc i64 %div375 to i32
  %10 = trunc i64 %add.i to i32
  %conv1 = and i32 %10, 4095
  %11 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv1, ptr %ofs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @erofs_read_inode.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@erofs_read_inode, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr, align 8
  %14 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ofs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @erofs_read_inode.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i64 noundef %13, i32 noundef %15, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call7 = tail call ptr @erofs_read_metabuf(ptr noundef %buf, ptr noundef %1, i32 noundef %conv, i32 noundef 1) #10
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr, align 8
  %18 = ptrtoint ptr %call7 to i32
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, i64 noundef %17, i32 noundef %18) #10
  br label %cleanup224

if.end12:                                         ; preds = %do.end
  %19 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ofs, align 4
  %add.ptr13 = getelementptr i8, ptr %call7, i32 %20
  %21 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr13, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %conv14 = zext i16 %23 to i32
  %and = and i32 %conv14, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end19, label %if.end12.do.body215.sink.split_crit_edge

if.end12.do.body215.sink.split_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body215.sink.split

if.end19:                                         ; preds = %if.end12
  %shr.i.i = lshr i32 %conv14, 1
  %and.i.i = and i32 %shr.i.i, 7
  %conv21 = trunc i32 %and.i.i to i8
  %datalayout = getelementptr i8, ptr %inode, i32 -44
  %24 = ptrtoint ptr %datalayout to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv21, ptr %datalayout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i)
  %cmp = icmp ugt i32 %and.i.i, 4
  br i1 %cmp, label %if.end19.do.body215.sink.split_crit_edge, label %if.end30

if.end19.do.body215.sink.split_crit_edge:         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body215.sink.split

if.end30:                                         ; preds = %if.end19
  %and.i.i383 = and i32 %conv14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i383)
  %switch.not = icmp eq i32 %and.i.i383, 0
  %inode_isize88 = getelementptr i8, ptr %inode, i32 -43
  br i1 %switch.not, label %sw.bb87, label %sw.bb

sw.bb:                                            ; preds = %if.end30
  %25 = ptrtoint ptr %inode_isize88 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 64, ptr %inode_isize88, align 1
  %26 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ofs, align 4
  %add = add i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add)
  %cmp34 = icmp ult i32 %add, 4097
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %ofs, align 4
  br label %if.end57

if.else:                                          ; preds = %sw.bb
  %sub = sub i32 4096, %27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3136, i32 noundef 64) #14
  %tobool43.not = icmp eq ptr %call7.i, null
  br i1 %tobool43.not, label %if.else.do.body215_crit_edge, label %if.end45

if.else.do.body215_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body215

if.end45:                                         ; preds = %if.else
  %30 = call ptr @memcpy(ptr %call7.i, ptr %add.ptr13, i32 %sub)
  %add46 = add i32 %conv, 1
  %call47 = tail call ptr @erofs_read_metabuf(ptr noundef %buf, ptr noundef %1, i32 noundef %add46, i32 noundef 1) #10
  %cmp.i384 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i384, label %cleanup.thread, label %cleanup.thread410

cleanup.thread:                                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr, align 8
  %33 = ptrtoint ptr %call47 to i32
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11, i64 noundef %32, i32 noundef %33) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup224

cleanup.thread410:                                ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %inode_isize88 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %inode_isize88, align 1
  %conv54 = zext i8 %35 to i32
  %sub55 = sub i32 %conv54, %sub
  %36 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub55, ptr %ofs, align 4
  %add.ptr56 = getelementptr i8, ptr %call7.i, i32 %sub
  %37 = call ptr @memcpy(ptr %add.ptr56, ptr %call47, i32 %sub55)
  br label %if.end57

if.end57:                                         ; preds = %cleanup.thread410, %if.then36
  %kaddr.1 = phi ptr [ %call7, %if.then36 ], [ %call47, %cleanup.thread410 ]
  %die.1 = phi ptr [ %add.ptr13, %if.then36 ], [ %call7.i, %cleanup.thread410 ]
  %copied.0 = phi ptr [ null, %if.then36 ], [ %call7.i, %cleanup.thread410 ]
  %i_xattr_icount = getelementptr inbounds %struct.erofs_inode_extended, ptr %die.1, i32 0, i32 1
  %38 = ptrtoint ptr %i_xattr_icount to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %i_xattr_icount, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not.i = icmp eq i16 %39, 0
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #10
  %sub.i = shl i16 %40, 2
  %add.i386 = add i16 %sub.i, 8
  %conv59 = select i1 %tobool.not.i, i16 0, i16 %add.i386
  %xattr_isize = getelementptr i8, ptr %inode, i32 -42
  %41 = ptrtoint ptr %xattr_isize to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv59, ptr %xattr_isize, align 2
  %i_mode = getelementptr inbounds %struct.erofs_inode_extended, ptr %die.1, i32 0, i32 2
  %42 = ptrtoint ptr %i_mode to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %i_mode, align 4
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %45 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %inode, align 8
  %46 = and i16 %44, -4096
  %and63 = zext i16 %46 to i32
  %47 = add nsw i32 %and63, -4096
  %48 = lshr exact i32 %47, 12
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %48, label %if.end57.bogusimode_crit_edge [
    i32 7, label %if.end57.sw.bb64_crit_edge
    i32 3, label %if.end57.sw.bb64_crit_edge422
    i32 9, label %if.end57.sw.bb64_crit_edge423
    i32 1, label %if.end57.sw.bb65_crit_edge
    i32 5, label %if.end57.sw.bb65_crit_edge424
    i32 0, label %if.end57.sw.bb68_crit_edge
    i32 11, label %if.end57.sw.bb68_crit_edge425
  ]

if.end57.sw.bb68_crit_edge425:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb68

if.end57.sw.bb68_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb68

if.end57.sw.bb65_crit_edge424:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb65

if.end57.sw.bb65_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb65

if.end57.sw.bb64_crit_edge423:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb64

if.end57.sw.bb64_crit_edge422:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb64

if.end57.sw.bb64_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb64

if.end57.bogusimode_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %bogusimode

sw.bb64:                                          ; preds = %if.end57.sw.bb64_crit_edge, %if.end57.sw.bb64_crit_edge422, %if.end57.sw.bb64_crit_edge423
  %i_u = getelementptr inbounds %struct.erofs_inode_extended, ptr %die.1, i32 0, i32 5
  %50 = ptrtoint ptr %i_u to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i_u, align 8
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = getelementptr i8, ptr %inode, i32 -32
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %53, align 8
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end57.sw.bb65_crit_edge, %if.end57.sw.bb65_crit_edge424
  %i_u66 = getelementptr inbounds %struct.erofs_inode_extended, ptr %die.1, i32 0, i32 5
  %55 = ptrtoint ptr %i_u66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_u66, align 8
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %and1.i = and i32 %57, 255
  %shr2.i = lshr i32 %57, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %58 = shl i32 %57, 12
  %shl.i = and i32 %58, -1048576
  %or4.i = or i32 %or.i, %shl.i
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %59 = ptrtoint ptr %i_rdev to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or4.i, ptr %i_rdev, align 8
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end57.sw.bb68_crit_edge, %if.end57.sw.bb68_crit_edge425
  %i_rdev69 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %60 = ptrtoint ptr %i_rdev69 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %i_rdev69, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb68, %sw.bb65, %sw.bb64
  %i_uid = getelementptr inbounds %struct.erofs_inode_extended, ptr %die.1, i32 0, i32 7
  %61 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %i_uid, align 8
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %64 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %65, i32 0, i32 53
  %66 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %67, i32 noundef %63) #10
  %68 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %i_gid = getelementptr inbounds %struct.erofs_inode_extended, ptr %die.1, i32 0, i32 8
  %69 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %i_gid, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %72 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i389 = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 53
  %74 = ptrtoint ptr %s_user_ns.i.i389 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_user_ns.i.i389, align 8
  %call1.i390 = tail call i32 @make_kgid(ptr noundef %75, i32 noundef %71) #10
  %76 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call1.i390, ptr %i_gid.i, align 8
  %i_nlink = getelementptr inbounds %struct.erofs_inode_extended, ptr %die.1, i32 0, i32 11
  %77 = ptrtoint ptr %i_nlink to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i_nlink, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  tail call void @set_nlink(ptr noundef %inode, i32 noundef %79) #10
  %i_ctime = getelementptr inbounds %struct.erofs_inode_extended, ptr %die.1, i32 0, i32 9
  %80 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %i_ctime, align 8
  %82 = tail call i64 @llvm.bswap.i64(i64 %81)
  %i_ctime70 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %83 = ptrtoint ptr %i_ctime70 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %i_ctime70, align 8
  %i_ctime_nsec = getelementptr inbounds %struct.erofs_inode_extended, ptr %die.1, i32 0, i32 10
  %84 = ptrtoint ptr %i_ctime_nsec to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %i_ctime_nsec, align 8
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %87 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %tv_nsec, align 8
  %i_size = getelementptr inbounds %struct.erofs_inode_extended, ptr %die.1, i32 0, i32 4
  %88 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %i_size, align 8
  %90 = tail call i64 @llvm.bswap.i64(i64 %89)
  %i_size72 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %91 = ptrtoint ptr %i_size72 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %i_size72, align 8
  %92 = ptrtoint ptr %datalayout to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %datalayout, align 4
  %94 = and i8 %93, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %94)
  %95 = icmp eq i8 %94, 1
  br i1 %95, label %if.then76, label %if.else78

if.then76:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %i_u77 = getelementptr inbounds %struct.erofs_inode_extended, ptr %die.1, i32 0, i32 5
  %96 = ptrtoint ptr %i_u77 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %i_u77, align 8
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  br label %if.end86

if.else78:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %93)
  %cmp81 = icmp eq i8 %93, 4
  br i1 %cmp81, label %if.then83, label %if.else78.if.end86_crit_edge

if.else78.if.end86_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then83:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  %i_u84 = getelementptr inbounds %struct.erofs_inode_extended, ptr %die.1, i32 0, i32 5
  %99 = ptrtoint ptr %i_u84 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %i_u84, align 8
  %101 = tail call i16 @llvm.bswap.i16(i16 %100)
  %102 = getelementptr i8, ptr %inode, i32 -32
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %101, ptr %102, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.else78.if.end86_crit_edge, %if.then76
  %nblks.0 = phi i32 [ %98, %if.then76 ], [ 0, %if.then83 ], [ 0, %if.else78.if.end86_crit_edge ]
  tail call void @kfree(ptr noundef %copied.0) #10
  br label %sw.epilog144

sw.bb87:                                          ; preds = %if.end30
  %104 = ptrtoint ptr %inode_isize88 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 32, ptr %inode_isize88, align 1
  %105 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ofs, align 4
  %add91 = add i32 %106, 32
  store i32 %add91, ptr %ofs, align 4
  %i_xattr_icount92 = getelementptr inbounds %struct.erofs_inode_compact, ptr %add.ptr13, i32 0, i32 1
  %107 = ptrtoint ptr %i_xattr_icount92 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %i_xattr_icount92, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool.not.i391 = icmp eq i16 %108, 0
  %109 = tail call i16 @llvm.bswap.i16(i16 %108) #10
  %sub.i393 = shl i16 %109, 2
  %add.i394 = add i16 %sub.i393, 8
  %conv94 = select i1 %tobool.not.i391, i16 0, i16 %add.i394
  %xattr_isize95 = getelementptr i8, ptr %inode, i32 -42
  %110 = ptrtoint ptr %xattr_isize95 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv94, ptr %xattr_isize95, align 2
  %i_mode96 = getelementptr inbounds %struct.erofs_inode_compact, ptr %add.ptr13, i32 0, i32 2
  %111 = ptrtoint ptr %i_mode96 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %i_mode96, align 4
  %113 = tail call i16 @llvm.bswap.i16(i16 %112)
  %114 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %inode, align 8
  %115 = and i16 %113, -4096
  %and100 = zext i16 %115 to i32
  %116 = add nsw i32 %and100, -4096
  %117 = lshr exact i32 %116, 12
  %118 = zext i32 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %117, label %sw.bb87.bogusimode_crit_edge [
    i32 7, label %sw.bb87.sw.bb101_crit_edge
    i32 3, label %sw.bb87.sw.bb101_crit_edge426
    i32 9, label %sw.bb87.sw.bb101_crit_edge427
    i32 1, label %sw.bb87.sw.bb103_crit_edge
    i32 5, label %sw.bb87.sw.bb103_crit_edge428
    i32 0, label %sw.bb87.sw.bb107_crit_edge
    i32 11, label %sw.bb87.sw.bb107_crit_edge429
  ]

sw.bb87.sw.bb107_crit_edge429:                    ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb107

sw.bb87.sw.bb107_crit_edge:                       ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb107

sw.bb87.sw.bb103_crit_edge428:                    ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb103

sw.bb87.sw.bb103_crit_edge:                       ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb103

sw.bb87.sw.bb101_crit_edge427:                    ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb101

sw.bb87.sw.bb101_crit_edge426:                    ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb101

sw.bb87.sw.bb101_crit_edge:                       ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb101

sw.bb87.bogusimode_crit_edge:                     ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #12
  br label %bogusimode

sw.bb101:                                         ; preds = %sw.bb87.sw.bb101_crit_edge, %sw.bb87.sw.bb101_crit_edge426, %sw.bb87.sw.bb101_crit_edge427
  %i_u102 = getelementptr inbounds %struct.erofs_inode_compact, ptr %add.ptr13, i32 0, i32 6
  %119 = ptrtoint ptr %i_u102 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %i_u102, align 4
  %121 = tail call i32 @llvm.bswap.i32(i32 %120)
  %122 = getelementptr i8, ptr %inode, i32 -32
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %121, ptr %122, align 8
  br label %sw.epilog110

sw.bb103:                                         ; preds = %sw.bb87.sw.bb103_crit_edge, %sw.bb87.sw.bb103_crit_edge428
  %i_u104 = getelementptr inbounds %struct.erofs_inode_compact, ptr %add.ptr13, i32 0, i32 6
  %124 = ptrtoint ptr %i_u104 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %i_u104, align 4
  %126 = tail call i32 @llvm.bswap.i32(i32 %125)
  %and1.i376 = and i32 %126, 255
  %shr2.i377 = lshr i32 %126, 12
  %and3.i378 = and i32 %shr2.i377, 1048320
  %or.i379 = or i32 %and3.i378, %and1.i376
  %127 = shl i32 %126, 12
  %shl.i380 = and i32 %127, -1048576
  %or4.i381 = or i32 %or.i379, %shl.i380
  %i_rdev106 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %128 = ptrtoint ptr %i_rdev106 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %or4.i381, ptr %i_rdev106, align 8
  br label %sw.epilog110

sw.bb107:                                         ; preds = %sw.bb87.sw.bb107_crit_edge, %sw.bb87.sw.bb107_crit_edge429
  %i_rdev108 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %129 = ptrtoint ptr %i_rdev108 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %i_rdev108, align 8
  br label %sw.epilog110

sw.epilog110:                                     ; preds = %sw.bb107, %sw.bb103, %sw.bb101
  %i_uid111 = getelementptr inbounds %struct.erofs_inode_compact, ptr %add.ptr13, i32 0, i32 8
  %130 = ptrtoint ptr %i_uid111 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %i_uid111, align 4
  %132 = tail call i16 @llvm.bswap.i16(i16 %131)
  %conv112 = zext i16 %132 to i32
  %i_uid.i396 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %133 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i398 = getelementptr inbounds %struct.super_block, ptr %134, i32 0, i32 53
  %135 = ptrtoint ptr %s_user_ns.i.i398 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %s_user_ns.i.i398, align 8
  %call1.i399 = tail call i32 @make_kuid(ptr noundef %136, i32 noundef %conv112) #10
  %137 = ptrtoint ptr %i_uid.i396 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %call1.i399, ptr %i_uid.i396, align 4
  %i_gid113 = getelementptr inbounds %struct.erofs_inode_compact, ptr %add.ptr13, i32 0, i32 9
  %138 = ptrtoint ptr %i_gid113 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %i_gid113, align 2
  %140 = tail call i16 @llvm.bswap.i16(i16 %139)
  %conv114 = zext i16 %140 to i32
  %i_gid.i400 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %141 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i402 = getelementptr inbounds %struct.super_block, ptr %142, i32 0, i32 53
  %143 = ptrtoint ptr %s_user_ns.i.i402 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %s_user_ns.i.i402, align 8
  %call1.i403 = tail call i32 @make_kgid(ptr noundef %144, i32 noundef %conv114) #10
  %145 = ptrtoint ptr %i_gid.i400 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %call1.i403, ptr %i_gid.i400, align 8
  %i_nlink115 = getelementptr inbounds %struct.erofs_inode_compact, ptr %add.ptr13, i32 0, i32 3
  %146 = ptrtoint ptr %i_nlink115 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %i_nlink115, align 2
  %148 = tail call i16 @llvm.bswap.i16(i16 %147)
  %conv116 = zext i16 %148 to i32
  tail call void @set_nlink(ptr noundef %inode, i32 noundef %conv116) #10
  %build_time = getelementptr inbounds %struct.erofs_sb_info, ptr %3, i32 0, i32 19
  %149 = ptrtoint ptr %build_time to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %build_time, align 8
  %i_ctime117 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %151 = ptrtoint ptr %i_ctime117 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %150, ptr %i_ctime117, align 8
  %build_time_nsec = getelementptr inbounds %struct.erofs_sb_info, ptr %3, i32 0, i32 18
  %152 = ptrtoint ptr %build_time_nsec to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %build_time_nsec, align 4
  %tv_nsec120 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %154 = ptrtoint ptr %tv_nsec120 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %tv_nsec120, align 8
  %i_size121 = getelementptr inbounds %struct.erofs_inode_compact, ptr %add.ptr13, i32 0, i32 4
  %155 = ptrtoint ptr %i_size121 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %i_size121, align 4
  %157 = tail call i32 @llvm.bswap.i32(i32 %156)
  %conv122 = zext i32 %157 to i64
  %i_size123 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %158 = ptrtoint ptr %i_size123 to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %conv122, ptr %i_size123, align 8
  %159 = ptrtoint ptr %datalayout to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %datalayout, align 4
  %161 = and i8 %160, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %161)
  %162 = icmp eq i8 %161, 1
  br i1 %162, label %if.then127, label %if.else129

if.then127:                                       ; preds = %sw.epilog110
  call void @__sanitizer_cov_trace_pc() #12
  %i_u128 = getelementptr inbounds %struct.erofs_inode_compact, ptr %add.ptr13, i32 0, i32 6
  %163 = ptrtoint ptr %i_u128 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %i_u128, align 4
  %165 = tail call i32 @llvm.bswap.i32(i32 %164)
  br label %sw.epilog144

if.else129:                                       ; preds = %sw.epilog110
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %160)
  %cmp132 = icmp eq i8 %160, 4
  br i1 %cmp132, label %if.then134, label %if.else129.if.end165_crit_edge

if.else129.if.end165_crit_edge:                   ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

if.then134:                                       ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #12
  %i_u135 = getelementptr inbounds %struct.erofs_inode_compact, ptr %add.ptr13, i32 0, i32 6
  %166 = ptrtoint ptr %i_u135 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %i_u135, align 4
  %168 = tail call i16 @llvm.bswap.i16(i16 %167)
  %169 = getelementptr i8, ptr %inode, i32 -32
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %168, ptr %169, align 8
  br label %sw.epilog144

sw.epilog144:                                     ; preds = %if.then134, %if.then127, %if.end86
  %nblks.1.ph = phi i32 [ %nblks.0, %if.end86 ], [ 0, %if.then134 ], [ %165, %if.then127 ]
  %kaddr.2.ph = phi ptr [ %kaddr.1, %if.end86 ], [ %call7, %if.then134 ], [ %call7, %if.then127 ]
  %171 = ptrtoint ptr %datalayout to i32
  call void @__asan_load1_noabort(i32 %171)
  %.pr = load i8, ptr %datalayout, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr)
  %cmp147 = icmp eq i8 %.pr, 4
  br i1 %cmp147, label %if.then149, label %sw.epilog144.if.end165_crit_edge

sw.epilog144.if.end165_crit_edge:                 ; preds = %sw.epilog144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

if.then149:                                       ; preds = %sw.epilog144
  %172 = getelementptr i8, ptr %inode, i32 -32
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %172, align 8
  %conv151 = zext i16 %174 to i32
  %and152 = and i32 %conv151, 65472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.end159, label %if.then149.do.body215.sink.split_crit_edge

if.then149.do.body215.sink.split_crit_edge:       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body215.sink.split

if.end159:                                        ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #12
  %175 = trunc i16 %174 to i8
  %176 = and i8 %175, 31
  %conv164 = add nuw nsw i8 %176, 12
  %chunkbits = getelementptr i8, ptr %inode, i32 -30
  %177 = ptrtoint ptr %chunkbits to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv164, ptr %chunkbits, align 2
  br label %if.end165

if.end165:                                        ; preds = %if.end159, %sw.epilog144.if.end165_crit_edge, %if.else129.if.end165_crit_edge
  %kaddr.2420 = phi ptr [ %kaddr.2.ph, %if.end159 ], [ %kaddr.2.ph, %sw.epilog144.if.end165_crit_edge ], [ %call7, %if.else129.if.end165_crit_edge ]
  %nblks.1419 = phi i32 [ %nblks.1.ph, %if.end159 ], [ %nblks.1.ph, %sw.epilog144.if.end165_crit_edge ], [ 0, %if.else129.if.end165_crit_edge ]
  %i_ctime166 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %178 = ptrtoint ptr %i_ctime166 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %i_ctime166, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %180 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %179, ptr %i_mtime, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %181 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %179, ptr %i_atime, align 8
  %tv_nsec173 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %182 = ptrtoint ptr %tv_nsec173 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %tv_nsec173, align 8
  %tv_nsec175 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %184 = ptrtoint ptr %tv_nsec175 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %tv_nsec175, align 8
  %tv_nsec179 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %185 = ptrtoint ptr %tv_nsec179 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %183, ptr %tv_nsec179, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nblks.1419)
  %tobool196.not = icmp eq i32 %nblks.1419, 0
  br i1 %tobool196.not, label %if.then197, label %if.else206

if.then197:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  %i_size199 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %186 = ptrtoint ptr %i_size199 to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %i_size199, align 8
  %add202 = add i64 %187, 4095
  %div204 = sdiv i64 %add202, 4096
  %shr = shl nsw i64 %div204, 3
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %188 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %shr, ptr %i_blocks, align 8
  br label %cleanup224

if.else206:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl i32 %nblks.1419, 3
  %conv207 = zext i32 %shl to i64
  %i_blocks208 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %189 = ptrtoint ptr %i_blocks208 to i32
  call void @__asan_store8_noabort(i32 %189)
  store i64 %conv207, ptr %i_blocks208, align 8
  br label %cleanup224

bogusimode:                                       ; preds = %sw.bb87.bogusimode_crit_edge, %if.end57.bogusimode_crit_edge
  %190 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %inode, align 8
  %conv212 = zext i16 %191 to i32
  br label %do.body215.sink.split

do.body215.sink.split:                            ; preds = %bogusimode, %if.then149.do.body215.sink.split_crit_edge, %if.end19.do.body215.sink.split_crit_edge, %if.end12.do.body215.sink.split_crit_edge
  %conv212.sink = phi i32 [ %conv212, %bogusimode ], [ %conv14, %if.end12.do.body215.sink.split_crit_edge ], [ %and.i.i, %if.end19.do.body215.sink.split_crit_edge ], [ %conv151, %if.then149.do.body215.sink.split_crit_edge ]
  %.str.14.sink = phi ptr [ @.str.14, %bogusimode ], [ @.str.9, %if.end12.do.body215.sink.split_crit_edge ], [ @.str.10, %if.end19.do.body215.sink.split_crit_edge ], [ @.str.13, %if.then149.do.body215.sink.split_crit_edge ]
  %192 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %192)
  %.sink = load ptr, ptr %i_sb, align 4
  %193 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %.sink, ptr noundef nonnull @.str.4, ptr noundef nonnull %.str.14.sink, i32 noundef %conv212.sink, i64 noundef %194) #10
  br label %do.body215

do.body215:                                       ; preds = %do.body215.sink.split, %if.else.do.body215_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

cleanup224:                                       ; preds = %if.else206, %if.then197, %cleanup.thread, %if.then9
  %retval.1 = phi ptr [ %call7, %if.then9 ], [ %kaddr.2420, %if.else206 ], [ %kaddr.2420, %if.then197 ], [ %call47, %cleanup.thread ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @z_erofs_fill_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_put_metabuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_erofs_fill_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_read_metabuf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_erofs_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !14, !16, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @erofs_generic_iops, !1, !"erofs_generic_iops", i1 false, i1 false}
!1 = !{!"../fs/erofs/inode.c", i32 377, i32 31}
!2 = !{ptr @erofs_symlink_iops, !3, !"erofs_symlink_iops", i1 false, i1 false}
!3 = !{!"../fs/erofs/inode.c", i32 384, i32 31}
!4 = !{ptr @erofs_fast_symlink_iops, !5, !"erofs_fast_symlink_iops", i1 false, i1 false}
!5 = !{!"../fs/erofs/inode.c", i32 391, i32 31}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/trace/events/erofs.h", i32 55, i32 1}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!10 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/erofs/inode.c", i32 34, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @erofs_read_inode.__UNIQUE_ID_ddebug307, !15, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!20 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/erofs/inode.c", i32 39, i32 3}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/erofs/inode.c", i32 48, i32 3}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/erofs/inode.c", i32 56, i32 3}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/erofs/inode.c", i32 81, i32 5}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/erofs/inode.c", i32 169, i32 3}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/erofs/inode.c", i32 178, i32 4}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/erofs/inode.c", i32 204, i32 2}
!35 = !{ptr @__func__.erofs_fill_symlink, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/erofs/inode.c", i32 235, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{i64 2154776313, i64 2154776794, i64 2154776350, i64 2154776406, i64 2154776440, i64 2154776464, i64 2154776505, i64 2154776526, i64 2154776554, i64 2154776588}
!50 = !{i64 2148505309, i64 2148505314, i64 2148505327, i64 2148505371, i64 2148505405, i64 2148505426}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2154615457}
!53 = !{i64 2154615676}
!54 = !{i64 2149501716}
!55 = !{i64 2149502752}
!56 = !{i64 2154773113, i64 2154773594, i64 2154773150, i64 2154773206, i64 2154773240, i64 2154773264, i64 2154773305, i64 2154773326, i64 2154773354, i64 2154773388}
