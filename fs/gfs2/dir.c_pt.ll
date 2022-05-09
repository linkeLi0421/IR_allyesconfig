; ModuleID = '/llk/IR_all_yes/fs/gfs2/dir.c_pt.bc'
source_filename = "../fs/gfs2/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.gfs2_meta_header = type { i32, i32, i64, i32, %union.anon.80 }
%union.anon.80 = type { i32 }
%struct.dirent_gather = type { ptr, i32 }
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
%struct.dir_context = type { ptr, i64 }
%struct.gfs2_leaf = type { %struct.gfs2_meta_header, i16, i16, i32, i64, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i64, i32, i32, i64, [40 x i8] }
%struct.gfs2_sbd = type { ptr, ptr, %struct.kobject, %struct.completion, i32, %struct.gfs2_sb_host, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [11 x i64], i32, %struct.gfs2_args, %struct.gfs2_tune, %struct.lm_lockstruct, %struct.gfs2_holder, ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.completion, %struct.completion, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, %struct.spinlock, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host, i32, i32, %struct.spinlock, %struct.rb_root, i32, i32, %struct.list_head, %struct.spinlock, %struct.mutex, i32, ptr, %struct.gfs2_holder, %struct.gfs2_holder, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.completion, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, ptr, %struct.spinlock, i64, %struct.address_space, %struct.spinlock, ptr, i32, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, i64, i32, %struct.rw_semaphore, %struct.atomic_t, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.gfs2_holder, %struct.atomic_t, %struct.mutex, [270 x i8], [256 x i8], [256 x i8], i32, ptr, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gfs2_sb_host = type { i32, i32, i32, i32, i32, i32, %struct.gfs2_inum_host, %struct.gfs2_inum_host, [64 x i8], [64 x i8] }
%struct.gfs2_inum_host = type { i64, i64 }
%struct.gfs2_args = type { [64 x i8], [64 x i8], [64 x i8], i24, i32, i32, i32, i32 }
%struct.gfs2_tune = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lm_lockstruct = type { i32, i32, ptr, ptr, i32, i32, %struct.dlm_lksb, %struct.dlm_lksb, [32 x i8], %struct.completion, ptr, %struct.spinlock, i32, i32, i32, i32, i32, ptr, ptr }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.gfs2_statfs_change_host = type { i64, i64, i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.gfs2_dirent = type { %struct.gfs2_inum, i32, i16, i16, i16, i16, %union.anon.78 }
%struct.gfs2_inum = type { i64, i64 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, [8 x i8] }
%struct.anon.3 = type { i32, i32 }
%struct.gfs2_diradd = type { i32, ptr, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.gfs2_rgrp_list = type { i32, i32, ptr, ptr }
%struct.gfs2_rgrpd = type { %struct.rb_node, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.rb_root }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__func__.gfs2_dir_read = private unnamed_addr constant [14 x i8] c"gfs2_dir_read\00", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/gfs2/dir.c\00", [18 x i8] zeroinitializer }, align 32
@gfs2_dir_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.gfs2_dir_read, ptr @.str, i32 1611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\014gfs2: fsid=%s: Number of entries corrupt in dir %llu, ip->i_entries (%u) != g.offset (%u)\0A\00", [35 x i8] zeroinitializer }, align 32
@gfs2_dir_read._entry_ptr = internal global ptr @gfs2_dir_read._entry, section ".printk_index", align 4
@__func__.gfs2_dir_check = private unnamed_addr constant [15 x i8] c"gfs2_dir_check\00", align 1
@__func__.gfs2_dir_del = private unnamed_addr constant [13 x i8] c"gfs2_dir_del\00", align 1
@__func__.gfs2_dir_mvino = private unnamed_addr constant [15 x i8] c"gfs2_dir_mvino\00", align 1
@__func__.gfs2_dir_exhash_dealloc = private unnamed_addr constant [24 x i8] c"gfs2_dir_exhash_dealloc\00", align 1
@gfs2_qdot = dso_local local_unnamed_addr global %struct.qstr zeroinitializer, section ".data..read_mostly", align 8
@gfs2_qdotdot = dso_local local_unnamed_addr global %struct.qstr zeroinitializer, section ".data..read_mostly", align 8
@gfs2_dir_read_leaf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 1437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\014gfs2: fsid=%s: Number of entries corrupt in dir leaf %llu, entries2 (%u) != g.offset (%u)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gfs2_dir_read_leaf\00", [45 x i8] zeroinitializer }, align 32
@gfs2_dir_read_leaf._entry_ptr = internal global ptr @gfs2_dir_read_leaf._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.gfs2_dirent_scan = private unnamed_addr constant [17 x i8] c"gfs2_dirent_scan\00", align 1
@gfs2_dirent_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014gfs2: fsid=%s: %s: wrong block type %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gfs2_dirent_offset\00", [45 x i8] zeroinitializer }, align 32
@gfs2_dirent_offset._entry_ptr = internal global ptr @gfs2_dirent_offset._entry, section ".printk_index", align 4
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gfs2_dirent too small\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gfs2_dirent misaligned\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"gfs2_dirent points beyond end of block\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zero inode number\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"name length is greater than space in dirent\00", [52 x i8] zeroinitializer }, align 32
@gfs2_check_dirent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014gfs2: fsid=%s: %s: %s (%s)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gfs2_check_dirent\00", [46 x i8] zeroinitializer }, align 32
@gfs2_check_dirent._entry_ptr = internal global ptr @gfs2_check_dirent._entry, section ".printk_index", align 4
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"first in block\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"not first in block\00", [45 x i8] zeroinitializer }, align 32
@__func__.gfs2_dirent_search = private unnamed_addr constant [19 x i8] c"gfs2_dirent_search\00", align 1
@empty_name = external dso_local local_unnamed_addr constant %struct.qstr, align 8
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@dir_split_leaf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014gfs2: fsid=%s: i_depth %u lf_depth %u index %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dir_split_leaf\00", [17 x i8] zeroinitializer }, align 32
@dir_split_leaf._entry_ptr = internal global ptr @dir_split_leaf._entry, section ".printk_index", align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"!error\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gfs2_is_jdata(ip)\00", [46 x i8] zeroinitializer }, align 32
@__func__.gfs2_dir_write_data = private unnamed_addr constant [20 x i8] c"gfs2_dir_write_data\00", align 1
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dblock\00", [25 x i8] zeroinitializer }, align 32
@__func__.gfs2_dir_get_existing_buffer = private unnamed_addr constant [29 x i8] c"gfs2_dir_get_existing_buffer\00", align 1
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"magic number\00", [19 x i8] zeroinitializer }, align 32
@__func__.dirent_next = private unnamed_addr constant [12 x i8] c"dirent_next\00", align 1
@__func__.dirent_check_reclen = private unnamed_addr constant [20 x i8] c"dirent_check_reclen\00", align 1
@__func__.dirent_del = private unnamed_addr constant [11 x i8] c"dirent_del\00", align 1
@__func__.gfs2_dir_get_hash_table = private unnamed_addr constant [24 x i8] c"gfs2_dir_get_hash_table\00", align 1
@__func__.gfs2_dir_read_data = private unnamed_addr constant [19 x i8] c"gfs2_dir_read_data\00", align 1
@__func__.get_leaf = private unnamed_addr constant [9 x i8] c"get_leaf\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1586, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1607, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1433, i32 5 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 549, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 506, i32 20 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 509, i32 8 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 512, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 515, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 518, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 525, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 271, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1040, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1119, i32 7 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 171, i32 6 }
@___asan_gen_.101 = private constant [17 x i8] c"../fs/gfs2/dir.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 198, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"../fs/gfs2/util.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 126, i32 38 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @dir_split_leaf._entry, ptr @dir_split_leaf._entry_ptr, ptr @gfs2_check_dirent._entry, ptr @gfs2_check_dirent._entry_ptr, ptr @gfs2_dir_read._entry, ptr @gfs2_dir_read._entry_ptr, ptr @gfs2_dir_read_leaf._entry, ptr @gfs2_dir_read_leaf._entry_ptr, ptr @gfs2_dirent_offset._entry, ptr @gfs2_dirent_offset._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_dir_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_dir_read_leaf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_dirent_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_check_dirent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dir_split_leaf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_dir_get_new_buffer(ptr nocapture noundef readonly %ip, i64 noundef %block, ptr nocapture noundef writeonly %bhp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %0 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_gl, align 4
  %call = tail call ptr @gfs2_meta_new(ptr noundef %1, i64 noundef %block) #16
  %2 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_gl, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %3, ptr noundef %call) #16
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data.i, align 4
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 7, ptr %mh_type.i, align 4
  %mh_format.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %mh_format.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 700, ptr %mh_format.i, align 8
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %9)
  %cmp.i = icmp ult i32 %9, 24
  br i1 %cmp.i, label %do.body2.i, label %gfs2_buffer_clear_tail.exit, !prof !91

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #16, !srcloc !92
  unreachable

gfs2_buffer_clear_tail.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 24
  %sub.i = add i32 %9, -24
  %12 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  %13 = ptrtoint ptr %bhp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %bhp, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_meta_new(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_add_meta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_dir_hash_inval(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_lock = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %i_hash_cache = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 16
  %0 = ptrtoint ptr %i_hash_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_hash_cache, align 4
  store ptr null, ptr %i_hash_cache, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  tail call void @kvfree(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_dir_read(ptr noundef %inode, ptr noundef %ctx, ptr nocapture noundef %f_ra) local_unnamed_addr #0 align 64 {
entry:
  %bh.i.i = alloca ptr, align 4
  %g.i.i = alloca %struct.dirent_gather, align 4
  %copied.i = alloca i32, align 4
  %g = alloca %struct.dirent_gather, align 4
  %dibh = alloca ptr, align 4
  %copied = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %g) #16
  %4 = ptrtoint ptr %g to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %g, align 4, !annotation !93
  %5 = getelementptr inbounds %struct.dirent_gather, ptr %g, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh) #16
  %7 = ptrtoint ptr %dibh to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #16
  %8 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %copied, align 4
  %i_entries = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 17
  %9 = ptrtoint ptr %i_entries to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 18
  %11 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_diskflags, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied.i) #16
  %13 = ptrtoint ptr %copied.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %copied.i, align 4
  %i_depth.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 20
  %14 = ptrtoint ptr %i_depth.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i_depth.i, align 1
  %conv.i = zext i8 %15 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %16 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pos.i, align 8
  %.tr.i = trunc i64 %17 to i32
  %conv2.i = shl i32 %.tr.i, 1
  %sub.i = sub nsw i32 32, %conv.i
  %shr.i = lshr i32 %conv2.i, %sub.i
  %i_hash_cache.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 16
  %18 = ptrtoint ptr %i_hash_cache.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_hash_cache.i, align 4
  %cmp.i = icmp eq ptr %19, null
  br i1 %cmp.i, label %if.then.i, label %if.then3.if.end.i_crit_edge

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %f_ra to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %f_ra, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then3.if.end.i_crit_edge
  %call6.i = tail call fastcc ptr @gfs2_dir_get_hash_table(ptr noundef %inode) #16
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %call6.i to i32
  br label %dir_e_read.exit

if.end10.i:                                       ; preds = %if.end.i
  %i_gl.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %22 = ptrtoint ptr %i_gl.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_gl.i.i, align 4
  %add.i.i = add i32 %shr.i, 32
  %24 = ptrtoint ptr %f_ra to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f_ra, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %25)
  %cmp.i50.i = icmp ult i32 %add.i.i, %25
  br i1 %cmp.i50.i, label %if.end10.i.gfs2_dir_readahead.exit.i_crit_edge, label %if.end.i.i

if.end10.i.gfs2_dir_readahead.exit.i_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dir_readahead.exit.i

if.end.i.i:                                       ; preds = %if.end10.i
  %26 = tail call i32 @llvm.umax.i32(i32 %25, i32 %shr.i) #16
  %27 = ptrtoint ptr %f_ra to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %f_ra, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %count.055.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc23.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %blocknr.054.i.i = phi i64 [ 0, %if.end.i.i ], [ %33, %for.inc.i.i.for.body.i.i_crit_edge ]
  %28 = ptrtoint ptr %f_ra to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %f_ra, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %shl.i)
  %cmp6.not.i.i = icmp ult i32 %29, %shl.i
  br i1 %cmp6.not.i.i, label %if.end8.i.i, label %for.body.i.i.gfs2_dir_readahead.exit.i_crit_edge

for.body.i.i.gfs2_dir_readahead.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dir_readahead.exit.i

if.end8.i.i:                                      ; preds = %for.body.i.i
  %30 = ptrtoint ptr %i_hash_cache.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_hash_cache.i, align 4
  %arrayidx.i.i = getelementptr i64, ptr %31, i32 %29
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.i.i, align 8
  %inc.i.i = add nuw i32 %29, 1
  %34 = ptrtoint ptr %f_ra to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %inc.i.i, ptr %f_ra, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %blocknr.054.i.i)
  %cmp11.i.i = icmp eq i64 %33, %blocknr.054.i.i
  br i1 %cmp11.i.i, label %if.end8.i.i.for.inc.i.i_crit_edge, label %if.end13.i.i

if.end8.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.end13.i.i:                                     ; preds = %if.end8.i.i
  %call14.i.i = tail call ptr @gfs2_getbuf(ptr noundef %23, i64 noundef %33, i32 noundef 1) #16
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call14.i.i, i32 noundef 4) #16
  %35 = ptrtoint ptr %call14.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %call14.i.i, align 4
  %and.i.i.i.i.i = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %if.end13.i.i.if.end22.i.i_crit_edge

if.end13.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i.i

trylock_buffer.exit.i.i:                          ; preds = %if.end13.i.i
  tail call void @llvm.prefetch.p0(ptr %call14.i.i, i32 1, i32 3, i32 1) #16
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call14.i.i, ptr %call14.i.i, i32 4, ptr elementtype(i32) %call14.i.i) #16, !srcloc !94
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !95
  %38 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.not.i.i, label %if.then16.i.i, label %trylock_buffer.exit.i.i.if.end22.i.i_crit_edge

trylock_buffer.exit.i.i.if.end22.i.i_crit_edge:   ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i.i

if.then16.i.i:                                    ; preds = %trylock_buffer.exit.i.i
  %39 = ptrtoint ptr %call14.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %call14.i.i, align 4
  %and1.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool18.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.then16.i.i
  tail call void @unlock_buffer(ptr noundef %call14.i.i) #16
  %tobool.not.i.i.i = icmp eq ptr %call14.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then19.i.i.for.inc.i.i_crit_edge, label %if.then.i.i.i

if.then19.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.then.i.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__brelse(ptr noundef nonnull %call14.i.i) #16
  br label %for.inc.i.i

if.end20.i.i:                                     ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %b_end_io.i.i = getelementptr inbounds %struct.buffer_head, ptr %call14.i.i, i32 0, i32 7
  %41 = ptrtoint ptr %b_end_io.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @end_buffer_read_sync, ptr %b_end_io.i.i, align 4
  %call21.i.i = tail call i32 @submit_bh(i32 noundef 0, i32 noundef 536576, ptr noundef %call14.i.i) #16
  br label %for.inc.i.i

if.end22.i.i:                                     ; preds = %trylock_buffer.exit.i.i.if.end22.i.i_crit_edge, %if.end13.i.i.if.end22.i.i_crit_edge
  %tobool.not.i49.i.i = icmp eq ptr %call14.i.i, null
  br i1 %tobool.not.i49.i.i, label %if.end22.i.i.for.inc.i.i_crit_edge, label %if.then.i50.i.i

if.end22.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.then.i50.i.i:                                  ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__brelse(ptr noundef nonnull %call14.i.i) #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i50.i.i, %if.end22.i.i.for.inc.i.i_crit_edge, %if.end20.i.i, %if.then.i.i.i, %if.then19.i.i.for.inc.i.i_crit_edge, %if.end8.i.i.for.inc.i.i_crit_edge
  %inc23.i.i = add nuw nsw i32 %count.055.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc23.i.i, 32
  br i1 %exitcond.not.i.i, label %for.inc.i.i.gfs2_dir_readahead.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.gfs2_dir_readahead.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dir_readahead.exit.i

gfs2_dir_readahead.exit.i:                        ; preds = %for.inc.i.i.gfs2_dir_readahead.exit.i_crit_edge, %for.body.i.i.gfs2_dir_readahead.exit.i_crit_edge, %if.end10.i.gfs2_dir_readahead.exit.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shl.i)
  %cmp1178.i = icmp ult i32 %shr.i, %shl.i
  br i1 %cmp1178.i, label %while.body.lr.ph.i, label %gfs2_dir_readahead.exit.i.while.end.i_crit_edge

gfs2_dir_readahead.exit.i.while.end.i_crit_edge:  ; preds = %gfs2_dir_readahead.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %gfs2_dir_readahead.exit.i
  %42 = getelementptr inbounds %struct.dirent_gather, ptr %g.i.i, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end15.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %index.080.i = phi i32 [ %shr.i, %while.body.lr.ph.i ], [ %add.i, %if.end15.i.while.body.i_crit_edge ]
  %depth.079.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %depth.2.i, %if.end15.i.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %call6.i, i32 %index.080.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx.i, align 8
  %45 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 33
  %47 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i.i) #16
  %49 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i.i, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %g.i.i) #16
  %50 = ptrtoint ptr %g.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -1 to ptr), ptr %g.i.i, align 4, !annotation !93
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %brelse.exit.i.i.do.body.i.i_crit_edge, %while.body.i
  %depth.1.i = phi i32 [ %depth.079.i, %while.body.i ], [ %depth.2.i, %brelse.exit.i.i.do.body.i.i_crit_edge ]
  %entries.0.i.i = phi i32 [ 0, %while.body.i ], [ %add.i54.i, %brelse.exit.i.i.do.body.i.i_crit_edge ]
  %leaves.0.i.i = phi i32 [ 0, %while.body.i ], [ %inc.i55.i, %brelse.exit.i.i.do.body.i.i_crit_edge ]
  %lfn.0.i.i = phi i64 [ %44, %while.body.i ], [ %74, %brelse.exit.i.i.do.body.i.i_crit_edge ]
  %51 = ptrtoint ptr %i_gl.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_gl.i.i, align 4
  %call.i.i.i = call i32 @gfs2_meta_read(ptr noundef %52, i64 noundef %lfn.0.i.i, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %bh.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i51.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i51.i, label %land.lhs.true.i.i.i, label %do.body.i.i.gfs2_dir_read_leaf.exit.thread.i_crit_edge

do.body.i.i.gfs2_dir_read_leaf.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dir_read_leaf.exit.thread.i

land.lhs.true.i.i.i:                              ; preds = %do.body.i.i
  %53 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 33
  %55 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %57 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bh.i.i, align 4
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_data.i.i.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %mh_type.i.i.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %60, i32 0, i32 1
  %63 = ptrtoint ptr %mh_type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mh_type.i.i.i.i, align 4
  %conv.i.i.i.i = trunc i32 %64 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %62)
  %cmp.not.i.i.i.i = icmp eq i32 %62, 18225520
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !96

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i = call i32 @gfs2_meta_check_ii(ptr noundef %56, ptr noundef %58, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %conv.i.i.i.i)
  %cmp5.not.i.i.i.i = icmp eq i16 %conv.i.i.i.i, 6
  br i1 %cmp5.not.i.i.i.i, label %if.end.i.i.i.i.if.end.i53.i_crit_edge, label %if.then13.i.i.i.i, !prof !96

if.end.i.i.i.i.if.end.i53.i_crit_edge:            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i53.i

if.then13.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i.i.i.i = call i32 @gfs2_metatype_check_ii(ptr noundef %56, ptr noundef %58, i16 noundef zeroext 6, i16 noundef zeroext %conv.i.i.i.i, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i.i.i

gfs2_metatype_check_i.exit.i.i.i:                 ; preds = %if.then13.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %call.i.i.i.i, %if.then.i.i.i.i ], [ %call14.i.i.i.i, %if.then13.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %retval.0.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %gfs2_metatype_check_i.exit.i.i.i.if.end.i53.i_crit_edge, label %gfs2_metatype_check_i.exit.i.i.i.gfs2_dir_read_leaf.exit.thread.i_crit_edge

gfs2_metatype_check_i.exit.i.i.i.gfs2_dir_read_leaf.exit.thread.i_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dir_read_leaf.exit.thread.i

gfs2_metatype_check_i.exit.i.i.i.if.end.i53.i_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i53.i

if.end.i53.i:                                     ; preds = %gfs2_metatype_check_i.exit.i.i.i.if.end.i53.i_crit_edge, %if.end.i.i.i.i.if.end.i53.i_crit_edge
  %65 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bh.i.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %b_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %leaves.0.i.i)
  %cmp.i52.i = icmp eq i32 %leaves.0.i.i, 0
  br i1 %cmp.i52.i, label %if.then3.i.i, label %if.end.i53.i.if.end4.i.i_crit_edge

if.end.i53.i.if.end4.i.i_crit_edge:               ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #18
  %lf_depth.i.i = getelementptr inbounds %struct.gfs2_leaf, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %lf_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %lf_depth.i.i, align 8
  %conv.i.i = zext i16 %70 to i32
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.end.i53.i.if.end4.i.i_crit_edge
  %depth.2.i = phi i32 [ %conv.i.i, %if.then3.i.i ], [ %depth.1.i, %if.end.i53.i.if.end4.i.i_crit_edge ]
  %lf_entries.i.i = getelementptr inbounds %struct.gfs2_leaf, ptr %68, i32 0, i32 2
  %71 = ptrtoint ptr %lf_entries.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %lf_entries.i.i, align 2
  %conv5.i.i = zext i16 %72 to i32
  %add.i54.i = add i32 %entries.0.i.i, %conv5.i.i
  %inc.i55.i = add i32 %leaves.0.i.i, 1
  %lf_next.i.i = getelementptr inbounds %struct.gfs2_leaf, ptr %68, i32 0, i32 4
  %73 = ptrtoint ptr %lf_next.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %lf_next.i.i, align 8
  %tobool.not.i159.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i159.i.i, label %if.end4.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i56.i

if.end4.i.i.brelse.exit.i.i_crit_edge:            ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit.i.i

if.then.i.i56.i:                                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %66) #16
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i56.i, %if.end4.i.i.brelse.exit.i.i_crit_edge
  %tobool6.not.i.i = icmp eq i64 %74, 0
  br i1 %tobool6.not.i.i, label %do.end.i.i, label %brelse.exit.i.i.do.body.i.i_crit_edge

brelse.exit.i.i.do.body.i.i_crit_edge:            ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %depth.2.i)
  %cmp7.i.i = icmp ult i32 %depth.2.i, 17
  br i1 %cmp7.i.i, label %do.end.i.i.if.then10.i.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.i.if.then10.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then10.i.i

lor.lhs.false.i.i:                                ; preds = %do.end.i.i
  %ar_loccookie.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %48, i32 0, i32 21, i32 3
  %75 = ptrtoint ptr %ar_loccookie.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load.i.i = load i32, ptr %ar_loccookie.i.i, align 4
  %76 = and i32 %bf.load.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool9.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool9.not.i.i, label %lor.lhs.false.i.i.if.then10.i.i_crit_edge, label %lor.lhs.false.i.i.if.end11.i.i_crit_edge

lor.lhs.false.i.i.if.end11.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i.i

lor.lhs.false.i.i.if.then10.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then10.i.i

if.then10.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then10.i.i_crit_edge, %do.end.i.i.if.then10.i.i_crit_edge
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %lor.lhs.false.i.i.if.end11.i.i_crit_edge
  %sort_offset.0.i.i = phi i32 [ 0, %if.then10.i.i ], [ -1, %lor.lhs.false.i.i.if.end11.i.i_crit_edge ]
  %need_sort.0.i.i = phi i32 [ 1, %if.then10.i.i ], [ 0, %lor.lhs.false.i.i.if.end11.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i54.i)
  %tobool12.not.i.i = icmp eq i32 %add.i54.i, 0
  br i1 %tobool12.not.i.i, label %gfs2_dir_read_leaf.exit.thread67.i, label %if.end14.i.i

gfs2_dir_read_leaf.exit.thread67.i:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %g.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i.i) #16
  br label %if.end15.i

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %add15.i.i = add i32 %add.i54.i, %inc.i55.i
  %add16.i.i = shl i32 %add15.i.i, 2
  %mul.i.i = add i32 %add16.i.i, 396
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %mul.i.i)
  %cmp.i.i.i = icmp ult i32 %mul.i.i, 8388608
  br i1 %cmp.i.i.i, label %if.end8.i.i.i.i, label %if.end14.i.i.gfs2_alloc_sort_buffer.exit.i.i_crit_edge

if.end14.i.i.gfs2_alloc_sort_buffer.exit.i.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_alloc_sort_buffer.exit.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end14.i.i
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i, i32 noundef 11328) #19
  %tobool.not.i163.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i163.i.i, label %if.end8.i.i.i.i.gfs2_alloc_sort_buffer.exit.i.i_crit_edge, label %if.end8.i.i.i.i.if.end20.i59.i_crit_edge

if.end8.i.i.i.i.if.end20.i59.i_crit_edge:         ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i59.i

if.end8.i.i.i.i.gfs2_alloc_sort_buffer.exit.i.i_crit_edge: ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_alloc_sort_buffer.exit.i.i

gfs2_alloc_sort_buffer.exit.i.i:                  ; preds = %if.end8.i.i.i.i.gfs2_alloc_sort_buffer.exit.i.i_crit_edge, %if.end14.i.i.gfs2_alloc_sort_buffer.exit.i.i_crit_edge
  %call2.i.i.i = call noalias ptr @__vmalloc(i32 noundef %mul.i.i, i32 noundef 3136) #19
  %tobool18.not.i58.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool18.not.i58.i, label %gfs2_alloc_sort_buffer.exit.i.i.gfs2_dir_read_leaf.exit.thread.i_crit_edge, label %gfs2_alloc_sort_buffer.exit.i.i.if.end20.i59.i_crit_edge

gfs2_alloc_sort_buffer.exit.i.i.if.end20.i59.i_crit_edge: ; preds = %gfs2_alloc_sort_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i59.i

gfs2_alloc_sort_buffer.exit.i.i.gfs2_dir_read_leaf.exit.thread.i_crit_edge: ; preds = %gfs2_alloc_sort_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dir_read_leaf.exit.thread.i

if.end20.i59.i:                                   ; preds = %gfs2_alloc_sort_buffer.exit.i.i.if.end20.i59.i_crit_edge, %if.end8.i.i.i.i.if.end20.i59.i_crit_edge
  %ptr.1.i200.i.i = phi ptr [ %call2.i.i.i, %gfs2_alloc_sort_buffer.exit.i.i.if.end20.i59.i_crit_edge ], [ %call9.i.i.i.i, %if.end8.i.i.i.i.if.end20.i59.i_crit_edge ]
  %add.ptr.i.i = getelementptr ptr, ptr %ptr.1.i200.i.i, i32 %inc.i55.i
  %77 = ptrtoint ptr %g.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr.i.i, ptr %g.i.i, align 4
  %78 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %42, align 4
  %ar_loccookie.i86 = getelementptr inbounds %struct.gfs2_sbd, ptr %48, i32 0, i32 21, i32 3
  %sd_fsname.i.i88 = getelementptr inbounds %struct.gfs2_sbd, ptr %48, i32 0, i32 110
  %sd_max_dents_per_leaf.i89 = getelementptr inbounds %struct.gfs2_sbd, ptr %48, i32 0, i32 20
  br label %do.body22.i.i

do.body22.i.i:                                    ; preds = %do.cond66.i.i.do.body22.i.i_crit_edge, %if.end20.i59.i
  %entries2.0.i.i = phi i32 [ 0, %if.end20.i59.i ], [ %entries2.1.i.i, %do.cond66.i.i.do.body22.i.i_crit_edge ]
  %leaf.0.i.i = phi i32 [ 0, %if.end20.i59.i ], [ %leaf.1.i.i, %do.cond66.i.i.do.body22.i.i_crit_edge ]
  %sort_offset.1.i.i = phi i32 [ %sort_offset.0.i.i, %if.end20.i59.i ], [ %sort_offset.3.i.i, %do.cond66.i.i.do.body22.i.i_crit_edge ]
  %need_sort.1.i.i = phi i32 [ %need_sort.0.i.i, %if.end20.i59.i ], [ %need_sort.3.i.i, %do.cond66.i.i.do.body22.i.i_crit_edge ]
  %lfn.1.i.i = phi i64 [ %44, %if.end20.i59.i ], [ %98, %do.cond66.i.i.do.body22.i.i_crit_edge ]
  %79 = ptrtoint ptr %i_gl.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i_gl.i.i, align 4
  %call.i165.i.i = call i32 @gfs2_meta_read(ptr noundef %80, i64 noundef %lfn.1.i.i, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %bh.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165.i.i)
  %tobool.not.i166.i.i = icmp eq i32 %call.i165.i.i, 0
  br i1 %tobool.not.i166.i.i, label %land.lhs.true.i173.i.i, label %do.body22.i.i.out_free.i.i_crit_edge

do.body22.i.i.out_free.i.i_crit_edge:             ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free.i.i

land.lhs.true.i173.i.i:                           ; preds = %do.body22.i.i
  %81 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i168.i.i = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 33
  %83 = ptrtoint ptr %s_fs_info.i.i168.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %s_fs_info.i.i168.i.i, align 16
  %85 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bh.i.i, align 4
  %b_data.i.i169.i.i = getelementptr inbounds %struct.buffer_head, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %b_data.i.i169.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %b_data.i.i169.i.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 8
  %mh_type.i.i170.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %88, i32 0, i32 1
  %91 = ptrtoint ptr %mh_type.i.i170.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mh_type.i.i170.i.i, align 4
  %conv.i.i171.i.i = trunc i32 %92 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %90)
  %cmp.not.i.i172.i.i = icmp eq i32 %90, 18225520
  br i1 %cmp.not.i.i172.i.i, label %if.end.i.i177.i.i, label %if.then.i.i175.i.i, !prof !96

if.then.i.i175.i.i:                               ; preds = %land.lhs.true.i173.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i174.i.i = call i32 @gfs2_meta_check_ii(ptr noundef %84, ptr noundef %86, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i182.i.i

if.end.i.i177.i.i:                                ; preds = %land.lhs.true.i173.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %conv.i.i171.i.i)
  %cmp5.not.i.i176.i.i = icmp eq i16 %conv.i.i171.i.i, 6
  br i1 %cmp5.not.i.i176.i.i, label %if.end.i.i177.i.i.if.end26.i.i_crit_edge, label %if.then13.i.i179.i.i, !prof !96

if.end.i.i177.i.i.if.end26.i.i_crit_edge:         ; preds = %if.end.i.i177.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i.i

if.then13.i.i179.i.i:                             ; preds = %if.end.i.i177.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i.i178.i.i = call i32 @gfs2_metatype_check_ii(ptr noundef %84, ptr noundef %86, i16 noundef zeroext 6, i16 noundef zeroext %conv.i.i171.i.i, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i182.i.i

gfs2_metatype_check_i.exit.i182.i.i:              ; preds = %if.then13.i.i179.i.i, %if.then.i.i175.i.i
  %retval.0.i.i180.i.i = phi i32 [ %call.i.i174.i.i, %if.then.i.i175.i.i ], [ %call14.i.i178.i.i, %if.then13.i.i179.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i180.i.i)
  %tobool3.not.i181.i.i = icmp eq i32 %retval.0.i.i180.i.i, 0
  br i1 %tobool3.not.i181.i.i, label %gfs2_metatype_check_i.exit.i182.i.i.if.end26.i.i_crit_edge, label %gfs2_metatype_check_i.exit.i182.i.i.out_free.i.i_crit_edge

gfs2_metatype_check_i.exit.i182.i.i.out_free.i.i_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i182.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free.i.i

gfs2_metatype_check_i.exit.i182.i.i.if.end26.i.i_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i182.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %gfs2_metatype_check_i.exit.i182.i.i.if.end26.i.i_crit_edge, %if.end.i.i177.i.i.if.end26.i.i_crit_edge
  %93 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bh.i.i, align 4
  %b_data27.i.i = getelementptr inbounds %struct.buffer_head, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %b_data27.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %b_data27.i.i, align 4
  %lf_next28.i.i = getelementptr inbounds %struct.gfs2_leaf, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %lf_next28.i.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %lf_next28.i.i, align 8
  %lf_entries29.i.i = getelementptr inbounds %struct.gfs2_leaf, ptr %96, i32 0, i32 2
  %99 = ptrtoint ptr %lf_entries29.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %lf_entries29.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool30.not.i.i = icmp eq i16 %100, 0
  br i1 %tobool30.not.i.i, label %if.else.i.i, label %if.then31.i.i

if.then31.i.i:                                    ; preds = %if.end26.i.i
  %101 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %42, align 4
  %conv34.i.i = zext i16 %100 to i32
  %add35.i.i = add i32 %entries2.0.i.i, %conv34.i.i
  %b_size.i.i = getelementptr inbounds %struct.buffer_head, ptr %94, i32 0, i32 4
  %103 = ptrtoint ptr %b_size.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %b_size.i.i, align 8
  %call37.i.i = call fastcc ptr @gfs2_dirent_scan(ptr noundef %inode, ptr noundef %96, i32 noundef %104, ptr noundef nonnull @gfs2_dirent_gather, ptr noundef null, ptr noundef nonnull %g.i.i) #16
  %cmp.i187.i.i = icmp ugt ptr %call37.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i187.i.i, label %out_free.loopexit.split.loop.exit.i.i, label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then31.i.i
  %105 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add35.i.i, i32 %106)
  %cmp43.not.i.i = icmp eq i32 %add35.i.i, %106
  br i1 %cmp43.not.i.i, label %if.end51.i.i, label %do.end48.i.i

do.end48.i.i:                                     ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %107 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bh.i.i, align 4
  %b_blocknr.i.i = getelementptr inbounds %struct.buffer_head, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %b_blocknr.i.i, align 8
  %call50.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %sd_fsname.i.i88, i64 noundef %110, i32 noundef %add35.i.i, i32 noundef %106) #20
  call void @gfs2_consist_inode_i(ptr noundef %inode, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef 1438) #16
  br label %out_free.i.i

if.end51.i.i:                                     ; preds = %if.end41.i.i
  %arrayidx.i60.i = getelementptr ptr, ptr %add.ptr.i.i, i32 %102
  %111 = ptrtoint ptr %lf_entries29.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %lf_entries29.i.i, align 2
  %conv53.i.i = zext i16 %112 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %cmp54.not.i85 = icmp eq i16 %112, 0
  br i1 %cmp54.not.i85, label %if.end51.i.i.gfs2_set_cookies.exit127_crit_edge, label %for.body.lr.ph.i90

if.end51.i.i.gfs2_set_cookies.exit127_crit_edge:  ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_set_cookies.exit127

for.body.lr.ph.i90:                               ; preds = %if.end51.i.i
  %113 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bh.i.i, align 4
  %b_data.i87 = getelementptr inbounds %struct.buffer_head, ptr %114, i32 0, i32 5
  br label %for.body.i97

for.body.i97:                                     ; preds = %cleanup.i125.for.body.i97_crit_edge, %for.body.lr.ph.i90
  %i.056.i91 = phi i32 [ 0, %for.body.lr.ph.i90 ], [ %inc.i123, %cleanup.i125.for.body.i97_crit_edge ]
  %sort_id.055.i92 = phi i32 [ -1, %for.body.lr.ph.i90 ], [ %sort_id.2.i122, %cleanup.i125.for.body.i97_crit_edge ]
  %arrayidx.i93 = getelementptr ptr, ptr %arrayidx.i60.i, i32 %i.056.i91
  %115 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i93, align 4
  %de_hash.i94 = getelementptr inbounds %struct.gfs2_dirent, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %de_hash.i94 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %de_hash.i94, align 8
  %119 = getelementptr inbounds %struct.gfs2_dirent, ptr %116, i32 0, i32 6
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %118, ptr %119, align 4
  %121 = load ptr, ptr %arrayidx.i93, align 4
  %122 = getelementptr inbounds %struct.gfs2_dirent, ptr %121, i32 0, i32 6
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 4
  %125 = lshr i32 %124, 1
  store i32 %125, ptr %122, align 4
  %126 = ptrtoint ptr %ar_loccookie.i86 to i32
  call void @__asan_load4_noabort(i32 %126)
  %bf.load.i95 = load i32, ptr %ar_loccookie.i86, align 4
  %127 = and i32 %bf.load.i95, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.not.i96 = icmp eq i32 %127, 0
  br i1 %tobool.not.i96, label %for.body.i97.cleanup.i125_crit_edge, label %if.end.i99

for.body.i97.cleanup.i125_crit_edge:              ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i125

if.end.i99:                                       ; preds = %for.body.i97
  %128 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i93, align 4
  %130 = ptrtoint ptr %b_data.i87 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %b_data.i87, align 4
  %cmp.i.i98 = icmp eq ptr %131, null
  br i1 %cmp.i.i98, label %do.body2.i.i100, label %do.end7.i.i102, !prof !91

do.body2.i.i100:                                  ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 535, 0\0A.popsection", ""() #16, !srcloc !97
  unreachable

do.end7.i.i102:                                   ; preds = %if.end.i99
  %mh_type.i.i101 = getelementptr inbounds %struct.gfs2_meta_header, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %mh_type.i.i101 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mh_type.i.i101, align 4
  %134 = zext i32 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values)
  switch i32 %133, label %do.end11.i.i105 [
    i32 6, label %do.end7.i.i102.gfs2_dirent_offset.exit.i114_crit_edge
    i32 4, label %sw.bb8.i.i103
  ]

do.end7.i.i102.gfs2_dirent_offset.exit.i114_crit_edge: ; preds = %do.end7.i.i102
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dirent_offset.exit.i114

sw.bb8.i.i103:                                    ; preds = %do.end7.i.i102
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dirent_offset.exit.i114

do.end11.i.i105:                                  ; preds = %do.end7.i.i102
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %sd_fsname.i.i88, ptr noundef nonnull @.str.5, i32 noundef %133) #20
  br label %gfs2_dirent_offset.exit.i114

gfs2_dirent_offset.exit.i114:                     ; preds = %do.end11.i.i105, %sw.bb8.i.i103, %do.end7.i.i102.gfs2_dirent_offset.exit.i114_crit_edge
  %retval.0.i.i106 = phi i32 [ -1, %do.end11.i.i105 ], [ 232, %sw.bb8.i.i103 ], [ 104, %do.end7.i.i102.gfs2_dirent_offset.exit.i114_crit_edge ]
  %add.ptr.i107 = getelementptr i8, ptr %131, i32 %retval.0.i.i106
  %sub.ptr.lhs.cast.i108 = ptrtoint ptr %129 to i32
  %sub.ptr.rhs.cast.i109 = ptrtoint ptr %add.ptr.i107 to i32
  %sub.ptr.sub.i110 = sub i32 %sub.ptr.lhs.cast.i108, %sub.ptr.rhs.cast.i109
  %div.i111 = udiv i32 %sub.ptr.sub.i110, 48
  %135 = ptrtoint ptr %sd_max_dents_per_leaf.i89 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sd_max_dents_per_leaf.i89, align 8
  %mul.i = mul i32 %136, %leaf.0.i.i
  %add.i112 = add i32 %div.i111, %mul.i
  %137 = or i32 %add.i112, %leaf.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %137)
  %.not.i113 = icmp ult i32 %137, 8192
  %138 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i93, align 4
  %140 = getelementptr inbounds %struct.gfs2_dirent, ptr %139, i32 0, i32 6
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 4
  br i1 %.not.i113, label %if.end20.i121, label %if.then13.i118

if.then13.i118:                                   ; preds = %gfs2_dirent_offset.exit.i114
  call void @__sanitizer_cov_trace_pc() #18
  %or.i115 = or i32 %142, 8192
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or.i115, ptr %140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sort_id.055.i92)
  %cmp16.i116 = icmp slt i32 %sort_id.055.i92, 0
  %spec.select.i117 = select i1 %cmp16.i116, i32 %i.056.i91, i32 %sort_id.055.i92
  br label %cleanup.i125

if.end20.i121:                                    ; preds = %gfs2_dirent_offset.exit.i114
  call void @__sanitizer_cov_trace_pc() #18
  %and.i119 = and i32 %142, -16384
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %and.i119, ptr %140, align 4
  %145 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i93, align 4
  %147 = getelementptr inbounds %struct.gfs2_dirent, ptr %146, i32 0, i32 6
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 4
  %or25.i120 = or i32 %149, %add.i112
  store i32 %or25.i120, ptr %147, align 4
  br label %cleanup.i125

cleanup.i125:                                     ; preds = %if.end20.i121, %if.then13.i118, %for.body.i97.cleanup.i125_crit_edge
  %sort_id.2.i122 = phi i32 [ %spec.select.i117, %if.then13.i118 ], [ %sort_id.055.i92, %if.end20.i121 ], [ %sort_id.055.i92, %for.body.i97.cleanup.i125_crit_edge ]
  %inc.i123 = add nuw nsw i32 %i.056.i91, 1
  %exitcond.not.i124 = icmp eq i32 %inc.i123, %conv53.i.i
  br i1 %exitcond.not.i124, label %cleanup.i125.gfs2_set_cookies.exit127_crit_edge, label %cleanup.i125.for.body.i97_crit_edge

cleanup.i125.for.body.i97_crit_edge:              ; preds = %cleanup.i125
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i97

cleanup.i125.gfs2_set_cookies.exit127_crit_edge:  ; preds = %cleanup.i125
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_set_cookies.exit127

gfs2_set_cookies.exit127:                         ; preds = %cleanup.i125.gfs2_set_cookies.exit127_crit_edge, %if.end51.i.i.gfs2_set_cookies.exit127_crit_edge
  %sort_id.0.lcssa.i126 = phi i32 [ -1, %if.end51.i.i.gfs2_set_cookies.exit127_crit_edge ], [ %sort_id.2.i122, %cleanup.i125.gfs2_set_cookies.exit127_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %need_sort.1.i.i)
  %tobool55.not.i.i = icmp eq i32 %need_sort.1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sort_id.0.lcssa.i126)
  %cmp56.i.i = icmp sgt i32 %sort_id.0.lcssa.i126, -1
  %add59.i.i = add i32 %sort_id.0.lcssa.i126, %102
  %150 = xor i32 %sort_id.0.lcssa.i126, -1
  %call54.lobit.not.i.i = lshr i32 %150, 31
  %151 = select i1 %tobool55.not.i.i, i1 %cmp56.i.i, i1 false
  %sort_offset.2.i.i = select i1 %151, i32 %add59.i.i, i32 %sort_offset.1.i.i
  %need_sort.2.i.i = select i1 %tobool55.not.i.i, i32 %call54.lobit.not.i.i, i32 1
  %152 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bh.i.i, align 4
  %arrayidx62.i.i = getelementptr ptr, ptr %ptr.1.i200.i.i, i32 %leaf.0.i.i
  %154 = ptrtoint ptr %arrayidx62.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %153, ptr %arrayidx62.i.i, align 4
  br label %do.cond66.i.i

if.else.i.i:                                      ; preds = %if.end26.i.i
  %arrayidx64.i.i = getelementptr ptr, ptr %ptr.1.i200.i.i, i32 %leaf.0.i.i
  %155 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %arrayidx64.i.i, align 4
  %156 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %bh.i.i, align 4
  %tobool.not.i188.i.i = icmp eq ptr %157, null
  br i1 %tobool.not.i188.i.i, label %if.else.i.i.do.cond66.i.i_crit_edge, label %if.then.i189.i.i

if.else.i.i.do.cond66.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond66.i.i

if.then.i189.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %157) #16
  br label %do.cond66.i.i

do.cond66.i.i:                                    ; preds = %if.then.i189.i.i, %if.else.i.i.do.cond66.i.i_crit_edge, %gfs2_set_cookies.exit127
  %entries2.1.i.i = phi i32 [ %add35.i.i, %gfs2_set_cookies.exit127 ], [ %entries2.0.i.i, %if.else.i.i.do.cond66.i.i_crit_edge ], [ %entries2.0.i.i, %if.then.i189.i.i ]
  %sort_offset.3.i.i = phi i32 [ %sort_offset.2.i.i, %gfs2_set_cookies.exit127 ], [ %sort_offset.1.i.i, %if.else.i.i.do.cond66.i.i_crit_edge ], [ %sort_offset.1.i.i, %if.then.i189.i.i ]
  %need_sort.3.i.i = phi i32 [ %need_sort.2.i.i, %gfs2_set_cookies.exit127 ], [ %need_sort.1.i.i, %if.else.i.i.do.cond66.i.i_crit_edge ], [ %need_sort.1.i.i, %if.then.i189.i.i ]
  %leaf.1.i.i = add i32 %leaf.0.i.i, 1
  %tobool67.not.i.i = icmp eq i64 %98, 0
  br i1 %tobool67.not.i.i, label %do.body69.i.i, label %do.cond66.i.i.do.body22.i.i_crit_edge

do.cond66.i.i.do.body22.i.i_crit_edge:            ; preds = %do.cond66.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body22.i.i

do.body69.i.i:                                    ; preds = %do.cond66.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %entries2.1.i.i, i32 %add.i54.i)
  %cmp70.not.i.i = icmp eq i32 %entries2.1.i.i, %add.i54.i
  br i1 %cmp70.not.i.i, label %do.end83.i.i, label %do.body75.i.i, !prof !96

do.body75.i.i:                                    ; preds = %do.body69.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1456, 0\0A.popsection", ""() #16, !srcloc !98
  unreachable

do.end83.i.i:                                     ; preds = %do.body69.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %need_sort.3.i.i)
  %tobool84.not.i.i = icmp eq i32 %need_sort.3.i.i, 0
  %add.sort_offset.3.i.i = select i1 %tobool84.not.i.i, i32 %add.i54.i, i32 %sort_offset.3.i.i
  %call85.i.i = call fastcc i32 @do_filldir_main(ptr noundef %ctx, ptr noundef %add.ptr.i.i, i32 noundef %add.i54.i, i32 noundef %add.sort_offset.3.i.i, ptr noundef nonnull %copied.i) #16
  br label %out_free.i.i

out_free.loopexit.split.loop.exit.i.i:            ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %158 = ptrtoint ptr %call37.i.i to i32
  br label %out_free.i.i

out_free.i.i:                                     ; preds = %out_free.loopexit.split.loop.exit.i.i, %do.end83.i.i, %do.end48.i.i, %gfs2_metatype_check_i.exit.i182.i.i.out_free.i.i_crit_edge, %do.body22.i.i.out_free.i.i_crit_edge
  %leaf.2.i.i = phi i32 [ %leaf.0.i.i, %do.end48.i.i ], [ %leaf.1.i.i, %do.end83.i.i ], [ %leaf.0.i.i, %out_free.loopexit.split.loop.exit.i.i ], [ %leaf.0.i.i, %do.body22.i.i.out_free.i.i_crit_edge ], [ %leaf.0.i.i, %gfs2_metatype_check_i.exit.i182.i.i.out_free.i.i_crit_edge ]
  %error.0.i.i = phi i32 [ -5, %do.end48.i.i ], [ %call85.i.i, %do.end83.i.i ], [ %158, %out_free.loopexit.split.loop.exit.i.i ], [ -5, %gfs2_metatype_check_i.exit.i182.i.i.out_free.i.i_crit_edge ], [ %call.i165.i.i, %do.body22.i.i.out_free.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %leaf.2.i.i)
  %cmp86212.not.i.i = icmp eq i32 %leaf.2.i.i, 0
  br i1 %cmp86212.not.i.i, label %out_free.i.i.gfs2_dir_read_leaf.exit.i_crit_edge, label %out_free.i.i.for.body.i61.i_crit_edge

out_free.i.i.for.body.i61.i_crit_edge:            ; preds = %out_free.i.i
  br label %for.body.i61.i

out_free.i.i.gfs2_dir_read_leaf.exit.i_crit_edge: ; preds = %out_free.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dir_read_leaf.exit.i

for.body.i61.i:                                   ; preds = %brelse.exit195.i.i.for.body.i61.i_crit_edge, %out_free.i.i.for.body.i61.i_crit_edge
  %i.0213.i.i = phi i32 [ %inc89.i.i, %brelse.exit195.i.i.for.body.i61.i_crit_edge ], [ 0, %out_free.i.i.for.body.i61.i_crit_edge ]
  %arrayidx88.i.i = getelementptr ptr, ptr %ptr.1.i200.i.i, i32 %i.0213.i.i
  %159 = ptrtoint ptr %arrayidx88.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx88.i.i, align 4
  %tobool.not.i192.i.i = icmp eq ptr %160, null
  br i1 %tobool.not.i192.i.i, label %for.body.i61.i.brelse.exit195.i.i_crit_edge, label %if.then.i193.i.i

for.body.i61.i.brelse.exit195.i.i_crit_edge:      ; preds = %for.body.i61.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit195.i.i

if.then.i193.i.i:                                 ; preds = %for.body.i61.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %160) #16
  br label %brelse.exit195.i.i

brelse.exit195.i.i:                               ; preds = %if.then.i193.i.i, %for.body.i61.i.brelse.exit195.i.i_crit_edge
  %inc89.i.i = add nuw i32 %i.0213.i.i, 1
  %exitcond.not.i62.i = icmp eq i32 %inc89.i.i, %leaf.2.i.i
  br i1 %exitcond.not.i62.i, label %brelse.exit195.i.i.gfs2_dir_read_leaf.exit.i_crit_edge, label %brelse.exit195.i.i.for.body.i61.i_crit_edge

brelse.exit195.i.i.for.body.i61.i_crit_edge:      ; preds = %brelse.exit195.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i61.i

brelse.exit195.i.i.gfs2_dir_read_leaf.exit.i_crit_edge: ; preds = %brelse.exit195.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dir_read_leaf.exit.i

gfs2_dir_read_leaf.exit.thread.i:                 ; preds = %gfs2_alloc_sort_buffer.exit.i.i.gfs2_dir_read_leaf.exit.thread.i_crit_edge, %gfs2_metatype_check_i.exit.i.i.i.gfs2_dir_read_leaf.exit.thread.i_crit_edge, %do.body.i.i.gfs2_dir_read_leaf.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %gfs2_metatype_check_i.exit.i.i.i.gfs2_dir_read_leaf.exit.thread.i_crit_edge ], [ %call.i.i.i, %do.body.i.i.gfs2_dir_read_leaf.exit.thread.i_crit_edge ], [ -12, %gfs2_alloc_sort_buffer.exit.i.i.gfs2_dir_read_leaf.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %g.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i.i) #16
  br label %while.end.i

gfs2_dir_read_leaf.exit.i:                        ; preds = %brelse.exit195.i.i.gfs2_dir_read_leaf.exit.i_crit_edge, %out_free.i.i.gfs2_dir_read_leaf.exit.i_crit_edge
  call void @kvfree(ptr noundef nonnull %ptr.1.i200.i.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %g.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i.i)
  %tobool.not.i = icmp eq i32 %error.0.i.i, 0
  br i1 %tobool.not.i, label %gfs2_dir_read_leaf.exit.i.if.end15.i_crit_edge, label %gfs2_dir_read_leaf.exit.i.while.end.i_crit_edge

gfs2_dir_read_leaf.exit.i.while.end.i_crit_edge:  ; preds = %gfs2_dir_read_leaf.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

gfs2_dir_read_leaf.exit.i.if.end15.i_crit_edge:   ; preds = %gfs2_dir_read_leaf.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i

if.end15.i:                                       ; preds = %gfs2_dir_read_leaf.exit.i.if.end15.i_crit_edge, %gfs2_dir_read_leaf.exit.thread67.i
  %161 = ptrtoint ptr %i_depth.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %i_depth.i, align 1
  %conv17.i = zext i8 %162 to i32
  %sub18.i = sub i32 %conv17.i, %depth.2.i
  %shl19.i = shl nuw i32 1, %sub18.i
  %neg.i = sub i32 0, %shl19.i
  %and.i = and i32 %index.080.i, %neg.i
  %add.i = add i32 %and.i, %shl19.i
  %cmp11.i = icmp ult i32 %add.i, %shl.i
  br i1 %cmp11.i, label %if.end15.i.while.body.i_crit_edge, label %if.end15.i.while.end.i_crit_edge

if.end15.i.while.end.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end15.i.while.body.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.end.i:                                      ; preds = %if.end15.i.while.end.i_crit_edge, %gfs2_dir_read_leaf.exit.i.while.end.i_crit_edge, %gfs2_dir_read_leaf.exit.thread.i, %gfs2_dir_readahead.exit.i.while.end.i_crit_edge
  %error.1.i = phi i32 [ %retval.0.i.ph.i, %gfs2_dir_read_leaf.exit.thread.i ], [ 0, %gfs2_dir_readahead.exit.i.while.end.i_crit_edge ], [ %error.0.i.i, %gfs2_dir_read_leaf.exit.i.while.end.i_crit_edge ], [ 0, %if.end15.i.while.end.i_crit_edge ]
  %163 = call i32 @llvm.smin.i32(i32 %error.1.i, i32 0) #16
  br label %dir_e_read.exit

dir_e_read.exit:                                  ; preds = %while.end.i, %if.then8.i
  %retval.0.i = phi i32 [ %21, %if.then8.i ], [ %163, %while.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied.i) #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 19
  %164 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool.not.i69.not = icmp eq i8 %165, 0
  br i1 %tobool.not.i69.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @gfs2_consist_inode_i(ptr noundef %inode, ptr noundef nonnull @__func__.gfs2_dir_read, ptr noundef nonnull @.str, i32 noundef 1586) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %166 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %i_no_addr.i, align 8
  %call.i = call i32 @gfs2_meta_buffer(ptr noundef %inode, i32 noundef 4, i64 noundef %167, ptr noundef nonnull %dibh) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %168 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %168, i32 noundef 3136, i32 noundef 384) #21
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.end13.if.end33_crit_edge, label %if.then16

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then16:                                        ; preds = %if.end13
  %169 = ptrtoint ptr %g to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call7.i.i, ptr %g, align 4
  %170 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %5, align 4
  %171 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dibh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %172, i32 0, i32 5
  %173 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %172, i32 0, i32 4
  %175 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %b_size, align 8
  %call17 = call fastcc ptr @gfs2_dirent_scan(ptr noundef %inode, ptr noundef %174, i32 noundef %176, ptr noundef nonnull @gfs2_dirent_gather, ptr noundef null, ptr noundef nonnull %g)
  %cmp.i75 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  %177 = ptrtoint ptr %call17 to i32
  br label %out

if.end21:                                         ; preds = %if.then16
  %178 = ptrtoint ptr %i_entries to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %i_entries, align 8
  %180 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %181)
  %cmp.not = icmp eq i32 %179, %181
  br i1 %cmp.not, label %if.end28, label %do.end

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 110
  %182 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %i_no_addr.i, align 8
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %sd_fsname, i64 noundef %183, i32 noundef %179, i32 noundef %181) #20
  call void @gfs2_consist_inode_i(ptr noundef %inode, ptr noundef nonnull @__func__.gfs2_dir_read, ptr noundef nonnull @.str, i32 noundef 1612) #16
  br label %out

if.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp54.not.i = icmp eq i32 %179, 0
  br i1 %cmp54.not.i, label %if.end28.gfs2_set_cookies.exit_crit_edge, label %for.body.lr.ph.i

if.end28.gfs2_set_cookies.exit_crit_edge:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_set_cookies.exit

for.body.lr.ph.i:                                 ; preds = %if.end28
  %184 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dibh, align 4
  %ar_loccookie.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 3
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %185, i32 0, i32 5
  %sd_fsname.i.i76 = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 110
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.056.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i77 = getelementptr ptr, ptr %call7.i.i, i32 %i.056.i
  %186 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx.i77, align 4
  %de_hash.i = getelementptr inbounds %struct.gfs2_dirent, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %de_hash.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %de_hash.i, align 8
  %190 = getelementptr inbounds %struct.gfs2_dirent, ptr %187, i32 0, i32 6
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %189, ptr %190, align 4
  %192 = load ptr, ptr %arrayidx.i77, align 4
  %193 = getelementptr inbounds %struct.gfs2_dirent, ptr %192, i32 0, i32 6
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %193, align 4
  %196 = lshr i32 %195, 1
  store i32 %196, ptr %193, align 4
  %197 = ptrtoint ptr %ar_loccookie.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %bf.load.i = load i32, ptr %ar_loccookie.i, align 4
  %198 = and i32 %bf.load.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool.not.i78 = icmp eq i32 %198, 0
  br i1 %tobool.not.i78, label %for.body.i.cleanup.i_crit_edge, label %if.end.i80

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

if.end.i80:                                       ; preds = %for.body.i
  %199 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx.i77, align 4
  %201 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %b_data.i, align 4
  %cmp.i.i79 = icmp eq ptr %202, null
  br i1 %cmp.i.i79, label %do.body2.i.i, label %do.end7.i.i, !prof !91

do.body2.i.i:                                     ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 535, 0\0A.popsection", ""() #16, !srcloc !97
  unreachable

do.end7.i.i:                                      ; preds = %if.end.i80
  %mh_type.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %mh_type.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %mh_type.i.i, align 4
  %205 = zext i32 %204 to i64
  call void @__sanitizer_cov_trace_switch(i64 %205, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %204, label %do.end11.i.i [
    i32 6, label %do.end7.i.i.gfs2_dirent_offset.exit.i_crit_edge
    i32 4, label %sw.bb8.i.i
  ]

do.end7.i.i.gfs2_dirent_offset.exit.i_crit_edge:  ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dirent_offset.exit.i

sw.bb8.i.i:                                       ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dirent_offset.exit.i

do.end11.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %sd_fsname.i.i76, ptr noundef nonnull @.str.5, i32 noundef %204) #20
  br label %gfs2_dirent_offset.exit.i

gfs2_dirent_offset.exit.i:                        ; preds = %do.end11.i.i, %sw.bb8.i.i, %do.end7.i.i.gfs2_dirent_offset.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -1, %do.end11.i.i ], [ 232, %sw.bb8.i.i ], [ 104, %do.end7.i.i.gfs2_dirent_offset.exit.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %202, i32 %retval.0.i.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %200 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %sub.ptr.sub.i)
  %.not.i = icmp ult i32 %sub.ptr.sub.i, 393216
  %206 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx.i77, align 4
  %208 = getelementptr inbounds %struct.gfs2_dirent, ptr %207, i32 0, i32 6
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %208, align 4
  br i1 %.not.i, label %if.end20.i, label %if.then13.i

if.then13.i:                                      ; preds = %gfs2_dirent_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %or.i = or i32 %210, 8192
  %211 = ptrtoint ptr %208 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %or.i, ptr %208, align 4
  br label %cleanup.i

if.end20.i:                                       ; preds = %gfs2_dirent_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %div.i = udiv i32 %sub.ptr.sub.i, 48
  %and.i81 = and i32 %210, -16384
  %212 = ptrtoint ptr %208 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %and.i81, ptr %208, align 4
  %213 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx.i77, align 4
  %215 = getelementptr inbounds %struct.gfs2_dirent, ptr %214, i32 0, i32 6
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %215, align 4
  %or25.i = or i32 %217, %div.i
  store i32 %or25.i, ptr %215, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end20.i, %if.then13.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %179
  br i1 %exitcond.not.i, label %cleanup.i.gfs2_set_cookies.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

cleanup.i.gfs2_set_cookies.exit_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_set_cookies.exit

gfs2_set_cookies.exit:                            ; preds = %cleanup.i.gfs2_set_cookies.exit_crit_edge, %if.end28.gfs2_set_cookies.exit_crit_edge
  %218 = ptrtoint ptr %i_entries to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %i_entries, align 8
  %call32 = call fastcc i32 @do_filldir_main(ptr noundef %ctx, ptr noundef nonnull %call7.i.i, i32 noundef %219, i32 noundef 0, ptr noundef nonnull %copied)
  br label %out

out:                                              ; preds = %gfs2_set_cookies.exit, %do.end, %if.then19
  %error.0 = phi i32 [ %177, %if.then19 ], [ -5, %do.end ], [ %call32, %gfs2_set_cookies.exit ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %if.end33

if.end33:                                         ; preds = %out, %if.end13.if.end33_crit_edge
  %error.1 = phi i32 [ %error.0, %out ], [ -12, %if.end13.if.end33_crit_edge ]
  %220 = call i32 @llvm.smin.i32(i32 %error.1, i32 0)
  %221 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dibh, align 4
  %tobool.not.i82 = icmp eq ptr %222, null
  br i1 %tobool.not.i82, label %if.end33.cleanup_crit_edge, label %if.then.i83

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i83:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %222) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i83, %if.end33.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then8, %dir_e_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %dir_e_read.exit ], [ -5, %if.then8 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end9.cleanup_crit_edge ], [ %220, %if.end33.cleanup_crit_edge ], [ %220, %if.then.i83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %g) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_consist_inode_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gfs2_dirent_scan(ptr noundef %inode, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readonly %scan, ptr noundef %name, ptr noundef %opaque) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %cmp.i = icmp eq ptr %buf, null
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !91

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 535, 0\0A.popsection", ""() #16, !srcloc !97
  unreachable

do.end7.i:                                        ; preds = %entry
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mh_type.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %5, label %gfs2_dirent_offset.exit [
    i32 6, label %do.end7.i.if.end_crit_edge
    i32 4, label %sw.bb8.i
  ]

do.end7.i.if.end_crit_edge:                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb8.i:                                         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

gfs2_dirent_offset.exit:                          ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  %sd_fsname.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 110
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %sd_fsname.i, ptr noundef nonnull @.str.5, i32 noundef %5) #20
  br label %consist_inode

if.end:                                           ; preds = %sw.bb8.i, %do.end7.i.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 104, %do.end7.i.if.end_crit_edge ], [ 232, %sw.bb8.i ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %retval.0.i.ph
  %de_rec_len = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr, i32 0, i32 2
  %7 = ptrtoint ptr %de_rec_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %de_rec_len, align 4
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i75 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i75 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i75, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %8)
  %cmp.i76 = icmp ult i16 %8, 40
  br i1 %cmp.i76, label %if.end.gfs2_check_dirent.exit.thread_crit_edge, label %if.end10.i, !prof !91

if.end.gfs2_check_dirent.exit.thread_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_check_dirent.exit.thread

if.end10.i:                                       ; preds = %if.end
  %add.i = add nuw nsw i32 %retval.0.i.ph, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %len)
  %cmp11.i = icmp ugt i32 %add.i, %len
  br i1 %cmp11.i, label %if.end10.i.gfs2_check_dirent.exit.thread_crit_edge, label %if.end19.i, !prof !91

if.end10.i.gfs2_check_dirent.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_check_dirent.exit.thread

if.end19.i:                                       ; preds = %if.end10.i
  %no_addr.i51.i = getelementptr inbounds %struct.gfs2_inum, ptr %add.ptr, i32 0, i32 1
  %13 = ptrtoint ptr %no_addr.i51.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %no_addr.i51.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp.i52.i = icmp eq i64 %14, 0
  br i1 %cmp.i52.i, label %if.end19.i.do.body.preheader_crit_edge, label %gfs2_dirent_sentinel.exit56.i

if.end19.i.do.body.preheader_crit_edge:           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.preheader

gfs2_dirent_sentinel.exit56.i:                    ; preds = %if.end19.i
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp2.i53.not.i = icmp eq i64 %16, 0
  br i1 %cmp2.i53.not.i, label %gfs2_dirent_sentinel.exit56.i.do.body.preheader_crit_edge, label %land.lhs.true.i

gfs2_dirent_sentinel.exit56.i.do.body.preheader_crit_edge: ; preds = %gfs2_dirent_sentinel.exit56.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.preheader

land.lhs.true.i:                                  ; preds = %gfs2_dirent_sentinel.exit56.i
  %de_name_len.i = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr, i32 0, i32 3
  %17 = ptrtoint ptr %de_name_len.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %de_name_len.i, align 2
  %conv.i = zext i16 %18 to i32
  %add32.i = add nuw nsw i32 %conv.i, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %add32.i, i32 %conv)
  %cmp33.i = icmp ugt i32 %add32.i, %conv
  br i1 %cmp33.i, label %land.lhs.true.i.gfs2_check_dirent.exit.thread_crit_edge, label %land.lhs.true.i.do.body.preheader_crit_edge, !prof !91

land.lhs.true.i.do.body.preheader_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.preheader

land.lhs.true.i.gfs2_check_dirent.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_check_dirent.exit.thread

do.body.preheader:                                ; preds = %land.lhs.true.i.do.body.preheader_crit_edge, %gfs2_dirent_sentinel.exit56.i.do.body.preheader_crit_edge, %if.end19.i.do.body.preheader_crit_edge
  br label %do.body

gfs2_check_dirent.exit.thread:                    ; preds = %land.lhs.true.i.gfs2_check_dirent.exit.thread_crit_edge, %if.end10.i.gfs2_check_dirent.exit.thread_crit_edge, %if.end.gfs2_check_dirent.exit.thread_crit_edge
  %msg.0.i = phi ptr [ @.str.6, %if.end.gfs2_check_dirent.exit.thread_crit_edge ], [ @.str.8, %if.end10.i.gfs2_check_dirent.exit.thread_crit_edge ], [ @.str.10, %land.lhs.true.i.gfs2_check_dirent.exit.thread_crit_edge ]
  %sd_fsname.i77 = getelementptr inbounds %struct.gfs2_sbd, ptr %12, i32 0, i32 110
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %sd_fsname.i77, ptr noundef nonnull @.str.12, ptr noundef nonnull %msg.0.i, ptr noundef nonnull @.str.13) #20
  br label %consist_inode

do.body:                                          ; preds = %land.lhs.true.i97.do.body_crit_edge, %do.body.preheader
  %dent.0 = phi ptr [ %add.ptr14, %land.lhs.true.i97.do.body_crit_edge ], [ %add.ptr, %do.body.preheader ]
  %prev.0 = phi ptr [ %dent.0, %land.lhs.true.i97.do.body_crit_edge ], [ null, %do.body.preheader ]
  %offset.0 = phi i32 [ %add, %land.lhs.true.i97.do.body_crit_edge ], [ %retval.0.i.ph, %do.body.preheader ]
  %size.0 = phi i32 [ %conv16, %land.lhs.true.i97.do.body_crit_edge ], [ %conv, %do.body.preheader ]
  %call6 = tail call i32 %scan(ptr noundef %dent.0, ptr noundef %name, ptr noundef %opaque) #16
  %19 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call6, label %do.body25 [
    i32 0, label %if.end9
    i32 1, label %do.body.cleanup_crit_edge
    i32 2, label %sw.bb23
  ]

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %do.body
  %add = add i32 %size.0, %offset.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp10 = icmp eq i32 %add, %len
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %add
  %de_rec_len15 = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr14, i32 0, i32 2
  %20 = ptrtoint ptr %de_rec_len15 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %de_rec_len15, align 4
  %conv16 = zext i16 %21 to i32
  %22 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i80 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i80 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i80, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %21)
  %cmp.i81 = icmp ult i16 %21, 40
  br i1 %cmp.i81, label %if.end13.gfs2_check_dirent.exit103.thread_crit_edge, label %if.end.i84, !prof !91

if.end13.gfs2_check_dirent.exit103.thread_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_check_dirent.exit103.thread

if.end.i84:                                       ; preds = %if.end13
  %and.i82 = and i32 %add, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool2.not.i83 = icmp eq i32 %and.i82, 0
  br i1 %tobool2.not.i83, label %if.end10.i87, label %if.end.i84.gfs2_check_dirent.exit103.thread_crit_edge, !prof !96

if.end.i84.gfs2_check_dirent.exit103.thread_crit_edge: ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_check_dirent.exit103.thread

if.end10.i87:                                     ; preds = %if.end.i84
  %add.i85 = add i32 %add, %conv16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i85, i32 %len)
  %cmp11.i86 = icmp ugt i32 %add.i85, %len
  br i1 %cmp11.i86, label %if.end10.i87.gfs2_check_dirent.exit103.thread_crit_edge, label %if.end19.i88, !prof !91

if.end10.i87.gfs2_check_dirent.exit103.thread_crit_edge: ; preds = %if.end10.i87
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_check_dirent.exit103.thread

if.end19.i88:                                     ; preds = %if.end10.i87
  %no_addr.i.i = getelementptr inbounds %struct.gfs2_inum, ptr %add.ptr14, i32 0, i32 1
  %26 = ptrtoint ptr %no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %no_addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp.i.i = icmp eq i64 %27, 0
  br i1 %cmp.i.i, label %if.end19.i88.gfs2_check_dirent.exit103.thread_crit_edge, label %gfs2_dirent_sentinel.exit.i

if.end19.i88.gfs2_check_dirent.exit103.thread_crit_edge: ; preds = %if.end19.i88
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_check_dirent.exit103.thread

gfs2_dirent_sentinel.exit.i:                      ; preds = %if.end19.i88
  %28 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp2.i.i = icmp eq i64 %29, 0
  br i1 %cmp2.i.i, label %gfs2_dirent_sentinel.exit.i.gfs2_check_dirent.exit103.thread_crit_edge, label %land.lhs.true.i97, !prof !91

gfs2_dirent_sentinel.exit.i.gfs2_check_dirent.exit103.thread_crit_edge: ; preds = %gfs2_dirent_sentinel.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_check_dirent.exit103.thread

land.lhs.true.i97:                                ; preds = %gfs2_dirent_sentinel.exit.i
  %de_name_len.i93 = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr14, i32 0, i32 3
  %30 = ptrtoint ptr %de_name_len.i93 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %de_name_len.i93, align 2
  %conv.i94 = zext i16 %31 to i32
  %add32.i95 = add nuw nsw i32 %conv.i94, 40
  %cmp33.i96 = icmp ugt i32 %add32.i95, %conv16
  br i1 %cmp33.i96, label %land.lhs.true.i97.gfs2_check_dirent.exit103.thread_crit_edge, label %land.lhs.true.i97.do.body_crit_edge, !prof !91

land.lhs.true.i97.do.body_crit_edge:              ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

land.lhs.true.i97.gfs2_check_dirent.exit103.thread_crit_edge: ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_check_dirent.exit103.thread

gfs2_check_dirent.exit103.thread:                 ; preds = %land.lhs.true.i97.gfs2_check_dirent.exit103.thread_crit_edge, %gfs2_dirent_sentinel.exit.i.gfs2_check_dirent.exit103.thread_crit_edge, %if.end19.i88.gfs2_check_dirent.exit103.thread_crit_edge, %if.end10.i87.gfs2_check_dirent.exit103.thread_crit_edge, %if.end.i84.gfs2_check_dirent.exit103.thread_crit_edge, %if.end13.gfs2_check_dirent.exit103.thread_crit_edge
  %msg.0.i98 = phi ptr [ @.str.6, %if.end13.gfs2_check_dirent.exit103.thread_crit_edge ], [ @.str.7, %if.end.i84.gfs2_check_dirent.exit103.thread_crit_edge ], [ @.str.8, %if.end10.i87.gfs2_check_dirent.exit103.thread_crit_edge ], [ @.str.9, %gfs2_dirent_sentinel.exit.i.gfs2_check_dirent.exit103.thread_crit_edge ], [ @.str.10, %land.lhs.true.i97.gfs2_check_dirent.exit103.thread_crit_edge ], [ @.str.9, %if.end19.i88.gfs2_check_dirent.exit103.thread_crit_edge ]
  %sd_fsname.i99 = getelementptr inbounds %struct.gfs2_sbd, ptr %25, i32 0, i32 110
  %call44.i100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %sd_fsname.i99, ptr noundef nonnull @.str.12, ptr noundef nonnull %msg.0.i98, ptr noundef nonnull @.str.14) #20
  br label %consist_inode

sw.bb23:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %tobool24.not = icmp eq ptr %prev.0, null
  %dent.0.prev.0 = select i1 %tobool24.not, ptr %dent.0, ptr %prev.0
  br label %cleanup

do.body25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp26 = icmp sgt i32 %call6, 0
  br i1 %cmp26, label %do.body31, label %do.end39, !prof !91

do.body31:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 597, 0\0A.popsection", ""() #16, !srcloc !99
  unreachable

do.end39:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #18
  %32 = inttoptr i32 %call6 to ptr
  br label %cleanup

consist_inode:                                    ; preds = %gfs2_check_dirent.exit103.thread, %gfs2_check_dirent.exit.thread, %gfs2_dirent_offset.exit
  tail call void @gfs2_consist_inode_i(ptr noundef %inode, ptr noundef nonnull @__func__.gfs2_dirent_scan, ptr noundef nonnull @.str, i32 noundef 602) #16
  br label %cleanup

cleanup:                                          ; preds = %consist_inode, %do.end39, %sw.bb23, %if.end9.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %consist_inode ], [ %32, %do.end39 ], [ %dent.0.prev.0, %sw.bb23 ], [ %dent.0, %do.body.cleanup_crit_edge ], [ null, %if.end9.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gfs2_dirent_gather(ptr noundef %dent, ptr nocapture noundef readnone %name, ptr nocapture noundef %opaque) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %no_addr.i = getelementptr inbounds %struct.gfs2_inum, ptr %dent, i32 0, i32 1
  %0 = ptrtoint ptr %no_addr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %no_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.i = icmp eq i64 %1, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %gfs2_dirent_sentinel.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

gfs2_dirent_sentinel.exit:                        ; preds = %entry
  %2 = ptrtoint ptr %dent to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dent, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp2.i.not = icmp eq i64 %3, 0
  br i1 %cmp2.i.not, label %gfs2_dirent_sentinel.exit.if.end_crit_edge, label %if.then

gfs2_dirent_sentinel.exit.if.end_crit_edge:       ; preds = %gfs2_dirent_sentinel.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %gfs2_dirent_sentinel.exit
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %opaque to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %opaque, align 4
  %offset = getelementptr inbounds %struct.dirent_gather, ptr %opaque, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %offset, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dent, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %gfs2_dirent_sentinel.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_filldir_main(ptr noundef %ctx, ptr noundef %darr, i32 noundef %entries, i32 noundef %sort_start, ptr nocapture noundef %copied) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %entries, i32 %sort_start)
  %cmp = icmp ugt i32 %entries, %sort_start
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr ptr, ptr %darr, i32 %sort_start
  %sub = sub i32 %entries, %sort_start
  tail call void @sort(ptr noundef %arrayidx, i32 noundef %sub, i32 noundef 4, ptr noundef nonnull @compare_dents, ptr noundef null) #16
  br label %for.body.lr.ph

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entries)
  %cmp21.not = icmp eq i32 %entries, 0
  br i1 %cmp21.not, label %if.end.for.end_crit_edge, label %if.end.for.body.lr.ph_crit_edge

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end.for.body.lr.ph_crit_edge, %if.end.thread
  %0 = ptrtoint ptr %darr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %darr, align 4
  %2 = getelementptr inbounds %struct.gfs2_dirent, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %conv = zext i32 %4 to i64
  %pos23 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %run.09 = phi i32 [ 0, %for.body.lr.ph ], [ %run.2, %for.inc.for.body_crit_edge ]
  %y.06 = phi i32 [ 1, %for.body.lr.ph ], [ %inc34, %for.inc.for.body_crit_edge ]
  %off_next.04 = phi i64 [ %conv, %for.body.lr.ph ], [ %off_next.2, %for.inc.for.body_crit_edge ]
  %dent_next.02 = phi ptr [ %1, %for.body.lr.ph ], [ %dent_next.2, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %y.06, i32 %entries)
  %cmp4 = icmp ult i32 %y.06, %entries
  br i1 %cmp4, label %if.then6, label %if.else22

if.then6:                                         ; preds = %for.body
  %arrayidx7 = getelementptr ptr, ptr %darr, i32 %y.06
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx7, align 4
  %7 = getelementptr inbounds %struct.gfs2_dirent, ptr %6, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %conv9 = zext i32 %9 to i64
  %10 = ptrtoint ptr %pos23 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos23, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %off_next.04, i64 %11)
  %cmp10 = icmp ult i64 %off_next.04, %11
  br i1 %cmp10, label %if.then6.for.inc_crit_edge, label %if.end13

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end13:                                         ; preds = %if.then6
  %12 = ptrtoint ptr %pos23 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %off_next.04, ptr %pos23, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %off_next.04, i64 %conv9)
  %cmp15 = icmp eq i64 %off_next.04, %conv9
  br i1 %cmp15, label %if.then17, label %if.end13.if.end29_crit_edge

if.end13.if.end29_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then17:                                        ; preds = %if.end13
  %13 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %copied, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %run.09)
  %tobool18.not = icmp eq i32 %run.09, 0
  %or.cond = select i1 %tobool.not, i1 %tobool18.not, i1 false
  br i1 %or.cond, label %if.then17.cleanup_crit_edge, label %if.then17.if.end29_crit_edge

if.then17.if.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else22:                                        ; preds = %for.body
  %15 = ptrtoint ptr %pos23 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %pos23, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %off_next.04, i64 %16)
  %cmp24 = icmp ult i64 %off_next.04, %16
  br i1 %cmp24, label %if.else22.for.inc_crit_edge, label %if.end27

if.else22.for.inc_crit_edge:                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end27:                                         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %pos23 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %off_next.04, ptr %pos23, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.then17.if.end29_crit_edge, %if.end13.if.end29_crit_edge
  %dent_next.1 = phi ptr [ %dent_next.02, %if.end27 ], [ %6, %if.then17.if.end29_crit_edge ], [ %6, %if.end13.if.end29_crit_edge ]
  %off_next.1 = phi i64 [ %off_next.04, %if.end27 ], [ %off_next.04, %if.then17.if.end29_crit_edge ], [ %conv9, %if.end13.if.end29_crit_edge ]
  %run.1 = phi i32 [ %run.09, %if.end27 ], [ 1, %if.then17.if.end29_crit_edge ], [ 0, %if.end13.if.end29_crit_edge ]
  %add.ptr = getelementptr %struct.gfs2_dirent, ptr %dent_next.02, i32 1
  %de_name_len = getelementptr inbounds %struct.gfs2_dirent, ptr %dent_next.02, i32 0, i32 3
  %18 = ptrtoint ptr %de_name_len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %de_name_len, align 2
  %conv30 = zext i16 %19 to i32
  %no_addr = getelementptr inbounds %struct.gfs2_inum, ptr %dent_next.02, i32 0, i32 1
  %20 = ptrtoint ptr %no_addr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %no_addr, align 8
  %de_type = getelementptr inbounds %struct.gfs2_dirent, ptr %dent_next.02, i32 0, i32 4
  %22 = ptrtoint ptr %de_type to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %de_type, align 8
  %conv31 = zext i16 %23 to i32
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 8
  %26 = ptrtoint ptr %pos23 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pos23, align 8
  %call.i = tail call i32 %25(ptr noundef %ctx, ptr noundef %add.ptr, i32 noundef %conv30, i64 noundef %27, i64 noundef %21, i32 noundef %conv31) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %copied, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %if.else22.for.inc_crit_edge, %if.then6.for.inc_crit_edge
  %dent_next.2 = phi ptr [ %6, %if.then6.for.inc_crit_edge ], [ %dent_next.1, %if.end33 ], [ %dent_next.02, %if.else22.for.inc_crit_edge ]
  %off_next.2 = phi i64 [ %conv9, %if.then6.for.inc_crit_edge ], [ %off_next.1, %if.end33 ], [ %off_next.04, %if.else22.for.inc_crit_edge ]
  %run.2 = phi i32 [ %run.09, %if.then6.for.inc_crit_edge ], [ %run.1, %if.end33 ], [ %run.09, %if.else22.for.inc_crit_edge ]
  %inc34 = add i32 %y.06, 1
  %exitcond.not = icmp eq i32 %y.06, %entries
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %pos35 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %29 = ptrtoint ptr %pos35 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %pos35, align 8
  %inc36 = add i64 %30, 1
  store i64 %inc36, ptr %pos35, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end29.cleanup_crit_edge, %if.then17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 1, %if.then17.cleanup_crit_edge ], [ 1, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gfs2_dir_search(ptr noundef %dir, ptr noundef %name, i1 noundef zeroext %fail_on_exist) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #16
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !93
  %call = call fastcc ptr @gfs2_dirent_search(ptr noundef %dir, ptr noundef %name, ptr noundef nonnull @gfs2_dirent_find, ptr noundef nonnull %bh)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup17_crit_edge, label %if.then

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup17

if.then:                                          ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.cleanup17_crit_edge, label %if.end

if.then.cleanup17_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup17

if.end:                                           ; preds = %if.then
  %de_type = getelementptr inbounds %struct.gfs2_dirent, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %de_type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %de_type, align 8
  %de_rahead = getelementptr inbounds %struct.gfs2_dirent, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %de_rahead to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %de_rahead, align 2
  %no_addr = getelementptr inbounds %struct.gfs2_inum, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %no_addr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %no_addr, align 8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %call, align 8
  %9 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.brelse.exit_crit_edge, label %if.then.i

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__brelse(ptr noundef nonnull %10) #16
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end.brelse.exit_crit_edge
  br i1 %fail_on_exist, label %brelse.exit.cleanup17_crit_edge, label %if.end8

brelse.exit.cleanup17_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup17

if.end8:                                          ; preds = %brelse.exit
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %conv = zext i16 %2 to i32
  %call9 = tail call ptr @gfs2_inode_lookup(ptr noundef %12, i32 noundef %conv, i64 noundef %6, i64 noundef %8, i32 noundef 0) #16
  %cmp.i31 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %if.end8.cleanup17_crit_edge, label %if.then11

if.end8.cleanup17_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup17

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %i_rahead = getelementptr inbounds %struct.gfs2_inode, ptr %call9, i32 0, i32 21
  %13 = ptrtoint ptr %i_rahead to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %4, ptr %i_rahead, align 2
  br label %cleanup17

cleanup17:                                        ; preds = %if.then11, %if.end8.cleanup17_crit_edge, %brelse.exit.cleanup17_crit_edge, %if.then.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.1 = phi ptr [ %call9, %if.then11 ], [ %call9, %if.end8.cleanup17_crit_edge ], [ %call, %if.then.cleanup17_crit_edge ], [ inttoptr (i32 -17 to ptr), %brelse.exit.cleanup17_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.cleanup17_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #16
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gfs2_dirent_search(ptr noundef %inode, ptr noundef %name, ptr nocapture noundef readonly %scan, ptr nocapture noundef writeonly %pbh) unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #16
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !93
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 18
  %1 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_diskflags, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end28, label %if.then

if.then:                                          ; preds = %entry
  %i_depth = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 20
  %3 = ptrtoint ptr %i_depth to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %i_depth, align 1
  %conv = zext i8 %4 to i32
  %mul = shl i32 8, %conv
  %conv1 = zext i32 %mul to i64
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %conv1)
  %cmp.not = icmp eq i64 %call2, %conv1
  br i1 %cmp.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @gfs2_consist_inode_i(ptr noundef %inode, ptr noundef nonnull @__func__.gfs2_dirent_search, ptr noundef nonnull @.str, i32 noundef 821) #16
  br label %cleanup40

if.end:                                           ; preds = %if.then
  %hash = getelementptr inbounds %struct.anon.3, ptr %name, i32 0, i32 1
  %5 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hash, align 4
  %7 = ptrtoint ptr %i_depth to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i_depth, align 1
  %conv7 = zext i8 %8 to i32
  %sub = sub nsw i32 32, %conv7
  %shr = lshr i32 %6, %sub
  %call8 = call fastcc i32 @get_first_leaf(ptr noundef %inode, i32 noundef %shr, ptr noundef nonnull %bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.preheader, label %if.then10

do.body.preheader:                                ; preds = %if.end
  %9 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bh, align 4
  %b_data81 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %b_data81 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_data81, align 4
  %b_size82 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %b_size82 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_size82, align 8
  %call1383 = call fastcc ptr @gfs2_dirent_scan(ptr noundef %inode, ptr noundef %12, i32 noundef %14, ptr noundef %scan, ptr noundef %name, ptr noundef null)
  %tobool14.not84 = icmp eq ptr %call1383, null
  br i1 %tobool14.not84, label %if.end16.lr.ph, label %do.body.preheader.got_dent_crit_edge

do.body.preheader.got_dent_crit_edge:             ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %got_dent

if.end16.lr.ph:                                   ; preds = %do.body.preheader
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  br label %if.end16

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %15 = inttoptr i32 %call8 to ptr
  br label %cleanup40

if.end16:                                         ; preds = %get_leaf.exit.if.end16_crit_edge, %if.end16.lr.ph
  %16 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bh, align 4
  %b_data17 = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %b_data17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data17, align 4
  %lf_next = getelementptr inbounds %struct.gfs2_leaf, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %lf_next to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %lf_next, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end16.brelse.exit_crit_edge, label %if.then.i

if.end16.brelse.exit_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %17) #16
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end16.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool18.not = icmp eq i64 %21, 0
  br i1 %tobool18.not, label %brelse.exit.cleanup40_crit_edge, label %if.end20

brelse.exit.cleanup40_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup40

if.end20:                                         ; preds = %brelse.exit
  %22 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_gl.i, align 4
  %call.i = call i32 @gfs2_meta_read(ptr noundef %23, i64 noundef %21, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %bh) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i66 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i66, label %land.lhs.true.i, label %if.end20.cond.true_crit_edge

if.end20.cond.true_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.true

land.lhs.true.i:                                  ; preds = %if.end20
  %24 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i, align 16
  %28 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bh, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_data.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %mh_type.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %mh_type.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mh_type.i.i, align 4
  %conv.i.i = trunc i32 %35 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %33)
  %cmp.not.i.i = icmp eq i32 %33, 18225520
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !96

if.then.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = call i32 @gfs2_meta_check_ii(ptr noundef %27, ptr noundef %29, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %conv.i.i)
  %cmp5.not.i.i = icmp eq i16 %conv.i.i, 6
  br i1 %cmp5.not.i.i, label %if.end.i.i.get_leaf.exit_crit_edge, label %if.then13.i.i, !prof !96

if.end.i.i.get_leaf.exit_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_leaf.exit

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i.i = call i32 @gfs2_metatype_check_ii(ptr noundef %27, ptr noundef %29, i16 noundef zeroext 6, i16 noundef zeroext %conv.i.i, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i

gfs2_metatype_check_i.exit.i:                     ; preds = %if.then13.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call14.i.i, %if.then13.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool3.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool3.not.i, label %gfs2_metatype_check_i.exit.i.get_leaf.exit_crit_edge, label %gfs2_metatype_check_i.exit.i.cond.true_crit_edge

gfs2_metatype_check_i.exit.i.cond.true_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.true

gfs2_metatype_check_i.exit.i.get_leaf.exit_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_leaf.exit

get_leaf.exit:                                    ; preds = %gfs2_metatype_check_i.exit.i.get_leaf.exit_crit_edge, %if.end.i.i.get_leaf.exit_crit_edge
  %36 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %b_size, align 8
  %call13 = call fastcc ptr @gfs2_dirent_scan(ptr noundef %inode, ptr noundef %39, i32 noundef %41, ptr noundef %scan, ptr noundef %name, ptr noundef null)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %get_leaf.exit.if.end16_crit_edge, label %get_leaf.exit.got_dent_crit_edge

get_leaf.exit.got_dent_crit_edge:                 ; preds = %get_leaf.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %got_dent

get_leaf.exit.if.end16_crit_edge:                 ; preds = %get_leaf.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

cond.true:                                        ; preds = %gfs2_metatype_check_i.exit.i.cond.true_crit_edge, %if.end20.cond.true_crit_edge
  %error.0.i.ph = phi i32 [ -5, %gfs2_metatype_check_i.exit.i.cond.true_crit_edge ], [ %call.i, %if.end20.cond.true_crit_edge ]
  %42 = inttoptr i32 %error.0.i.ph to ptr
  br label %cleanup40

if.end28:                                         ; preds = %entry
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %43 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %i_no_addr.i, align 8
  %call.i67 = call i32 @gfs2_meta_buffer(ptr noundef %inode, i32 noundef 4, i64 noundef %44, ptr noundef nonnull %bh) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool30.not = icmp eq i32 %call.i67, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %45 = inttoptr i32 %call.i67 to ptr
  br label %cleanup40

if.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %46 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bh, align 4
  %b_data34 = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %b_data34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_data34, align 4
  %b_size35 = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 4
  %50 = ptrtoint ptr %b_size35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %b_size35, align 8
  %call36 = call fastcc ptr @gfs2_dirent_scan(ptr noundef %inode, ptr noundef %49, i32 noundef %51, ptr noundef %scan, ptr noundef %name, ptr noundef null)
  br label %got_dent

got_dent:                                         ; preds = %if.end33, %get_leaf.exit.got_dent_crit_edge, %do.body.preheader.got_dent_crit_edge
  %dent.1 = phi ptr [ %call36, %if.end33 ], [ %call1383, %do.body.preheader.got_dent_crit_edge ], [ %call13, %get_leaf.exit.got_dent_crit_edge ]
  %tobool.not.i68 = icmp eq ptr %dent.1, null
  %cmp.i = icmp ugt ptr %dent.1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i68, %cmp.i
  br i1 %spec.select.i, label %if.then38, label %got_dent.if.end39_crit_edge

got_dent.if.end39_crit_edge:                      ; preds = %got_dent
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then38:                                        ; preds = %got_dent
  %52 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bh, align 4
  %tobool.not.i69 = icmp eq ptr %53, null
  br i1 %tobool.not.i69, label %if.then38.brelse.exit71_crit_edge, label %if.then.i70

if.then38.brelse.exit71_crit_edge:                ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit71

if.then.i70:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %53) #16
  br label %brelse.exit71

brelse.exit71:                                    ; preds = %if.then.i70, %if.then38.brelse.exit71_crit_edge
  %54 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %bh, align 4
  br label %if.end39

if.end39:                                         ; preds = %brelse.exit71, %got_dent.if.end39_crit_edge
  %55 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bh, align 4
  %57 = ptrtoint ptr %pbh to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %pbh, align 4
  br label %cleanup40

cleanup40:                                        ; preds = %if.end39, %if.then31, %cond.true, %brelse.exit.cleanup40_crit_edge, %if.then10, %if.then4
  %retval.1 = phi ptr [ %dent.1, %if.end39 ], [ %45, %if.then31 ], [ %42, %cond.true ], [ %15, %if.then10 ], [ inttoptr (i32 -5 to ptr), %if.then4 ], [ null, %brelse.exit.cleanup40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #16
  ret ptr %retval.1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gfs2_dirent_find(ptr nocapture noundef readonly %dent, ptr nocapture noundef readonly %name, ptr nocapture noundef readnone %opaque) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %no_addr.i.i = getelementptr inbounds %struct.gfs2_inum, ptr %dent, i32 0, i32 1
  %0 = ptrtoint ptr %no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %no_addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.i.i = icmp eq i64 %1, 0
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %gfs2_dirent_sentinel.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

gfs2_dirent_sentinel.exit.i:                      ; preds = %entry
  %2 = ptrtoint ptr %dent to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dent, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp2.i.not.i = icmp eq i64 %3, 0
  br i1 %cmp2.i.not.i, label %gfs2_dirent_sentinel.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

gfs2_dirent_sentinel.exit.i.if.end.i_crit_edge:   ; preds = %gfs2_dirent_sentinel.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %gfs2_dirent_sentinel.exit.i
  %de_hash.i = getelementptr inbounds %struct.gfs2_dirent, ptr %dent, i32 0, i32 1
  %4 = ptrtoint ptr %de_hash.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %de_hash.i, align 8
  %hash.i = getelementptr inbounds %struct.anon.3, ptr %name, i32 0, i32 1
  %6 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i = icmp eq i32 %5, %7
  br i1 %cmp.i, label %land.lhs.true1.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %de_name_len.i = getelementptr inbounds %struct.gfs2_dirent, ptr %dent, i32 0, i32 3
  %8 = ptrtoint ptr %de_name_len.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %de_name_len.i, align 2
  %conv.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %name, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i)
  %cmp2.i = icmp eq i32 %11, %conv.i
  br i1 %cmp2.i, label %land.lhs.true4.i, label %land.lhs.true1.i.if.end.i_crit_edge

land.lhs.true1.i.if.end.i_crit_edge:              ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true1.i
  %add.ptr.i = getelementptr %struct.gfs2_dirent, ptr %dent, i32 1
  %name5.i = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %12 = ptrtoint ptr %name5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name5.i, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %add.ptr.i, ptr %13, i32 %conv.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp8.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp8.i, label %land.lhs.true4.i.__gfs2_dirent_find.exit_crit_edge, label %land.lhs.true4.i.if.end.i_crit_edge

land.lhs.true4.i.if.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true4.i.__gfs2_dirent_find.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__gfs2_dirent_find.exit

if.end.i:                                         ; preds = %land.lhs.true4.i.if.end.i_crit_edge, %land.lhs.true1.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %gfs2_dirent_sentinel.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  br label %__gfs2_dirent_find.exit

__gfs2_dirent_find.exit:                          ; preds = %if.end.i, %land.lhs.true4.i.__gfs2_dirent_find.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 1, %land.lhs.true4.i.__gfs2_dirent_find.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_inode_lookup(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_dir_check(ptr noundef %dir, ptr noundef %name, ptr noundef readonly %ip) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #16
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !93
  %call = call fastcc ptr @gfs2_dirent_search(ptr noundef %dir, ptr noundef %name, ptr noundef nonnull @gfs2_dirent_find, ptr noundef nonnull %bh)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  %tobool4.not = icmp eq ptr %ip, null
  br i1 %tobool4.not, label %if.end.out_crit_edge, label %if.then5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then5:                                         ; preds = %if.end
  %no_addr = getelementptr inbounds %struct.gfs2_inum, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %no_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %no_addr, align 8
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %4 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_no_addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %5)
  %cmp.not = icmp eq i64 %3, %5
  br i1 %cmp.not, label %if.end7, label %if.then5.out_crit_edge

if.then5.out_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end7:                                          ; preds = %if.then5
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %call, align 8
  %i_no_formal_ino = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 2
  %8 = ptrtoint ptr %i_no_formal_ino to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_no_formal_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp9.not = icmp eq i64 %7, %9
  br i1 %cmp9.not, label %if.end11, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end11:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ip, align 8
  %12 = lshr i16 %11, 12
  %de_type = getelementptr inbounds %struct.gfs2_dirent, ptr %call, i32 0, i32 4
  %13 = ptrtoint ptr %de_type to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %de_type, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp13.not = icmp eq i16 %12, %14
  br i1 %cmp13.not, label %if.end11.out_crit_edge, label %if.then17, !prof !96

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @gfs2_consist_inode_i(ptr noundef %dir, ptr noundef nonnull @__func__.gfs2_dir_check, ptr noundef nonnull @.str, i32 noundef 1693) #16
  br label %out

out:                                              ; preds = %if.then17, %if.end11.out_crit_edge, %if.end7.out_crit_edge, %if.then5.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ -2, %if.then5.out_crit_edge ], [ -2, %if.end7.out_crit_edge ], [ -5, %if.then17 ], [ 0, %if.end11.out_crit_edge ], [ 0, %if.end.out_crit_edge ]
  %15 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %out.cleanup_crit_edge, label %if.then.i

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__brelse(ptr noundef nonnull %16) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %out.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then2 ], [ -2, %entry.cleanup_crit_edge ], [ %ret.0, %out.cleanup_crit_edge ], [ %ret.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_dir_add(ptr noundef %inode, ptr noundef %name, ptr nocapture noundef readonly %nip, ptr nocapture noundef %da) local_unnamed_addr #0 align 64 {
entry:
  %bh.i156 = alloca ptr, align 4
  %obh.i = alloca ptr, align 4
  %dibh.i138 = alloca ptr, align 4
  %args.i = alloca %struct.qstr, align 8
  %bh.i = alloca ptr, align 4
  %dibh.i = alloca ptr, align 4
  %bh = alloca ptr, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #16
  %bh1 = getelementptr inbounds %struct.gfs2_diradd, ptr %da, i32 0, i32 2
  %0 = ptrtoint ptr %bh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bh1, align 4
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %bh, align 4
  %dent2 = getelementptr inbounds %struct.gfs2_diradd, ptr %da, i32 0, i32 1
  %3 = ptrtoint ptr %dent2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dent2, align 4
  %i_diskflags32 = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 18
  %i_depth = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 20
  %i_no_addr.i.i146 = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %i_lock.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  %i_hash_cache.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 16
  %hash.i = getelementptr inbounds %struct.anon.3, ptr %name, i32 0, i32 1
  %i_gl.i.i161 = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %i_blkbits.i.i176 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %i_blocks.i.i181 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %i_entries.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 17
  %name.i = getelementptr inbounds %struct.qstr, ptr %args.i, i32 0, i32 1
  br label %while.cond

while.condthread-pre-split:                       ; preds = %dir_new_leaf.exit.thread202, %dir_new_leaf.exit.thread205, %if.end62.while.condthread-pre-split_crit_edge, %if.end40.while.condthread-pre-split_crit_edge, %dir_make_exhash.exit.thread192
  %5 = ptrtoint ptr %bh1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %bh1, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.condthread-pre-split, %entry
  %6 = phi ptr [ %.pr, %while.condthread-pre-split ], [ %1, %entry ]
  %dent.0 = phi ptr [ null, %while.condthread-pre-split ], [ %4, %entry ]
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %while.cond.if.end_crit_edge

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = call fastcc ptr @gfs2_dirent_search(ptr noundef %inode, ptr noundef %name, ptr noundef nonnull @gfs2_dirent_find_space, ptr noundef nonnull %bh)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.cond.if.end_crit_edge
  %dent.1 = phi ptr [ %call4, %if.then ], [ %dent.0, %while.cond.if.end_crit_edge ]
  %tobool.not = icmp eq ptr %dent.1, null
  br i1 %tobool.not, label %if.end31, label %if.then5

if.then5:                                         ; preds = %if.end
  %cmp.i = icmp ugt ptr %dent.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %dent.1 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bh, align 4
  %no_addr.i.i = getelementptr inbounds %struct.gfs2_inum, ptr %dent.1, i32 0, i32 1
  %10 = ptrtoint ptr %no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %no_addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp.i.i = icmp eq i64 %11, 0
  br i1 %cmp.i.i, label %if.end9.if.end.i_crit_edge, label %gfs2_dirent_sentinel.exit.i

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

gfs2_dirent_sentinel.exit.i:                      ; preds = %if.end9
  %12 = ptrtoint ptr %dent.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dent.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp2.i.not.i = icmp eq i64 %13, 0
  br i1 %cmp2.i.not.i, label %gfs2_dirent_sentinel.exit.i.if.end.i_crit_edge, label %if.then.i

gfs2_dirent_sentinel.exit.i.if.end.i_crit_edge:   ; preds = %gfs2_dirent_sentinel.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %gfs2_dirent_sentinel.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %de_name_len.i = getelementptr inbounds %struct.gfs2_dirent, ptr %dent.1, i32 0, i32 3
  %14 = ptrtoint ptr %de_name_len.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %de_name_len.i, align 2
  %conv.i = zext i16 %15 to i32
  %add1.i = add nuw nsw i32 %conv.i, 47
  %and.i = and i32 %add1.i, 131064
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %gfs2_dirent_sentinel.exit.i.if.end.i_crit_edge, %if.end9.if.end.i_crit_edge
  %offset.0.i = phi i32 [ 0, %gfs2_dirent_sentinel.exit.i.if.end.i_crit_edge ], [ %and.i, %if.then.i ], [ 0, %if.end9.if.end.i_crit_edge ]
  %de_rec_len.i.i = getelementptr inbounds %struct.gfs2_dirent, ptr %dent.1, i32 0, i32 2
  %16 = ptrtoint ptr %de_rec_len.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %de_rec_len.i.i, align 4
  %conv.i.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %name, align 8
  %add.i.i = add i32 %19, %offset.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i)
  %cmp.i5.i = icmp ugt i32 %add.i.i, %conv.i.i
  br i1 %cmp.i5.i, label %do.body3.i.i, label %gfs2_init_dirent.exit, !prof !91

do.body3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 716, 0\0A.popsection", ""() #16, !srcloc !100
  unreachable

gfs2_init_dirent.exit:                            ; preds = %if.end.i
  %20 = ptrtoint ptr %i_gl.i.i161 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_gl.i.i161, align 4
  call void @gfs2_trans_add_meta(ptr noundef %21, ptr noundef %9) #16
  %add.ptr.i.i = getelementptr i8, ptr %dent.1, i32 %offset.0.i
  %conv9.i.i = trunc i32 %offset.0.i to i16
  %22 = ptrtoint ptr %de_rec_len.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv9.i.i, ptr %de_rec_len.i.i, align 4
  %conv11.i.i = sub i16 %17, %conv9.i.i
  %23 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 16)
  %24 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hash.i, align 4
  %de_hash.i.i.i = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %de_hash.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %de_hash.i.i.i, align 8
  %de_rec_len.i.i.i = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %de_rec_len.i.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv11.i.i, ptr %de_rec_len.i.i.i, align 4
  %28 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %name, align 8
  %conv.i.i.i = trunc i32 %29 to i16
  %de_name_len.i.i.i = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %de_name_len.i.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i.i.i, ptr %de_name_len.i.i.i, align 2
  %de_type.i.i.i = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %de_type.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %de_type.i.i.i, align 8
  %32 = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr.i.i, i32 0, i32 6
  %33 = call ptr @memset(ptr %32, i32 0, i32 12)
  %add.ptr.i.i.i = getelementptr %struct.gfs2_dirent, ptr %add.ptr.i.i, i32 1
  %name2.i.i.i = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %34 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name2.i.i.i, align 8
  %36 = load i32, ptr %name, align 8
  %37 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %35, i32 %36)
  %i_no_formal_ino.i = getelementptr inbounds %struct.gfs2_inode, ptr %nip, i32 0, i32 2
  %38 = ptrtoint ptr %i_no_formal_ino.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %i_no_formal_ino.i, align 8
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %add.ptr.i.i, align 8
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %nip, i32 0, i32 1
  %41 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %i_no_addr.i, align 8
  %no_addr.i = getelementptr inbounds %struct.gfs2_inum, ptr %add.ptr.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %no_addr.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %no_addr.i, align 8
  %44 = ptrtoint ptr %nip to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %nip, align 8
  %46 = lshr i16 %45, 12
  store i16 %46, ptr %de_type.i.i.i, align 8
  %47 = load i64, ptr %i_no_addr.i, align 8
  %add.i = add i64 %47, 1
  %i_eattr.i = getelementptr inbounds %struct.gfs2_inode, ptr %nip, i32 0, i32 4
  %48 = ptrtoint ptr %i_eattr.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %i_eattr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %add.i)
  %cmp.i125 = icmp eq i64 %49, %add.i
  %..i = zext i1 %cmp.i125 to i16
  %de_rahead = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %de_rahead to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %..i, ptr %de_rahead, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #16
  %51 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %51)
  %tv.sroa.0.0.copyload86 = load i64, ptr %tmp, align 8
  %tv.sroa.6.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %52 = ptrtoint ptr %tv.sroa.6.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %52)
  %tv.sroa.6.0.copyload88 = load i32, ptr %tv.sroa.6.0.tmp.sroa_idx, align 8
  %tv.sroa.7.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 12
  %53 = ptrtoint ptr %tv.sroa.7.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %53)
  %tv.sroa.7.0.copyload90 = load i32, ptr %tv.sroa.7.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #16
  %54 = ptrtoint ptr %i_diskflags32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_diskflags32, align 4
  %and14 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %gfs2_init_dirent.exit.if.end17_crit_edge, label %if.then16

gfs2_init_dirent.exit.if.end17_crit_edge:         ; preds = %gfs2_init_dirent.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then16:                                        ; preds = %gfs2_init_dirent.exit
  call void @__sanitizer_cov_trace_pc() #18
  %56 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_data, align 4
  %lf_entries = getelementptr inbounds %struct.gfs2_leaf, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %lf_entries to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %lf_entries, align 2
  %add.i126 = add i16 %61, 1
  store i16 %add.i126, ptr %lf_entries, align 2
  %lf_nsec = getelementptr inbounds %struct.gfs2_leaf, ptr %59, i32 0, i32 5, i32 0, i32 2
  %62 = ptrtoint ptr %lf_nsec to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %tv.sroa.6.0.copyload88, ptr %lf_nsec, align 4
  %lf_sec = getelementptr inbounds %struct.gfs2_leaf, ptr %59, i32 0, i32 5, i32 0, i32 3
  %63 = ptrtoint ptr %lf_sec to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %tv.sroa.0.0.copyload86, ptr %lf_sec, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %gfs2_init_dirent.exit.if.end17_crit_edge
  %64 = ptrtoint ptr %dent2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %dent2, align 4
  %65 = ptrtoint ptr %bh1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %bh1, align 4
  %66 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %67, null
  br i1 %tobool.not.i, label %if.end17.brelse.exit_crit_edge, label %if.then.i127

if.end17.brelse.exit_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.then.i127:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %67) #16
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i127, %if.end17.brelse.exit_crit_edge
  %68 = ptrtoint ptr %i_entries.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %i_entries.i, align 8
  %inc = add i32 %69, 1
  store i32 %inc, ptr %i_entries.i, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %70 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %tv.sroa.0.0.copyload86, ptr %i_ctime, align 8
  %tv.sroa.6.0.i_ctime.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %71 = ptrtoint ptr %tv.sroa.6.0.i_ctime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %tv.sroa.6.0.copyload88, ptr %tv.sroa.6.0.i_ctime.sroa_idx, align 8
  %tv.sroa.7.0.i_ctime.sroa_idx = getelementptr inbounds i8, ptr %i_ctime, i32 12
  %72 = ptrtoint ptr %tv.sroa.7.0.i_ctime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %tv.sroa.7.0.copyload90, ptr %tv.sroa.7.0.i_ctime.sroa_idx, align 4
  %73 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %74 = ptrtoint ptr %nip to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %nip, align 8
  %76 = and i16 %75, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %76)
  %cmp26 = icmp eq i16 %76, 16384
  br i1 %cmp26, label %if.then28, label %brelse.exit.if.end30_crit_edge

brelse.exit.if.end30_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then28:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @inc_nlink(ptr noundef %inode) #16
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %brelse.exit.if.end30_crit_edge
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #16
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %77 = ptrtoint ptr %i_diskflags32 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i_diskflags32, align 4
  %and33 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then35, label %if.end40

if.then35:                                        ; preds = %if.end31
  %79 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %80, i32 0, i32 33
  %81 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #16
  %83 = call ptr @memset(ptr %args.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #16
  %84 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh.i) #16
  %85 = ptrtoint ptr %dibh.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh.i, align 4, !annotation !93
  %86 = ptrtoint ptr %i_no_addr.i.i146 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %i_no_addr.i.i146, align 8
  %call.i.i = call i32 @gfs2_meta_buffer(ptr noundef %inode, i32 noundef 4, i64 noundef %87, ptr noundef nonnull %dibh.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i129 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i129, label %if.end.i130, label %if.then35.dir_make_exhash.exit.thread_crit_edge

if.then35.dir_make_exhash.exit.thread_crit_edge:  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  br label %dir_make_exhash.exit.thread

if.end.i130:                                      ; preds = %if.then35
  %call3.i = call fastcc ptr @new_leaf(ptr noundef %inode, ptr noundef nonnull %bh.i, i16 noundef zeroext 0) #16
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i130.dir_make_exhash.exit.thread_crit_edge, label %if.end6.i

if.end.i130.dir_make_exhash.exit.thread_crit_edge: ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #18
  br label %dir_make_exhash.exit.thread

if.end6.i:                                        ; preds = %if.end.i130
  %88 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bh.i, align 4
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %b_blocknr.i, align 8
  %92 = ptrtoint ptr %i_entries.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %i_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %93)
  %cmp.i131 = icmp ugt i32 %93, 65535
  br i1 %cmp.i131, label %if.then10.i, label %do.end17.i, !prof !91

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @gfs2_assert_i(ptr noundef %82) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 929, 0\0A.popsection", ""() #16, !srcloc !101
  unreachable

do.end17.i:                                       ; preds = %if.end6.i
  %conv.i132 = trunc i32 %93 to i16
  %lf_entries.i = getelementptr inbounds %struct.gfs2_leaf, ptr %call3.i, i32 0, i32 2
  %94 = ptrtoint ptr %lf_entries.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv.i132, ptr %lf_entries.i, align 2
  %95 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dibh.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %89, i32 0, i32 5
  %97 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i.i133 = getelementptr i8, ptr %98, i32 104
  %b_data6.i.i = getelementptr inbounds %struct.buffer_head, ptr %96, i32 0, i32 5
  %99 = ptrtoint ptr %b_data6.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %b_data6.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %100, i32 232
  %b_size.i.i = getelementptr inbounds %struct.buffer_head, ptr %96, i32 0, i32 4
  %101 = ptrtoint ptr %b_size.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %b_size.i.i, align 8
  %sub.i.i = add i32 %102, -232
  %103 = call ptr @memcpy(ptr %add.ptr.i.i133, ptr %add.ptr7.i.i, i32 %sub.i.i)
  %104 = load ptr, ptr %b_data.i.i, align 4
  %b_size9.i.i = getelementptr inbounds %struct.buffer_head, ptr %89, i32 0, i32 4
  %105 = ptrtoint ptr %b_size9.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %b_size9.i.i, align 8
  %add.ptr11.i.i = getelementptr i8, ptr %104, i32 -128
  %add.ptr12.i.i = getelementptr i8, ptr %add.ptr11.i.i, i32 %106
  %107 = call ptr @memset(ptr %add.ptr12.i.i, i32 0, i32 128)
  %108 = load i32, ptr %b_size9.i.i, align 8
  %add.i134 = add i32 %108, -128
  %109 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %add.i134, ptr %args.i, align 8
  %110 = load ptr, ptr %b_data.i.i, align 4
  %111 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %name.i, align 8
  %call21.i = call fastcc ptr @gfs2_dirent_scan(ptr noundef %inode, ptr noundef %110, i32 noundef %108, ptr noundef nonnull @gfs2_dirent_last, ptr noundef nonnull %args.i, ptr noundef null) #16
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end24.i

if.then23.i:                                      ; preds = %do.end17.i
  %tobool.not.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i, label %if.then23.i.brelse.exit.i_crit_edge, label %if.then.i.i

if.then23.i.brelse.exit.i_crit_edge:              ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %89) #16
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.then23.i.brelse.exit.i_crit_edge
  %112 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dibh.i, align 4
  %tobool.not.i82.i = icmp eq ptr %113, null
  br i1 %tobool.not.i82.i, label %brelse.exit.i.dir_make_exhash.exit.thread_crit_edge, label %if.then.i83.i

brelse.exit.i.dir_make_exhash.exit.thread_crit_edge: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dir_make_exhash.exit.thread

if.then.i83.i:                                    ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %113) #16
  br label %dir_make_exhash.exit.thread

if.end24.i:                                       ; preds = %do.end17.i
  %cmp.i.i135 = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i135, label %if.then26.i, label %if.end28.i

if.then26.i:                                      ; preds = %if.end24.i
  %tobool.not.i85.i = icmp eq ptr %89, null
  br i1 %tobool.not.i85.i, label %if.then26.i.brelse.exit87.i_crit_edge, label %if.then.i86.i

if.then26.i.brelse.exit87.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit87.i

if.then.i86.i:                                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %89) #16
  br label %brelse.exit87.i

brelse.exit87.i:                                  ; preds = %if.then.i86.i, %if.then26.i.brelse.exit87.i_crit_edge
  %114 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dibh.i, align 4
  %tobool.not.i88.i = icmp eq ptr %115, null
  br i1 %tobool.not.i88.i, label %brelse.exit87.i.dir_make_exhash.exit_crit_edge, label %if.then.i89.i

brelse.exit87.i.dir_make_exhash.exit_crit_edge:   ; preds = %brelse.exit87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dir_make_exhash.exit

if.then.i89.i:                                    ; preds = %brelse.exit87.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %115) #16
  br label %dir_make_exhash.exit

if.end28.i:                                       ; preds = %if.end24.i
  %de_rec_len.i = getelementptr inbounds %struct.gfs2_dirent, ptr %call21.i, i32 0, i32 2
  %116 = ptrtoint ptr %de_rec_len.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %de_rec_len.i, align 4
  %sub31.i = add i16 %117, 128
  store i16 %sub31.i, ptr %de_rec_len.i, align 4
  %tobool.not.i91.i = icmp eq ptr %89, null
  br i1 %tobool.not.i91.i, label %if.end28.i.brelse.exit93.i_crit_edge, label %if.then.i92.i

if.end28.i.brelse.exit93.i_crit_edge:             ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit93.i

if.then.i92.i:                                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %89) #16
  br label %brelse.exit93.i

brelse.exit93.i:                                  ; preds = %if.then.i92.i, %if.end28.i.brelse.exit93.i_crit_edge
  %118 = ptrtoint ptr %i_gl.i.i161 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %i_gl.i.i161, align 4
  %120 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dibh.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %119, ptr noundef %121) #16
  %122 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dibh.i, align 4
  %b_size.i94.i = getelementptr inbounds %struct.buffer_head, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %b_size.i94.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %b_size.i94.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 232, i32 %125)
  %cmp.i95.i = icmp ult i32 %125, 232
  br i1 %cmp.i95.i, label %do.body2.i.i, label %gfs2_buffer_clear_tail.exit.i, !prof !91

do.body2.i.i:                                     ; preds = %brelse.exit93.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #16, !srcloc !92
  unreachable

gfs2_buffer_clear_tail.exit.i:                    ; preds = %brelse.exit93.i
  %b_data.i96.i = getelementptr inbounds %struct.buffer_head, ptr %123, i32 0, i32 5
  %126 = ptrtoint ptr %b_data.i96.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %b_data.i96.i, align 4
  %add.ptr.i97.i = getelementptr i8, ptr %127, i32 232
  %sub.i98.i = add i32 %125, -232
  %128 = call ptr @memset(ptr %add.ptr.i97.i, i32 0, i32 %sub.i98.i)
  %sd_hash_ptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %82, i32 0, i32 14
  %129 = ptrtoint ptr %sd_hash_ptrs.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sd_hash_ptrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool35.not105.i = icmp eq i32 %130, 0
  br i1 %tobool35.not105.i, label %gfs2_buffer_clear_tail.exit.i.for.end.i_crit_edge, label %for.body.preheader.i

gfs2_buffer_clear_tail.exit.i.for.end.i_crit_edge: ; preds = %gfs2_buffer_clear_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.preheader.i:                             ; preds = %gfs2_buffer_clear_tail.exit.i
  %131 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dibh.i, align 4
  %b_data34.i = getelementptr inbounds %struct.buffer_head, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %b_data34.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %b_data34.i, align 4
  %add.ptr.i = getelementptr i8, ptr %134, i32 232
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %lp.0107.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %x.0106.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %130, %for.body.preheader.i ]
  %dec.i = add i32 %x.0106.i, -1
  %135 = ptrtoint ptr %lp.0107.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %91, ptr %lp.0107.i, align 8
  %incdec.ptr.i = getelementptr i64, ptr %lp.0107.i, i32 1
  %tobool35.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool35.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %gfs2_buffer_clear_tail.exit.i.for.end.i_crit_edge
  %sb_bsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %82, i32 0, i32 5, i32 4
  %136 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sb_bsize.i, align 8
  %div81.i = lshr i32 %137, 1
  %conv36.i = zext i32 %div81.i to i64
  call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %conv36.i) #16
  %138 = ptrtoint ptr %i_blkbits.i.i176 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %i_blkbits.i.i176, align 2
  %conv.i.i136 = zext i8 %139 to i32
  %sub.i99.i = add nsw i32 %conv.i.i136, -9
  %sh_prom.i.i = zext i32 %sub.i99.i to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i99.i)
  %cmp.i100.not.i = icmp eq i32 %sub.i99.i, 63
  br i1 %cmp.i100.not.i, label %lor.rhs.i.i, label %for.end.i.gfs2_add_inode_blocks.exit.i_crit_edge

for.end.i.gfs2_add_inode_blocks.exit.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_add_inode_blocks.exit.i

lor.rhs.i.i:                                      ; preds = %for.end.i
  %140 = ptrtoint ptr %i_blocks.i.i181 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %i_blocks.i.i181, align 8
  %sub2.i.i = sub i64 0, %shl.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %141, i64 %sub2.i.i)
  %cmp3.i.i = icmp ult i64 %141, %sub2.i.i
  br i1 %cmp3.i.i, label %if.then.i101.i, label %lor.rhs.i.i.gfs2_add_inode_blocks.exit.i_crit_edge, !prof !91

lor.rhs.i.i.gfs2_add_inode_blocks.exit.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_add_inode_blocks.exit.i

if.then.i101.i:                                   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %142 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %143, i32 0, i32 33
  %144 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @gfs2_assert_i(ptr noundef %145) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #16, !srcloc !102
  unreachable

gfs2_add_inode_blocks.exit.i:                     ; preds = %lor.rhs.i.i.gfs2_add_inode_blocks.exit.i_crit_edge, %for.end.i.gfs2_add_inode_blocks.exit.i_crit_edge
  %146 = ptrtoint ptr %i_blocks.i.i181 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %i_blocks.i.i181, align 8
  %add.i.i137 = add i64 %147, %shl.i.i
  store i64 %add.i.i137, ptr %i_blocks.i.i181, align 8
  %148 = ptrtoint ptr %i_diskflags32 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %i_diskflags32, align 4
  %or.i = or i32 %149, 2
  store i32 %or.i, ptr %i_diskflags32, align 4
  %150 = ptrtoint ptr %sd_hash_ptrs.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sd_hash_ptrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool40.not108.i = icmp eq i32 %151, 0
  br i1 %tobool40.not108.i, label %gfs2_add_inode_blocks.exit.i.for.end43.i_crit_edge, label %gfs2_add_inode_blocks.exit.i.for.inc42.i_crit_edge

gfs2_add_inode_blocks.exit.i.for.inc42.i_crit_edge: ; preds = %gfs2_add_inode_blocks.exit.i
  br label %for.inc42.i

gfs2_add_inode_blocks.exit.i.for.end43.i_crit_edge: ; preds = %gfs2_add_inode_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end43.i

for.inc42.i:                                      ; preds = %for.inc42.i.for.inc42.i_crit_edge, %gfs2_add_inode_blocks.exit.i.for.inc42.i_crit_edge
  %x.1110.i = phi i32 [ %shr.i, %for.inc42.i.for.inc42.i_crit_edge ], [ %151, %gfs2_add_inode_blocks.exit.i.for.inc42.i_crit_edge ]
  %y.0109.i = phi i32 [ %inc.i, %for.inc42.i.for.inc42.i_crit_edge ], [ -1, %gfs2_add_inode_blocks.exit.i.for.inc42.i_crit_edge ]
  %shr.i = lshr i32 %x.1110.i, 1
  %inc.i = add nsw i32 %y.0109.i, 1
  %tobool40.not.i = icmp ult i32 %x.1110.i, 2
  br i1 %tobool40.not.i, label %for.end43.loopexit.i, label %for.inc42.i.for.inc42.i_crit_edge

for.inc42.i.for.inc42.i_crit_edge:                ; preds = %for.inc42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc42.i

for.end43.loopexit.i:                             ; preds = %for.inc42.i
  call void @__sanitizer_cov_trace_pc() #18
  %phi.cast.i = trunc i32 %inc.i to i8
  br label %for.end43.i

for.end43.i:                                      ; preds = %for.end43.loopexit.i, %gfs2_add_inode_blocks.exit.i.for.end43.i_crit_edge
  %y.0.lcssa.i = phi i8 [ -1, %gfs2_add_inode_blocks.exit.i.for.end43.i_crit_edge ], [ %phi.cast.i, %for.end43.loopexit.i ]
  %152 = ptrtoint ptr %i_depth to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %y.0.lcssa.i, ptr %i_depth, align 1
  %153 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dibh.i, align 4
  %b_data45.i = getelementptr inbounds %struct.buffer_head, ptr %154, i32 0, i32 5
  %155 = ptrtoint ptr %b_data45.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %b_data45.i, align 4
  call void @gfs2_dinode_out(ptr noundef %inode, ptr noundef %156) #16
  %157 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dibh.i, align 4
  %tobool.not.i102.i = icmp eq ptr %158, null
  br i1 %tobool.not.i102.i, label %for.end43.i.dir_make_exhash.exit.thread192_crit_edge, label %if.then.i103.i

for.end43.i.dir_make_exhash.exit.thread192_crit_edge: ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dir_make_exhash.exit.thread192

if.then.i103.i:                                   ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %158) #16
  br label %dir_make_exhash.exit.thread192

dir_make_exhash.exit.thread:                      ; preds = %if.then.i83.i, %brelse.exit.i.dir_make_exhash.exit.thread_crit_edge, %if.end.i130.dir_make_exhash.exit.thread_crit_edge, %if.then35.dir_make_exhash.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.then.i83.i ], [ -5, %brelse.exit.i.dir_make_exhash.exit.thread_crit_edge ], [ %call.i.i, %if.then35.dir_make_exhash.exit.thread_crit_edge ], [ -28, %if.end.i130.dir_make_exhash.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #16
  br label %cleanup

dir_make_exhash.exit.thread192:                   ; preds = %if.then.i103.i, %for.end43.i.dir_make_exhash.exit.thread192_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #16
  br label %while.condthread-pre-split

dir_make_exhash.exit:                             ; preds = %if.then.i89.i, %brelse.exit87.i.dir_make_exhash.exit_crit_edge
  %159 = ptrtoint ptr %call21.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #16
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  %call41 = call fastcc i32 @dir_split_leaf(ptr noundef %inode, ptr noundef %name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.end40.while.condthread-pre-split_crit_edge, label %if.end45

if.end40.while.condthread-pre-split_crit_edge:    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.condthread-pre-split

if.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp46 = icmp slt i32 %call41, 0
  br i1 %cmp46, label %if.end45.cleanup_crit_edge, label %if.end49

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %160 = ptrtoint ptr %i_depth to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %i_depth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %161)
  %cmp51 = icmp ult i8 %161, 17
  br i1 %cmp51, label %if.then53, label %if.end49.if.end67_crit_edge

if.end49.if.end67_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67

if.then53:                                        ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh.i138) #16
  %162 = ptrtoint ptr %dibh.i138 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh.i138, align 4, !annotation !93
  %conv.i140 = zext i8 %161 to i32
  %shl.i = shl nuw nsw i32 1, %conv.i140
  %mul.i = shl nuw nsw i32 %shl.i, 3
  %call.i = call fastcc ptr @gfs2_dir_get_hash_table(ptr noundef %inode) #16
  %cmp.i.i141 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i141, label %if.then.i142, label %if.end.i143

if.then.i142:                                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  %163 = ptrtoint ptr %call.i to i32
  br label %dir_double_exhash.exit

if.end.i143:                                      ; preds = %if.then53
  %164 = shl nuw nsw i32 %shl.i, 4
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %164, i32 noundef 11328) #19
  %cmp.i144 = icmp eq ptr %call8.i.i, null
  br i1 %cmp.i144, label %if.end8.i, label %if.end.i143.if.end10.i_crit_edge

if.end.i143.if.end10.i_crit_edge:                 ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

if.end8.i:                                        ; preds = %if.end.i143
  %call7.i = call noalias ptr @__vmalloc(i32 noundef %164, i32 noundef 3136) #19
  %tobool.not.i145 = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i145, label %dir_double_exhash.exit.thread197, label %if.end8.i.if.end10.i_crit_edge

if.end8.i.if.end10.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

dir_double_exhash.exit.thread197:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i138) #16
  br label %cleanup

if.end10.i:                                       ; preds = %if.end8.i.if.end10.i_crit_edge, %if.end.i143.if.end10.i_crit_edge
  %hc2.080.i = phi ptr [ %call7.i, %if.end8.i.if.end10.i_crit_edge ], [ %call8.i.i, %if.end.i143.if.end10.i_crit_edge ]
  %165 = ptrtoint ptr %i_no_addr.i.i146 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %i_no_addr.i.i146, align 8
  %call.i.i147 = call i32 @gfs2_meta_buffer(ptr noundef %inode, i32 noundef 4, i64 noundef %166, ptr noundef nonnull %dibh.i138) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i147)
  %tobool12.not.i = icmp eq i32 %call.i.i147, 0
  br i1 %tobool12.not.i, label %if.end10.i.for.body.i151_crit_edge, label %if.end10.i.out_kfree.i_crit_edge

if.end10.i.out_kfree.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_kfree.i

if.end10.i.for.body.i151_crit_edge:               ; preds = %if.end10.i
  br label %for.body.i151

for.body.i151:                                    ; preds = %for.body.i151.for.body.i151_crit_edge, %if.end10.i.for.body.i151_crit_edge
  %x.084.i = phi i32 [ %inc.i150, %for.body.i151.for.body.i151_crit_edge ], [ 0, %if.end10.i.for.body.i151_crit_edge ]
  %h.083.i = phi ptr [ %incdec.ptr17.i, %for.body.i151.for.body.i151_crit_edge ], [ %hc2.080.i, %if.end10.i.for.body.i151_crit_edge ]
  %hc.082.i = phi ptr [ %incdec.ptr18.i, %for.body.i151.for.body.i151_crit_edge ], [ %call.i, %if.end10.i.for.body.i151_crit_edge ]
  %167 = ptrtoint ptr %hc.082.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %hc.082.i, align 8
  %incdec.ptr.i149 = getelementptr i64, ptr %h.083.i, i32 1
  %169 = ptrtoint ptr %h.083.i to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %168, ptr %h.083.i, align 8
  %170 = load i64, ptr %hc.082.i, align 8
  %incdec.ptr17.i = getelementptr i64, ptr %h.083.i, i32 2
  %171 = ptrtoint ptr %incdec.ptr.i149 to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %170, ptr %incdec.ptr.i149, align 8
  %incdec.ptr18.i = getelementptr i64, ptr %hc.082.i, i32 1
  %inc.i150 = add nuw i32 %x.084.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i150, %shl.i
  br i1 %exitcond.not.i, label %for.end.i152, label %for.body.i151.for.body.i151_crit_edge

for.body.i151.for.body.i151_crit_edge:            ; preds = %for.body.i151
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i151

for.end.i152:                                     ; preds = %for.body.i151
  %call20.i = call fastcc i32 @gfs2_dir_write_data(ptr noundef %inode, ptr noundef nonnull %hc2.080.i, i64 noundef 0, i32 noundef %164) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i, i32 %164)
  %cmp22.not.i = icmp eq i32 %call20.i, %164
  br i1 %cmp22.not.i, label %if.end25.i, label %fail.i

if.end25.i:                                       ; preds = %for.end.i152
  call void @_raw_spin_lock(ptr noundef %i_lock.i.i) #16
  %172 = ptrtoint ptr %i_hash_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %i_hash_cache.i.i, align 4
  store ptr null, ptr %i_hash_cache.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %i_lock.i.i) #16
  call void @kvfree(ptr noundef %173) #16
  %174 = ptrtoint ptr %i_hash_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %hc2.080.i, ptr %i_hash_cache.i.i, align 4
  %175 = ptrtoint ptr %i_depth to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %i_depth, align 1
  %inc27.i = add i8 %176, 1
  store i8 %inc27.i, ptr %i_depth, align 1
  %177 = ptrtoint ptr %dibh.i138 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dibh.i138, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %178, i32 0, i32 5
  %179 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %b_data.i, align 4
  call void @gfs2_dinode_out(ptr noundef %inode, ptr noundef %180) #16
  %181 = ptrtoint ptr %dibh.i138 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dibh.i138, align 4
  %tobool.not.i.i153 = icmp eq ptr %182, null
  br i1 %tobool.not.i.i153, label %if.end25.i.dir_double_exhash.exit.thread_crit_edge, label %if.then.i.i154

if.end25.i.dir_double_exhash.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dir_double_exhash.exit.thread

if.then.i.i154:                                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %182) #16
  br label %dir_double_exhash.exit.thread

fail.i:                                           ; preds = %for.end.i152
  %call28.i = call fastcc i32 @gfs2_dir_write_data(ptr noundef %inode, ptr noundef %incdec.ptr18.i, i64 noundef 0, i32 noundef %mul.i) #16
  %conv29.i = zext i32 %mul.i to i64
  call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %conv29.i) #16
  %183 = ptrtoint ptr %dibh.i138 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dibh.i138, align 4
  %b_data30.i = getelementptr inbounds %struct.buffer_head, ptr %184, i32 0, i32 5
  %185 = ptrtoint ptr %b_data30.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %b_data30.i, align 4
  call void @gfs2_dinode_out(ptr noundef %inode, ptr noundef %186) #16
  %187 = ptrtoint ptr %dibh.i138 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dibh.i138, align 4
  %tobool.not.i69.i = icmp eq ptr %188, null
  br i1 %tobool.not.i69.i, label %fail.i.out_kfree.i_crit_edge, label %if.then.i70.i

fail.i.out_kfree.i_crit_edge:                     ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_kfree.i

if.then.i70.i:                                    ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %188) #16
  br label %out_kfree.i

out_kfree.i:                                      ; preds = %if.then.i70.i, %fail.i.out_kfree.i_crit_edge, %if.end10.i.out_kfree.i_crit_edge
  %error.0.i = phi i32 [ %call.i.i147, %if.end10.i.out_kfree.i_crit_edge ], [ %call20.i, %fail.i.out_kfree.i_crit_edge ], [ %call20.i, %if.then.i70.i ]
  call void @kvfree(ptr noundef nonnull %hc2.080.i) #16
  br label %dir_double_exhash.exit

dir_double_exhash.exit.thread:                    ; preds = %if.then.i.i154, %if.end25.i.dir_double_exhash.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i138) #16
  br label %if.end57

dir_double_exhash.exit:                           ; preds = %out_kfree.i, %if.then.i142
  %retval.0.i155 = phi i32 [ %163, %if.then.i142 ], [ %error.0.i, %out_kfree.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i138) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i155)
  %tobool55.not = icmp eq i32 %retval.0.i155, 0
  br i1 %tobool55.not, label %dir_double_exhash.exit.if.end57_crit_edge, label %dir_double_exhash.exit.cleanup_crit_edge

dir_double_exhash.exit.cleanup_crit_edge:         ; preds = %dir_double_exhash.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

dir_double_exhash.exit.if.end57_crit_edge:        ; preds = %dir_double_exhash.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

if.end57:                                         ; preds = %dir_double_exhash.exit.if.end57_crit_edge, %dir_double_exhash.exit.thread
  %call58 = call fastcc i32 @dir_split_leaf(ptr noundef %inode, ptr noundef %name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end57.cleanup_crit_edge, label %if.end62

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end62:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp63 = icmp eq i32 %call58, 0
  br i1 %cmp63, label %if.end62.while.condthread-pre-split_crit_edge, label %if.end62.if.end67_crit_edge

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67

if.end62.while.condthread-pre-split_crit_edge:    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.condthread-pre-split

if.end67:                                         ; preds = %if.end62.if.end67_crit_edge, %if.end49.if.end67_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i156) #16
  %189 = ptrtoint ptr %bh.i156 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i156, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %obh.i) #16
  %190 = ptrtoint ptr %obh.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr inttoptr (i32 -1 to ptr), ptr %obh.i, align 4, !annotation !93
  %191 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %hash.i, align 4
  %193 = ptrtoint ptr %i_depth to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %i_depth, align 1
  %conv.i158 = zext i8 %194 to i32
  %sub.i = sub nsw i32 32, %conv.i158
  %shr.i159 = lshr i32 %192, %sub.i
  %call1.i = call fastcc i32 @get_first_leaf(ptr noundef %inode, i32 noundef %shr.i159, ptr noundef nonnull %obh.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i160 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i160, label %do.body.preheader.i, label %if.end67.dir_new_leaf.exit.thread_crit_edge

if.end67.dir_new_leaf.exit.thread_crit_edge:      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %dir_new_leaf.exit.thread

do.body.preheader.i:                              ; preds = %if.end67
  %195 = ptrtoint ptr %obh.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %obh.i, align 4
  %b_data70.i = getelementptr inbounds %struct.buffer_head, ptr %196, i32 0, i32 5
  %197 = ptrtoint ptr %b_data70.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %b_data70.i, align 4
  %lf_next71.i = getelementptr inbounds %struct.gfs2_leaf, ptr %198, i32 0, i32 4
  %199 = ptrtoint ptr %lf_next71.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %lf_next71.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %200)
  %tobool2.not72.i = icmp eq i64 %200, 0
  br i1 %tobool2.not72.i, label %do.body.preheader.i.do.end.i_crit_edge, label %do.body.preheader.i.if.end4.i_crit_edge

do.body.preheader.i.if.end4.i_crit_edge:          ; preds = %do.body.preheader.i
  br label %if.end4.i

do.body.preheader.i.do.end.i_crit_edge:           ; preds = %do.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.end4.i:                                        ; preds = %get_leaf.exit.i.if.end4.i_crit_edge, %do.body.preheader.i.if.end4.i_crit_edge
  %201 = phi i64 [ %222, %get_leaf.exit.i.if.end4.i_crit_edge ], [ %200, %do.body.preheader.i.if.end4.i_crit_edge ]
  %202 = phi ptr [ %218, %get_leaf.exit.i.if.end4.i_crit_edge ], [ %196, %do.body.preheader.i.if.end4.i_crit_edge ]
  %inc73.i = phi i32 [ %inc.i171, %get_leaf.exit.i.if.end4.i_crit_edge ], [ 2, %do.body.preheader.i.if.end4.i_crit_edge ]
  %tobool.not.i.i162 = icmp eq ptr %202, null
  br i1 %tobool.not.i.i162, label %if.end4.i.brelse.exit.i165_crit_edge, label %if.then.i.i163

if.end4.i.brelse.exit.i165_crit_edge:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit.i165

if.then.i.i163:                                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %202) #16
  br label %brelse.exit.i165

brelse.exit.i165:                                 ; preds = %if.then.i.i163, %if.end4.i.brelse.exit.i165_crit_edge
  %203 = ptrtoint ptr %i_gl.i.i161 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %i_gl.i.i161, align 4
  %call.i.i164 = call i32 @gfs2_meta_read(ptr noundef %204, i64 noundef %201, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %obh.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i164)
  %tobool.not.i46.i = icmp eq i32 %call.i.i164, 0
  br i1 %tobool.not.i46.i, label %land.lhs.true.i.i168, label %brelse.exit.i165.dir_new_leaf.exit.thread_crit_edge

brelse.exit.i165.dir_new_leaf.exit.thread_crit_edge: ; preds = %brelse.exit.i165
  call void @__sanitizer_cov_trace_pc() #18
  br label %dir_new_leaf.exit.thread

land.lhs.true.i.i168:                             ; preds = %brelse.exit.i165
  %205 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i166 = getelementptr inbounds %struct.super_block, ptr %206, i32 0, i32 33
  %207 = ptrtoint ptr %s_fs_info.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %s_fs_info.i.i.i166, align 16
  %209 = ptrtoint ptr %obh.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %obh.i, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %210, i32 0, i32 5
  %211 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %b_data.i.i.i, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %212, align 8
  %mh_type.i.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %212, i32 0, i32 1
  %215 = ptrtoint ptr %mh_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %mh_type.i.i.i, align 4
  %conv.i.i.i167 = trunc i32 %216 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %214)
  %cmp.not.i.i.i = icmp eq i32 %214, 18225520
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i170, label %if.then.i.i.i169, !prof !96

if.then.i.i.i169:                                 ; preds = %land.lhs.true.i.i168
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call i32 @gfs2_meta_check_ii(ptr noundef %208, ptr noundef %210, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i.i

if.end.i.i.i170:                                  ; preds = %land.lhs.true.i.i168
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %conv.i.i.i167)
  %cmp5.not.i.i.i = icmp eq i16 %conv.i.i.i167, 6
  br i1 %cmp5.not.i.i.i, label %if.end.i.i.i170.get_leaf.exit.i_crit_edge, label %if.then13.i.i.i, !prof !96

if.end.i.i.i170.get_leaf.exit.i_crit_edge:        ; preds = %if.end.i.i.i170
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_leaf.exit.i

if.then13.i.i.i:                                  ; preds = %if.end.i.i.i170
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i.i.i = call i32 @gfs2_metatype_check_ii(ptr noundef %208, ptr noundef %210, i16 noundef zeroext 6, i16 noundef zeroext %conv.i.i.i167, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i.i

gfs2_metatype_check_i.exit.i.i:                   ; preds = %if.then13.i.i.i, %if.then.i.i.i169
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i169 ], [ %call14.i.i.i, %if.then13.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool3.not.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool3.not.i.i, label %gfs2_metatype_check_i.exit.i.i.get_leaf.exit.i_crit_edge, label %gfs2_metatype_check_i.exit.i.i.dir_new_leaf.exit.thread_crit_edge

gfs2_metatype_check_i.exit.i.i.dir_new_leaf.exit.thread_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dir_new_leaf.exit.thread

gfs2_metatype_check_i.exit.i.i.get_leaf.exit.i_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_leaf.exit.i

get_leaf.exit.i:                                  ; preds = %gfs2_metatype_check_i.exit.i.i.get_leaf.exit.i_crit_edge, %if.end.i.i.i170.get_leaf.exit.i_crit_edge
  %inc.i171 = add i32 %inc73.i, 1
  %217 = ptrtoint ptr %obh.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %obh.i, align 4
  %b_data.i172 = getelementptr inbounds %struct.buffer_head, ptr %218, i32 0, i32 5
  %219 = ptrtoint ptr %b_data.i172 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %b_data.i172, align 4
  %lf_next.i = getelementptr inbounds %struct.gfs2_leaf, ptr %220, i32 0, i32 4
  %221 = ptrtoint ptr %lf_next.i to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %lf_next.i, align 8
  %tobool2.not.i = icmp eq i64 %222, 0
  br i1 %tobool2.not.i, label %get_leaf.exit.i.do.end.i_crit_edge, label %get_leaf.exit.i.if.end4.i_crit_edge

get_leaf.exit.i.if.end4.i_crit_edge:              ; preds = %get_leaf.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

get_leaf.exit.i.do.end.i_crit_edge:               ; preds = %get_leaf.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i:                                         ; preds = %get_leaf.exit.i.do.end.i_crit_edge, %do.body.preheader.i.do.end.i_crit_edge
  %inc.lcssa.i = phi i32 [ 2, %do.body.preheader.i.do.end.i_crit_edge ], [ %inc.i171, %get_leaf.exit.i.do.end.i_crit_edge ]
  %.lcssa67.i = phi ptr [ %196, %do.body.preheader.i.do.end.i_crit_edge ], [ %218, %get_leaf.exit.i.do.end.i_crit_edge ]
  %.lcssa.i = phi ptr [ %198, %do.body.preheader.i.do.end.i_crit_edge ], [ %220, %get_leaf.exit.i.do.end.i_crit_edge ]
  %lf_next.lcssa.i = phi ptr [ %lf_next71.i, %do.body.preheader.i.do.end.i_crit_edge ], [ %lf_next.i, %get_leaf.exit.i.do.end.i_crit_edge ]
  %223 = ptrtoint ptr %i_gl.i.i161 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %i_gl.i.i161, align 4
  call void @gfs2_trans_add_meta(ptr noundef %224, ptr noundef %.lcssa67.i) #16
  %lf_depth.i = getelementptr inbounds %struct.gfs2_leaf, ptr %.lcssa.i, i32 0, i32 1
  %225 = ptrtoint ptr %lf_depth.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %lf_depth.i, align 8
  %call9.i = call fastcc ptr @new_leaf(ptr noundef %inode, ptr noundef nonnull %bh.i156, i16 noundef zeroext %226) #16
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %do.end.i
  %227 = ptrtoint ptr %obh.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %obh.i, align 4
  %tobool.not.i47.i = icmp eq ptr %228, null
  br i1 %tobool.not.i47.i, label %if.then11.i.dir_new_leaf.exit.thread_crit_edge, label %dir_new_leaf.exit

if.then11.i.dir_new_leaf.exit.thread_crit_edge:   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dir_new_leaf.exit.thread

if.end12.i:                                       ; preds = %do.end.i
  %lf_dist.i = getelementptr inbounds %struct.gfs2_leaf, ptr %call9.i, i32 0, i32 5, i32 0, i32 1
  %229 = ptrtoint ptr %lf_dist.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %inc.lcssa.i, ptr %lf_dist.i, align 8
  %230 = ptrtoint ptr %bh.i156 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %bh.i156, align 4
  %b_blocknr.i174 = getelementptr inbounds %struct.buffer_head, ptr %231, i32 0, i32 3
  %232 = ptrtoint ptr %b_blocknr.i174 to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %b_blocknr.i174, align 8
  %234 = ptrtoint ptr %lf_next.lcssa.i to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 %233, ptr %lf_next.lcssa.i, align 8
  %tobool.not.i50.i = icmp eq ptr %231, null
  br i1 %tobool.not.i50.i, label %if.end12.i.brelse.exit52.i_crit_edge, label %if.then.i51.i

if.end12.i.brelse.exit52.i_crit_edge:             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit52.i

if.then.i51.i:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %231) #16
  br label %brelse.exit52.i

brelse.exit52.i:                                  ; preds = %if.then.i51.i, %if.end12.i.brelse.exit52.i_crit_edge
  %235 = ptrtoint ptr %obh.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %obh.i, align 4
  %tobool.not.i53.i = icmp eq ptr %236, null
  br i1 %tobool.not.i53.i, label %brelse.exit52.i.brelse.exit55.i_crit_edge, label %if.then.i54.i

brelse.exit52.i.brelse.exit55.i_crit_edge:        ; preds = %brelse.exit52.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit55.i

if.then.i54.i:                                    ; preds = %brelse.exit52.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %236) #16
  br label %brelse.exit55.i

brelse.exit55.i:                                  ; preds = %if.then.i54.i, %brelse.exit52.i.brelse.exit55.i_crit_edge
  %237 = ptrtoint ptr %i_no_addr.i.i146 to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %i_no_addr.i.i146, align 8
  %call.i56.i = call i32 @gfs2_meta_buffer(ptr noundef %inode, i32 noundef 4, i64 noundef %238, ptr noundef nonnull %bh.i156) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %tobool15.not.i = icmp eq i32 %call.i56.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %brelse.exit55.i.dir_new_leaf.exit.thread_crit_edge

brelse.exit55.i.dir_new_leaf.exit.thread_crit_edge: ; preds = %brelse.exit55.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dir_new_leaf.exit.thread

if.end17.i:                                       ; preds = %brelse.exit55.i
  %239 = ptrtoint ptr %i_gl.i.i161 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %i_gl.i.i161, align 4
  %241 = ptrtoint ptr %bh.i156 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %bh.i156, align 4
  call void @gfs2_trans_add_meta(ptr noundef %240, ptr noundef %242) #16
  %243 = ptrtoint ptr %i_blkbits.i.i176 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %i_blkbits.i.i176, align 2
  %conv.i.i177 = zext i8 %244 to i32
  %sub.i.i178 = add nsw i32 %conv.i.i177, -9
  %sh_prom.i.i179 = zext i32 %sub.i.i178 to i64
  %shl.i.i180 = shl nuw i64 1, %sh_prom.i.i179
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i.i178)
  %cmp.i.not.i = icmp eq i32 %sub.i.i178, 63
  br i1 %cmp.i.not.i, label %lor.rhs.i.i184, label %if.end17.i.gfs2_add_inode_blocks.exit.i187_crit_edge

if.end17.i.gfs2_add_inode_blocks.exit.i187_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_add_inode_blocks.exit.i187

lor.rhs.i.i184:                                   ; preds = %if.end17.i
  %245 = ptrtoint ptr %i_blocks.i.i181 to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %i_blocks.i.i181, align 8
  %sub2.i.i182 = sub i64 0, %shl.i.i180
  call void @__sanitizer_cov_trace_cmp8(i64 %246, i64 %sub2.i.i182)
  %cmp3.i.i183 = icmp ult i64 %246, %sub2.i.i182
  br i1 %cmp3.i.i183, label %if.then.i59.i, label %lor.rhs.i.i184.gfs2_add_inode_blocks.exit.i187_crit_edge, !prof !91

lor.rhs.i.i184.gfs2_add_inode_blocks.exit.i187_crit_edge: ; preds = %lor.rhs.i.i184
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_add_inode_blocks.exit.i187

if.then.i59.i:                                    ; preds = %lor.rhs.i.i184
  call void @__sanitizer_cov_trace_pc() #18
  %247 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i58.i = getelementptr inbounds %struct.super_block, ptr %248, i32 0, i32 33
  %249 = ptrtoint ptr %s_fs_info.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %s_fs_info.i.i58.i, align 16
  call void @gfs2_assert_i(ptr noundef %250) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #16, !srcloc !102
  unreachable

gfs2_add_inode_blocks.exit.i187:                  ; preds = %lor.rhs.i.i184.gfs2_add_inode_blocks.exit.i187_crit_edge, %if.end17.i.gfs2_add_inode_blocks.exit.i187_crit_edge
  %251 = ptrtoint ptr %i_blocks.i.i181 to i32
  call void @__asan_load8_noabort(i32 %251)
  %252 = load i64, ptr %i_blocks.i.i181, align 8
  %add.i.i186 = add i64 %252, %shl.i.i180
  store i64 %add.i.i186, ptr %i_blocks.i.i181, align 8
  %253 = ptrtoint ptr %bh.i156 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %bh.i156, align 4
  %b_data19.i = getelementptr inbounds %struct.buffer_head, ptr %254, i32 0, i32 5
  %255 = ptrtoint ptr %b_data19.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %b_data19.i, align 4
  call void @gfs2_dinode_out(ptr noundef %inode, ptr noundef %256) #16
  %257 = ptrtoint ptr %bh.i156 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %bh.i156, align 4
  %tobool.not.i60.i = icmp eq ptr %258, null
  br i1 %tobool.not.i60.i, label %dir_new_leaf.exit.thread202, label %dir_new_leaf.exit.thread205

dir_new_leaf.exit.thread205:                      ; preds = %gfs2_add_inode_blocks.exit.i187
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %258) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obh.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i156) #16
  br label %while.condthread-pre-split

dir_new_leaf.exit.thread202:                      ; preds = %gfs2_add_inode_blocks.exit.i187
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obh.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i156) #16
  br label %while.condthread-pre-split

dir_new_leaf.exit.thread:                         ; preds = %brelse.exit55.i.dir_new_leaf.exit.thread_crit_edge, %if.then11.i.dir_new_leaf.exit.thread_crit_edge, %gfs2_metatype_check_i.exit.i.i.dir_new_leaf.exit.thread_crit_edge, %brelse.exit.i165.dir_new_leaf.exit.thread_crit_edge, %if.end67.dir_new_leaf.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obh.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i156) #16
  br label %cleanup

dir_new_leaf.exit:                                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %228) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obh.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i156) #16
  br label %cleanup

cleanup:                                          ; preds = %dir_new_leaf.exit, %dir_new_leaf.exit.thread, %if.end57.cleanup_crit_edge, %dir_double_exhash.exit.cleanup_crit_edge, %dir_double_exhash.exit.thread197, %if.end45.cleanup_crit_edge, %dir_make_exhash.exit, %dir_make_exhash.exit.thread, %if.end30, %if.then7
  %retval.0 = phi i32 [ %7, %if.then7 ], [ 0, %if.end30 ], [ %159, %dir_make_exhash.exit ], [ -28, %dir_new_leaf.exit ], [ %retval.0.i.ph, %dir_make_exhash.exit.thread ], [ -12, %dir_double_exhash.exit.thread197 ], [ -28, %dir_new_leaf.exit.thread ], [ %call58, %if.end57.cleanup_crit_edge ], [ %retval.0.i155, %dir_double_exhash.exit.cleanup_crit_edge ], [ %call41, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gfs2_dirent_find_space(ptr nocapture noundef readonly %dent, ptr nocapture noundef readonly %name, ptr nocapture noundef readnone %opaque) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %name, align 8
  %de_rec_len = getelementptr inbounds %struct.gfs2_dirent, ptr %dent, i32 0, i32 2
  %2 = ptrtoint ptr %de_rec_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %de_rec_len, align 4
  %no_addr.i = getelementptr inbounds %struct.gfs2_inum, ptr %dent, i32 0, i32 1
  %4 = ptrtoint ptr %no_addr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %no_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.i = icmp eq i64 %5, 0
  br i1 %cmp.i, label %entry.gfs2_dirent_sentinel.exit.thread_crit_edge, label %gfs2_dirent_sentinel.exit

entry.gfs2_dirent_sentinel.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dirent_sentinel.exit.thread

gfs2_dirent_sentinel.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %de_name_len = getelementptr inbounds %struct.gfs2_dirent, ptr %dent, i32 0, i32 3
  %6 = ptrtoint ptr %de_name_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %de_name_len, align 2
  %conv = zext i16 %7 to i32
  %add3 = add nuw nsw i32 %conv, 47
  %and4 = and i32 %add3, 131064
  %8 = ptrtoint ptr %dent to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dent, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp2.i.not = icmp eq i64 %9, 0
  %spec.select = select i1 %cmp2.i.not, i32 0, i32 %and4
  br label %gfs2_dirent_sentinel.exit.thread

gfs2_dirent_sentinel.exit.thread:                 ; preds = %gfs2_dirent_sentinel.exit, %entry.gfs2_dirent_sentinel.exit.thread_crit_edge
  %10 = phi i32 [ 0, %entry.gfs2_dirent_sentinel.exit.thread_crit_edge ], [ %spec.select, %gfs2_dirent_sentinel.exit ]
  %conv5 = zext i16 %3 to i32
  %add1 = add i32 %1, 47
  %and = and i32 %add1, -8
  %sub = sub nsw i32 %conv5, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %and)
  %cmp.not = icmp uge i32 %sub, %and
  %retval.0 = zext i1 %cmp.not to i32
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dir_split_leaf(ptr noundef %inode, ptr nocapture noundef readonly %name) unnamed_addr #0 align 64 {
entry:
  %nbh = alloca ptr, align 4
  %obh = alloca ptr, align 4
  %dibh = alloca ptr, align 4
  %str = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nbh) #16
  %0 = ptrtoint ptr %nbh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nbh, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %obh) #16
  %1 = ptrtoint ptr %obh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %obh, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh) #16
  %2 = ptrtoint ptr %dibh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh, align 4, !annotation !93
  %hash = getelementptr inbounds %struct.anon.3, ptr %name, i32 0, i32 1
  %3 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hash, align 4
  %i_depth = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 20
  %5 = ptrtoint ptr %i_depth to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i_depth, align 1
  %conv = zext i8 %6 to i32
  %sub = sub nsw i32 32, %conv
  %shr = lshr i32 %4, %sub
  %call.i = tail call fastcc ptr @gfs2_dir_get_hash_table(ptr noundef %inode) #16
  %cmp.i.i.i.not = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call.i to i32
  br i1 %cmp.i.i.i.not, label %entry.cleanup120_crit_edge, label %if.end

entry.cleanup120_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup120

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i64, ptr %call.i, i32 %shr
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.i, align 8
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %10 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_gl.i, align 4
  %call.i209 = call i32 @gfs2_meta_read(ptr noundef %11, i64 noundef %9, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %obh) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %tobool.not.i210 = icmp eq i32 %call.i209, 0
  br i1 %tobool.not.i210, label %land.lhs.true.i, label %if.end.cleanup120_crit_edge

if.end.cleanup120_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup120

land.lhs.true.i:                                  ; preds = %if.end
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i, align 16
  %16 = ptrtoint ptr %obh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %obh, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %mh_type.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %mh_type.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mh_type.i.i, align 4
  %conv.i.i = trunc i32 %23 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %21)
  %cmp.not.i.i = icmp eq i32 %21, 18225520
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !96

if.then.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = call i32 @gfs2_meta_check_ii(ptr noundef %15, ptr noundef %17, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %conv.i.i)
  %cmp5.not.i.i = icmp eq i16 %conv.i.i, 6
  br i1 %cmp5.not.i.i, label %if.end.i.i.if.end5_crit_edge, label %if.then13.i.i, !prof !96

if.end.i.i.if.end5_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i.i = call i32 @gfs2_metatype_check_ii(ptr noundef %15, ptr noundef %17, i16 noundef zeroext 6, i16 noundef zeroext %conv.i.i, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i

gfs2_metatype_check_i.exit.i:                     ; preds = %if.then13.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call14.i.i, %if.then13.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool3.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool3.not.i, label %gfs2_metatype_check_i.exit.i.if.end5_crit_edge, label %gfs2_metatype_check_i.exit.i.cleanup120_crit_edge

gfs2_metatype_check_i.exit.i.cleanup120_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup120

gfs2_metatype_check_i.exit.i.if.end5_crit_edge:   ; preds = %gfs2_metatype_check_i.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end5:                                          ; preds = %gfs2_metatype_check_i.exit.i.if.end5_crit_edge, %if.end.i.i.if.end5_crit_edge
  %24 = ptrtoint ptr %obh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %obh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data, align 4
  %28 = ptrtoint ptr %i_depth to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i_depth, align 1
  %lf_depth = getelementptr inbounds %struct.gfs2_leaf, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %lf_depth to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %lf_depth, align 8
  %32 = zext i8 %29 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %32)
  %cmp = icmp eq i16 %31, %32
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end5
  %tobool.not.i211 = icmp eq ptr %25, null
  br i1 %tobool.not.i211, label %if.then10.cleanup120_crit_edge, label %if.then10.cleanup120.sink.split_crit_edge

if.then10.cleanup120.sink.split_crit_edge:        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup120.sink.split

if.then10.cleanup120_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup120

if.end11:                                         ; preds = %if.end5
  %33 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_gl.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %34, ptr noundef %25) #16
  %35 = ptrtoint ptr %lf_depth to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %lf_depth, align 8
  %add = add i16 %36, 1
  %call15 = call fastcc ptr @new_leaf(ptr noundef %inode, ptr noundef nonnull %nbh, i16 noundef zeroext %add)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end11
  %37 = ptrtoint ptr %obh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %obh, align 4
  %tobool.not.i213 = icmp eq ptr %38, null
  br i1 %tobool.not.i213, label %if.then17.cleanup120_crit_edge, label %if.then17.cleanup120.sink.split_crit_edge

if.then17.cleanup120.sink.split_crit_edge:        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup120.sink.split

if.then17.cleanup120_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup120

if.end18:                                         ; preds = %if.end11
  %39 = ptrtoint ptr %nbh to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nbh, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %b_blocknr, align 8
  %43 = ptrtoint ptr %i_depth to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %i_depth, align 1
  %conv20 = zext i8 %44 to i32
  %45 = ptrtoint ptr %lf_depth to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %lf_depth, align 8
  %conv22 = zext i16 %46 to i32
  %sub23 = sub nsw i32 %conv20, %conv22
  %shl = shl nuw i32 1, %sub23
  %shr24 = lshr i32 %shl, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20, i32 %conv22)
  %tobool25.not = icmp eq i32 %conv20, %conv22
  br i1 %tobool25.not, label %do.end, label %if.end33

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %47 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 33
  %49 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i, align 16
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %50, i32 0, i32 110
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %sd_fsname, i32 noundef %conv20, i32 noundef %conv20, i32 noundef %shr) #20
  call void @gfs2_consist_inode_i(ptr noundef %inode, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str, i32 noundef 1042) #16
  br label %fail_brelse

if.end33:                                         ; preds = %if.end18
  %neg = sub i32 0, %shl
  %and = and i32 %shr, %neg
  %51 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr24, i32 8) #16
  %52 = extractvalue { i32, i1 } %51, 1
  br i1 %52, label %if.end33.fail_brelse_crit_edge, label %if.end7.i, !prof !91

if.end33.fail_brelse_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_brelse

if.end7.i:                                        ; preds = %if.end33
  %53 = extractvalue { i32, i1 } %51, 0
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %53, i32 noundef 3136) #19
  %tobool36.not = icmp eq ptr %call8.i, null
  br i1 %tobool36.not, label %if.end7.i.fail_brelse_crit_edge, label %for.body.preheader

if.end7.i.fail_brelse_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_brelse

for.body.preheader:                               ; preds = %if.end7.i
  %umax = call i32 @llvm.umax.i32(i32 %shr24, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %x.0278 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i64, ptr %call8.i, i32 %x.0278
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %42, ptr %arrayidx, align 8
  %inc = add nuw nsw i32 %x.0278, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #16
  %i_hash_cache.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 16
  %55 = ptrtoint ptr %i_hash_cache.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_hash_cache.i, align 4
  store ptr null, ptr %i_hash_cache.i, align 4
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #16
  call void @kvfree(ptr noundef %56) #16
  %mul = shl i32 %and, 3
  %conv41 = zext i32 %mul to i64
  %mul42 = shl i32 %shr24, 3
  %call43 = call fastcc i32 @gfs2_dir_write_data(ptr noundef %inode, ptr noundef nonnull %call8.i, i64 noundef %conv41, i32 noundef %mul42)
  call void @__sanitizer_cov_trace_cmp4(i32 %call43, i32 %mul42)
  %cmp45.not = icmp eq i32 %call43, %mul42
  br i1 %cmp45.not, label %if.end52, label %if.then47

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call43)
  %cmp48 = icmp sgt i32 %call43, -1
  %spec.store.select = select i1 %cmp48, i32 -5, i32 %call43
  call void @kfree(ptr noundef nonnull %call8.i) #16
  br label %fail_brelse

if.end52:                                         ; preds = %for.end
  call void @kfree(ptr noundef nonnull %call8.i) #16
  %add53 = add i32 %and, %shr24
  %57 = ptrtoint ptr %i_depth to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %i_depth, align 1
  %conv55 = zext i8 %58 to i32
  %sub56 = sub nsw i32 32, %conv55
  %shl57 = shl i32 %add53, %sub56
  %59 = ptrtoint ptr %obh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %obh, align 4
  %b_data58 = getelementptr inbounds %struct.buffer_head, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %b_data58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data58, align 4
  %add.ptr = getelementptr i8, ptr %62, i32 104
  %b_data70 = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 5
  %name73 = getelementptr inbounds %struct.qstr, ptr %str, i32 0, i32 1
  %hash77 = getelementptr inbounds %struct.anon.3, ptr %str, i32 0, i32 1
  %b_size.i228 = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 4
  %lf_entries = getelementptr inbounds %struct.gfs2_leaf, ptr %call15, i32 0, i32 2
  %lf_entries85 = getelementptr inbounds %struct.gfs2_leaf, ptr %27, i32 0, i32 2
  %63 = getelementptr inbounds i8, ptr %str, i32 8
  br label %do.body59

do.body59:                                        ; preds = %if.end94.do.body59_crit_edge, %if.end52
  %dent.0 = phi ptr [ %add.ptr, %if.end52 ], [ %next.1, %if.end94.do.body59_crit_edge ]
  %prev.0 = phi ptr [ null, %if.end52 ], [ %prev.3, %if.end94.do.body59_crit_edge ]
  %64 = ptrtoint ptr %obh to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %obh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_data.i, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %65, i32 0, i32 4
  %68 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %b_size.i, align 8
  %add.ptr.i220 = getelementptr i8, ptr %67, i32 %69
  %de_rec_len.i.i = getelementptr inbounds %struct.gfs2_dirent, ptr %dent.0, i32 0, i32 2
  %70 = ptrtoint ptr %de_rec_len.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %de_rec_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %71)
  %cmp.i.i221 = icmp ult i16 %71, 40
  br i1 %cmp.i.i221, label %do.body59.broken.i.i_crit_edge, label %if.end.i.i223, !prof !91

do.body59.broken.i.i_crit_edge:                   ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #18
  br label %broken.i.i

if.end.i.i223:                                    ; preds = %do.body59
  %conv.i.i222 = zext i16 %71 to i32
  %add.ptr.i.i = getelementptr i8, ptr %dent.0, i32 %conv.i.i222
  %cmp4.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr.i220
  br i1 %cmp4.i.i, label %if.end.i225, label %if.end8.i.i224

if.end8.i.i224:                                   ; preds = %if.end.i.i223
  %cmp9.i.i = icmp eq ptr %add.ptr.i.i, %add.ptr.i220
  br i1 %cmp9.i.i, label %if.end8.i.i224.if.end63_crit_edge, label %if.end8.i.i224.broken.i.i_crit_edge

if.end8.i.i224.broken.i.i_crit_edge:              ; preds = %if.end8.i.i224
  call void @__sanitizer_cov_trace_pc() #18
  br label %broken.i.i

if.end8.i.i224.if.end63_crit_edge:                ; preds = %if.end8.i.i224
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

broken.i.i:                                       ; preds = %if.end8.i.i224.broken.i.i_crit_edge, %do.body59.broken.i.i_crit_edge
  call void @gfs2_consist_inode_i(ptr noundef %inode, ptr noundef nonnull @__func__.dirent_check_reclen, ptr noundef nonnull @.str, i32 noundef 620) #16
  br label %if.end63

if.end.i225:                                      ; preds = %if.end.i.i223
  %de_rec_len.i24.i = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %de_rec_len.i24.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %de_rec_len.i24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %73)
  %cmp.i25.i = icmp ult i16 %73, 40
  %conv.i26.i = zext i16 %73 to i32
  %add.ptr.i27.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i26.i
  %.not.i = icmp ugt ptr %add.ptr.i27.i, %add.ptr.i220
  %or.cond.i = select i1 %cmp.i25.i, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %dirent_check_reclen.exit34.i, label %if.end5.i, !prof !103

dirent_check_reclen.exit34.i:                     ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_pc() #18
  call void @gfs2_consist_inode_i(ptr noundef %inode, ptr noundef nonnull @__func__.dirent_check_reclen, ptr noundef nonnull @.str, i32 noundef 620) #16
  br label %if.end63

if.end5.i:                                        ; preds = %if.end.i225
  %no_addr.i.i = getelementptr inbounds %struct.gfs2_inum, ptr %add.ptr.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %no_addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %75)
  %cmp.i35.i = icmp eq i64 %75, 0
  br i1 %cmp.i35.i, label %if.end5.i.if.then7.i_crit_edge, label %gfs2_dirent_sentinel.exit.i

if.end5.i.if.then7.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i

gfs2_dirent_sentinel.exit.i:                      ; preds = %if.end5.i
  %76 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %77)
  %cmp2.i.not.i = icmp eq i64 %77, 0
  br i1 %cmp2.i.not.i, label %gfs2_dirent_sentinel.exit.i.if.then7.i_crit_edge, label %gfs2_dirent_sentinel.exit.i.if.end63_crit_edge

gfs2_dirent_sentinel.exit.i.if.end63_crit_edge:   ; preds = %gfs2_dirent_sentinel.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

gfs2_dirent_sentinel.exit.i.if.then7.i_crit_edge: ; preds = %gfs2_dirent_sentinel.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i

if.then7.i:                                       ; preds = %gfs2_dirent_sentinel.exit.i.if.then7.i_crit_edge, %if.end5.i.if.then7.i_crit_edge
  call void @gfs2_consist_inode_i(ptr noundef %inode, ptr noundef nonnull @__func__.dirent_next, ptr noundef nonnull @.str, i32 noundef 651) #16
  br label %if.end63

if.end63:                                         ; preds = %if.then7.i, %gfs2_dirent_sentinel.exit.i.if.end63_crit_edge, %dirent_check_reclen.exit34.i, %broken.i.i, %if.end8.i.i224.if.end63_crit_edge
  %next.1 = phi ptr [ %add.ptr.i.i, %gfs2_dirent_sentinel.exit.i.if.end63_crit_edge ], [ null, %if.then7.i ], [ null, %dirent_check_reclen.exit34.i ], [ null, %if.end8.i.i224.if.end63_crit_edge ], [ null, %broken.i.i ]
  %no_addr.i = getelementptr inbounds %struct.gfs2_inum, ptr %dent.0, i32 0, i32 1
  %78 = ptrtoint ptr %no_addr.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %no_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %79)
  %cmp.i = icmp eq i64 %79, 0
  br i1 %cmp.i, label %if.end63.if.end94_crit_edge, label %gfs2_dirent_sentinel.exit

if.end63.if.end94_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end94

gfs2_dirent_sentinel.exit:                        ; preds = %if.end63
  %80 = ptrtoint ptr %dent.0 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %dent.0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %81)
  %cmp2.i.not = icmp eq i64 %81, 0
  br i1 %cmp2.i.not, label %gfs2_dirent_sentinel.exit.if.end94_crit_edge, label %land.lhs.true

gfs2_dirent_sentinel.exit.if.end94_crit_edge:     ; preds = %gfs2_dirent_sentinel.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end94

land.lhs.true:                                    ; preds = %gfs2_dirent_sentinel.exit
  %de_hash = getelementptr inbounds %struct.gfs2_dirent, ptr %dent.0, i32 0, i32 1
  %82 = ptrtoint ptr %de_hash to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %de_hash, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %shl57)
  %cmp66 = icmp ult i32 %83, %shl57
  br i1 %cmp66, label %if.then68, label %land.lhs.true.if.end94_crit_edge

land.lhs.true.if.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end94

if.then68:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %str) #16
  %84 = ptrtoint ptr %63 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 -1, ptr %63, align 8
  %85 = ptrtoint ptr %obh to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %obh, align 4
  %b_data69 = getelementptr inbounds %struct.buffer_head, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %b_data69 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %b_data69, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %dent.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %88 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %89 = ptrtoint ptr %b_data70 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %b_data70, align 4
  %add.ptr71 = getelementptr i8, ptr %90, i32 %sub.ptr.sub
  %add.ptr72 = getelementptr %struct.gfs2_dirent, ptr %dent.0, i32 1
  %91 = ptrtoint ptr %name73 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr72, ptr %name73, align 8
  %de_name_len = getelementptr inbounds %struct.gfs2_dirent, ptr %dent.0, i32 0, i32 3
  %92 = ptrtoint ptr %de_name_len to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %de_name_len, align 2
  %conv74 = zext i16 %93 to i32
  %94 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv74, ptr %str, align 8
  %95 = ptrtoint ptr %hash77 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %83, ptr %hash77, align 4
  %96 = ptrtoint ptr %b_size.i228 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %b_size.i228, align 8
  %call.i229 = call fastcc ptr @gfs2_dirent_scan(ptr noundef %inode, ptr noundef %90, i32 noundef %97, ptr noundef nonnull @gfs2_dirent_find_offset, ptr noundef nonnull %str, ptr noundef %add.ptr71) #16
  %tobool.not.i.i = icmp eq ptr %call.i229, null
  %cmp.i.i230 = icmp ugt ptr %call.i229, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i231 = or i1 %tobool.not.i.i, %cmp.i.i230
  br i1 %spec.select.i.i231, label %if.then68.gfs2_dirent_split_alloc.exit_crit_edge, label %if.end.i234

if.then68.gfs2_dirent_split_alloc.exit_crit_edge: ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dirent_split_alloc.exit

if.end.i234:                                      ; preds = %if.then68
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr71 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call.i229 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %de_rec_len.i.i232 = getelementptr inbounds %struct.gfs2_dirent, ptr %call.i229, i32 0, i32 2
  %98 = ptrtoint ptr %de_rec_len.i.i232 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %de_rec_len.i.i232, align 4
  %conv.i.i233 = zext i16 %99 to i32
  %100 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %str, align 8
  %add.i.i = add i32 %101, %sub.ptr.sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i233)
  %cmp.i11.i = icmp ugt i32 %add.i.i, %conv.i.i233
  br i1 %cmp.i11.i, label %do.body3.i.i, label %do_init_dirent.exit.i, !prof !91

do.body3.i.i:                                     ; preds = %if.end.i234
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 716, 0\0A.popsection", ""() #16, !srcloc !100
  unreachable

do_init_dirent.exit.i:                            ; preds = %if.end.i234
  call void @__sanitizer_cov_trace_pc() #18
  %102 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i_gl.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %103, ptr noundef %40) #16
  %add.ptr.i.i235 = getelementptr i8, ptr %call.i229, i32 %sub.ptr.sub.i
  %conv9.i.i = trunc i32 %sub.ptr.sub.i to i16
  %104 = ptrtoint ptr %de_rec_len.i.i232 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv9.i.i, ptr %de_rec_len.i.i232, align 4
  %conv11.i.i = sub i16 %99, %conv9.i.i
  %105 = call ptr @memset(ptr %add.ptr.i.i235, i32 0, i32 16)
  %106 = ptrtoint ptr %hash77 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %hash77, align 4
  %de_hash.i.i.i = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr.i.i235, i32 0, i32 1
  %108 = ptrtoint ptr %de_hash.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %de_hash.i.i.i, align 8
  %de_rec_len.i.i.i = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr.i.i235, i32 0, i32 2
  %109 = ptrtoint ptr %de_rec_len.i.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv11.i.i, ptr %de_rec_len.i.i.i, align 4
  %110 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %str, align 8
  %conv.i.i.i = trunc i32 %111 to i16
  %de_name_len.i.i.i = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr.i.i235, i32 0, i32 3
  %112 = ptrtoint ptr %de_name_len.i.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv.i.i.i, ptr %de_name_len.i.i.i, align 2
  %de_type.i.i.i = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr.i.i235, i32 0, i32 4
  %113 = ptrtoint ptr %de_type.i.i.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %de_type.i.i.i, align 8
  %114 = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr.i.i235, i32 0, i32 6
  %115 = call ptr @memset(ptr %114, i32 0, i32 12)
  %add.ptr.i.i.i = getelementptr %struct.gfs2_dirent, ptr %add.ptr.i.i235, i32 1
  %116 = ptrtoint ptr %name73 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name73, align 8
  %118 = load i32, ptr %str, align 8
  %119 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %117, i32 %118)
  br label %gfs2_dirent_split_alloc.exit

gfs2_dirent_split_alloc.exit:                     ; preds = %do_init_dirent.exit.i, %if.then68.gfs2_dirent_split_alloc.exit_crit_edge
  %retval.0.i236 = phi ptr [ %add.ptr.i.i235, %do_init_dirent.exit.i ], [ %call.i229, %if.then68.gfs2_dirent_split_alloc.exit_crit_edge ]
  %cmp.i237 = icmp ugt ptr %retval.0.i236, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237, label %cleanup, label %if.end82

if.end82:                                         ; preds = %gfs2_dirent_split_alloc.exit
  %120 = call ptr @memcpy(ptr %retval.0.i236, ptr %dent.0, i32 16)
  %de_type = getelementptr inbounds %struct.gfs2_dirent, ptr %dent.0, i32 0, i32 4
  %121 = ptrtoint ptr %de_type to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %de_type, align 8
  %de_type84 = getelementptr inbounds %struct.gfs2_dirent, ptr %retval.0.i236, i32 0, i32 4
  %123 = ptrtoint ptr %de_type84 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %de_type84, align 8
  %124 = ptrtoint ptr %lf_entries to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %lf_entries, align 2
  %add.i = add i16 %125, 1
  store i16 %add.i, ptr %lf_entries, align 2
  %126 = ptrtoint ptr %obh to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %obh, align 4
  call fastcc void @dirent_del(ptr noundef %inode, ptr noundef %127, ptr noundef %prev.0, ptr noundef %dent.0)
  %128 = ptrtoint ptr %lf_entries85 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %lf_entries85, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool86.not = icmp eq i16 %129, 0
  br i1 %tobool86.not, label %if.then87, label %if.end82.cleanup.thread_crit_edge

if.end82.cleanup.thread_crit_edge:                ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.then87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  call void @gfs2_consist_inode_i(ptr noundef %inode, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str, i32 noundef 1105) #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then87, %if.end82.cleanup.thread_crit_edge
  %130 = ptrtoint ptr %lf_entries85 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %lf_entries85, align 2
  %add.i238 = add i16 %131, -1
  store i16 %add.i238, ptr %lf_entries85, align 2
  %tobool90.not = icmp eq ptr %prev.0, null
  %spec.select = select i1 %tobool90.not, ptr %dent.0, ptr %prev.0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %str) #16
  br label %if.end94

cleanup:                                          ; preds = %gfs2_dirent_split_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %str) #16
  br label %do.end97

if.end94:                                         ; preds = %cleanup.thread, %land.lhs.true.if.end94_crit_edge, %gfs2_dirent_sentinel.exit.if.end94_crit_edge, %if.end63.if.end94_crit_edge
  %prev.3 = phi ptr [ %dent.0, %land.lhs.true.if.end94_crit_edge ], [ %dent.0, %gfs2_dirent_sentinel.exit.if.end94_crit_edge ], [ %spec.select, %cleanup.thread ], [ %dent.0, %if.end63.if.end94_crit_edge ]
  %tobool96.not = icmp eq ptr %next.1, null
  br i1 %tobool96.not, label %if.end94.do.end97_crit_edge, label %if.end94.do.body59_crit_edge

if.end94.do.body59_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body59

if.end94.do.end97_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end97

do.end97:                                         ; preds = %if.end94.do.end97_crit_edge, %cleanup
  %lf_depth98 = getelementptr inbounds %struct.gfs2_leaf, ptr %call15, i32 0, i32 1
  %132 = ptrtoint ptr %lf_depth98 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %lf_depth98, align 8
  %134 = ptrtoint ptr %lf_depth to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %lf_depth, align 8
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %135 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %i_no_addr.i, align 8
  %call.i239 = call i32 @gfs2_meta_buffer(ptr noundef %inode, i32 noundef 4, i64 noundef %136, ptr noundef nonnull %dibh) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool101.not = icmp eq i32 %call.i239, 0
  br i1 %tobool101.not, label %if.then115.critedge, label %if.then107, !prof !96

if.then107:                                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #18
  %137 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i241 = getelementptr inbounds %struct.super_block, ptr %138, i32 0, i32 33
  %139 = ptrtoint ptr %s_fs_info.i241 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %s_fs_info.i241, align 16
  call void @gfs2_assert_withdraw_i(ptr noundef %140, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str, i32 noundef 1119, i1 noundef zeroext false) #16
  br label %if.end119

if.then115.critedge:                              ; preds = %do.end97
  %141 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %i_gl.i, align 4
  %143 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dibh, align 4
  call void @gfs2_trans_add_meta(ptr noundef %142, ptr noundef %144) #16
  call fastcc void @gfs2_add_inode_blocks(ptr noundef %inode, i64 noundef 1)
  %145 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dibh, align 4
  %b_data118 = getelementptr inbounds %struct.buffer_head, ptr %146, i32 0, i32 5
  %147 = ptrtoint ptr %b_data118 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %b_data118, align 4
  call void @gfs2_dinode_out(ptr noundef %inode, ptr noundef %148) #16
  %149 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dibh, align 4
  %tobool.not.i242 = icmp eq ptr %150, null
  br i1 %tobool.not.i242, label %if.then115.critedge.if.end119_crit_edge, label %if.then.i243

if.then115.critedge.if.end119_crit_edge:          ; preds = %if.then115.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end119

if.then.i243:                                     ; preds = %if.then115.critedge
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %150) #16
  br label %if.end119

if.end119:                                        ; preds = %if.then.i243, %if.then115.critedge.if.end119_crit_edge, %if.then107
  %151 = ptrtoint ptr %obh to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %obh, align 4
  %tobool.not.i246 = icmp eq ptr %152, null
  br i1 %tobool.not.i246, label %if.end119.brelse.exit249_crit_edge, label %if.then.i247

if.end119.brelse.exit249_crit_edge:               ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit249

if.then.i247:                                     ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %152) #16
  br label %brelse.exit249

brelse.exit249:                                   ; preds = %if.then.i247, %if.end119.brelse.exit249_crit_edge
  %tobool.not.i250 = icmp eq ptr %40, null
  br i1 %tobool.not.i250, label %brelse.exit249.cleanup120_crit_edge, label %brelse.exit249.cleanup120.sink.split_crit_edge

brelse.exit249.cleanup120.sink.split_crit_edge:   ; preds = %brelse.exit249
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup120.sink.split

brelse.exit249.cleanup120_crit_edge:              ; preds = %brelse.exit249
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup120

fail_brelse:                                      ; preds = %if.then47, %if.end7.i.fail_brelse_crit_edge, %if.end33.fail_brelse_crit_edge, %do.end
  %error.0 = phi i32 [ %spec.store.select, %if.then47 ], [ -5, %do.end ], [ -12, %if.end7.i.fail_brelse_crit_edge ], [ -12, %if.end33.fail_brelse_crit_edge ]
  %153 = ptrtoint ptr %obh to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %obh, align 4
  %tobool.not.i254 = icmp eq ptr %154, null
  br i1 %tobool.not.i254, label %fail_brelse.brelse.exit257_crit_edge, label %if.then.i255

fail_brelse.brelse.exit257_crit_edge:             ; preds = %fail_brelse
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit257

if.then.i255:                                     ; preds = %fail_brelse
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %154) #16
  br label %brelse.exit257

brelse.exit257:                                   ; preds = %if.then.i255, %fail_brelse.brelse.exit257_crit_edge
  %tobool.not.i258 = icmp eq ptr %40, null
  br i1 %tobool.not.i258, label %brelse.exit257.cleanup120_crit_edge, label %brelse.exit257.cleanup120.sink.split_crit_edge

brelse.exit257.cleanup120.sink.split_crit_edge:   ; preds = %brelse.exit257
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup120.sink.split

brelse.exit257.cleanup120_crit_edge:              ; preds = %brelse.exit257
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup120

cleanup120.sink.split:                            ; preds = %brelse.exit257.cleanup120.sink.split_crit_edge, %brelse.exit249.cleanup120.sink.split_crit_edge, %if.then17.cleanup120.sink.split_crit_edge, %if.then10.cleanup120.sink.split_crit_edge
  %.sink = phi ptr [ %25, %if.then10.cleanup120.sink.split_crit_edge ], [ %38, %if.then17.cleanup120.sink.split_crit_edge ], [ %40, %brelse.exit249.cleanup120.sink.split_crit_edge ], [ %40, %brelse.exit257.cleanup120.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 1, %if.then10.cleanup120.sink.split_crit_edge ], [ -28, %if.then17.cleanup120.sink.split_crit_edge ], [ %call.i239, %brelse.exit249.cleanup120.sink.split_crit_edge ], [ %error.0, %brelse.exit257.cleanup120.sink.split_crit_edge ]
  call void @__brelse(ptr noundef nonnull %.sink) #16
  br label %cleanup120

cleanup120:                                       ; preds = %cleanup120.sink.split, %brelse.exit257.cleanup120_crit_edge, %brelse.exit249.cleanup120_crit_edge, %if.then17.cleanup120_crit_edge, %if.then10.cleanup120_crit_edge, %gfs2_metatype_check_i.exit.i.cleanup120_crit_edge, %if.end.cleanup120_crit_edge, %entry.cleanup120_crit_edge
  %retval.0 = phi i32 [ %7, %entry.cleanup120_crit_edge ], [ 1, %if.then10.cleanup120_crit_edge ], [ -28, %if.then17.cleanup120_crit_edge ], [ %call.i239, %brelse.exit249.cleanup120_crit_edge ], [ %error.0, %brelse.exit257.cleanup120_crit_edge ], [ -5, %gfs2_metatype_check_i.exit.i.cleanup120_crit_edge ], [ %call.i209, %if.end.cleanup120_crit_edge ], [ %retval.0.ph, %cleanup120.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obh) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbh) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_dir_del(ptr noundef %dip, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %tv = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #16
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv) #16
  %1 = call ptr @memset(ptr %tv, i32 255, i32 16)
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tv, ptr noundef %dip) #16
  %call = call fastcc ptr @gfs2_dirent_search(ptr noundef %dip, ptr noundef %d_name, ptr noundef nonnull @gfs2_dirent_prev, ptr noundef nonnull %bh)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @gfs2_consist_inode_i(ptr noundef %dip, ptr noundef nonnull @__func__.gfs2_dir_del, ptr noundef nonnull @.str, i32 noundef 1886) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @gfs2_consist_inode_i(ptr noundef %dip, ptr noundef nonnull @__func__.gfs2_dir_del, ptr noundef nonnull @.str, i32 noundef 1890) #16
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %no_addr.i.i.i = getelementptr inbounds %struct.gfs2_inum, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %no_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %no_addr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.i.i = icmp eq i64 %4, 0
  br i1 %cmp.i.i.i, label %if.end5.if.then7_crit_edge, label %gfs2_dirent_sentinel.exit.i.i

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

gfs2_dirent_sentinel.exit.i.i:                    ; preds = %if.end5
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %call, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp2.i.not.i.i = icmp eq i64 %6, 0
  br i1 %cmp2.i.not.i.i, label %gfs2_dirent_sentinel.exit.i.i.if.then7_crit_edge, label %land.lhs.true.i.i

gfs2_dirent_sentinel.exit.i.i.if.then7_crit_edge: ; preds = %gfs2_dirent_sentinel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

land.lhs.true.i.i:                                ; preds = %gfs2_dirent_sentinel.exit.i.i
  %de_hash.i.i = getelementptr inbounds %struct.gfs2_dirent, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %de_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %de_hash.i.i, align 8
  %hash.i.i = getelementptr inbounds %struct.anon.3, ptr %d_name, i32 0, i32 1
  %9 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hash.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.i.i = icmp eq i32 %8, %10
  br i1 %cmp.i.i, label %land.lhs.true1.i.i, label %land.lhs.true.i.i.if.then7_crit_edge

land.lhs.true.i.i.if.then7_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

land.lhs.true1.i.i:                               ; preds = %land.lhs.true.i.i
  %de_name_len.i.i = getelementptr inbounds %struct.gfs2_dirent, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %de_name_len.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %de_name_len.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %13 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv.i.i)
  %cmp2.i.i = icmp eq i32 %14, %conv.i.i
  br i1 %cmp2.i.i, label %land.lhs.true4.i.i, label %land.lhs.true1.i.i.if.then7_crit_edge

land.lhs.true1.i.i.if.then7_crit_edge:            ; preds = %land.lhs.true1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

land.lhs.true4.i.i:                               ; preds = %land.lhs.true1.i.i
  %add.ptr.i.i = getelementptr %struct.gfs2_dirent, ptr %call, i32 1
  %name5.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %name5.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name5.i.i, align 8
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i.i, ptr %16, i32 %conv.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp8.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp8.i.i, label %land.lhs.true4.i.i.if.end8_crit_edge, label %land.lhs.true4.i.i.if.then7_crit_edge

land.lhs.true4.i.i.if.then7_crit_edge:            ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

land.lhs.true4.i.i.if.end8_crit_edge:             ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true4.i.i.if.then7_crit_edge, %land.lhs.true1.i.i.if.then7_crit_edge, %land.lhs.true.i.i.if.then7_crit_edge, %gfs2_dirent_sentinel.exit.i.i.if.then7_crit_edge, %if.end5.if.then7_crit_edge
  %de_rec_len = getelementptr inbounds %struct.gfs2_dirent, ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %de_rec_len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %de_rec_len, align 4
  %conv = zext i16 %18 to i32
  %add.ptr = getelementptr i8, ptr %call, i32 %conv
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true4.i.i.if.end8_crit_edge
  %dent.0 = phi ptr [ %add.ptr, %if.then7 ], [ %call, %land.lhs.true4.i.i.if.end8_crit_edge ]
  %prev.0 = phi ptr [ %call, %if.then7 ], [ null, %land.lhs.true4.i.i.if.end8_crit_edge ]
  %19 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bh, align 4
  call fastcc void @dirent_del(ptr noundef %dip, ptr noundef %20, ptr noundef %prev.0, ptr noundef %dent.0)
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %dip, i32 0, i32 18
  %21 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_diskflags, align 4
  %and = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.if.end15_crit_edge, label %if.then10

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 5
  %23 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data, align 4
  %lf_entries = getelementptr inbounds %struct.gfs2_leaf, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %lf_entries to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %lf_entries, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool11.not = icmp eq i16 %26, 0
  br i1 %tobool11.not, label %if.then12, label %if.then10.if.end13_crit_edge

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  call void @gfs2_consist_inode_i(ptr noundef %dip, ptr noundef nonnull @__func__.gfs2_dir_del, ptr noundef nonnull @.str, i32 noundef 1904) #16
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then10.if.end13_crit_edge
  %dec = add i16 %26, -1
  %27 = ptrtoint ptr %lf_entries to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %dec, ptr %lf_entries, align 2
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %tv, i32 0, i32 1
  %28 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tv_nsec, align 8
  %lf_nsec = getelementptr inbounds %struct.gfs2_leaf, ptr %24, i32 0, i32 5, i32 0, i32 2
  %30 = ptrtoint ptr %lf_nsec to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %lf_nsec, align 4
  %31 = ptrtoint ptr %tv to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tv, align 8
  %lf_sec = getelementptr inbounds %struct.gfs2_leaf, ptr %24, i32 0, i32 5, i32 0, i32 3
  %33 = ptrtoint ptr %lf_sec to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %lf_sec, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.end8.if.end15_crit_edge
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end15.brelse.exit_crit_edge, label %if.then.i

if.end15.brelse.exit_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %20) #16
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end15.brelse.exit_crit_edge
  %i_entries = getelementptr inbounds %struct.gfs2_inode, ptr %dip, i32 0, i32 17
  %34 = ptrtoint ptr %i_entries to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool16.not = icmp eq i32 %35, 0
  br i1 %tobool16.not, label %if.then17, label %brelse.exit.if.end18_crit_edge

brelse.exit.if.end18_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then17:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @gfs2_consist_inode_i(ptr noundef %dip, ptr noundef nonnull @__func__.gfs2_dir_del, ptr noundef nonnull @.str, i32 noundef 1912) #16
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %brelse.exit.if.end18_crit_edge
  %36 = ptrtoint ptr %i_entries to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_entries, align 8
  %dec20 = add i32 %37, -1
  store i32 %dec20, ptr %i_entries, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 17
  %38 = call ptr @memcpy(ptr %i_ctime, ptr %tv, i32 16)
  %39 = call ptr @memcpy(ptr %i_mtime, ptr %tv, i32 16)
  %40 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dentry, align 8
  %42 = and i32 %41, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %42)
  %43 = icmp eq i32 %42, 2097152
  br i1 %43, label %if.then24, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  call void @drop_nlink(ptr noundef %dip) #16
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end18.if.end26_crit_edge
  call void @__mark_inode_dirty(ptr noundef %dip, i32 noundef 7) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then3, %if.then
  %retval.0 = phi i32 [ %2, %if.then3 ], [ 0, %if.end26 ], [ -5, %if.then ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #16
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gfs2_dirent_prev(ptr nocapture noundef readonly %dent, ptr nocapture noundef readonly %name, ptr nocapture noundef readnone %opaque) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %no_addr.i.i = getelementptr inbounds %struct.gfs2_inum, ptr %dent, i32 0, i32 1
  %0 = ptrtoint ptr %no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %no_addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.i.i = icmp eq i64 %1, 0
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %gfs2_dirent_sentinel.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

gfs2_dirent_sentinel.exit.i:                      ; preds = %entry
  %2 = ptrtoint ptr %dent to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dent, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp2.i.not.i = icmp eq i64 %3, 0
  br i1 %cmp2.i.not.i, label %gfs2_dirent_sentinel.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

gfs2_dirent_sentinel.exit.i.if.end.i_crit_edge:   ; preds = %gfs2_dirent_sentinel.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %gfs2_dirent_sentinel.exit.i
  %de_hash.i = getelementptr inbounds %struct.gfs2_dirent, ptr %dent, i32 0, i32 1
  %4 = ptrtoint ptr %de_hash.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %de_hash.i, align 8
  %hash.i = getelementptr inbounds %struct.anon.3, ptr %name, i32 0, i32 1
  %6 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i = icmp eq i32 %5, %7
  br i1 %cmp.i, label %land.lhs.true1.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %de_name_len.i = getelementptr inbounds %struct.gfs2_dirent, ptr %dent, i32 0, i32 3
  %8 = ptrtoint ptr %de_name_len.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %de_name_len.i, align 2
  %conv.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %name, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i)
  %cmp2.i = icmp eq i32 %11, %conv.i
  br i1 %cmp2.i, label %land.lhs.true4.i, label %land.lhs.true1.i.if.end.i_crit_edge

land.lhs.true1.i.if.end.i_crit_edge:              ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true1.i
  %add.ptr.i = getelementptr %struct.gfs2_dirent, ptr %dent, i32 1
  %name5.i = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %12 = ptrtoint ptr %name5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name5.i, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %add.ptr.i, ptr %13, i32 %conv.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp8.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp8.i, label %land.lhs.true4.i.__gfs2_dirent_find.exit_crit_edge, label %land.lhs.true4.i.if.end.i_crit_edge

land.lhs.true4.i.if.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true4.i.__gfs2_dirent_find.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__gfs2_dirent_find.exit

if.end.i:                                         ; preds = %land.lhs.true4.i.if.end.i_crit_edge, %land.lhs.true1.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %gfs2_dirent_sentinel.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  br label %__gfs2_dirent_find.exit

__gfs2_dirent_find.exit:                          ; preds = %if.end.i, %land.lhs.true4.i.__gfs2_dirent_find.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 2, %land.lhs.true4.i.__gfs2_dirent_find.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dirent_del(ptr noundef %dip, ptr noundef %bh, ptr noundef %prev, ptr noundef %cur) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %no_addr.i = getelementptr inbounds %struct.gfs2_inum, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %no_addr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %no_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.i = icmp eq i64 %1, 0
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %gfs2_dirent_sentinel.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

gfs2_dirent_sentinel.exit:                        ; preds = %entry
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cur, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp2.i.not = icmp eq i64 %3, 0
  br i1 %cmp2.i.not, label %gfs2_dirent_sentinel.exit.if.then_crit_edge, label %if.end

gfs2_dirent_sentinel.exit.if.then_crit_edge:      ; preds = %gfs2_dirent_sentinel.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %gfs2_dirent_sentinel.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @gfs2_consist_inode_i(ptr noundef %dip, ptr noundef nonnull @__func__.dirent_del, ptr noundef nonnull @.str, i32 noundef 674) #16
  br label %cleanup

if.end:                                           ; preds = %gfs2_dirent_sentinel.exit
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %dip, i32 0, i32 6
  %4 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_gl, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %5, ptr noundef %bh) #16
  %tobool1.not = icmp eq ptr %prev, null
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %6 = call ptr @memset(ptr %cur, i32 0, i32 16)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %de_rec_len = getelementptr inbounds %struct.gfs2_dirent, ptr %prev, i32 0, i32 2
  %7 = ptrtoint ptr %de_rec_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %de_rec_len, align 4
  %de_rec_len5 = getelementptr inbounds %struct.gfs2_dirent, ptr %cur, i32 0, i32 2
  %9 = ptrtoint ptr %de_rec_len5 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %de_rec_len5, align 4
  %conv = zext i16 %8 to i32
  %add.ptr = getelementptr i8, ptr %prev, i32 %conv
  %cmp.not = icmp eq ptr %add.ptr, %cur
  br i1 %cmp.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @gfs2_consist_inode_i(ptr noundef %dip, ptr noundef nonnull @__func__.dirent_del, ptr noundef nonnull @.str, i32 noundef 696) #16
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %conv9 = zext i16 %10 to i32
  %add.ptr10 = getelementptr i8, ptr %cur, i32 %conv9
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %11 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %13 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_size, align 8
  %add.ptr11 = getelementptr i8, ptr %12, i32 %14
  %cmp12 = icmp ugt ptr %add.ptr10, %add.ptr11
  br i1 %cmp12, label %if.then14, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @gfs2_consist_inode_i(ptr noundef %dip, ptr noundef nonnull @__func__.dirent_del, ptr noundef nonnull @.str, i32 noundef 698) #16
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end8.if.end15_crit_edge
  %add = add i16 %10, %8
  %15 = ptrtoint ptr %de_rec_len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %add, ptr %de_rec_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_dir_mvino(ptr noundef %dip, ptr noundef %filename, ptr nocapture noundef readonly %nip, i32 noundef %new_type) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #16
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !93
  %call = call fastcc ptr @gfs2_dirent_search(ptr noundef %dip, ptr noundef %filename, ptr noundef nonnull @gfs2_dirent_find, ptr noundef nonnull %bh)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @gfs2_consist_inode_i(ptr noundef %dip, ptr noundef nonnull @__func__.gfs2_dir_mvino, ptr noundef nonnull @.str, i32 noundef 1944) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %dip, i32 0, i32 6
  %2 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_gl, align 4
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bh, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %3, ptr noundef %5) #16
  %i_no_formal_ino.i = getelementptr inbounds %struct.gfs2_inode, ptr %nip, i32 0, i32 2
  %6 = ptrtoint ptr %i_no_formal_ino.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_no_formal_ino.i, align 8
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %call, align 8
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %nip, i32 0, i32 1
  %9 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_no_addr.i, align 8
  %no_addr.i = getelementptr inbounds %struct.gfs2_inum, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %no_addr.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %no_addr.i, align 8
  %conv = trunc i32 %new_type to i16
  %de_type = getelementptr inbounds %struct.gfs2_dirent, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %de_type to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %de_type, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end4.brelse.exit_crit_edge, label %if.then.i

if.end4.brelse.exit_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__brelse(ptr noundef nonnull %5) #16
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end4.brelse.exit_crit_edge
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dip) #16
  %13 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #16
  %14 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dip, i32 noundef 1) #16
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.then2, %if.then
  %retval.0 = phi i32 [ %1, %if.then2 ], [ 0, %brelse.exit ], [ -5, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_dir_exhash_dealloc(ptr noundef %dip) local_unnamed_addr #0 align 64 {
entry:
  %rlist.i = alloca %struct.gfs2_rgrp_list, align 4
  %bh.i = alloca ptr, align 4
  %dibh.i = alloca ptr, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #16
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !93
  %i_depth = getelementptr inbounds %struct.gfs2_inode, ptr %dip, i32 0, i32 20
  %1 = ptrtoint ptr %i_depth to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %i_depth, align 1
  %conv = zext i8 %2 to i32
  %shl = shl nuw i32 1, %conv
  %call = tail call fastcc ptr @gfs2_dir_get_hash_table(ptr noundef %dip)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %dip, i32 0, i32 6
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 8
  %3 = getelementptr inbounds %struct.gfs2_rgrp_list, ptr %rlist.i, i32 0, i32 3
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 20
  %i_blocks.i.i = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 22
  %i_no_addr.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %dip, i32 0, i32 1
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %while.cond.preheader
  %index.069 = phi i32 [ 0, %while.cond.preheader ], [ %index.1, %if.end20.while.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %call, i32 %index.069
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %while.body
  %7 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_gl.i, align 4
  %call.i = call i32 @gfs2_meta_read(ptr noundef %8, i64 noundef %6, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %bh) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then4
  %9 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i, align 16
  %13 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bh, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %mh_type.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %mh_type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mh_type.i.i, align 4
  %conv.i.i = trunc i32 %20 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %18)
  %cmp.not.i.i = icmp eq i32 %18, 18225520
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !96

if.then.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = call i32 @gfs2_meta_check_ii(ptr noundef %12, ptr noundef %14, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %conv.i.i)
  %cmp5.not.i.i = icmp eq i16 %conv.i.i, 6
  br i1 %cmp5.not.i.i, label %if.end.i.i.if.end8_crit_edge, label %if.then13.i.i, !prof !96

if.end.i.i.if.end8_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i.i = call i32 @gfs2_metatype_check_ii(ptr noundef %12, ptr noundef %14, i16 noundef zeroext 6, i16 noundef zeroext %conv.i.i, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i

gfs2_metatype_check_i.exit.i:                     ; preds = %if.then13.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call14.i.i, %if.then13.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool3.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool3.not.i, label %gfs2_metatype_check_i.exit.i.if.end8_crit_edge, label %gfs2_metatype_check_i.exit.i.cleanup_crit_edge

gfs2_metatype_check_i.exit.i.cleanup_crit_edge:   ; preds = %gfs2_metatype_check_i.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

gfs2_metatype_check_i.exit.i.if.end8_crit_edge:   ; preds = %gfs2_metatype_check_i.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.end8:                                          ; preds = %gfs2_metatype_check_i.exit.i.if.end8_crit_edge, %if.end.i.i.if.end8_crit_edge
  %21 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data, align 4
  %25 = ptrtoint ptr %i_depth to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %i_depth, align 1
  %conv10 = zext i8 %26 to i32
  %lf_depth = getelementptr inbounds %struct.gfs2_leaf, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %lf_depth to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %lf_depth, align 8
  %conv11 = zext i16 %28 to i32
  %sub = sub nsw i32 %conv10, %conv11
  %shl12 = shl nuw i32 1, %sub
  %neg = sub i32 0, %shl12
  %and = and i32 %index.069, %neg
  %add = add i32 %and, %shl12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shl)
  %cmp14.not.not = icmp ult i32 %add, %shl
  %29 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i56 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 33
  %31 = ptrtoint ptr %s_fs_info.i.i56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i.i56, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rlist.i) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #16
  %33 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh.i) #16
  %34 = ptrtoint ptr %dibh.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh.i, align 4, !annotation !93
  %mul.i = shl i32 %shl12, 3
  %call1.i = call i32 @gfs2_rindex_update(ptr noundef %32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i57 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i57, label %if.end.i, label %if.end8.leaf_dealloc.exit_crit_edge

if.end8.leaf_dealloc.exit_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %leaf_dealloc.exit

if.end.i:                                         ; preds = %if.end8
  %35 = call ptr @memset(ptr %rlist.i, i32 0, i32 16)
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 11584) #19
  %cmp.i58 = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp.i58, label %if.end5.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

if.end5.i:                                        ; preds = %if.end.i
  %call4.i = call noalias ptr @__vmalloc(i32 noundef %mul.i, i32 noundef 11584) #19
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.end5.i.leaf_dealloc.exit_crit_edge, label %if.end5.i.if.end8.i_crit_edge

if.end5.i.if.end8.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

if.end5.i.leaf_dealloc.exit_crit_edge:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %leaf_dealloc.exit

if.end8.i:                                        ; preds = %if.end5.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %ht.0202.i = phi ptr [ %call4.i, %if.end5.i.if.end8.i_crit_edge ], [ %call9.i.i.i, %if.end.i.if.end8.i_crit_edge ]
  %call12.i = call i32 @gfs2_quota_hold(ptr noundef %dip, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %for.body.lr.ph.i, label %if.end8.i.out.i_crit_edge

if.end8.i.out.i_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

for.body.lr.ph.i:                                 ; preds = %if.end8.i
  %36 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %22, ptr %bh.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end26.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %l_blocks.0225.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %phi.bo.i, %if.end26.i.for.body.i_crit_edge ]
  %blk.0223.i = phi i64 [ %6, %for.body.lr.ph.i ], [ %63, %if.end26.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %blk.0223.i, i64 %6)
  %cmp17.not.i = icmp eq i64 %blk.0223.i, %6
  br i1 %cmp17.not.i, label %if.end23.i, label %if.then18.i

if.then18.i:                                      ; preds = %for.body.i
  %37 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_gl.i, align 4
  %call.i.i59 = call i32 @gfs2_meta_read(ptr noundef %38, i64 noundef %blk.0223.i, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %bh.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59)
  %tobool.not.i.i = icmp eq i32 %call.i.i59, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then18.i.out_rlist.i_crit_edge

if.then18.i.out_rlist.i_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_rlist.i

land.lhs.true.i.i:                                ; preds = %if.then18.i
  %39 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 33
  %41 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %43 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bh.i, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data.i.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %mh_type.i.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %mh_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mh_type.i.i.i, align 4
  %conv.i.i.i = trunc i32 %50 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %48)
  %cmp.not.i.i.i = icmp eq i32 %48, 18225520
  br i1 %cmp.not.i.i.i, label %if.end.i.i164.i, label %if.then.i.i163.i, !prof !96

if.then.i.i163.i:                                 ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call i32 @gfs2_meta_check_ii(ptr noundef %42, ptr noundef %44, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i.i

if.end.i.i164.i:                                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %conv.i.i.i)
  %cmp5.not.i.i.i = icmp eq i16 %conv.i.i.i, 6
  br i1 %cmp5.not.i.i.i, label %if.end.i.i164.i.if.then25.i_crit_edge, label %if.then13.i.i.i, !prof !96

if.end.i.i164.i.if.then25.i_crit_edge:            ; preds = %if.end.i.i164.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25.i

if.then13.i.i.i:                                  ; preds = %if.end.i.i164.i
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i.i.i = call i32 @gfs2_metatype_check_ii(ptr noundef %42, ptr noundef %44, i16 noundef zeroext 6, i16 noundef zeroext %conv.i.i.i, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i.i

gfs2_metatype_check_i.exit.i.i:                   ; preds = %if.then13.i.i.i, %if.then.i.i163.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i163.i ], [ %call14.i.i.i, %if.then13.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool3.not.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool3.not.i.i, label %gfs2_metatype_check_i.exit.i.i.if.then25.i_crit_edge, label %gfs2_metatype_check_i.exit.i.i.out_rlist.i_crit_edge

gfs2_metatype_check_i.exit.i.i.out_rlist.i_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_rlist.i

gfs2_metatype_check_i.exit.i.i.if.then25.i_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25.i

if.end23.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %b_data.i, align 4
  %lf_next.i = getelementptr inbounds %struct.gfs2_leaf, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %lf_next.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %lf_next.i, align 8
  br label %if.end26.i

if.then25.i:                                      ; preds = %gfs2_metatype_check_i.exit.i.i.if.then25.i_crit_edge, %if.end.i.i164.i.if.then25.i_crit_edge
  %57 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bh.i, align 4
  %b_data209.i = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %b_data209.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_data209.i, align 4
  %lf_next210.i = getelementptr inbounds %struct.gfs2_leaf, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %lf_next210.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %lf_next210.i, align 8
  %tobool.not.i165.i = icmp eq ptr %58, null
  br i1 %tobool.not.i165.i, label %if.then25.i.if.end26.i_crit_edge, label %if.then.i.i60

if.then25.i.if.end26.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i

if.then.i.i60:                                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %58) #16
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then.i.i60, %if.then25.i.if.end26.i_crit_edge, %if.end23.i
  %63 = phi i64 [ %56, %if.end23.i ], [ %62, %if.then25.i.if.end26.i_crit_edge ], [ %62, %if.then.i.i60 ]
  call void @gfs2_rlist_add(ptr noundef %dip, ptr noundef nonnull %rlist.i, i64 noundef %blk.0223.i) #16
  %phi.bo.i = add i32 %l_blocks.0225.i, 1
  %tobool16.not.i = icmp eq i64 %63, 0
  br i1 %tobool16.not.i, label %for.end.i, label %if.end26.i.for.body.i_crit_edge

if.end26.i.for.body.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %if.end26.i
  call void @gfs2_rlist_alloc(ptr noundef nonnull %rlist.i) #16
  %64 = ptrtoint ptr %rlist.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rlist.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp28226.not.i = icmp eq i32 %65, 0
  br i1 %cmp28226.not.i, label %for.end.i.for.end33.i_crit_edge, label %for.end.i.for.body29.i_crit_edge

for.end.i.for.body29.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body29.i

for.end.i.for.end33.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end33.i

for.body29.i:                                     ; preds = %for.body29.i.for.body29.i_crit_edge, %for.end.i.for.body29.i_crit_edge
  %x.0228.i = phi i32 [ %inc32.i, %for.body29.i.for.body29.i_crit_edge ], [ 0, %for.end.i.for.body29.i_crit_edge ]
  %rg_blocks.0227.i = phi i32 [ %add.i, %for.body29.i.for.body29.i_crit_edge ], [ 0, %for.end.i.for.body29.i_crit_edge ]
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %3, align 4
  %gh_gl.i = getelementptr %struct.gfs2_holder, ptr %67, i32 %x.0228.i, i32 1
  %68 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %gh_gl.i, align 4
  %call30.i = call ptr @gfs2_glock2rgrp(ptr noundef %69) #16
  %rd_length.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call30.i, i32 0, i32 4
  %70 = ptrtoint ptr %rd_length.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rd_length.i, align 8
  %add.i = add i32 %71, %rg_blocks.0227.i
  %inc32.i = add nuw i32 %x.0228.i, 1
  %72 = ptrtoint ptr %rlist.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rlist.i, align 4
  %cmp28.i = icmp ult i32 %inc32.i, %73
  br i1 %cmp28.i, label %for.body29.i.for.body29.i_crit_edge, label %for.end33.loopexit.i

for.body29.i.for.body29.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body29.i

for.end33.loopexit.i:                             ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #18
  %phi.bo235.i = add i32 %add.i, 5
  br label %for.end33.i

for.end33.i:                                      ; preds = %for.end33.loopexit.i, %for.end.i.for.end33.i_crit_edge
  %rg_blocks.0.lcssa.i = phi i32 [ 5, %for.end.i.for.end33.i_crit_edge ], [ %phi.bo235.i, %for.end33.loopexit.i ]
  %.lcssa.i = phi i32 [ 0, %for.end.i.for.end33.i_crit_edge ], [ %73, %for.end33.loopexit.i ]
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %3, align 4
  %call36.i = call i32 @gfs2_glock_nq_m(i32 noundef %.lcssa.i, ptr noundef %75) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %for.end33.i.out_rlist.i_crit_edge

for.end33.i.out_rlist.i_crit_edge:                ; preds = %for.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_rlist.i

if.end39.i:                                       ; preds = %for.end33.i
  %sd_jbsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %32, i32 0, i32 11
  %76 = ptrtoint ptr %sd_jbsize.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sd_jbsize.i, align 4
  %add40.i = add i32 %mul.i, -1
  %sub.i = add i32 %add40.i, %77
  %div.i = udiv i32 %sub.i, %77
  %add46.i = add i32 %div.i, %rg_blocks.0.lcssa.i
  %call48.i = call i32 @gfs2_trans_begin(ptr noundef %32, i32 noundef %add46.i, i32 noundef %phi.bo.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %for.body54.lr.ph.i, label %if.end39.i.out_rg_gunlock.i_crit_edge

if.end39.i.out_rg_gunlock.i_crit_edge:            ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_rg_gunlock.i

for.body54.lr.ph.i:                               ; preds = %if.end39.i
  %78 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %22, ptr %bh.i, align 4
  br label %for.body54.i

for.body54.i:                                     ; preds = %cleanup.i.for.body54.i_crit_edge, %for.body54.lr.ph.i
  %blk.1232.i = phi i64 [ %6, %for.body54.lr.ph.i ], [ %105, %cleanup.i.for.body54.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %blk.1232.i, i64 %6)
  %cmp56.not.i = icmp eq i64 %blk.1232.i, %6
  br i1 %cmp56.not.i, label %if.end62.i, label %if.then57.i

if.then57.i:                                      ; preds = %for.body54.i
  %79 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i_gl.i, align 4
  %call.i167.i = call i32 @gfs2_meta_read(ptr noundef %80, i64 noundef %blk.1232.i, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %bh.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167.i)
  %tobool.not.i168.i = icmp eq i32 %call.i167.i, 0
  br i1 %tobool.not.i168.i, label %land.lhs.true.i175.i, label %if.then57.i.out_end_trans.i_crit_edge

if.then57.i.out_end_trans.i_crit_edge:            ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_end_trans.i

land.lhs.true.i175.i:                             ; preds = %if.then57.i
  %81 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i170.i = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 33
  %83 = ptrtoint ptr %s_fs_info.i.i170.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %s_fs_info.i.i170.i, align 16
  %85 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bh.i, align 4
  %b_data.i.i171.i = getelementptr inbounds %struct.buffer_head, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %b_data.i.i171.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %b_data.i.i171.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 8
  %mh_type.i.i172.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %88, i32 0, i32 1
  %91 = ptrtoint ptr %mh_type.i.i172.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mh_type.i.i172.i, align 4
  %conv.i.i173.i = trunc i32 %92 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %90)
  %cmp.not.i.i174.i = icmp eq i32 %90, 18225520
  br i1 %cmp.not.i.i174.i, label %if.end.i.i179.i, label %if.then.i.i177.i, !prof !96

if.then.i.i177.i:                                 ; preds = %land.lhs.true.i175.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i176.i = call i32 @gfs2_meta_check_ii(ptr noundef %84, ptr noundef %86, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i184.i

if.end.i.i179.i:                                  ; preds = %land.lhs.true.i175.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %conv.i.i173.i)
  %cmp5.not.i.i178.i = icmp eq i16 %conv.i.i173.i, 6
  br i1 %cmp5.not.i.i178.i, label %if.end.i.i179.i.if.then66.i_crit_edge, label %if.then13.i.i181.i, !prof !96

if.end.i.i179.i.if.then66.i_crit_edge:            ; preds = %if.end.i.i179.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then66.i

if.then13.i.i181.i:                               ; preds = %if.end.i.i179.i
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i.i180.i = call i32 @gfs2_metatype_check_ii(ptr noundef %84, ptr noundef %86, i16 noundef zeroext 6, i16 noundef zeroext %conv.i.i173.i, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i184.i

gfs2_metatype_check_i.exit.i184.i:                ; preds = %if.then13.i.i181.i, %if.then.i.i177.i
  %retval.0.i.i182.i = phi i32 [ %call.i.i176.i, %if.then.i.i177.i ], [ %call14.i.i180.i, %if.then13.i.i181.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i182.i)
  %tobool3.not.i183.i = icmp eq i32 %retval.0.i.i182.i, 0
  br i1 %tobool3.not.i183.i, label %gfs2_metatype_check_i.exit.i184.i.if.then66.i_crit_edge, label %gfs2_metatype_check_i.exit.i184.i.out_end_trans.i_crit_edge

gfs2_metatype_check_i.exit.i184.i.out_end_trans.i_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i184.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_end_trans.i

gfs2_metatype_check_i.exit.i184.i.if.then66.i_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i184.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then66.i

if.end62.i:                                       ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #18
  %93 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bh.i, align 4
  %b_data63.i = getelementptr inbounds %struct.buffer_head, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %b_data63.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %b_data63.i, align 4
  %lf_next64.i = getelementptr inbounds %struct.gfs2_leaf, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %lf_next64.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %lf_next64.i, align 8
  br label %if.end67.i

if.then66.i:                                      ; preds = %gfs2_metatype_check_i.exit.i184.i.if.then66.i_crit_edge, %if.end.i.i179.i.if.then66.i_crit_edge
  %99 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bh.i, align 4
  %b_data63214.i = getelementptr inbounds %struct.buffer_head, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %b_data63214.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %b_data63214.i, align 4
  %lf_next64215.i = getelementptr inbounds %struct.gfs2_leaf, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %lf_next64215.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %lf_next64215.i, align 8
  %tobool.not.i188.i = icmp eq ptr %100, null
  br i1 %tobool.not.i188.i, label %if.then66.i.if.end67.i_crit_edge, label %if.then.i189.i

if.then66.i.if.end67.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67.i

if.then.i189.i:                                   ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %100) #16
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then.i189.i, %if.then66.i.if.end67.i_crit_edge, %if.end62.i
  %105 = phi i64 [ %98, %if.end62.i ], [ %104, %if.then66.i.if.end67.i_crit_edge ], [ %104, %if.then.i189.i ]
  %call68.i = call ptr @gfs2_blk2rgrpd(ptr noundef %32, i64 noundef %blk.1232.i, i1 noundef zeroext true) #16
  call void @gfs2_free_meta(ptr noundef %dip, ptr noundef %call68.i, i64 noundef %blk.1232.i, i32 noundef 1) #16
  %106 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i61 = zext i8 %107 to i32
  %sub.i.i = add nsw i32 %conv.i.i61, -9
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl nsw i64 -1, %sh_prom.i.i
  %108 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %i_blocks.i.i, align 8
  %sub2.i.i = sub i64 0, %shl.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %109, i64 %sub2.i.i)
  %cmp3.i.i = icmp ult i64 %109, %sub2.i.i
  br i1 %cmp3.i.i, label %if.then.i193.i, label %cleanup.i, !prof !91

if.then.i193.i:                                   ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #18
  %110 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i192.i = getelementptr inbounds %struct.super_block, ptr %111, i32 0, i32 33
  %112 = ptrtoint ptr %s_fs_info.i.i192.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %s_fs_info.i.i192.i, align 16
  call void @gfs2_assert_i(ptr noundef %113) #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #16, !srcloc !102
  unreachable

cleanup.i:                                        ; preds = %if.end67.i
  %add.i.i = add i64 %shl.i.i, %109
  %114 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %add.i.i, ptr %i_blocks.i.i, align 8
  %tobool53.not.i = icmp eq i64 %105, 0
  br i1 %tobool53.not.i, label %for.end71.i, label %cleanup.i.for.body54.i_crit_edge

cleanup.i.for.body54.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body54.i

for.end71.i:                                      ; preds = %cleanup.i
  %mul72.i = shl i32 %index.069, 3
  %conv.i = zext i32 %mul72.i to i64
  %call73.i = call fastcc i32 @gfs2_dir_write_data(ptr noundef %dip, ptr noundef nonnull %ht.0202.i, i64 noundef %conv.i, i32 noundef %mul.i) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call73.i, i32 %mul.i)
  %cmp74.not.i = icmp eq i32 %call73.i, %mul.i
  br i1 %cmp74.not.i, label %if.end81.i, label %if.then76.i

if.then76.i:                                      ; preds = %for.end71.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call73.i)
  %cmp77.i = icmp sgt i32 %call73.i, -1
  %spec.select.i = select i1 %cmp77.i, i32 -5, i32 %call73.i
  br label %out_end_trans.i

if.end81.i:                                       ; preds = %for.end71.i
  %115 = ptrtoint ptr %i_no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %i_no_addr.i.i, align 8
  %call.i194.i = call i32 @gfs2_meta_buffer(ptr noundef %dip, i32 noundef 4, i64 noundef %116, ptr noundef nonnull %dibh.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194.i)
  %tobool83.not.i = icmp eq i32 %call.i194.i, 0
  br i1 %tobool83.not.i, label %if.end85.i, label %if.end81.i.out_end_trans.i_crit_edge

if.end81.i.out_end_trans.i_crit_edge:             ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_end_trans.i

if.end85.i:                                       ; preds = %if.end81.i
  %117 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %i_gl.i, align 4
  %119 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dibh.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %118, ptr noundef %120) #16
  br i1 %cmp14.not.not, label %if.end85.i.if.end89.i_crit_edge, label %if.then87.i

if.end85.i.if.end89.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end89.i

if.then87.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #18
  %121 = ptrtoint ptr %dip to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 -32768, ptr %dip, align 8
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then87.i, %if.end85.i.if.end89.i_crit_edge
  %122 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dibh.i, align 4
  %b_data90.i = getelementptr inbounds %struct.buffer_head, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %b_data90.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %b_data90.i, align 4
  call void @gfs2_dinode_out(ptr noundef %dip, ptr noundef %125) #16
  %126 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dibh.i, align 4
  %tobool.not.i195.i = icmp eq ptr %127, null
  br i1 %tobool.not.i195.i, label %if.end89.i.out_end_trans.i_crit_edge, label %if.then.i196.i

if.end89.i.out_end_trans.i_crit_edge:             ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_end_trans.i

if.then.i196.i:                                   ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %127) #16
  br label %out_end_trans.i

out_end_trans.i:                                  ; preds = %if.then.i196.i, %if.end89.i.out_end_trans.i_crit_edge, %if.end81.i.out_end_trans.i_crit_edge, %if.then76.i, %gfs2_metatype_check_i.exit.i184.i.out_end_trans.i_crit_edge, %if.then57.i.out_end_trans.i_crit_edge
  %error.3.i = phi i32 [ %call.i194.i, %if.end81.i.out_end_trans.i_crit_edge ], [ %spec.select.i, %if.then76.i ], [ 0, %if.end89.i.out_end_trans.i_crit_edge ], [ 0, %if.then.i196.i ], [ -5, %gfs2_metatype_check_i.exit.i184.i.out_end_trans.i_crit_edge ], [ %call.i167.i, %if.then57.i.out_end_trans.i_crit_edge ]
  call void @gfs2_trans_end(ptr noundef %32) #16
  br label %out_rg_gunlock.i

out_rg_gunlock.i:                                 ; preds = %out_end_trans.i, %if.end39.i.out_rg_gunlock.i_crit_edge
  %error.4.i = phi i32 [ %call48.i, %if.end39.i.out_rg_gunlock.i_crit_edge ], [ %error.3.i, %out_end_trans.i ]
  %128 = ptrtoint ptr %rlist.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rlist.i, align 4
  %130 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %3, align 4
  call void @gfs2_glock_dq_m(i32 noundef %129, ptr noundef %131) #16
  br label %out_rlist.i

out_rlist.i:                                      ; preds = %out_rg_gunlock.i, %for.end33.i.out_rlist.i_crit_edge, %gfs2_metatype_check_i.exit.i.i.out_rlist.i_crit_edge, %if.then18.i.out_rlist.i_crit_edge
  %error.5.i = phi i32 [ %call36.i, %for.end33.i.out_rlist.i_crit_edge ], [ %error.4.i, %out_rg_gunlock.i ], [ -5, %gfs2_metatype_check_i.exit.i.i.out_rlist.i_crit_edge ], [ %call.i.i59, %if.then18.i.out_rlist.i_crit_edge ]
  call void @gfs2_rlist_free(ptr noundef nonnull %rlist.i) #16
  call void @gfs2_quota_unhold(ptr noundef %dip) #16
  br label %out.i

out.i:                                            ; preds = %out_rlist.i, %if.end8.i.out.i_crit_edge
  %error.6.i = phi i32 [ %call12.i, %if.end8.i.out.i_crit_edge ], [ %error.5.i, %out_rlist.i ]
  call void @kvfree(ptr noundef nonnull %ht.0202.i) #16
  br label %leaf_dealloc.exit

leaf_dealloc.exit:                                ; preds = %out.i, %if.end5.i.leaf_dealloc.exit_crit_edge, %if.end8.leaf_dealloc.exit_crit_edge
  %retval.0.i = phi i32 [ %error.6.i, %out.i ], [ %call1.i, %if.end8.leaf_dealloc.exit_crit_edge ], [ -12, %if.end5.i.leaf_dealloc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rlist.i) #16
  %132 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bh, align 4
  %tobool.not.i63 = icmp eq ptr %133, null
  br i1 %tobool.not.i63, label %leaf_dealloc.exit.brelse.exit_crit_edge, label %if.then.i

leaf_dealloc.exit.brelse.exit_crit_edge:          ; preds = %leaf_dealloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.then.i:                                        ; preds = %leaf_dealloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %133) #16
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %leaf_dealloc.exit.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool17.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool17.not, label %brelse.exit.if.end20_crit_edge, label %brelse.exit.cleanup_crit_edge

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

brelse.exit.if.end20_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %inc = add nuw i32 %index.069, 1
  br label %if.end20

if.end20:                                         ; preds = %if.else, %brelse.exit.if.end20_crit_edge
  %index.1 = phi i32 [ %inc, %if.else ], [ %add, %brelse.exit.if.end20_crit_edge ]
  %cmp = icmp ult i32 %index.1, %shl
  br i1 %cmp, label %if.end20.while.body_crit_edge, label %while.end

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.end:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1, i32 %shl)
  %cmp21.not = icmp eq i32 %index.1, %shl
  br i1 %cmp21.not, label %while.end.cleanup_crit_edge, label %if.then23

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then23:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @gfs2_consist_inode_i(ptr noundef %dip, ptr noundef nonnull @__func__.gfs2_dir_exhash_dealloc, ptr noundef nonnull @.str, i32 noundef 2138) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %while.end.cleanup_crit_edge, %brelse.exit.cleanup_crit_edge, %gfs2_metatype_check_i.exit.i.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ -5, %if.then23 ], [ 0, %while.end.cleanup_crit_edge ], [ %call.i, %if.then4.cleanup_crit_edge ], [ -5, %gfs2_metatype_check_i.exit.i.cleanup_crit_edge ], [ %retval.0.i, %brelse.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gfs2_dir_get_hash_table(ptr noundef %ip) unnamed_addr #0 align 64 {
entry:
  %dibh.i.i = alloca ptr, align 4
  %dblock.i = alloca i64, align 8
  %extlen.i = alloca i32, align 4
  %bh.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 18
  %0 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_diskflags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !91

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #16, !srcloc !104
  unreachable

do.end9:                                          ; preds = %entry
  %i_hash_cache = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 16
  %2 = ptrtoint ptr %i_hash_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_hash_cache, align 4
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %if.end12, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %i_depth = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 20
  %4 = ptrtoint ptr %i_depth to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_depth, align 1
  %conv = zext i8 %5 to i32
  %mul = shl i32 8, %conv
  %conv13 = zext i32 %mul to i64
  %call = tail call fastcc i64 @i_size_read(ptr noundef %ip)
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %conv13)
  %cmp.not = icmp eq i64 %call, %conv13
  br i1 %cmp.not, label %if.end8.i, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @gfs2_consist_inode_i(ptr noundef %ip, ptr noundef nonnull @__func__.gfs2_dir_get_hash_table, ptr noundef nonnull @.str, i32 noundef 350) #16
  br label %cleanup

if.end8.i:                                        ; preds = %if.end12
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 11328) #19
  %cmp20 = icmp eq ptr %call9.i, null
  br i1 %cmp20, label %if.end24, label %if.end8.i.if.end29_crit_edge

if.end8.i.if.end29_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.end24:                                         ; preds = %if.end8.i
  %call23 = tail call noalias ptr @__vmalloc(i32 noundef %mul, i32 noundef 3136) #19
  %cmp25 = icmp eq ptr %call23, null
  br i1 %cmp25, label %if.end24.cleanup_crit_edge, label %if.end24.if.end29_crit_edge

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end29:                                         ; preds = %if.end24.if.end29_crit_edge, %if.end8.i.if.end29_crit_edge
  %hc.083 = phi ptr [ %call23, %if.end24.if.end29_crit_edge ], [ %call9.i, %if.end8.i.if.end29_crit_edge ]
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dblock.i) #16
  %10 = ptrtoint ptr %dblock.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %dblock.i, align 8, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extlen.i) #16
  %11 = ptrtoint ptr %extlen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %extlen.i, align 4
  %i_height.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 19
  %12 = ptrtoint ptr %i_height.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i_height.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.not.i, label %if.then.i76, label %if.end.i77

if.then.i76:                                      ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh.i.i) #16
  %14 = ptrtoint ptr %dibh.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh.i.i, align 4, !annotation !93
  %i_no_addr.i.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %15 = ptrtoint ptr %i_no_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_no_addr.i.i.i, align 8
  %call.i.i.i = call i32 @gfs2_meta_buffer(ptr noundef %ip, i32 noundef 4, i64 noundef %16, ptr noundef nonnull %dibh.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i382.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i382.i, label %if.then.i.i, label %if.then.i76.gfs2_dir_read_stuffed.exit.i_crit_edge

if.then.i76.gfs2_dir_read_stuffed.exit.i_crit_edge: ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dir_read_stuffed.exit.i

if.then.i.i:                                      ; preds = %if.then.i76
  %17 = ptrtoint ptr %dibh.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dibh.i.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 232
  %21 = call ptr @memcpy(ptr %hc.083, ptr %add.ptr.i.i, i32 %mul)
  %tobool.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.gfs2_dir_read_stuffed.exit.i_crit_edge, label %if.then.i.i.i

if.then.i.i.gfs2_dir_read_stuffed.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dir_read_stuffed.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %18) #16
  br label %gfs2_dir_read_stuffed.exit.i

gfs2_dir_read_stuffed.exit.i:                     ; preds = %if.then.i.i.i, %if.then.i.i.gfs2_dir_read_stuffed.exit.i_crit_edge, %if.then.i76.gfs2_dir_read_stuffed.exit.i_crit_edge
  %size.call.i.i = phi i32 [ %mul, %if.then.i.i.i ], [ %mul, %if.then.i.i.gfs2_dir_read_stuffed.exit.i_crit_edge ], [ %call.i.i.i, %if.then.i76.gfs2_dir_read_stuffed.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i.i) #16
  br label %gfs2_dir_read_data.exit

if.end.i77:                                       ; preds = %if.end29
  %22 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_diskflags, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool4.not.i, label %gfs2_dir_read_data.exit.thread, label %if.end203.i, !prof !91

gfs2_dir_read_data.exit.thread:                   ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @gfs2_assert_warn_i(ptr noundef %9, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.gfs2_dir_read_data, ptr noundef nonnull @.str, i32 noundef 280) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extlen.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dblock.i) #16
  br label %if.then33

if.end203.i:                                      ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %5)
  %cmp206432.not.i = icmp ugt i8 %5, 28
  br i1 %cmp206432.not.i, label %gfs2_dir_read_data.exit.thread87, label %while.body.lr.ph.i

gfs2_dir_read_data.exit.thread87:                 ; preds = %if.end203.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extlen.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dblock.i) #16
  br label %if.end35

while.body.lr.ph.i:                               ; preds = %if.end203.i
  %sb_bsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %9, i32 0, i32 5, i32 4
  %i_gl243.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %buf.addr.0437.i = phi ptr [ %hc.083, %while.body.lr.ph.i ], [ %add.ptr254.i, %cleanup.i.while.body.i_crit_edge ]
  %copied.0435.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add255.i, %cleanup.i.while.body.i_crit_edge ]
  %lblock.1433.i = phi i64 [ 0, %while.body.lr.ph.i ], [ %inc256.i, %cleanup.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #16
  %24 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !93
  %sub208.i = sub i32 %mul, %copied.0435.i
  %25 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sb_bsize.i, align 8
  %sub209.i = add i32 %26, -24
  %27 = call i32 @llvm.umin.i32(i32 %sub208.i, i32 %sub209.i) #16
  %28 = ptrtoint ptr %extlen.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %extlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool217.not.i = icmp eq i32 %29, 0
  br i1 %tobool217.not.i, label %if.then218.i, label %if.else242.i

if.then218.i:                                     ; preds = %while.body.i
  %30 = ptrtoint ptr %extlen.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 32, ptr %extlen.i, align 4
  %call220.i = call i32 @gfs2_get_extent(ptr noundef %ip, i64 noundef %lblock.1433.i, ptr noundef nonnull %dblock.i, ptr noundef nonnull %extlen.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220.i)
  %tobool221.not.i = icmp eq i32 %call220.i, 0
  br i1 %tobool221.not.i, label %lor.lhs.false.i, label %if.then218.i.fail.i_crit_edge

if.then218.i.fail.i_crit_edge:                    ; preds = %if.then218.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail.i

lor.lhs.false.i:                                  ; preds = %if.then218.i
  %31 = ptrtoint ptr %dblock.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %dblock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool222.not.i = icmp eq i64 %32, 0
  br i1 %tobool222.not.i, label %lor.lhs.false.i.fail.i_crit_edge, label %do.body.i

lor.lhs.false.i.fail.i_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail.i

do.body.i:                                        ; preds = %lor.lhs.false.i
  %33 = ptrtoint ptr %extlen.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %extlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp225.i = icmp eq i32 %34, 0
  br i1 %cmp225.i, label %do.body234.i, label %do.end240.i, !prof !91

do.body234.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #16, !srcloc !105
  unreachable

do.end240.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %i_gl243.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_gl243.i, align 4
  %call241.i = call ptr @gfs2_meta_ra(ptr noundef %36, i64 noundef %32, i32 noundef %34) #16
  %37 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call241.i, ptr %bh.i, align 4
  br label %if.end248.i

if.else242.i:                                     ; preds = %while.body.i
  %38 = ptrtoint ptr %i_gl243.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_gl243.i, align 4
  %40 = ptrtoint ptr %dblock.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %dblock.i, align 8
  %call244.i = call i32 @gfs2_meta_read(ptr noundef %39, i64 noundef %41, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %bh.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244.i)
  %tobool245.not.i = icmp eq i32 %call244.i, 0
  br i1 %tobool245.not.i, label %if.else242.i.if.end248.i_crit_edge, label %if.else242.i.fail.i_crit_edge

if.else242.i.fail.i_crit_edge:                    ; preds = %if.else242.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail.i

if.else242.i.if.end248.i_crit_edge:               ; preds = %if.else242.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end248.i

if.end248.i:                                      ; preds = %if.else242.i.if.end248.i_crit_edge, %do.end240.i
  %42 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bh.i, align 4
  %b_data.i386.i = getelementptr inbounds %struct.buffer_head, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %b_data.i386.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %b_data.i386.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %mh_type.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %mh_type.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mh_type.i.i, align 4
  %conv.i387.i = trunc i32 %49 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %47)
  %cmp.not.i388.i = icmp eq i32 %47, 18225520
  br i1 %cmp.not.i388.i, label %if.end.i.i78, label %if.then.i389.i, !prof !96

if.then.i389.i:                                   ; preds = %if.end248.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = call i32 @gfs2_meta_check_ii(ptr noundef %9, ptr noundef %43, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.gfs2_dir_read_data, ptr noundef nonnull @.str, i32 noundef 307) #16
  br label %gfs2_metatype_check_i.exit.i

if.end.i.i78:                                     ; preds = %if.end248.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %conv.i387.i)
  %cmp5.not.i.i = icmp eq i16 %conv.i387.i, 7
  br i1 %cmp5.not.i.i, label %if.end.i.i78.if.end252.i_crit_edge, label %if.then13.i.i, !prof !96

if.end.i.i78.if.end252.i_crit_edge:               ; preds = %if.end.i.i78
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end252.i

if.then13.i.i:                                    ; preds = %if.end.i.i78
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i.i = call i32 @gfs2_metatype_check_ii(ptr noundef %9, ptr noundef %43, i16 noundef zeroext 7, i16 noundef zeroext %conv.i387.i, ptr noundef nonnull @__func__.gfs2_dir_read_data, ptr noundef nonnull @.str, i32 noundef 307) #16
  br label %gfs2_metatype_check_i.exit.i

gfs2_metatype_check_i.exit.i:                     ; preds = %if.then13.i.i, %if.then.i389.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i389.i ], [ %call14.i.i, %if.then13.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool250.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool250.not.i, label %gfs2_metatype_check_i.exit.i.if.end252.i_crit_edge, label %if.then251.i

gfs2_metatype_check_i.exit.i.if.end252.i_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end252.i

if.then251.i:                                     ; preds = %gfs2_metatype_check_i.exit.i
  %50 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bh.i, align 4
  %tobool.not.i390.i = icmp eq ptr %51, null
  br i1 %tobool.not.i390.i, label %if.then251.i.fail.i_crit_edge, label %if.then.i391.i

if.then251.i.fail.i_crit_edge:                    ; preds = %if.then251.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail.i

if.then.i391.i:                                   ; preds = %if.then251.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %51) #16
  br label %fail.i

if.end252.i:                                      ; preds = %gfs2_metatype_check_i.exit.i.if.end252.i_crit_edge, %if.end.i.i78.if.end252.i_crit_edge
  %52 = ptrtoint ptr %dblock.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %dblock.i, align 8
  %inc.i = add i64 %53, 1
  store i64 %inc.i, ptr %dblock.i, align 8
  %54 = ptrtoint ptr %extlen.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %extlen.i, align 4
  %dec.i = add i32 %55, -1
  store i32 %dec.i, ptr %extlen.i, align 4
  %56 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %59, i32 24
  %60 = call ptr @memcpy(ptr %buf.addr.0437.i, ptr %add.ptr.i, i32 %27)
  %tobool.not.i393.i = icmp eq ptr %57, null
  br i1 %tobool.not.i393.i, label %if.end252.i.cleanup.i_crit_edge, label %if.then.i394.i

if.end252.i.cleanup.i_crit_edge:                  ; preds = %if.end252.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

if.then.i394.i:                                   ; preds = %if.end252.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %57) #16
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i394.i, %if.end252.i.cleanup.i_crit_edge
  %div253379.i = lshr i32 %27, 3
  %add.ptr254.i = getelementptr i64, ptr %buf.addr.0437.i, i32 %div253379.i
  %add255.i = add i32 %27, %copied.0435.i
  %inc256.i = add i64 %lblock.1433.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #16
  %cmp206.i = icmp ult i32 %add255.i, %mul
  br i1 %cmp206.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.gfs2_dir_read_data.exit_crit_edge

cleanup.i.gfs2_dir_read_data.exit_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dir_read_data.exit

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

fail.i:                                           ; preds = %if.then.i391.i, %if.then251.i.fail.i_crit_edge, %if.else242.i.fail.i_crit_edge, %lor.lhs.false.i.fail.i_crit_edge, %if.then218.i.fail.i_crit_edge
  %error.0.ph.i = phi i32 [ %retval.0.i.i, %if.then.i391.i ], [ %retval.0.i.i, %if.then251.i.fail.i_crit_edge ], [ %call220.i, %if.then218.i.fail.i_crit_edge ], [ 0, %lor.lhs.false.i.fail.i_crit_edge ], [ %call244.i, %if.else242.i.fail.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0435.i)
  %tobool258.not.i = icmp eq i32 %copied.0435.i, 0
  %error.0.copied.1.i = select i1 %tobool258.not.i, i32 %error.0.ph.i, i32 %copied.0435.i
  br label %gfs2_dir_read_data.exit

gfs2_dir_read_data.exit:                          ; preds = %fail.i, %cleanup.i.gfs2_dir_read_data.exit_crit_edge, %gfs2_dir_read_stuffed.exit.i
  %retval.0.i = phi i32 [ %size.call.i.i, %gfs2_dir_read_stuffed.exit.i ], [ %error.0.copied.1.i, %fail.i ], [ %add255.i, %cleanup.i.gfs2_dir_read_data.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extlen.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dblock.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp31 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp31, label %gfs2_dir_read_data.exit.if.then33_crit_edge, label %gfs2_dir_read_data.exit.if.end35_crit_edge

gfs2_dir_read_data.exit.if.end35_crit_edge:       ; preds = %gfs2_dir_read_data.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

gfs2_dir_read_data.exit.if.then33_crit_edge:      ; preds = %gfs2_dir_read_data.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then33

if.then33:                                        ; preds = %gfs2_dir_read_data.exit.if.then33_crit_edge, %gfs2_dir_read_data.exit.thread
  %retval.0.i86 = phi i32 [ -22, %gfs2_dir_read_data.exit.thread ], [ %retval.0.i, %gfs2_dir_read_data.exit.if.then33_crit_edge ]
  call void @kvfree(ptr noundef nonnull %hc.083) #16
  %61 = inttoptr i32 %retval.0.i86 to ptr
  br label %cleanup

if.end35:                                         ; preds = %gfs2_dir_read_data.exit.if.end35_crit_edge, %gfs2_dir_read_data.exit.thread87
  %i_lock = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock) #16
  %62 = ptrtoint ptr %i_hash_cache to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_hash_cache, align 4
  %tobool37.not = icmp eq ptr %63, null
  br i1 %tobool37.not, label %if.then46, label %if.end35.if.end48_crit_edge, !prof !96

if.end35.if.end48_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.then46:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %64 = ptrtoint ptr %i_hash_cache to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %hc.083, ptr %i_hash_cache, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end35.if.end48_crit_edge
  %hc.1 = phi ptr [ null, %if.then46 ], [ %hc.083, %if.end35.if.end48_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %i_lock) #16
  call void @kvfree(ptr noundef %hc.1) #16
  %65 = ptrtoint ptr %i_hash_cache to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_hash_cache, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then33, %if.end24.cleanup_crit_edge, %if.then16, %do.end9.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %if.then16 ], [ %61, %if.then33 ], [ %66, %if.end48 ], [ %3, %do.end9.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_diradd_alloc_required(ptr noundef %inode, ptr noundef %name, ptr nocapture noundef %da) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #16
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !93
  %5 = ptrtoint ptr %da to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %da, align 4
  %bh2 = getelementptr inbounds %struct.gfs2_diradd, ptr %da, i32 0, i32 2
  %6 = ptrtoint ptr %bh2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bh2, align 4
  %dent3 = getelementptr inbounds %struct.gfs2_diradd, ptr %da, i32 0, i32 1
  %7 = ptrtoint ptr %dent3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dent3, align 4
  %call4 = call fastcc ptr @gfs2_dirent_search(ptr noundef %inode, ptr noundef %name, ptr noundef nonnull @gfs2_dirent_find_space, ptr noundef nonnull %bh)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %sd_max_dirres = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %sd_max_dirres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sd_max_dirres, align 4
  %10 = ptrtoint ptr %da to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %da, align 4
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 18
  %11 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_diskflags, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %name, align 8
  %add7 = add i32 %14, 47
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add7)
  %cmp = icmp ult i32 %add7, 128
  br i1 %cmp, label %if.then9, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %da to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %da, align 4
  br label %cleanup

if.end11:                                         ; preds = %entry
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %save_loc = getelementptr inbounds %struct.gfs2_diradd, ptr %da, i32 0, i32 3
  %17 = ptrtoint ptr %save_loc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %save_loc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16.not = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bh, align 4
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %bh2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %bh2, align 4
  %22 = ptrtoint ptr %dent3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call4, ptr %dent3, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end15
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.else.cleanup_crit_edge, label %if.then.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__brelse(ptr noundef nonnull %20) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.else.cleanup_crit_edge, %if.then17, %if.then13, %if.then9, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then13 ], [ 0, %if.then9 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_getbuf(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_read_sync(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_buffer(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @compare_dents(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %2 = getelementptr inbounds %struct.gfs2_dirent, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b, align 4
  %7 = getelementptr inbounds %struct.gfs2_dirent, ptr %6, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %9)
  %cmp = icmp ugt i32 %4, %9
  br i1 %cmp, label %entry.if.end18_crit_edge, label %if.else

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %9)
  %cmp2 = icmp ult i32 %4, %9
  br i1 %cmp2, label %if.else.if.end18_crit_edge, label %if.else4

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.else4:                                         ; preds = %if.else
  %de_name_len = getelementptr inbounds %struct.gfs2_dirent, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %de_name_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %de_name_len, align 2
  %conv = zext i16 %11 to i32
  %de_name_len5 = getelementptr inbounds %struct.gfs2_dirent, ptr %6, i32 0, i32 3
  %12 = ptrtoint ptr %de_name_len5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %de_name_len5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp7 = icmp ugt i16 %11, %13
  br i1 %cmp7, label %if.else4.if.end18_crit_edge, label %if.else10

if.else4.if.end18_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.else10:                                        ; preds = %if.else4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp11 = icmp ult i16 %11, %13
  br i1 %cmp11, label %if.else10.if.end18_crit_edge, label %if.else14

if.else10.if.end18_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.else14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr %struct.gfs2_dirent, ptr %1, i32 1
  %add.ptr15 = getelementptr %struct.gfs2_dirent, ptr %6, i32 1
  %call = tail call i32 @memcmp(ptr noundef %add.ptr, ptr noundef %add.ptr15, i32 noundef %conv) #23
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.else10.if.end18_crit_edge, %if.else4.if.end18_crit_edge, %if.else.if.end18_crit_edge, %entry.if.end18_crit_edge
  %ret.1 = phi i32 [ 1, %entry.if.end18_crit_edge ], [ -1, %if.else.if.end18_crit_edge ], [ %call, %if.else14 ], [ 1, %if.else4.if.end18_crit_edge ], [ -1, %if.else10.if.end18_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !106
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @trace_hardirqs_off() #16
  %1 = tail call ptr @llvm.returnaddress(i32 0) #16
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #16
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #16
  tail call void @trace_hardirqs_on() #16
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %3 = tail call ptr @llvm.returnaddress(i32 0) #16
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #16
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #16
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !107
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !91

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #16, !srcloc !108
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !109
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !110
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !111
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !112
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_first_leaf(ptr noundef %dip, i32 noundef %index, ptr noundef %bh_out) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @gfs2_dir_get_hash_table(ptr noundef %dip) #16
  %cmp.i.i.i.not = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call.i to i32
  br i1 %cmp.i.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i64, ptr %call.i, i32 %index
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %add.ptr.i, align 8
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %dip, i32 0, i32 6
  %3 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_gl.i, align 4
  %call.i4 = tail call i32 @gfs2_meta_read(ptr noundef %4, i64 noundef %2, i32 noundef 16, i32 noundef 0, ptr noundef %bh_out) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i5 = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  %9 = ptrtoint ptr %bh_out to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bh_out, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_data.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %mh_type.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %mh_type.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mh_type.i.i, align 4
  %conv.i.i = trunc i32 %16 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %14)
  %cmp.not.i.i = icmp eq i32 %14, 18225520
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !96

if.then.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call i32 @gfs2_meta_check_ii(ptr noundef %8, ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %conv.i.i)
  %cmp5.not.i.i = icmp eq i16 %conv.i.i, 6
  br i1 %cmp5.not.i.i, label %if.end.i.i.gfs2_metatype_check_i.exit.thread.i_crit_edge, label %if.then13.i.i, !prof !96

if.end.i.i.gfs2_metatype_check_i.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_metatype_check_i.exit.thread.i

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i.i = tail call i32 @gfs2_metatype_check_ii(ptr noundef %8, ptr noundef %10, i16 noundef zeroext 6, i16 noundef zeroext %conv.i.i, ptr noundef nonnull @__func__.get_leaf, ptr noundef nonnull @.str, i32 noundef 761) #16
  br label %gfs2_metatype_check_i.exit.i

gfs2_metatype_check_i.exit.i:                     ; preds = %if.then13.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call14.i.i, %if.then13.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool3.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool3.not.i, label %gfs2_metatype_check_i.exit.i.gfs2_metatype_check_i.exit.thread.i_crit_edge, label %gfs2_metatype_check_i.exit.i.if.end_crit_edge

gfs2_metatype_check_i.exit.i.if.end_crit_edge:    ; preds = %gfs2_metatype_check_i.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

gfs2_metatype_check_i.exit.i.gfs2_metatype_check_i.exit.thread.i_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_metatype_check_i.exit.thread.i

gfs2_metatype_check_i.exit.thread.i:              ; preds = %gfs2_metatype_check_i.exit.i.gfs2_metatype_check_i.exit.thread.i_crit_edge, %if.end.i.i.gfs2_metatype_check_i.exit.thread.i_crit_edge
  br label %if.end

if.end:                                           ; preds = %gfs2_metatype_check_i.exit.thread.i, %gfs2_metatype_check_i.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %0, %entry.if.end_crit_edge ], [ %call.i4, %if.then.if.end_crit_edge ], [ 0, %gfs2_metatype_check_i.exit.thread.i ], [ -5, %gfs2_metatype_check_i.exit.i.if.end_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @new_leaf(ptr noundef %inode, ptr nocapture noundef writeonly %pbh, i16 noundef zeroext %depth) unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  %bn = alloca i64, align 8
  %tv = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #16
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %n, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bn) #16
  %1 = ptrtoint ptr %bn to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %bn, align 8, !annotation !93
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv) #16
  %2 = call ptr @memset(ptr %tv, i32 255, i32 16)
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tv, ptr noundef %inode) #16
  %call1 = call i32 @gfs2_alloc_blocks(ptr noundef %inode, ptr noundef nonnull %bn, ptr noundef nonnull %n, i1 noundef zeroext false, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %3 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_gl, align 4
  %5 = ptrtoint ptr %bn to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bn, align 8
  %call2 = call ptr @gfs2_meta_new(ptr noundef %4, i64 noundef %6) #16
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %11 = ptrtoint ptr %bn to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bn, align 8
  call void @gfs2_trans_remove_revoke(ptr noundef %10, i64 noundef %12, i32 noundef 1) #16
  %13 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_gl, align 4
  call void @gfs2_trans_add_meta(ptr noundef %14, ptr noundef nonnull %call2) #16
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call2, i32 0, i32 5
  %15 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data.i, align 4
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %mh_type.i, align 4
  %mh_format.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %16, i32 0, i32 3
  %18 = ptrtoint ptr %mh_format.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 600, ptr %mh_format.i, align 8
  %19 = load ptr, ptr %b_data.i, align 4
  %lf_depth = getelementptr inbounds %struct.gfs2_leaf, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %lf_depth to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %depth, ptr %lf_depth, align 8
  %lf_entries = getelementptr inbounds %struct.gfs2_leaf, ptr %19, i32 0, i32 2
  %21 = ptrtoint ptr %lf_entries to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %lf_entries, align 2
  %lf_dirent_format = getelementptr inbounds %struct.gfs2_leaf, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %lf_dirent_format to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1200, ptr %lf_dirent_format, align 4
  %lf_next = getelementptr inbounds %struct.gfs2_leaf, ptr %19, i32 0, i32 4
  %23 = ptrtoint ptr %lf_next to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %lf_next, align 8
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %24 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_no_addr, align 8
  %26 = getelementptr inbounds %struct.gfs2_leaf, ptr %19, i32 0, i32 5
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %25, ptr %26, align 8
  %lf_dist = getelementptr inbounds %struct.gfs2_leaf, ptr %19, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %lf_dist to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %lf_dist, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %tv, i32 0, i32 1
  %29 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tv_nsec, align 8
  %lf_nsec = getelementptr inbounds %struct.gfs2_leaf, ptr %19, i32 0, i32 5, i32 0, i32 2
  %31 = ptrtoint ptr %lf_nsec to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %lf_nsec, align 4
  %32 = ptrtoint ptr %tv to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tv, align 8
  %lf_sec = getelementptr inbounds %struct.gfs2_leaf, ptr %19, i32 0, i32 5, i32 0, i32 3
  %34 = ptrtoint ptr %lf_sec to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %lf_sec, align 8
  %lf_reserved2 = getelementptr inbounds %struct.gfs2_leaf, ptr %19, i32 0, i32 5, i32 0, i32 4
  %35 = call ptr @memset(ptr %lf_reserved2, i32 0, i32 40)
  %add.ptr = getelementptr %struct.gfs2_leaf, ptr %19, i32 1
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %call2, i32 0, i32 4
  %36 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %b_size, align 8
  %38 = trunc i32 %37 to i16
  %conv = add i16 %38, -104
  %39 = call ptr @memset(ptr %add.ptr, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.anon.3, ptr @empty_name, i32 0, i32 1) to i32))
  %40 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr @empty_name, i32 0, i32 1), align 4
  %de_hash.i = getelementptr %struct.gfs2_leaf, ptr %19, i32 1, i32 0, i32 3
  %41 = ptrtoint ptr %de_hash.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %de_hash.i, align 8
  %de_rec_len.i = getelementptr %struct.gfs2_leaf, ptr %19, i32 1, i32 0, i32 4
  %42 = ptrtoint ptr %de_rec_len.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv, ptr %de_rec_len.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_name to i32))
  %43 = load i32, ptr @empty_name, align 8
  %conv.i = trunc i32 %43 to i16
  %de_name_len.i = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr, i32 0, i32 3
  %44 = ptrtoint ptr %de_name_len.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i, ptr %de_name_len.i, align 2
  %de_type.i = getelementptr %struct.gfs2_leaf, ptr %19, i32 1, i32 1
  %45 = ptrtoint ptr %de_type.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %de_type.i, align 8
  %46 = getelementptr %struct.gfs2_leaf, ptr %19, i32 1, i32 3
  %47 = call ptr @memset(ptr %46, i32 0, i32 12)
  %add.ptr.i = getelementptr %struct.gfs2_leaf, ptr %19, i32 1, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.qstr, ptr @empty_name, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.qstr, ptr @empty_name, i32 0, i32 1), align 8
  %49 = call ptr @memcpy(ptr %add.ptr.i, ptr %48, i32 %43)
  %50 = ptrtoint ptr %pbh to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call2, ptr %pbh, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %19, %if.end5 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bn) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #16
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_i(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gfs2_dirent_last(ptr noundef %dent, ptr nocapture noundef readonly %name, ptr nocapture noundef readnone %opaque) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %name1 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %de_rec_len = getelementptr inbounds %struct.gfs2_dirent, ptr %dent, i32 0, i32 2
  %2 = ptrtoint ptr %de_rec_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %de_rec_len, align 4
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %dent, i32 %conv
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %name, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub.ptr.sub)
  %cmp = icmp eq i32 %5, %sub.ptr.sub
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !81) #16
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !114
  %9 = tail call i32 @llvm.read_register.i32(metadata !81) #16
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
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !115
  %18 = tail call i32 @llvm.read_register.i32(metadata !81) #16
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !81) #16
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !81) #16
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !116
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !117
  %37 = tail call i32 @llvm.read_register.i32(metadata !81) #16
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !96

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !118
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #16
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #16
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !119
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !120
  %48 = tail call i32 @llvm.read_register.i32(metadata !81) #16
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_add_inode_blocks(ptr nocapture noundef %inode, i64 noundef %change) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -9
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %change, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shl)
  %cmp = icmp sgt i64 %shl, -1
  br i1 %cmp, label %entry.do.end10_crit_edge, label %lor.rhs

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

lor.rhs:                                          ; preds = %entry
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %2 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_blocks, align 8
  %sub2 = sub i64 0, %shl
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %sub2)
  %cmp3 = icmp ult i64 %3, %sub2
  br i1 %cmp3, label %if.then, label %lor.rhs.do.end10_crit_edge, !prof !91

lor.rhs.do.end10_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

if.then:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @gfs2_assert_i(ptr noundef %7) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #16, !srcloc !102
  unreachable

do.end10:                                         ; preds = %lor.rhs.do.end10_crit_edge, %entry.do.end10_crit_edge
  %i_blocks11 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %8 = ptrtoint ptr %i_blocks11 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_blocks11, align 8
  %add = add i64 %9, %shl
  store i64 %add, ptr %i_blocks11, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_dinode_out(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_alloc_blocks(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_remove_revoke(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_dir_write_data(ptr noundef %ip, ptr nocapture noundef readonly %buf, i64 noundef %offset, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  %dibh.i = alloca ptr, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  %dibh = alloca ptr, align 4
  %dblock = alloca i64, align 8
  %extlen = alloca i32, align 4
  %new = alloca i8, align 1
  %tmp299 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh) #16
  %4 = ptrtoint ptr %dibh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dblock) #16
  %5 = ptrtoint ptr %dblock to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %dblock, align 8, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extlen) #16
  %6 = ptrtoint ptr %extlen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %extlen, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new) #16
  %7 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %new, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %entry.cleanup306_crit_edge, label %if.end

entry.cleanup306_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup306

if.end:                                           ; preds = %entry
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 19
  %8 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.not = icmp eq i8 %9, 0
  br i1 %tobool.not.i.not, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %conv = zext i32 %size to i64
  %add = add i64 %conv, %offset
  %sb_bsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_bsize.i, align 8
  %sub.i = add i32 %11, -232
  %conv4 = zext i32 %sub.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv4)
  %cmp.not = icmp ugt i64 %add, %conv4
  br i1 %cmp.not, label %if.end9.thread, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh.i) #16
  %12 = ptrtoint ptr %dibh.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh.i, align 4, !annotation !93
  %i_no_addr.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %13 = ptrtoint ptr %i_no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_no_addr.i.i, align 8
  %call.i.i = call i32 @gfs2_meta_buffer(ptr noundef %ip, i32 noundef 4, i64 noundef %14, ptr noundef nonnull %dibh.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i449 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i449, label %if.end.i, label %if.then6.gfs2_dir_write_stuffed.exit_crit_edge

if.then6.gfs2_dir_write_stuffed.exit_crit_edge:   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dir_write_stuffed.exit

if.end.i:                                         ; preds = %if.then6
  %conv7 = trunc i64 %offset to i32
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %15 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_gl.i, align 4
  %17 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dibh.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %16, ptr noundef %18) #16
  %19 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dibh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %conv7
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 232
  %23 = call ptr @memcpy(ptr %add.ptr1.i, ptr %buf, i32 %size)
  %i_size.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %24 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_size.i, align 8
  %add.i = add i32 %conv7, %size
  %conv.i = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %conv.i)
  %cmp.i = icmp slt i64 %25, %conv.i
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @i_size_write(ptr noundef %ip, i64 noundef %conv.i) #16
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %if.end.i.if.end7.i_crit_edge
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %ip) #16
  %26 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #16
  %27 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %28 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dibh.i, align 4
  %b_data11.i = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %b_data11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_data11.i, align 4
  call void @gfs2_dinode_out(ptr noundef %ip, ptr noundef %31) #16
  %32 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dibh.i, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.end7.i.gfs2_dir_write_stuffed.exit_crit_edge, label %if.then.i.i

if.end7.i.gfs2_dir_write_stuffed.exit_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dir_write_stuffed.exit

if.then.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %33) #16
  br label %gfs2_dir_write_stuffed.exit

gfs2_dir_write_stuffed.exit:                      ; preds = %if.then.i.i, %if.end7.i.gfs2_dir_write_stuffed.exit_crit_edge, %if.then6.gfs2_dir_write_stuffed.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.then6.gfs2_dir_write_stuffed.exit_crit_edge ], [ %size, %if.end7.i.gfs2_dir_write_stuffed.exit_crit_edge ], [ %size, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #16
  br label %cleanup306

if.end9:                                          ; preds = %if.end
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 18
  %34 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_diskflags.i, align 4
  %and.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not = icmp eq i32 %and.i, 0
  br i1 %tobool11.not, label %if.end9.if.then16_crit_edge, label %if.end9.if.end31_crit_edge, !prof !91

if.end9.if.end31_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.end9.if.then16_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16

if.end9.thread:                                   ; preds = %land.lhs.true
  %i_diskflags.i486 = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 18
  %36 = ptrtoint ptr %i_diskflags.i486 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_diskflags.i486, align 4
  %and.i487 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i487)
  %tobool11.not488 = icmp eq i32 %and.i487, 0
  br i1 %tobool11.not488, label %if.end9.thread.if.then16_crit_edge, label %if.then26, !prof !91

if.end9.thread.if.then16_crit_edge:               ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16

if.then16:                                        ; preds = %if.end9.thread.if.then16_crit_edge, %if.end9.if.then16_crit_edge
  tail call void @gfs2_assert_warn_i(ptr noundef %3, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.gfs2_dir_write_data, ptr noundef nonnull @.str, i32 noundef 171) #16
  br label %cleanup306

if.then26:                                        ; preds = %if.end9.thread
  %call27 = tail call i32 @gfs2_unstuff_dinode(ptr noundef %ip) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end31_crit_edge, label %if.then26.cleanup306_crit_edge

if.then26.cleanup306_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup306

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.end31:                                         ; preds = %if.then26.if.end31_crit_edge, %if.end9.if.end31_crit_edge
  %sd_jbsize = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 11
  %38 = ptrtoint ptr %sd_jbsize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sd_jbsize, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %offset)
  %cmp205 = icmp ult i64 %offset, 4294967296
  br i1 %cmp205, label %if.then213, label %if.else219, !prof !96

if.then213:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  %conv214 = trunc i64 %offset to i32
  %.frozen = freeze i32 %39
  %div217 = udiv i32 %conv214, %.frozen
  %40 = mul i32 %div217, %.frozen
  %rem215.decomposed = sub i32 %conv214, %40
  %conv218 = zext i32 %div217 to i64
  br label %while.body.lr.ph

if.else219:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  %41 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %39, i64 %offset) #24, !srcloc !121
  %asmresult.i456 = extractvalue { i64, i64 } %41, 0
  %asmresult1.i = extractvalue { i64, i64 } %41, 1
  %shr.i = lshr i64 %asmresult.i456, 32
  %conv.i457 = trunc i64 %shr.i to i32
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.else219, %if.then213
  %lblock.0 = phi i64 [ %conv218, %if.then213 ], [ %asmresult1.i, %if.else219 ]
  %__rem.0 = phi i32 [ %rem215.decomposed, %if.then213 ], [ %conv.i457, %if.else219 ]
  %sb_bsize = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 5, i32 4
  %add225 = add i32 %__rem.0, 24
  %i_gl.i459 = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.0541 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr279, %cleanup.while.body_crit_edge ]
  %o.0540 = phi i32 [ %add225, %while.body.lr.ph ], [ 24, %cleanup.while.body_crit_edge ]
  %copied.0536 = phi i32 [ 0, %while.body.lr.ph ], [ %add280, %cleanup.while.body_crit_edge ]
  %lblock.1535 = phi i64 [ %lblock.0, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %sub228 = sub i32 %size, %copied.0536
  %42 = ptrtoint ptr %sb_bsize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sb_bsize, align 8
  %sub229 = sub i32 %43, %o.0540
  %44 = call i32 @llvm.umin.i32(i32 %sub228, i32 %sub229)
  %45 = ptrtoint ptr %extlen to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %extlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool237.not = icmp eq i32 %46, 0
  br i1 %tobool237.not, label %if.then238, label %while.body.if.end265_crit_edge

while.body.if.end265_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end265

if.then238:                                       ; preds = %while.body
  %47 = ptrtoint ptr %extlen to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %extlen, align 4
  %call240 = call i32 @gfs2_alloc_extent(ptr noundef %ip, i64 noundef %lblock.1535, ptr noundef nonnull %dblock, ptr noundef nonnull %extlen, ptr noundef nonnull %new) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.end243, label %if.then238.fail_crit_edge

if.then238.fail_crit_edge:                        ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail

if.end243:                                        ; preds = %if.then238
  %48 = ptrtoint ptr %dblock to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %dblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %49)
  %tobool245.not = icmp eq i64 %49, 0
  br i1 %tobool245.not, label %if.then256, label %if.end243.if.end265_crit_edge, !prof !91

if.end243.if.end265_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end265

if.then256:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #18
  call void @gfs2_assert_withdraw_i(ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.gfs2_dir_write_data, ptr noundef nonnull @.str, i32 noundef 198, i1 noundef zeroext false) #16
  br label %fail

if.end265:                                        ; preds = %if.end243.if.end265_crit_edge, %while.body.if.end265_crit_edge
  %50 = ptrtoint ptr %sd_jbsize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sd_jbsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %51)
  %cmp267 = icmp eq i32 %44, %51
  br i1 %cmp267, label %if.end265.if.then271_crit_edge, label %lor.lhs.false

if.end265.if.then271_crit_edge:                   ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then271

lor.lhs.false:                                    ; preds = %if.end265
  %52 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %new, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool269.not = icmp eq i8 %53, 0
  br i1 %tobool269.not, label %if.else273, label %lor.lhs.false.if.then271_crit_edge

lor.lhs.false.if.then271_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then271

if.then271:                                       ; preds = %lor.lhs.false.if.then271_crit_edge, %if.end265.if.then271_crit_edge
  %54 = ptrtoint ptr %dblock to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %dblock, align 8
  %56 = ptrtoint ptr %i_gl.i459 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_gl.i459, align 4
  %call.i = call ptr @gfs2_meta_new(ptr noundef %57, i64 noundef %55) #16
  %58 = ptrtoint ptr %i_gl.i459 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i_gl.i459, align 4
  call void @gfs2_trans_add_meta(ptr noundef %59, ptr noundef %call.i) #16
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %60 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_data.i.i, align 4
  %mh_type.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %mh_type.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 7, ptr %mh_type.i.i, align 4
  %mh_format.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %61, i32 0, i32 3
  %63 = ptrtoint ptr %mh_format.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 700, ptr %mh_format.i.i, align 8
  %b_size.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 4
  %64 = ptrtoint ptr %b_size.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %b_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %65)
  %cmp.i.i = icmp ult i32 %65, 24
  br i1 %cmp.i.i, label %do.body2.i.i, label %if.end275.thread, !prof !91

do.body2.i.i:                                     ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #16, !srcloc !92
  unreachable

if.end275.thread:                                 ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #18
  %66 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %67, i32 24
  %sub.i.i = add i32 %65, -24
  %68 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  br label %if.end278

if.else273:                                       ; preds = %lor.lhs.false
  %69 = ptrtoint ptr %dblock to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %dblock, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #16
  %71 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !93
  %72 = ptrtoint ptr %i_gl.i459 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_gl.i459, align 4
  %call.i460 = call i32 @gfs2_meta_read(ptr noundef %73, i64 noundef %70, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %bh.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i460)
  %tobool.not.i461 = icmp eq i32 %call.i460, 0
  br i1 %tobool.not.i461, label %if.end.i466, label %if.else273.if.end275.thread511_crit_edge

if.else273.if.end275.thread511_crit_edge:         ; preds = %if.else273
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end275.thread511

if.end.i466:                                      ; preds = %if.else273
  %74 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i463 = getelementptr inbounds %struct.super_block, ptr %75, i32 0, i32 33
  %76 = ptrtoint ptr %s_fs_info.i.i463 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %s_fs_info.i.i463, align 16
  %78 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bh.i, align 4
  %b_data.i.i464 = getelementptr inbounds %struct.buffer_head, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %b_data.i.i464 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %b_data.i.i464, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %mh_type.i.i465 = getelementptr inbounds %struct.gfs2_meta_header, ptr %81, i32 0, i32 1
  %84 = ptrtoint ptr %mh_type.i.i465 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mh_type.i.i465, align 4
  %conv.i.i = trunc i32 %85 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %83)
  %cmp.not.i.i = icmp eq i32 %83, 18225520
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i468, !prof !96

if.then.i.i468:                                   ; preds = %if.end.i466
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i467 = call i32 @gfs2_meta_check_ii(ptr noundef %77, ptr noundef %79, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.gfs2_dir_get_existing_buffer, ptr noundef nonnull @.str, i32 noundef 111) #16
  br label %gfs2_metatype_check_i.exit.i

if.end.i.i:                                       ; preds = %if.end.i466
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %conv.i.i)
  %cmp5.not.i.i = icmp eq i16 %conv.i.i, 7
  br i1 %cmp5.not.i.i, label %if.end.i.i.if.end275_crit_edge, label %if.then13.i.i, !prof !96

if.end.i.i.if.end275_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end275

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i.i = call i32 @gfs2_metatype_check_ii(ptr noundef %77, ptr noundef %79, i16 noundef zeroext 7, i16 noundef zeroext %conv.i.i, ptr noundef nonnull @__func__.gfs2_dir_get_existing_buffer, ptr noundef nonnull @.str, i32 noundef 111) #16
  br label %gfs2_metatype_check_i.exit.i

gfs2_metatype_check_i.exit.i:                     ; preds = %if.then13.i.i, %if.then.i.i468
  %retval.0.i.i = phi i32 [ %call.i.i467, %if.then.i.i468 ], [ %call14.i.i, %if.then13.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool3.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool3.not.i, label %gfs2_metatype_check_i.exit.i.if.end275_crit_edge, label %if.then4.i

gfs2_metatype_check_i.exit.i.if.end275_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end275

if.then4.i:                                       ; preds = %gfs2_metatype_check_i.exit.i
  %86 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bh.i, align 4
  %tobool.not.i.i469 = icmp eq ptr %87, null
  br i1 %tobool.not.i.i469, label %if.then4.i.if.end275.thread511_crit_edge, label %if.then.i9.i

if.then4.i.if.end275.thread511_crit_edge:         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end275.thread511

if.then.i9.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %87) #16
  br label %if.end275.thread511

if.end275.thread511:                              ; preds = %if.then.i9.i, %if.then4.i.if.end275.thread511_crit_edge, %if.else273.if.end275.thread511_crit_edge
  %retval.0.i471.ph = phi i32 [ -5, %if.then.i9.i ], [ -5, %if.then4.i.if.end275.thread511_crit_edge ], [ %call.i460, %if.else273.if.end275.thread511_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #16
  br label %fail

if.end275:                                        ; preds = %gfs2_metatype_check_i.exit.i.if.end275_crit_edge, %if.end.i.i.if.end275_crit_edge
  %88 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bh.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #16
  br label %if.end278

if.end278:                                        ; preds = %if.end275, %if.end275.thread
  %bh.1510 = phi ptr [ %call.i, %if.end275.thread ], [ %89, %if.end275 ]
  %90 = ptrtoint ptr %i_gl.i459 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_gl.i459, align 4
  call void @gfs2_trans_add_meta(ptr noundef %91, ptr noundef %bh.1510) #16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.1510, i32 0, i32 5
  %92 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %93, i32 %o.0540
  %94 = call ptr @memcpy(ptr %add.ptr, ptr %buf.addr.0541, i32 %44)
  %tobool.not.i472 = icmp eq ptr %bh.1510, null
  br i1 %tobool.not.i472, label %if.end278.cleanup_crit_edge, label %if.then.i

if.end278.cleanup_crit_edge:                      ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %bh.1510) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end278.cleanup_crit_edge
  %add.ptr279 = getelementptr i8, ptr %buf.addr.0541, i32 %44
  %add280 = add i32 %44, %copied.0536
  %inc = add i64 %lblock.1535, 1
  %95 = ptrtoint ptr %dblock to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %dblock, align 8
  %inc281 = add i64 %96, 1
  store i64 %inc281, ptr %dblock, align 8
  %97 = ptrtoint ptr %extlen to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %extlen, align 4
  %dec = add i32 %98, -1
  store i32 %dec, ptr %extlen, align 4
  %cmp226 = icmp ult i32 %add280, %size
  br i1 %cmp226, label %cleanup.while.body_crit_edge, label %cleanup.out_crit_edge

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

out:                                              ; preds = %fail.out_crit_edge, %cleanup.out_crit_edge
  %copied.0531 = phi i32 [ %copied.0536, %fail.out_crit_edge ], [ %add280, %cleanup.out_crit_edge ]
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %99 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %i_no_addr.i, align 8
  %call.i474 = call i32 @gfs2_meta_buffer(ptr noundef %ip, i32 noundef 4, i64 noundef %100, ptr noundef nonnull %dibh) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i474)
  %tobool284.not = icmp eq i32 %call.i474, 0
  br i1 %tobool284.not, label %if.end286, label %out.cleanup306_crit_edge

out.cleanup306_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup306

if.end286:                                        ; preds = %out
  %i_size = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %101 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %i_size, align 8
  %conv288 = sext i32 %copied.0531 to i64
  %add289 = add i64 %conv288, %offset
  call void @__sanitizer_cov_trace_cmp8(i64 %102, i64 %add289)
  %cmp290 = icmp ult i64 %102, %add289
  br i1 %cmp290, label %if.then292, label %if.end286.if.end296_crit_edge

if.end286.if.end296_crit_edge:                    ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end296

if.then292:                                       ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @i_size_write(ptr noundef %ip, i64 noundef %add289)
  br label %if.end296

if.end296:                                        ; preds = %if.then292, %if.end286.if.end296_crit_edge
  %i_mtime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp299) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp299, ptr noundef %ip) #16
  %103 = call ptr @memcpy(ptr %i_ctime, ptr %tmp299, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp299) #16
  %104 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_gl301 = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %105 = ptrtoint ptr %i_gl301 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i_gl301, align 4
  %107 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dibh, align 4
  call void @gfs2_trans_add_meta(ptr noundef %106, ptr noundef %108) #16
  %109 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dibh, align 4
  %b_data302 = getelementptr inbounds %struct.buffer_head, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %b_data302 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %b_data302, align 4
  call void @gfs2_dinode_out(ptr noundef %ip, ptr noundef %112) #16
  %113 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dibh, align 4
  %tobool.not.i475 = icmp eq ptr %114, null
  br i1 %tobool.not.i475, label %if.end296.cleanup306_crit_edge, label %if.then.i476

if.end296.cleanup306_crit_edge:                   ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup306

if.then.i476:                                     ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %114) #16
  br label %cleanup306

fail:                                             ; preds = %if.end275.thread511, %if.then256, %if.then238.fail_crit_edge
  %error.1.ph = phi i32 [ %retval.0.i471.ph, %if.end275.thread511 ], [ -5, %if.then256 ], [ %call240, %if.then238.fail_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0536)
  %tobool303.not = icmp eq i32 %copied.0536, 0
  br i1 %tobool303.not, label %fail.cleanup306_crit_edge, label %fail.out_crit_edge

fail.out_crit_edge:                               ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

fail.cleanup306_crit_edge:                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup306

cleanup306:                                       ; preds = %fail.cleanup306_crit_edge, %if.then.i476, %if.end296.cleanup306_crit_edge, %out.cleanup306_crit_edge, %if.then26.cleanup306_crit_edge, %if.then16, %gfs2_dir_write_stuffed.exit, %entry.cleanup306_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %gfs2_dir_write_stuffed.exit ], [ -22, %if.then16 ], [ 0, %entry.cleanup306_crit_edge ], [ %call27, %if.then26.cleanup306_crit_edge ], [ %call.i474, %out.cleanup306_crit_edge ], [ %error.1.ph, %fail.cleanup306_crit_edge ], [ %copied.0531, %if.end296.cleanup306_crit_edge ], [ %copied.0531, %if.then.i476 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extlen) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dblock) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_withdraw_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_warn_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_unstuff_dinode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_alloc_extent(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_read(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_check_ii(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_metatype_check_ii(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gfs2_dirent_find_offset(ptr noundef readonly %dent, ptr nocapture noundef readonly %name, ptr noundef readnone %ptr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %name, align 8
  %add1 = add i32 %1, 47
  %and = and i32 %add1, -8
  %de_name_len = getelementptr inbounds %struct.gfs2_dirent, ptr %dent, i32 0, i32 3
  %2 = ptrtoint ptr %de_name_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %de_name_len, align 2
  %conv = zext i16 %3 to i32
  %add3 = add nuw nsw i32 %conv, 47
  %and4 = and i32 %add3, 131064
  %cmp = icmp ult ptr %ptr, %dent
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %de_rec_len = getelementptr inbounds %struct.gfs2_dirent, ptr %dent, i32 0, i32 2
  %4 = ptrtoint ptr %de_rec_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %de_rec_len, align 4
  %conv5 = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %dent, i32 %conv5
  %cmp7.not = icmp ugt ptr %add.ptr, %ptr
  br i1 %cmp7.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %no_addr.i = getelementptr inbounds %struct.gfs2_inum, ptr %dent, i32 0, i32 1
  %6 = ptrtoint ptr %no_addr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %no_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.i = icmp eq i64 %7, 0
  br i1 %cmp.i, label %if.end.gfs2_dirent_sentinel.exit.thread_crit_edge, label %gfs2_dirent_sentinel.exit

if.end.gfs2_dirent_sentinel.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %gfs2_dirent_sentinel.exit.thread

gfs2_dirent_sentinel.exit:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %dent to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dent, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp2.i.not = icmp eq i64 %9, 0
  %spec.select = select i1 %cmp2.i.not, i32 0, i32 %and4
  br label %gfs2_dirent_sentinel.exit.thread

gfs2_dirent_sentinel.exit.thread:                 ; preds = %gfs2_dirent_sentinel.exit, %if.end.gfs2_dirent_sentinel.exit.thread_crit_edge
  %10 = phi i32 [ 0, %if.end.gfs2_dirent_sentinel.exit.thread_crit_edge ], [ %spec.select, %gfs2_dirent_sentinel.exit ]
  %add.ptr11 = getelementptr i8, ptr %dent, i32 %10
  %cmp12 = icmp ugt ptr %add.ptr11, %ptr
  br i1 %cmp12, label %gfs2_dirent_sentinel.exit.thread.cleanup_crit_edge, label %if.end15

gfs2_dirent_sentinel.exit.thread.cleanup_crit_edge: ; preds = %gfs2_dirent_sentinel.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %gfs2_dirent_sentinel.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr17 = getelementptr i8, ptr %ptr, i32 %and
  %cmp18.not = icmp ult ptr %add.ptr, %add.ptr17
  %. = select i1 %cmp18.not, i32 -1, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %gfs2_dirent_sentinel.exit.thread.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -1, %gfs2_dirent_sentinel.exit.thread.cleanup_crit_edge ], [ %., %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_get_extent(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_meta_ra(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_rindex_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_hold(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rlist_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rlist_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_glock2rgrp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq_m(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_trans_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_blk2rgrpd(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_free_meta(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_m(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rlist_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_quota_unhold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nounwind readonly }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { nobuiltin }
attributes #24 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !47, !48, !50, !52, !53, !55, !56, !57, !58, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79}
!llvm.named.register.sp = !{!81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__func__.gfs2_dir_read, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/gfs2/dir.c", i32 1586, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/gfs2/dir.c", i32 1607, i32 4}
!5 = !{ptr @gfs2_dir_read._entry, !4, !"_entry", i1 false, i1 false}
!6 = !{ptr @gfs2_dir_read._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @__func__.gfs2_dir_check, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/gfs2/dir.c", i32 1693, i32 5}
!9 = !{ptr @__func__.gfs2_dir_del, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/gfs2/dir.c", i32 1886, i32 3}
!11 = !{ptr @__func__.gfs2_dir_mvino, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/gfs2/dir.c", i32 1944, i32 3}
!13 = !{ptr @__func__.gfs2_dir_exhash_dealloc, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/gfs2/dir.c", i32 2138, i32 3}
!15 = !{ptr @gfs2_qdot, !16, !"gfs2_qdot", i1 false, i1 false}
!16 = !{!"../fs/gfs2/dir.c", i32 83, i32 13}
!17 = !{ptr @gfs2_qdotdot, !18, !"gfs2_qdotdot", i1 false, i1 false}
!18 = !{!"../fs/gfs2/dir.c", i32 84, i32 13}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/gfs2/dir.c", i32 1433, i32 5}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gfs2_dir_read_leaf._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @gfs2_dir_read_leaf._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__func__.gfs2_dirent_scan, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/gfs2/dir.c", i32 602, i32 2}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/gfs2/dir.c", i32 549, i32 2}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @gfs2_dirent_offset._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @gfs2_dirent_offset._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/gfs2/dir.c", i32 506, i32 20}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/gfs2/dir.c", i32 509, i32 8}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/gfs2/dir.c", i32 512, i32 8}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/gfs2/dir.c", i32 515, i32 8}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/gfs2/dir.c", i32 518, i32 8}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/gfs2/dir.c", i32 525, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @gfs2_check_dirent._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @gfs2_check_dirent._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__func__.gfs2_dirent_search, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/gfs2/dir.c", i32 821, i32 4}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/gfs2/dir.c", i32 1040, i32 3}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dir_split_leaf._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @dir_split_leaf._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/gfs2/dir.c", i32 1119, i32 7}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/gfs2/dir.c", i32 171, i32 6}
!62 = !{ptr @__func__.gfs2_dir_write_data, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/gfs2/dir.c", i32 198, i32 8}
!65 = !{ptr @__func__.gfs2_dir_get_existing_buffer, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/gfs2/dir.c", i32 111, i32 6}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/gfs2/util.h", i32 126, i32 38}
!69 = !{ptr @__func__.dirent_next, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/gfs2/dir.c", i32 651, i32 3}
!71 = !{ptr @__func__.dirent_check_reclen, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/gfs2/dir.c", i32 620, i32 2}
!73 = !{ptr @__func__.dirent_del, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/gfs2/dir.c", i32 674, i32 3}
!75 = !{ptr @__func__.gfs2_dir_get_hash_table, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/gfs2/dir.c", i32 350, i32 3}
!77 = !{ptr @__func__.gfs2_dir_read_data, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/gfs2/dir.c", i32 280, i32 6}
!79 = !{ptr @__func__.get_leaf, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/gfs2/dir.c", i32 761, i32 16}
!81 = !{!"sp"}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 2154613567, i64 2154614048, i64 2154613604, i64 2154613660, i64 2154613694, i64 2154613718, i64 2154613759, i64 2154613780, i64 2154613808, i64 2154613842}
!93 = !{!"auto-init"}
!94 = !{i64 2148640986, i64 2148641018, i64 2148641047, i64 2148641081, i64 2148641112, i64 2148641135}
!95 = !{i64 2148730091}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i64 2154791734, i64 2154792212, i64 2154791771, i64 2154791827, i64 2154791861, i64 2154791885, i64 2154791926, i64 2154791947, i64 2154791975, i64 2154792009}
!98 = !{i64 2154810653, i64 2154811132, i64 2154810690, i64 2154810746, i64 2154810780, i64 2154810804, i64 2154810845, i64 2154810866, i64 2154810894, i64 2154810928}
!99 = !{i64 2154795542, i64 2154796020, i64 2154795579, i64 2154795635, i64 2154795669, i64 2154795693, i64 2154795734, i64 2154795755, i64 2154795783, i64 2154795817}
!100 = !{i64 2154798008, i64 2154798486, i64 2154798045, i64 2154798101, i64 2154798135, i64 2154798159, i64 2154798200, i64 2154798221, i64 2154798249, i64 2154798283}
!101 = !{i64 2154800824, i64 2154801302, i64 2154800861, i64 2154800917, i64 2154800951, i64 2154800975, i64 2154801016, i64 2154801037, i64 2154801065, i64 2154801099}
!102 = !{i64 2154604124, i64 2154604603, i64 2154604161, i64 2154604217, i64 2154604251, i64 2154604275, i64 2154604316, i64 2154604337, i64 2154604365, i64 2154604399}
!103 = !{!"branch_weights", i32 2002, i32 2000}
!104 = !{i64 2154786095, i64 2154786573, i64 2154786132, i64 2154786188, i64 2154786222, i64 2154786246, i64 2154786287, i64 2154786308, i64 2154786336, i64 2154786370}
!105 = !{i64 2154784365, i64 2154784843, i64 2154784402, i64 2154784458, i64 2154784492, i64 2154784516, i64 2154784557, i64 2154784578, i64 2154784606, i64 2154784640}
!106 = !{i64 1036808, i64 1036869}
!107 = !{i64 1039540}
!108 = !{i64 1039825}
!109 = !{i64 2152965557}
!110 = !{i64 2152965399}
!111 = !{i64 2152965727}
!112 = !{i64 2149811527}
!113 = !{i64 2152967488}
!114 = !{i64 2149703859}
!115 = !{i64 2149708791}
!116 = !{i64 2149730503}
!117 = !{i64 2149735395}
!118 = !{i64 2149811852}
!119 = !{i64 2149812177}
!120 = !{i64 2152979350}
!121 = !{i64 2148481913, i64 2148482193, i64 2148482527, i64 2148482861}
!122 = !{i8 0, i8 2}
